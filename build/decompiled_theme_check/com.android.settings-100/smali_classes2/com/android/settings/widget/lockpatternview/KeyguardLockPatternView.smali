.class public Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;
.super Landroid/view/View;
.source "KeyguardLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$SavedState;,
        Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$OnPatternListener;,
        Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field public static final BRIGHT_MODE_INDOOR:I = 0x0

.field public static final BRIGHT_MODE_OUTER:I = 0x1

.field private static final DRAG_THRESHHOLD:F = 0.0f

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false


# instance fields
.field private LINE_WIDTH:I

.field private PATTERN_CIRCLE_RADIUS:I

.field private PATTERN_CIRCLE_SIZE:I

.field private PATTERN_GRID_RADIUS:I

.field private PATTERN_GRID_SIZE:I

.field private PATTERN_OFFSET_X:I

.field private PATTERN_OFFSET_Y:I

.field private PATTERN_PATH_OFFSET_X:I

.field private PATTERN_PATH_OFFSET_Y:I

.field private mAnimatingPeriodStart:J

.field private mAspect:I

.field private mBackgroundX:I

.field private mBackgroundY:I

.field private mBitmapBackground:Landroid/graphics/Bitmap;

.field private mBitmapBackgroundIndoor:Landroid/graphics/Bitmap;

.field private mBitmapBackgroundOuter:Landroid/graphics/Bitmap;

.field private mBitmapBtnDefault:Landroid/graphics/Bitmap;

.field private mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreenIndoor:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreenOuter:Landroid/graphics/Bitmap;

.field private mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private mBitmapCircleRedIndoor:Landroid/graphics/Bitmap;

.field private mBitmapCircleRedOuter:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mBrightMode:I

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private mColorRight:I

.field private mColorRightIndoor:I

.field private mColorRightOuter:I

.field private mColorWrong:I

.field private mColorWrongIndoor:I

.field private mColorWrongOuter:I

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDiameterFactor:F

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mHasLoadRes:Z

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mOnPatternListener:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$OnPatternListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPathPaintWrong:Landroid/graphics/Paint;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private final mStrokeAlpha:I

