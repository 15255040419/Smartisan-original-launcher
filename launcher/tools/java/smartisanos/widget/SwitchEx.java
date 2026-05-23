package smartisanos.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.CompoundButton;

public class SwitchEx extends CompoundButton {
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
    private Bitmap bottom;
    private Bitmap frame;
    private Bitmap mask;
    private Bitmap knob;
    private boolean bitmapsLoaded;

    public SwitchEx(Context context) {
        this(context, null);
    }

    public SwitchEx(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SwitchEx(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        setClickable(true);
        setButtonDrawable(null);
        loadBitmaps();
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        loadBitmaps();
        int width = frame != null ? frame.getWidth() : dp(84);
        int height = frame != null ? frame.getHeight() : dp(54);
        setMeasuredDimension(resolveSize(width, widthMeasureSpec), resolveSize(height, heightMeasureSpec));
    }

    protected void onDraw(Canvas canvas) {
        loadBitmaps();
        if (!bitmapsLoaded) {
            drawFallback(canvas);
            return;
        }

        int w = getWidth();
        int h = getHeight();
        float scale = h / (float) frame.getHeight();
        int scaledFrameW = Math.round(frame.getWidth() * scale);
        int scaledBottomW = Math.round(bottom.getWidth() * scale);
        int scaledKnobW = Math.round(knob.getWidth() * scale);
        int left = (w - scaledFrameW) / 2;
        int top = 0;
        int hidden = Math.max(0, scaledBottomW - scaledFrameW);
        int bottomX = isChecked() ? left : left - hidden;
        canvas.drawBitmap(bottom, null, new Rect(bottomX, top, bottomX + scaledBottomW, top + h), paint);
        canvas.drawBitmap(frame, null, new Rect(left, top, left + scaledFrameW, top + h), paint);

        float knobCenterInSource = knob.getWidth() * 0.5f * scale;
        float offCenter = left + scaledFrameW * 0.25f;
        float onCenter = left + scaledFrameW * 0.75f;
        int knobX = Math.round((isChecked() ? onCenter : offCenter) - knobCenterInSource);
        canvas.drawBitmap(knob, null, new Rect(knobX, top, knobX + scaledKnobW, top + h), paint);
    }

    public boolean onTouchEvent(MotionEvent event) {
        if (event.getAction() == MotionEvent.ACTION_UP) {
            toggle();
            return true;
        }
        return true;
    }

    public boolean performClick() {
        toggle();
        return super.performClick();
    }

    public void setChecked(boolean checked) {
        if (checked != isChecked()) {
            super.setChecked(checked);
        } else {
            super.setChecked(checked);
        }
        invalidate();
    }

    private void loadBitmaps() {
        if (bitmapsLoaded || bottom != null) {
            return;
        }
        Resources res = getResources();
        bottom = bitmap(res, "switch_ex_bottom");
        frame = bitmap(res, "switch_ex_frame");
        mask = bitmap(res, "switch_ex_mask");
        knob = bitmap(res, "switch_ex_unpressed");
        bitmapsLoaded = bottom != null && frame != null && mask != null && knob != null;
    }

    private Bitmap bitmap(Resources res, String name) {
        int id = res.getIdentifier(name, "drawable", getContext().getPackageName());
        if (id == 0) {
            id = res.getIdentifier(name, "drawable", "com.smartisanos.home");
        }
        if (id == 0) {
            return null;
        }
        try {
            return BitmapFactory.decodeResource(res, id);
        } catch (Throwable ignored) {
            try {
                Drawable drawable = res.getDrawable(id);
                Bitmap bitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmap);
                drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                drawable.draw(canvas);
                return bitmap;
            } catch (Throwable ignoredAgain) {
                return null;
            }
        }
    }

    private void drawFallback(Canvas canvas) {
        float w = getWidth();
        float h = getHeight();
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(isChecked() ? 0xffdfeafc : 0xfffafafa);
        canvas.drawRoundRect(0, 0, w, h, h / 2.0f, h / 2.0f, paint);
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(0xffe6e6e6);
        canvas.drawRoundRect(0.5f, 0.5f, w - 0.5f, h - 0.5f, h / 2.0f, h / 2.0f, paint);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(0xffffffff);
        float r = h / 2.0f - dp(2);
        float cx = isChecked() ? w - h / 2.0f : h / 2.0f;
        canvas.drawCircle(cx, h / 2.0f, r, paint);
    }

    private int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density + 0.5f);
    }
}
