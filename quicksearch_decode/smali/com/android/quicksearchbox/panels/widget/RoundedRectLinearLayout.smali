.class public Lcom/android/quicksearchbox/panels/widget/RoundedRectLinearLayout;
.super Landroid/widget/LinearLayout;
.source "RoundedRectLinearLayout.java"


# instance fields
.field public a:Landroid/graphics/Path;

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/panels/widget/RoundedRectLinearLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/panels/widget/RoundedRectLinearLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/quicksearch/R$styleable;->RoundedRectListView:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x4

    .line 2
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/quicksearchbox/panels/widget/RoundedRectLinearLayout;->b:F

    const/4 v1, 0x3

    .line 3
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/quicksearchbox/panels/widget/RoundedRectLinearLayout;->c:F

    .line 4
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/quicksearchbox/panels/widget/RoundedRectLinearLayout;->d:F

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/quicksearchbox/panels/widget/RoundedRectLinearLayout;->e:F

    .line 6
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/quicksearchbox/panels/widget/RoundedRectLinearLayout;->f:F

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/android/quicksearchbox/panels/widget/RoundedRectLinearLayout;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/quicksearchbox/panels/widget/RoundedRectLinearLayout;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    iget p3, p0, Lcom/android/quicksearchbox/panels/widget/RoundedRectLinearLayout;->b:F

    const/4 p4, 0x0

    cmpl-float p3, p3, p4

    if-lez p3, :cond_0

    .line 3
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/android/quicksearchbox/panels/widget/RoundedRectLinearLayout;->a:Landroid/graphics/Path;

    .line 4
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/android/quicksearchbox/panels/widget/RoundedRectLinearLayout;->d:F

    iget v0, p0, Lcom/android/quicksearchbox/panels/widget/RoundedRectLinearLayout;->c:F

    int-to-float p1, p1

    iget v1, p0, Lcom/android/quicksearchbox/panels/widget/RoundedRectLinearLayout;->e:F

    sub-float/2addr p1, v1

    int-to-float p2, p2

    iget v1, p0, Lcom/android/quicksearchbox/panels/widget/RoundedRectLinearLayout;->f:F

    sub-float/2addr p2, v1

    invoke-direct {p3, p4, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 5
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/RoundedRectLinearLayout;->a:Landroid/graphics/Path;

    iget p2, p0, Lcom/android/quicksearchbox/panels/widget/RoundedRectLinearLayout;->b:F

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p3, p2, p2, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_0
    return-void
.end method
