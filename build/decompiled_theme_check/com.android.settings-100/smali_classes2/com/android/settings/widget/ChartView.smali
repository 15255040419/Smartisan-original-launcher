.class public Lcom/android/settings/widget/ChartView;
.super Landroid/widget/FrameLayout;
.source "ChartView.java"


# static fields
.field private static final SWEEP_GRAVITY:I = 0x800033


# instance fields
.field private mContent:Landroid/graphics/Rect;

.field mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mOptimalWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mOptimalWidthWeight:F

.field mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/android/settings/widget/ChartView;->mOptimalWidth:I

    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/android/settings/widget/ChartView;->mOptimalWidthWeight:F

    .line 49
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/ChartView;->mContent:Landroid/graphics/Rect;

    .line 62
    sget-object v2, Lcom/android/settings/R$styleable;->ChartView:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 64
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    const/4 p3, 0x1

    .line 65
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 64
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/widget/ChartView;->setOptimalWidth(IF)V

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/ChartView;->setClipToPadding(Z)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/ChartView;->setClipChildren(Z)V

    return-void
.end method


# virtual methods
.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1

    const-string v0, "missing horiz"

    .line 73
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ChartAxis;

    iput-object p1, p0, Lcom/android/settings/widget/ChartView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    const-string p1, "missing vert"

    .line 74
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ChartAxis;

    iput-object p1, p0, Lcom/android/settings/widget/ChartView;->mVert:Lcom/android/settings/widget/ChartAxis;

    return-void
.end method

.method protected layoutSweep(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 3

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 136
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 138
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartView;->layoutSweep(Lcom/android/settings/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 139
    iget p0, v1, Landroid/graphics/Rect;->left:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/android/settings/widget/ChartSweepView;->layout(IIII)V

    return-void
.end method

.method protected layoutSweep(Lcom/android/settings/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    .line 143
    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->getMargins()Landroid/graphics/Rect;

    move-result-object p0

    .line 146
    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->getFollowAxis()I

    move-result v0

    const v1, 0x800033

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 147
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->getPoint()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 148
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 149
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 150
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 151
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->getMeasuredHeight()I

    move-result p1

    invoke-static {v1, p0, p1, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 155
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->getPoint()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 156
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 157
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 158
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 159
    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, p0, p1, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 97
    iget-object p1, p0, Lcom/android/settings/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartView;->getPaddingTop()I

    move-result v1

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartView;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p5, p2

    .line 97
    invoke-virtual {p1, v0, v1, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 99
    iget-object p1, p0, Lcom/android/settings/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 100
    iget-object p2, p0, Lcom/android/settings/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 103
    iget-object p3, p0, Lcom/android/settings/widget/ChartView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    int-to-float p4, p1

    invoke-interface {p3, p4}, Lcom/android/settings/widget/ChartAxis;->setSize(F)Z

    .line 104
    iget-object p3, p0, Lcom/android/settings/widget/ChartView;->mVert:Lcom/android/settings/widget/ChartAxis;

    int-to-float p4, p2

    invoke-interface {p3, p4}, Lcom/android/settings/widget/ChartAxis;->setSize(F)Z

    .line 106
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 107
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    const/4 p5, 0x0

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartView;->getChildCount()I

    move-result v0

    if-ge p5, v0, :cond_3

    .line 110
    invoke-virtual {p0, p5}, Lcom/android/settings/widget/ChartView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 113
    iget-object v2, p0, Lcom/android/settings/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 115
    instance-of v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;

    if-eqz v2, :cond_0

    .line 118
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v1, p1, p2, p3, p4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 119
    iget v1, p4, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    iget v3, p4, Landroid/graphics/Rect;->right:I

    iget v4, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 121
    :cond_0
    instance-of v2, v0, Lcom/android/settings/widget/ChartGridView;

    if-eqz v2, :cond_1

    .line 123
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v1, p1, p2, p3, p4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 124
    iget v1, p4, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    iget v3, p4, Landroid/graphics/Rect;->right:I

    iget v4, p4, Landroid/graphics/Rect;->bottom:I

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    .line 124
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 127
    :cond_1
    instance-of v1, v0, Lcom/android/settings/widget/ChartSweepView;

    if-eqz v1, :cond_2

    .line 128
    move-object v1, v0

    check-cast v1, Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p0, v1, p3, p4}, Lcom/android/settings/widget/ChartView;->layoutSweep(Lcom/android/settings/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 129
    iget v1, p4, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    iget v3, p4, Landroid/graphics/Rect;->right:I

    iget v4, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 85
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartView;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lcom/android/settings/widget/ChartView;->mOptimalWidth:I

    sub-int/2addr p1, v0

    if-lez v0, :cond_0

    if-lez p1, :cond_0

    int-to-float v0, v0

    int-to-float p1, p1

    .line 89
    iget v1, p0, Lcom/android/settings/widget/ChartView;->mOptimalWidthWeight:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 90
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 91
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public setOptimalWidth(IF)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/android/settings/widget/ChartView;->mOptimalWidth:I

    .line 79
    iput p2, p0, Lcom/android/settings/widget/ChartView;->mOptimalWidthWeight:F

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartView;->requestLayout()V

    return-void
.end method
