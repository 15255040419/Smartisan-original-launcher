.class Landroidx/appcompat/widget/AppCompatSeekBarHelper;
.super Landroidx/appcompat/widget/AppCompatProgressBarHelper;
.source "AppCompatSeekBarHelper.java"


# instance fields
.field private mHasTickMarkTint:Z

.field private mHasTickMarkTintMode:Z

.field private mTickMark:Landroid/graphics/drawable/Drawable;

.field private mTickMarkTintList:Landroid/content/res/ColorStateList;

.field private mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mView:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Landroid/widget/SeekBar;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;-><init>(Landroid/widget/ProgressBar;)V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 37
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    .line 39
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    .line 43
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    return-void
.end method

.method private applyTickMarkTint()V
    .locals 2

    .line 125
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_3

    .line 126
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 128
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 132
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 138
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method


# virtual methods
.method drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 6

    .line 162
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 165
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 166
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-ltz v2, :cond_0

    .line 167
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-ltz v3, :cond_1

    .line 168
    div-int/lit8 v1, v3, 0x2

    .line 169
    :cond_1
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    neg-int v4, v2

    neg-int v5, v1

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 171
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    .line 172
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 174
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    :goto_1
    if-gt v3, v0, :cond_2

    .line 176
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v4, 0x0

    .line 177
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 179
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method drawableStateChanged()V
    .locals 2

    .line 151
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    .line 153
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method getTickMark()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 97
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method getTickMarkTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 109
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 121
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method jumpDrawablesToCurrentState()V
    .locals 0

    .line 145
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 48
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 50
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatSeekBar:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p1

    .line 52
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatSeekBar_android_thumb:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 54
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 57
    :cond_0
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatSeekBar_tickMark:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 58
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 60
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTintMode:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 61
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTintMode:I

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p2

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p2, v1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 63
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    .line 66
    :cond_1
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 67
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 68
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    .line 71
    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 73
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    return-void
.end method

.method setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 77
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 81
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 84
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 85
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 86
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 89
    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    .line 92
    :cond_2
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    return-void
.end method

.method setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 101
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    .line 104
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    return-void
.end method

.method setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 113
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    .line 116
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    return-void
.end method
