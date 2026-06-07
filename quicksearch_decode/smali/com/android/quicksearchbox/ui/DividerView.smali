.class public Lcom/android/quicksearchbox/ui/DividerView;
.super Landroid/view/View;
.source "DividerView.java"


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/smartisanos/quicksearch/R$styleable;->DividerView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    .line 4
    :try_start_0
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 6
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/high16 v6, -0x1000000

    .line 7
    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/4 v6, 0x4

    .line 8
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/quicksearchbox/ui/DividerView;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/quicksearchbox/ui/DividerView;->a:Landroid/graphics/Paint;

    .line 11
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/DividerView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/DividerView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/DividerView;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/DividerView;->a:Landroid/graphics/Paint;

    int-to-float v3, v5

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/DividerView;->a:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    new-array v4, v4, [F

    int-to-float v0, v0

    aput v0, v4, v1

    int-to-float p2, p2

    aput p2, v4, v2

    const/4 p2, 0x0

    invoke-direct {v3, v4, p2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void

    :catchall_0
    move-exception p2

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    throw p2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/ui/DividerView;->b:I

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v6, v0, v1

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v7, p0, Lcom/android/quicksearchbox/ui/DividerView;->a:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v5, v0, v1

    const/4 v4, 0x0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/quicksearchbox/ui/DividerView;->a:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method
