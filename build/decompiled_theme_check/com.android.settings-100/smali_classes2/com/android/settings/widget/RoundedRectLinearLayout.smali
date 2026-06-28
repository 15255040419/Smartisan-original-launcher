.class public Lcom/android/settings/widget/RoundedRectLinearLayout;
.super Landroid/widget/LinearLayout;
.source "RoundedRectLinearLayout.java"


# instance fields
.field private mClip:Landroid/graphics/Path;

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0, p2}, Lcom/android/settings/widget/RoundedRectLinearLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p2}, Lcom/android/settings/widget/RoundedRectLinearLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/widget/RoundedRectLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/settings/R$styleable;->RoundedRectLinearLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 33
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/widget/RoundedRectLinearLayout;->mRadius:F

    .line 35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 52
    iget v1, p0, Lcom/android/settings/widget/RoundedRectLinearLayout;->mRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/settings/widget/RoundedRectLinearLayout;->mClip:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 55
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 56
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 42
    iget p3, p0, Lcom/android/settings/widget/RoundedRectLinearLayout;->mRadius:F

    const/4 p4, 0x0

    cmpl-float p3, p3, p4

    if-lez p3, :cond_0

    .line 43
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/android/settings/widget/RoundedRectLinearLayout;->mClip:Landroid/graphics/Path;

    .line 44
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 45
    iget-object p1, p0, Lcom/android/settings/widget/RoundedRectLinearLayout;->mClip:Landroid/graphics/Path;

    iget p0, p0, Lcom/android/settings/widget/RoundedRectLinearLayout;->mRadius:F

    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p3, p0, p0, p2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_0
    return-void
.end method
