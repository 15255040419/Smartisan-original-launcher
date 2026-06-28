.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;
.implements Landroidx/appcompat/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuView$LayoutParams;,
        Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;,
        Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;,
        Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 80
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 81
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 83
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 84
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 85
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 86
    iput p2, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 5

    .line 404
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 406
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    .line 408
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 409
    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 411
    instance-of p4, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz p4, :cond_0

    move-object p4, p0

    check-cast p4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    .line 413
    invoke-virtual {p4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result p4

    if-eqz p4, :cond_1

    move p4, v1

    goto :goto_1

    :cond_1
    move p4, v2

    :goto_1
    const/4 v3, 0x2

    if-lez p2, :cond_5

    if-eqz p4, :cond_2

    if-lt p2, v3, :cond_5

    :cond_2
    mul-int/2addr p2, p1

    const/high16 v4, -0x80000000

    .line 417
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 419
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 421
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 422
    div-int v4, p2, p1

    .line 423
    rem-int/2addr p2, p1

    if-eqz p2, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    if-eqz p4, :cond_4

    if-ge v4, v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    move v3, v2

    .line 427
    :goto_2
    iget-boolean p2, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez p2, :cond_6

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    .line 428
    :goto_3
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 430
    iput v3, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr p1, v3

    const/high16 p2, 0x40000000    # 2.0f

    .line 432
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    return v3
.end method

.method private onMeasureExactFormat(II)V
    .locals 29

    move-object/from16 v0, p0

    .line 178
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 179
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 180
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, -0x2

    move/from16 v7, p2

    .line 185
    invoke-static {v7, v5, v6}, Landroidx/appcompat/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    sub-int/2addr v2, v4

    .line 191
    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    div-int v7, v2, v4

    .line 192
    rem-int v8, v2, v4

    const/4 v9, 0x0

    if-nez v7, :cond_0

    .line 196
    invoke-virtual {v0, v2, v9}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void

    .line 200
    :cond_0
    div-int/2addr v8, v7

    add-int/2addr v4, v8

    .line 212
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v8

    move v14, v7

    move v7, v9

    move v10, v7

    move v12, v10

    move v13, v12

    move v15, v13

    move/from16 v16, v15

    const-wide/16 v17, 0x0

    :goto_0
    if-ge v7, v8, :cond_8

    .line 214
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 215
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v19, v3

    const/16 v3, 0x8

    if-ne v9, v3, :cond_1

    goto/16 :goto_5

    .line 217
    :cond_1
    instance-of v3, v11, Landroidx/appcompat/view/menu/ActionMenuItemView;

    add-int/lit8 v13, v13, 0x1

    if-eqz v3, :cond_2

    .line 223
    iget v9, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v20, v13

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v13, v9, v13}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    move/from16 v20, v13

    const/4 v13, 0x0

    .line 226
    :goto_1
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 227
    iput-boolean v13, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 228
    iput v13, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 229
    iput v13, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 230
    iput-boolean v13, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 231
    iput v13, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 232
    iput v13, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    if-eqz v3, :cond_3

    .line 233
    move-object v3, v11

    check-cast v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 236
    iget-boolean v3, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    move v3, v14

    .line 238
    :goto_3
    invoke-static {v11, v4, v3, v6, v5}, Landroidx/appcompat/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v3

    .line 241
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 242
    iget-boolean v15, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v15, :cond_5

    add-int/lit8 v16, v16, 0x1

    .line 243
    :cond_5
    iget-boolean v9, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v9, :cond_6

    const/4 v12, 0x1

    :cond_6
    sub-int/2addr v14, v3

    .line 246
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v9, 0x1

    if-ne v3, v9, :cond_7

    shl-int v3, v9, v7

    move v11, v10

    int-to-long v9, v3

    or-long v9, v17, v9

    move-wide/from16 v17, v9

    move v10, v11

    goto :goto_4

    :cond_7
    move v11, v10

    :goto_4
    move v15, v13

    move/from16 v13, v20

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v19

    const/4 v9, 0x0

    goto :goto_0

    :cond_8
    move/from16 v19, v3

    const/4 v3, 0x2

    if-eqz v12, :cond_9

    if-ne v13, v3, :cond_9

    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    :goto_6
    const/4 v7, 0x0

    :goto_7
    const-wide/16 v20, 0x1

    if-lez v16, :cond_13

    if-lez v14, :cond_13

    const v9, 0x7fffffff

    move v3, v9

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v22, 0x0

    :goto_8
    if-ge v9, v8, :cond_d

    .line 263
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 264
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move/from16 v25, v7

    move-object/from16 v7, v24

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move/from16 v24, v10

    .line 267
    iget-boolean v10, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v10, :cond_a

    goto :goto_9

    .line 270
    :cond_a
    iget v10, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v10, v3, :cond_b

    .line 271
    iget v3, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    shl-long v10, v20, v9

    move-wide/from16 v22, v10

    const/4 v11, 0x1

    goto :goto_9

    .line 274
    :cond_b
    iget v7, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v7, v3, :cond_c

    shl-long v26, v20, v9

    or-long v22, v22, v26

    add-int/lit8 v11, v11, 0x1

    :cond_c
    :goto_9
    add-int/lit8 v9, v9, 0x1

    move/from16 v10, v24

    move/from16 v7, v25

    goto :goto_8

    :cond_d
    move/from16 v25, v7

    move/from16 v24, v10

    or-long v17, v17, v22

    if-le v11, v14, :cond_e

    move v11, v1

    move/from16 v26, v2

    goto :goto_d

    :cond_e
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v8, :cond_12

    .line 289
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 290
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move/from16 v26, v2

    const/4 v11, 0x1

    shl-int v2, v11, v7

    move v11, v1

    int-to-long v1, v2

    and-long v20, v22, v1

    const-wide/16 v27, 0x0

    cmp-long v20, v20, v27

    if-nez v20, :cond_10

    .line 293
    iget v9, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v9, v3, :cond_f

    or-long v17, v17, v1

    :cond_f
    move/from16 v20, v3

    goto :goto_c

    :cond_10
    if-eqz v5, :cond_11

    .line 297
    iget-boolean v1, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    if-ne v14, v1, :cond_11

    .line 299
    iget v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int v1, v2, v4

    move/from16 v20, v3

    const/4 v3, 0x0

    invoke-virtual {v9, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b

    :cond_11
    move/from16 v20, v3

    .line 301
    :goto_b
    iget v1, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 302
    iput-boolean v2, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    add-int/lit8 v14, v14, -0x1

    :goto_c
    add-int/lit8 v7, v7, 0x1

    move v1, v11

    move/from16 v3, v20

    move/from16 v2, v26

    goto :goto_a

    :cond_12
    move/from16 v10, v24

    const/4 v3, 0x2

    const/4 v7, 0x1

    goto/16 :goto_7

    :cond_13
    move v11, v1

    move/from16 v26, v2

    move/from16 v25, v7

    move/from16 v24, v10

    :goto_d
    const/4 v1, 0x1

    if-nez v12, :cond_14

    if-ne v13, v1, :cond_14

    move v2, v1

    goto :goto_e

    :cond_14
    const/4 v2, 0x0

    :goto_e
    if-lez v14, :cond_20

    const-wide/16 v9, 0x0

    cmp-long v3, v17, v9

    if-eqz v3, :cond_20

    sub-int/2addr v13, v1

    if-lt v14, v13, :cond_15

    if-nez v2, :cond_15

    if-le v15, v1, :cond_20

    .line 315
    :cond_15
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    int-to-float v1, v1

    if-nez v2, :cond_17

    and-long v2, v17, v20

    const-wide/16 v9, 0x0

    cmp-long v2, v2, v9

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v13, 0x0

    if-eqz v2, :cond_16

    .line 320
    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 321
    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v2, :cond_16

    sub-float/2addr v1, v3

    :cond_16
    add-int/lit8 v2, v8, -0x1

    const/4 v5, 0x1

    shl-int v7, v5, v2

    int-to-long v9, v7

    and-long v9, v17, v9

    const-wide/16 v15, 0x0

    cmp-long v5, v9, v15

    if-eqz v5, :cond_18

    .line 324
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 325
    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v2, :cond_18

    sub-float/2addr v1, v3

    goto :goto_f

    :cond_17
    const/4 v13, 0x0

    :cond_18
    :goto_f
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_19

    mul-int/2addr v14, v4

    int-to-float v2, v14

    div-float/2addr v2, v1

    float-to-int v9, v2

    goto :goto_10

    :cond_19
    move v9, v13

    :goto_10
    move v1, v13

    :goto_11
    if-ge v1, v8, :cond_21

    const/4 v2, 0x1

    shl-int v3, v2, v1

    int-to-long v2, v3

    and-long v2, v17, v2

    const-wide/16 v14, 0x0

    cmp-long v2, v2, v14

    if-nez v2, :cond_1a

    const/4 v2, 0x1

    const/4 v5, 0x2

    goto :goto_13

    .line 335
    :cond_1a
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 336
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 337
    instance-of v2, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v2, :cond_1c

    .line 339
    iput v9, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v2, 0x1

    .line 340
    iput-boolean v2, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v1, :cond_1b

    .line 341
    iget-boolean v2, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v2, :cond_1b

    neg-int v2, v9

    const/4 v5, 0x2

    .line 344
    div-int/2addr v2, v5

    iput v2, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    goto :goto_12

    :cond_1b
    const/4 v5, 0x2

    :goto_12
    const/4 v2, 0x1

    const/16 v25, 0x1

    goto :goto_13

    :cond_1c
    const/4 v5, 0x2

    .line 347
    iget-boolean v2, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v2, :cond_1d

    .line 348
    iput v9, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v2, 0x1

    .line 349
    iput-boolean v2, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    neg-int v7, v9

    .line 350
    div-int/2addr v7, v5

    iput v7, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v25, v2

    goto :goto_13

    :cond_1d
    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    .line 357
    div-int/lit8 v7, v9, 0x2

    iput v7, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_1e
    add-int/lit8 v7, v8, -0x1

    if-eq v1, v7, :cond_1f

    .line 360
    div-int/lit8 v7, v9, 0x2

    iput v7, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    :cond_1f
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_20
    const/4 v13, 0x0

    :cond_21
    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v25, :cond_23

    :goto_14
    if-ge v13, v8, :cond_23

    .line 371
    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 372
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 374
    iget-boolean v5, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v5, :cond_22

    goto :goto_15

    .line 376
    :cond_22
    iget v5, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr v5, v4

    iget v3, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v5, v3

    .line 377
    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/view/View;->measure(II)V

    :goto_15
    add-int/lit8 v13, v13, 0x1

    goto :goto_14

    :cond_23
    if-eq v11, v1, :cond_24

    move/from16 v1, v24

    goto :goto_16

    :cond_24
    move/from16 v1, v19

    :goto_16
    move/from16 v2, v26

    .line 386
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 610
    instance-of p0, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    return p0
.end method

.method public dismissPopupMenus()V
    .locals 0

    .line 723
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz p0, :cond_0

    .line 724
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 48
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 1

    .line 583
    new-instance p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v0, 0x10

    .line 585
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    .line 48
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 1

    .line 591
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 0

    if-eqz p1, :cond_2

    .line 597
    instance-of p0, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroidx/appcompat/widget/ActionMenuView$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    :goto_0
    iget p1, p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz p1, :cond_1

    const/16 p1, 0x10

    .line 601
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    :cond_1
    return-object p0

    .line 605
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateOverflowButtonLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 1

    .line 616
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    const/4 v0, 0x1

    .line 617
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    .line 651
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    .line 652
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 653
    new-instance v1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 654
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 655
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 656
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 657
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 659
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 660
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 663
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 565
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 566
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPopupTheme()I
    .locals 0

    .line 113
    iget p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    return p0
.end method

.method public getWindowAnimations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 736
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 737
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 739
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result p0

    if-ge p1, p0, :cond_1

    instance-of p0, v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    if-eqz p0, :cond_1

    .line 740
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v1}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result p0

    or-int/2addr v0, p0

    :cond_1
    if-lez p1, :cond_2

    .line 742
    instance-of p0, v2, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    if-eqz p0, :cond_2

    .line 743
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v2}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result p0

    or-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 0

    .line 700
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    .line 639
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1

    .line 625
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p0

    return p0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 0

    .line 716
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOverflowMenuShowing()Z
    .locals 0

    .line 710
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOverflowReserved()Z
    .locals 0

    .line 572
    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mReserveOverflow:Z

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 128
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 133
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 135
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 544
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 545
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    .line 439
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-nez v1, :cond_0

    .line 440
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    return-void

    .line 444
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    .line 445
    div-int/lit8 v2, v2, 0x2

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getDividerWidth()I

    move-result v3

    sub-int v4, p4, p2

    .line 450
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    .line 452
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    move v10, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v5, v1, :cond_5

    .line 454
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 455
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_1

    goto :goto_2

    .line 459
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 460
    iget-boolean v14, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v14, :cond_4

    .line 461
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 462
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/2addr v8, v3

    .line 465
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v6, :cond_3

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v15, v11

    add-int v11, v15, v8

    goto :goto_1

    .line 472
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v11, v15, v11

    sub-int v15, v11, v8

    .line 475
    :goto_1
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    add-int/2addr v14, v7

    .line 477
    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v10, v8

    move v8, v12

    goto :goto_2

    .line 482
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v10, v7

    .line 485
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v7

    add-int/lit8 v9, v9, 0x1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-ne v1, v12, :cond_6

    if-nez v8, :cond_6

    const/4 v3, 0x0

    .line 494
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 496
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 497
    div-int/lit8 v4, v4, 0x2

    .line 498
    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    .line 499
    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v2, v5

    add-int/2addr v1, v4

    add-int/2addr v3, v2

    .line 500
    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6
    xor-int/lit8 v3, v8, 0x1

    sub-int/2addr v9, v3

    if-lez v9, :cond_7

    .line 505
    div-int v7, v10, v9

    const/4 v3, 0x0

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_3
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v6, :cond_a

    .line 508
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    :goto_4
    if-ge v3, v1, :cond_d

    .line 510
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 511
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 512
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_9

    iget-boolean v8, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v8, :cond_8

    goto :goto_5

    .line 516
    :cond_8
    iget v8, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v8

    .line 517
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 518
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 519
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    sub-int v12, v5, v8

    add-int/2addr v9, v10

    .line 520
    invoke-virtual {v6, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 521
    iget v6, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    sub-int/2addr v5, v8

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 524
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v5

    :goto_6
    if-ge v3, v1, :cond_d

    .line 526
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 527
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 528
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_c

    iget-boolean v8, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v8, :cond_b

    goto :goto_7

    .line 532
    :cond_b
    iget v8, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v5, v8

    .line 533
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 534
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 535
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    add-int v12, v5, v8

    add-int/2addr v9, v10

    .line 536
    invoke-virtual {v6, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    .line 537
    iget v6, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    :cond_c
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 147
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 148
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 150
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eq v0, v1, :cond_1

    .line 151
    iput v3, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 156
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 157
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v1, :cond_2

    iget v4, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v0, v4, :cond_2

    .line 158
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 159
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 162
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v0

    .line 163
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v1, :cond_3

    if-lez v0, :cond_3

    .line 164
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_4

    .line 168
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 169
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 170
    iput v3, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v3, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    :goto_2
    return-void
.end method

.method public peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    .line 682
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0

    .line 756
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 0

    .line 672
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 673
    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0

    .line 141
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 554
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 555
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .line 578
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mReserveOverflow:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .line 97
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    .line 98
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    if-nez p1, :cond_0

    .line 100
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 0

    .line 122
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 123
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 0

    .line 691
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