.field private final mTmpInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 254
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 258
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mDrawingProfilingStarted:Z

    .line 66
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 67
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaintWrong:Landroid/graphics/Paint;

    const/16 v1, 0xc9

    .line 70
    iput v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_GRID_SIZE:I

    .line 71
    iget v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_GRID_SIZE:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_GRID_RADIUS:I

    const/16 v1, 0x28

    .line 73
    iput v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_CIRCLE_SIZE:I

    .line 74
    iget v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_CIRCLE_SIZE:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_CIRCLE_RADIUS:I

    .line 76
    iput v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_OFFSET_X:I

    .line 77
    iput v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_OFFSET_Y:I

    const/16 v1, 0xa

    .line 78
    iput v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->LINE_WIDTH:I

    .line 82
    iput v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_PATH_OFFSET_X:I

    .line 83
    iput v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_PATH_OFFSET_Y:I

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v1, 0x3

    .line 107
    filled-new-array {v1, v1}, [I

    move-result-object v1

    const-class v3, Z

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDrawLookup:[[Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 114
    iput v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInProgressX:F

    .line 115
    iput v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInProgressY:F

    .line 119
    sget-object v1, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Correct:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    iput-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDisplayMode:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInputEnabled:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInStealthMode:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mEnableHapticFeedback:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternInProgress:Z

    const v3, 0x3dcccccd    # 0.1f

    .line 125
    iput v3, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mDiameterFactor:F

    const/16 v3, 0x80

    .line 126
    iput v3, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mStrokeAlpha:I

    const v4, 0x3f19999a    # 0.6f

    .line 127
    iput v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mHitFactor:F

    .line 151
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 152
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 153
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 159
    iput v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBackgroundX:I

    .line 160
    iput v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBackgroundY:I

    .line 163
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 166
    iput v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBrightMode:I

    .line 260
    sget-object v4, Lcom/android/internal/R$styleable;->LockPatternView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 262
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "square"

    .line 264
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 265
    iput v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mAspect:I

    goto :goto_0

    :cond_0
    const-string v5, "lock_width"

    .line 266
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 267
    iput v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mAspect:I

    goto :goto_0

    :cond_1
    const-string v5, "lock_height"

    .line 268
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 269
    iput v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mAspect:I

    goto :goto_0

    .line 271
    :cond_2
    iput v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mAspect:I

    .line 274
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->setClickable(Z)V

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 278
    invoke-static {p1}, Landroid/app/SmtPCUtils;->isValidExtDisplayId(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x207016a

    .line 279
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_GRID_SIZE:I

    .line 280
    iget v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_GRID_SIZE:I

    div-int/2addr v5, v2

    iput v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_GRID_RADIUS:I

    const v5, 0x2070169

    .line 281
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_CIRCLE_SIZE:I

    .line 282
    iget v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_CIRCLE_SIZE:I

    div-int/2addr v5, v2

    iput v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_CIRCLE_RADIUS:I

    const v2, 0x207016b

    .line 283
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_OFFSET_X:I

    const v2, 0x207016c

    .line 284
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_OFFSET_Y:I

    const v2, 0x207016d

    .line 285
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_PATH_OFFSET_X:I

    const v2, 0x207016e

    .line 286
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_PATH_OFFSET_Y:I

    const v2, 0x2070168

    .line 287
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->LINE_WIDTH:I

    goto :goto_1

    :cond_3
    const v5, 0x105015c

    .line 290
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_GRID_SIZE:I

    .line 291
    iget v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_GRID_SIZE:I

    div-int/2addr v5, v2

    iput v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_GRID_RADIUS:I

    const v5, 0x105015b

    .line 292
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_CIRCLE_SIZE:I

    .line 293
    iget v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_CIRCLE_SIZE:I

    div-int/2addr v5, v2

    iput v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_CIRCLE_RADIUS:I

    const v2, 0x105015d

    .line 294
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_OFFSET_X:I

    const v2, 0x105015e

    .line 295
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_OFFSET_Y:I

    const v2, 0x105015f

    .line 296
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_PATH_OFFSET_X:I

    const v2, 0x1050160

    .line 297
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_PATH_OFFSET_Y:I

    const v2, 0x1050150

    .line 298
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->LINE_WIDTH:I

    .line 301
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10601a2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mColorRightIndoor:I

    iput v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mColorRight:I

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10601a4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mColorWrongIndoor:I

    iput v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mColorWrong:I

    .line 304
    iget-object v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 305
    iget-object v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 306
    iget-object v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mColorRight:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    iget-object v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 308
    iget-object v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 309
    iget-object v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 310
    iget-object v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 312
    iget-object v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaintWrong:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 313
    iget-object v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaintWrong:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 314
    iget-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaintWrong:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mColorWrong:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    iget-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaintWrong:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 316
    iget-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaintWrong:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 317
    iget-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaintWrong:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 318
    iget-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaintWrong:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 319
    iput-boolean v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mHasLoadRes:Z

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.smartisanos.keyguard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 321
    invoke-direct {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->loadResource()V

    .line 323
    :cond_4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 3

    .line 619
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 620
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-direct {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->notifyCellAdded()V

    return-void
.end method

.method private checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 1

    .line 627
    invoke-direct {p0, p2}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getRowHit(F)I

    move-result p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    .line 631
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getColumnHit(F)I

    move-result p1

    if-gez p1, :cond_1

    return-object v0

    .line 636
    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDrawLookup:[[Z

    aget-object p0, p0, p2

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_2

    return-object v0

    .line 639
    :cond_2
    invoke-static {p2, p1}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object p0

    return-object p0
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 490
    iget-object v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDrawLookup:[[Z

    aget-object v4, v4, v1

    aput-boolean v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 8

    .line 577
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    .line 581
    invoke-virtual {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->invalidate()V

    .line 585
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 586
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 587
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 588
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    sub-int/2addr v0, v2

    .line 589
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    sub-int/2addr v2, v3

    .line 591
    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    .line 592
    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    .line 594
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-eq v5, v1, :cond_1

    .line 595
    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    if-lez v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    add-int/2addr v3, v5

    .line 598
    :cond_1
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v5, v7, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 599
    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result p2

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v6

    :goto_1
    add-int v4, p2, v1

    .line 602
    :cond_3
    invoke-static {v3, v4}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object p2

    :cond_4
    if-eqz p2, :cond_5

    .line 605
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDrawLookup:[[Z

    .line 606
    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_5

    .line 607
    invoke-direct {p0, p2}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 609
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 610
    iget-boolean p2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mEnableHapticFeedback:Z

    if-eqz p2, :cond_6

    .line 611
    invoke-virtual {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/Utils;->vibratorSwitch(Landroid/content/Context;)V

    :cond_6
    return-object p1

    :cond_7
    return-object p2
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZ)V
    .locals 6

    if-eqz p4, :cond_5

    .line 989
    iget-boolean p4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInStealthMode:Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDisplayMode:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    sget-object v0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Wrong:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    if-eq p4, v0, :cond_0

    goto/16 :goto_2

    .line 992
    :cond_0
    iget-boolean p4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternInProgress:Z

    if-eqz p4, :cond_1

    .line 994
    iget-object p4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 995
    :cond_1
    iget-object p4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDisplayMode:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    sget-object v0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Wrong:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    if-ne p4, v0, :cond_2

    .line 997
    iget-object p4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 998
    :cond_2
    iget-object p4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDisplayMode:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    sget-object v0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Correct:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    if-eq p4, v0, :cond_4

    iget-object p4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDisplayMode:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    sget-object v0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Animate:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    if-ne p4, v0, :cond_3

    goto :goto_0

    .line 1003
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown display mode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDisplayMode:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1001
    :cond_4
    :goto_0
    iget-object p4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 1006
    :goto_1
    iget v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapWidth:I

    .line 1007
    iget v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapHeight:I

    .line 1009
    iget v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mSquareWidth:F

    .line 1010
    iget v3, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mSquareHeight:F

    int-to-float v4, v0

    sub-float v4, v2, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v1, v1

    sub-float/2addr v3, v1

    div-float/2addr v3, v5

    float-to-int v1, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1016
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1017
    iget v3, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mSquareHeight:F

    iget v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapHeight:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1019
    iget-object v3, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int/2addr v4, p2

    int-to-float v4, v4

    add-int/2addr v1, p3

    int-to-float v1, v1

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1020
    iget-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1021
    iget-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1022
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapWidth:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapHeight:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1024
    iget v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_GRID_RADIUS:I

    iget v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_CIRCLE_RADIUS:I

    sub-int/2addr v0, v1

    add-int/2addr p2, v0

    int-to-float p2, p2

    add-int/2addr p3, v0

    int-to-float p3, p3

    .line 1025
    iget-object p0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 0

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getCenterXForColumn(I)F
    .locals 2

    .line 855
    iget v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_OFFSET_X:I

    iget v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_GRID_SIZE:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_GRID_RADIUS:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_PATH_OFFSET_X:I

    add-int/2addr v0, p1

    iget p0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBackgroundX:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method private getCenterYForRow(I)F
    .locals 2

    .line 859
    iget v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_OFFSET_Y:I

    iget v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_GRID_SIZE:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_GRID_RADIUS:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_PATH_OFFSET_Y:I

    add-int/2addr v0, p1

    iget p0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBackgroundY:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method private getColumnHit(F)I
    .locals 5

    .line 671
    iget v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mSquareWidth:F

    .line 672
    iget v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mHitFactor:F

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 676
    invoke-direct {p0, v1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getCenterXForColumn(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    sub-float v4, v2, v3

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getRowHit(F)I
    .locals 5

    .line 649
    iget v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mSquareHeight:F

    .line 650
    iget v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mHitFactor:F

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 654
    invoke-direct {p0, v1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getCenterYForRow(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    sub-float v4, v2, v3

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 7

    .line 822
    invoke-direct {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->resetPattern()V

    .line 823
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 824
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 825
    invoke-direct {p0, v0, p1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 827
    iput-boolean v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternInProgress:Z

    .line 828
    sget-object v2, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Correct:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    iput-object v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDisplayMode:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    .line 829
    invoke-direct {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->notifyPatternStarted()V

    goto :goto_0

    .line 830
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternInProgress:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 831
    iput-boolean v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternInProgress:Z

    .line 832
    invoke-direct {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->notifyPatternCleared()V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 835
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 836
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getCenterYForRow(I)F

    move-result v1

    .line 838
    iget v3, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mSquareWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 839
    iget v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mSquareHeight:F

    div-float/2addr v5, v4

    sub-float v4, v2, v3

    float-to-int v4, v4

    sub-float v6, v1, v5

    float-to-int v6, v6

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    .line 841
    invoke-virtual {p0, v4, v6, v2, v1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->invalidate(IIII)V

    .line 844
    :cond_2
    iput v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInProgressX:F

    .line 845
    iput p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInProgressY:F

    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 14

    .line 741
    iget v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mSquareWidth:F

    iget v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mDiameterFactor:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 742
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 743
    iget-object v3, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-ge v3, v5, :cond_7

    if-ge v3, v2, :cond_0

    .line 746
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v5

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    :goto_1
    if-ge v3, v2, :cond_1

    .line 747
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v6

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 748
    :goto_2
    invoke-direct {p0, v5, v6}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v7

    .line 749
    iget-object v8, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-eqz v7, :cond_2

    if-ne v8, v9, :cond_2

    .line 751
    iput-boolean v9, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternInProgress:Z

    .line 752
    invoke-direct {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->notifyPatternStarted()V

    .line 755
    :cond_2
    iget v10, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInProgressX:F

    sub-float v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 756
    iget v11, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInProgressY:F

    sub-float v11, v6, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v10, v10, v12

    if-gtz v10, :cond_3

    cmpl-float v10, v11, v12

    if-lez v10, :cond_4

    :cond_3
    move v4, v9

    .line 761
    :cond_4
    iget-boolean v9, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternInProgress:Z

    if-eqz v9, :cond_6

    if-lez v8, :cond_6

    .line 762
    iget-object v9, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPattern:Ljava/util/ArrayList;

    add-int/lit8 v8, v8, -0x1

    .line 763
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 764
    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getCenterXForColumn(I)F

    move-result v9

    .line 765
    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getCenterYForRow(I)F

    move-result v8

    .line 768
    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v10

    sub-float/2addr v10, v0

    .line 769
    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v5, v0

    .line 770
    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float/2addr v9, v0

    .line 771
    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v6, v0

    if-eqz v7, :cond_5

    .line 775
    iget v8, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mSquareWidth:F

    mul-float/2addr v8, v1

    .line 776
    iget v11, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mSquareHeight:F

    mul-float/2addr v11, v1

    .line 777
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getCenterXForColumn(I)F

    move-result v12

    .line 778
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getCenterYForRow(I)F

    move-result v7

    sub-float v13, v12, v8

    .line 780
    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    add-float/2addr v12, v8

    .line 781
    invoke-static {v12, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float v8, v7, v11

    .line 782
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    add-float/2addr v7, v11

    .line 783
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 787
    :cond_5
    iget-object v7, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 788
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 787
    invoke-virtual {v7, v8, v9, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 791
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInProgressX:F

    .line 792
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInProgressY:F

    if-eqz v4, :cond_8

    .line 796
    iget-object p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 797
    iget-object p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 798
    iget-object p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_8
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 0

    .line 808
    iget-object p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 809
    iput-boolean p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternInProgress:Z

    .line 810
    invoke-direct {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->notifyPatternDetected()V

    .line 811
    invoke-virtual {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->invalidate()V

    :cond_0
    return-void
.end method

.method private loadResource()V
    .locals 7

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SmtPCUtils;->isValidExtDisplayId(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x2020383

    .line 329
    invoke-direct {p0, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 330
    invoke-direct {p0, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    const v0, 0x2020384

    .line 331
    invoke-direct {p0, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleGreenIndoor:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    const v0, 0x2020385

    .line 332
    invoke-direct {p0, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleRedIndoor:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    const v0, 0x2020382

    .line 333
    invoke-direct {p0, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBackgroundIndoor:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBackground:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const v0, 0x1080738

    .line 336
    invoke-direct {p0, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 337
    invoke-direct {p0, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    const v0, 0x1080739

    .line 338
    invoke-direct {p0, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleGreenIndoor:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    const v0, 0x108073b

    .line 339
    invoke-direct {p0, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleRedIndoor:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    const v0, 0x1080736

    .line 340
    invoke-direct {p0, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBackgroundIndoor:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBackground:Landroid/graphics/Bitmap;

    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 344
    iget-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v4, v0, v1

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v4, v0, v1

    .line 346
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 347
    iget v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapWidth:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapWidth:I

    .line 348
    iget v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapHeight:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapHeight:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 350
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mHasLoadRes:Z

    return-void
.end method

.method private notifyCellAdded()V
    .locals 1

    const v0, 0x10403d1

    .line 440
    invoke-direct {p0, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->sendAccessEvent(I)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mOnPatternListener:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 442
    iget-object p0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    const v0, 0x10403d3

    .line 461
    invoke-direct {p0, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->sendAccessEvent(I)V

    .line 462
    iget-object p0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mOnPatternListener:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$OnPatternListener;

    if-eqz p0, :cond_0

    .line 463
    invoke-interface {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$OnPatternListener;->onPatternCleared()V

    :cond_0
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 1

    const v0, 0x10403d4

    .line 454
    invoke-direct {p0, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->sendAccessEvent(I)V

    .line 455
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mOnPatternListener:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 456
    iget-object p0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    const v0, 0x10403d5

    .line 447
    invoke-direct {p0, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->sendAccessEvent(I)V

    .line 448
    iget-object p0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mOnPatternListener:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$OnPatternListener;

    if-eqz p0, :cond_0

    .line 449
    invoke-interface {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$OnPatternListener;->onPatternStart()V

    :cond_0
    return-void
.end method

.method private requestRedraw()V
    .locals 0

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->invalidate()V

    return-void
.end method

.method private resetPattern()V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 479
    invoke-direct {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->clearPatternDrawLookup()V

    .line 480
    sget-object v0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Correct:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDisplayMode:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->invalidate()V

    return-void
.end method

.method private resolveMeasured(II)I
    .locals 1

    .line 520
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 521
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    move p2, p0

    goto :goto_0

    .line 526
    :cond_0
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method private sendAccessEvent(I)V
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateResources()V
    .locals 2

    .line 179
    iget-boolean v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mHasLoadRes:Z

    if-nez v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->loadResource()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleGreenOuter:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const v0, 0x108073a

    .line 183
    invoke-direct {p0, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleGreenOuter:Landroid/graphics/Bitmap;

    const v0, 0x108073c

    .line 184
    invoke-direct {p0, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleRedOuter:Landroid/graphics/Bitmap;

    const v0, 0x1080737

    .line 185
    invoke-direct {p0, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBackgroundOuter:Landroid/graphics/Bitmap;

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10601a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mColorRightOuter:I

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10601a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mColorWrongOuter:I

    .line 189
    :cond_1
    iget v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBrightMode:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 190
    iget-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleGreenIndoor:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleGreenOuter:Landroid/graphics/Bitmap;

    :goto_1
    iput-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 191
    iget-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleRedIndoor:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleRedOuter:Landroid/graphics/Bitmap;

    :goto_2
    iput-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 192
    iget-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBackgroundIndoor:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBackgroundOuter:Landroid/graphics/Bitmap;

    :goto_3
    iput-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 194
    iget v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mColorRightIndoor:I

    goto :goto_4

    :cond_6
    iget v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mColorRightOuter:I

    :goto_4
    iput v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mColorRight:I

    if-eqz v0, :cond_7

    .line 195
    iget v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mColorWrongIndoor:I

    goto :goto_5

    :cond_7
    iget v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mColorWrongOuter:I

    :goto_5
    iput v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mColorWrong:I

    .line 196
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mColorRight:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaintWrong:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mColorWrong:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    .line 471
    invoke-direct {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->resetPattern()V

    return-void
.end method

.method public disableInput()V
    .locals 1

    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInputEnabled:Z

    return-void
.end method

.method public enableInput()V
    .locals 1

    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInputEnabled:Z

    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 0

    .line 544
    iget p0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapWidth:I

    mul-int/lit8 p0, p0, 0x3

    return p0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 0

    .line 538
    iget p0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapWidth:I

    mul-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public isInStealthMode()Z
    .locals 0

    .line 361
    iget-boolean p0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInStealthMode:Z

    return p0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 0

    .line 368
    iget-boolean p0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mEnableHapticFeedback:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 864
    iget-boolean v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mHasLoadRes:Z

    if-nez v0, :cond_0

    .line 865
    invoke-direct {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->loadResource()V

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 869
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 870
    iget-object v2, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDrawLookup:[[Z

    .line 872
    invoke-virtual {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBackgroundX:I

    .line 873
    invoke-virtual {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBackgroundY:I

    .line 874
    iget-object v3, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBackground:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBackgroundX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBackgroundY:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 876
    iget-object v3, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDisplayMode:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    sget-object v4, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Animate:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, v1, 0x1

    mul-int/lit16 v3, v3, 0x2bc

    .line 882
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v7, v9

    long-to-int v4, v7

    rem-int/2addr v4, v3

    .line 884
    div-int/lit16 v3, v4, 0x2bc

    .line 886
    invoke-direct {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->clearPatternDrawLookup()V

    move v7, v5

    :goto_0
    if-ge v7, v3, :cond_1

    .line 888
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 889
    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v9

    aget-object v9, v2, v9

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    aput-boolean v6, v9, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    if-ge v3, v1, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    move v7, v5

    :goto_1
    if-eqz v7, :cond_3

    .line 898
    rem-int/lit16 v4, v4, 0x2bc

    int-to-float v4, v4

    const/high16 v7, 0x442f0000    # 700.0f

    div-float/2addr v4, v7

    add-int/lit8 v7, v3, -0x1

    .line 902
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 903
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getCenterXForColumn(I)F

    move-result v8

    .line 904
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getCenterYForRow(I)F

    move-result v7

    .line 906
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 908
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getCenterXForColumn(I)F

    move-result v9

    sub-float/2addr v9, v8

    mul-float/2addr v9, v4

    .line 910
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getCenterYForRow(I)F

    move-result v3

    sub-float/2addr v3, v7

    mul-float/2addr v4, v3

    add-float/2addr v8, v9

    .line 911
    iput v8, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInProgressX:F

    add-float/2addr v7, v4

    .line 912
    iput v7, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInProgressY:F

    .line 915
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->invalidate()V

    .line 918
    :cond_4
    iget-object v3, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->LINE_WIDTH:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 919
    iget-object v3, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaintWrong:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->LINE_WIDTH:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 921
    iget-object v3, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 922
    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 928
    iget-boolean v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInStealthMode:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDisplayMode:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    sget-object v7, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Wrong:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    if-ne v4, v7, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    goto :goto_3

    :cond_6
    :goto_2
    move v4, v6

    .line 932
    :goto_3
    iget-object v7, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_7

    move v7, v6

    goto :goto_4

    :cond_7
    move v7, v5

    .line 933
    :goto_4
    iget-object v8, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz v4, :cond_e

    move v4, v5

    move v8, v4

    :goto_5
    if-ge v4, v1, :cond_a

    .line 937
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 942
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v10

    aget-object v10, v2, v10

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v11

    aget-boolean v10, v10, v11

    if-nez v10, :cond_8

    goto :goto_7

    .line 947
    :cond_8
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getCenterXForColumn(I)F

    move-result v8

    .line 948
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getCenterYForRow(I)F

    move-result v9

    if-nez v4, :cond_9

    .line 950
    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_6

    .line 952
    :cond_9
    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    move v8, v6

    goto :goto_5

    .line 957
    :cond_a
    :goto_7
    iget-boolean v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternInProgress:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDisplayMode:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    sget-object v1, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Animate:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    if-ne v0, v1, :cond_c

    :cond_b
    if-eqz v8, :cond_c

    .line 959
    iget v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInProgressX:F

    iget v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInProgressY:F

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 962
    :cond_c
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDisplayMode:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    sget-object v1, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Wrong:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    if-ne v0, v1, :cond_d

    .line 963
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaintWrong:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_8

    .line 965
    :cond_d
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_e
    :goto_8
    move v0, v5

    :goto_9
    const/4 v1, 0x3

    if-ge v0, v1, :cond_10

    .line 970
    iget v3, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBackgroundX:I

    iget v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_OFFSET_X:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_GRID_SIZE:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    move v4, v5

    :goto_a
    if-ge v4, v1, :cond_f

    .line 972
    iget v6, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBackgroundY:I

    iget v8, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_OFFSET_Y:I

    add-int/2addr v6, v8

    iget v8, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->PATTERN_GRID_SIZE:I

    mul-int/2addr v8, v4

    add-int/2addr v6, v8

    int-to-float v6, v6

    float-to-int v6, v6

    float-to-int v8, v3

    .line 973
    aget-object v9, v2, v0

    aget-boolean v9, v9, v4

    invoke-direct {p0, p1, v6, v8, v9}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 977
    :cond_10
    iget-object p0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 696
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 690
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 693
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 699
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 700
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 702
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 549
    invoke-virtual {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 551
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->resolveMeasured(II)I

    move-result p1

    .line 552
    invoke-direct {p0, p2, v1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->resolveMeasured(II)I

    move-result p2

    .line 554
    iget v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mAspect:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 559
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    .line 556
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    move p2, p1

    .line 566
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1042
    check-cast p1, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$SavedState;

    .line 1043
    invoke-virtual {p1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1044
    sget-object v0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Correct:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    .line 1046
    invoke-virtual {p1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1044
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->setPattern(Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1047
    invoke-static {}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->values()[Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$SavedState;->getDisplayMode()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDisplayMode:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    .line 1048
    invoke-virtual {p1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$SavedState;->isInputEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInputEnabled:Z

    .line 1049
    invoke-virtual {p1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$SavedState;->isInStealthMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInStealthMode:Z

    .line 1050
    invoke-virtual {p1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .line 1033
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1034
    new-instance v8, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$SavedState;

    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 1035
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDisplayMode:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    .line 1036
    invoke-virtual {v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$1;)V

    return-object v8
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 512
    iget-object p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40400000    # 3.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mSquareWidth:F

    .line 514
    iget-object p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBitmapBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mSquareHeight:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 707
    iget-boolean v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInputEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 711
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    return v1

    .line 722
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternInProgress:Z

    if-eqz p1, :cond_2

    .line 723
    iput-boolean v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternInProgress:Z

    .line 724
    invoke-direct {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->resetPattern()V

    .line 725
    invoke-direct {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->notifyPatternCleared()V

    :cond_2
    return v2

    .line 719
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    return v2

    .line 716
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    return v2

    .line 713
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method public setBrightMode(I)V
    .locals 1

    .line 170
    iget v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBrightMode:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 172
    iput p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mBrightMode:I

    .line 173
    invoke-direct {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->updateResources()V

    .line 174
    invoke-direct {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->requestRedraw()V

    :cond_1
    return-void
.end method

.method public setDisplayMode(Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;)V
    .locals 2

    .line 424
    iput-object p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDisplayMode:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    .line 425
    sget-object v0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;->Animate:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;

    if-ne p1, v0, :cond_1

    .line 426
    iget-object p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 430
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mAnimatingPeriodStart:J

    .line 431
    iget-object p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 432
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getCenterXForColumn(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInProgressX:F

    .line 433
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->getCenterYForRow(I)F

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInProgressY:F

    .line 434
    invoke-direct {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->clearPatternDrawLookup()V

    goto :goto_0

    .line 427
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 436
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->invalidate()V

    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0

    .line 378
    iput-boolean p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mInStealthMode:Z

    return-void
.end method

.method public setOnPatternListener(Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$OnPatternListener;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mOnPatternListener:Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$OnPatternListener;

    return-void
.end method

.method public setPattern(Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 408
    iget-object v0, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 409
    invoke-direct {p0}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->clearPatternDrawLookup()V

    .line 410
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 411
    iget-object v1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->setDisplayMode(Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$DisplayMode;)V

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    .line 388
    iput-boolean p1, p0, Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method
