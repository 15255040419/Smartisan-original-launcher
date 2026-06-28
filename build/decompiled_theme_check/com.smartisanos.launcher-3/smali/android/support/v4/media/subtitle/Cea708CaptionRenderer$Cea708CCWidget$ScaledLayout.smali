.class Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;
.super Landroid/view/ViewGroup;
.source "Cea708CaptionRenderer.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ScaledLayout"


# instance fields
.field private mRectArray:[Landroid/graphics/Rect;

.field private final mRectTopLeftSorter:Ljava/util/Comparator;

.field final synthetic this$1:Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget;


# direct methods
.method constructor <init>(Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->this$1:Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$1;

    invoke-direct {p1, p0}, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$1;-><init>(Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;)V

    iput-object p1, p0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectTopLeftSorter:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    return p0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 4
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 6
    iget-object v5, p0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    array-length v6, v5

    if-lt v3, v6, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    aget-object v6, v5, v3

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v0

    .line 8
    aget-object v5, v5, v3

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    int-to-float v6, v6

    int-to-float v5, v5

    .line 10
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11
    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 12
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_1

    .line 4
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v1, v0, p4

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    .line 7
    aget-object v2, v0, p4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    .line 8
    aget-object v3, v0, p4

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p1

    .line 9
    aget-object v0, v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    .line 10
    invoke-virtual {p5, v1, v2, v0, v3}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 6
    new-array v6, v5, [Landroid/graphics/Rect;

    iput-object v6, v0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_7

    .line 7
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 8
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 9
    instance-of v10, v9, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    if-eqz v10, :cond_6

    .line 10
    check-cast v9, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    iget v10, v9, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartRow:F

    .line 11
    iget v11, v9, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndRow:F

    .line 12
    iget v12, v9, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartCol:F

    .line 13
    iget v9, v9, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndCol:F

    const/4 v13, 0x0

    cmpg-float v14, v10, v13

    if-ltz v14, :cond_5

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v15, v10, v14

    if-gtz v15, :cond_5

    cmpg-float v16, v11, v10

    if-ltz v16, :cond_4

    if-gtz v15, :cond_4

    cmpg-float v13, v9, v13

    if-ltz v13, :cond_3

    cmpl-float v13, v9, v14

    if-gtz v13, :cond_3

    cmpg-float v14, v9, v12

    if-ltz v14, :cond_2

    if-gtz v13, :cond_2

    .line 14
    iget-object v13, v0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    new-instance v14, Landroid/graphics/Rect;

    int-to-float v15, v3

    mul-float v6, v12, v15

    float-to-int v6, v6

    move/from16 p2, v3

    int-to-float v3, v4

    move/from16 v16, v1

    mul-float v1, v10, v3

    float-to-int v1, v1

    move/from16 v17, v2

    mul-float v2, v9, v15

    float-to-int v2, v2

    move/from16 v18, v5

    mul-float v5, v11, v3

    float-to-int v5, v5

    invoke-direct {v14, v6, v1, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v14, v13, v7

    sub-float/2addr v9, v12

    mul-float/2addr v15, v9

    float-to-int v1, v15

    const/high16 v2, 0x40000000    # 2.0f

    .line 15
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v5, 0x0

    .line 16
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 17
    invoke-virtual {v8, v1, v6}, Landroid/view/View;->measure(II)V

    .line 18
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 19
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    .line 20
    div-int/lit8 v5, v5, 0x2

    .line 21
    iget-object v6, v0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v9, v6, v7

    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v5

    iput v12, v9, Landroid/graphics/Rect;->bottom:I

    .line 22
    aget-object v9, v6, v7

    iget v12, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v5

    iput v12, v9, Landroid/graphics/Rect;->top:I

    .line 23
    aget-object v5, v6, v7

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 24
    aget-object v5, v6, v7

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    aget-object v12, v6, v7

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v12

    iput v9, v5, Landroid/graphics/Rect;->bottom:I

    .line 25
    aget-object v5, v6, v7

    const/4 v6, 0x0

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 26
    :cond_0
    iget-object v5, v0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v6, v5, v7

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-le v6, v4, :cond_1

    .line 27
    aget-object v6, v5, v7

    iget v9, v6, Landroid/graphics/Rect;->top:I

    aget-object v12, v5, v7

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v4

    sub-int/2addr v9, v12

    iput v9, v6, Landroid/graphics/Rect;->top:I

    .line 28
    aget-object v5, v5, v7

    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    :cond_1
    sub-float/2addr v11, v10

    mul-float/2addr v3, v11

    float-to-int v3, v3

    .line 29
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 30
    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v3, p2

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v5, v18

    goto/16 :goto_0

    .line 31
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of ScaledLayout should have a range of scaleEndCol between scaleStartCol and 1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of ScaledLayout should have a range of scaleStartCol between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of ScaledLayout should have a range of scaleEndRow between scaleStartRow and 1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of ScaledLayout should have a range of scaleStartRow between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of ScaledLayout cannot have the UNSPECIFIED scale factors"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move/from16 v16, v1

    move/from16 v17, v2

    move v1, v5

    .line 36
    new-array v2, v1, [I

    .line 37
    new-array v3, v1, [Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v1, :cond_9

    .line 38
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_8

    .line 39
    aput v6, v2, v6

    .line 40
    iget-object v7, v0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v5

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 41
    :cond_9
    iget-object v1, v0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectTopLeftSorter:Ljava/util/Comparator;

    const/4 v5, 0x0

    invoke-static {v3, v5, v6, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move v1, v5

    :goto_2
    add-int/lit8 v7, v6, -0x1

    if-ge v1, v7, :cond_c

    add-int/lit8 v7, v1, 0x1

    move v8, v7

    :goto_3
    if-ge v8, v6, :cond_b

    .line 42
    aget-object v9, v3, v1

    aget-object v10, v3, v8

    invoke-static {v9, v10}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 43
    aget v9, v2, v1

    aput v9, v2, v8

    .line 44
    aget-object v9, v3, v8

    aget-object v10, v3, v8

    iget v10, v10, Landroid/graphics/Rect;->left:I

    aget-object v11, v3, v1

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    aget-object v12, v3, v8

    iget v12, v12, Landroid/graphics/Rect;->right:I

    aget-object v13, v3, v1

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    aget-object v14, v3, v8

    .line 45
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v13, v14

    .line 46
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    move v1, v7

    goto :goto_2

    :cond_c
    :goto_4
    if-ltz v7, :cond_f

    .line 47
    aget-object v1, v3, v7

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v4, :cond_e

    .line 48
    aget-object v1, v3, v7

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    move v6, v5

    :goto_5
    if-gt v6, v7, :cond_e

    .line 49
    aget v8, v2, v7

    aget v9, v2, v6

    if-ne v8, v9, :cond_d

    .line 50
    aget-object v8, v3, v6

    aget-object v9, v3, v6

    iget v9, v9, Landroid/graphics/Rect;->left:I

    aget-object v10, v3, v6

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v1

    aget-object v11, v3, v6

    iget v11, v11, Landroid/graphics/Rect;->right:I

    aget-object v12, v3, v6

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v1

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_e
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_f
    move/from16 v1, v16

    move/from16 v6, v17

    .line 51
    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method
