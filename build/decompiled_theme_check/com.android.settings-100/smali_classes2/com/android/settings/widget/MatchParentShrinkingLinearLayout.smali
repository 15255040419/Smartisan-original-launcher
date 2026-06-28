.class public Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;
.super Landroid/view/ViewGroup;
.source "MatchParentShrinkingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;,
        Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$DividerMode;,
        Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 186
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    const/4 v1, -0x1

    .line 96
    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    const/4 v2, 0x0

    .line 104
    iput v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    const v3, 0x800033

    .line 110
    iput v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    .line 169
    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mLayoutDirection:I

    .line 188
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 191
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    .line 193
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setOrientation(I)V

    .line 196
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_1

    .line 198
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setGravity(I)V

    :cond_1
    const/4 p2, 0x2

    .line 201
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-nez p2, :cond_2

    .line 203
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setBaselineAligned(Z)V

    :cond_2
    const/4 p2, 0x4

    const/high16 p3, -0x40800000    # -1.0f

    .line 206
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    const/4 p2, 0x3

    .line 208
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    const/4 p2, 0x6

    .line 211
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    const/4 p2, 0x5

    .line 213
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x7

    .line 214
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    const/16 p2, 0x8

    .line 215
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    .line 217
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 10

    .line 1002
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1005
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1006
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 1007
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 1009
    iget v2, v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 1012
    iget v9, v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    .line 1013
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move v6, v0

    .line 1016
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1017
    iput v9, v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 10

    .line 959
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 962
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 963
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 965
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 967
    iget v2, v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 970
    iget v9, v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    .line 971
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    .line 974
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 975
    iput v9, v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 0

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 1340
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1443
    instance-of p0, p1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    return p0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 6

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 361
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 363
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 364
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 370
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    sub-int/2addr v3, v4

    .line 372
    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, -0x1

    .line 378
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingLeft()I

    move-result v0

    goto :goto_3

    .line 384
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    goto :goto_2

    .line 387
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    if-eqz v1, :cond_5

    .line 389
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    :goto_2
    sub-int/2addr v0, v1

    goto :goto_3

    .line 391
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 394
    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_6
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 5

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 333
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 335
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 336
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 338
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 339
    invoke-virtual {p0, p1, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 350
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 351
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 353
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 399
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 401
    iget-object p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 405
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 405
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 407
    iget-object p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 1454
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1455
    iget-boolean v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    const-string v1, "layout:baselineAligned"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1456
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    const-string v1, "layout:baselineAlignedChildIndex"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1457
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    const-string v1, "measurement:baselineChildTop"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1458
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const-string v1, "measurement:orientation"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1459
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    const-string v1, "measurement:gravity"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1460
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    const-string v1, "measurement:totalLength"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1461
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    const-string v1, "layout:totalLength"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1462
    iget-boolean p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    const-string v0, "layout:useLargestChild"

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->generateDefaultLayoutParams()Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    .locals 2

    .line 1426
    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v0, -0x2

    if-nez p0, :cond_0

    .line 1427
    new-instance p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-direct {p0, v0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(II)V

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 1429
    new-instance p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(II)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    .locals 1

    .line 1413
    new-instance v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    .locals 0

    .line 1436
    new-instance p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1448
    const-class p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBaseline()I
    .locals 5

    .line 467
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_0

    .line 468
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result p0

    return p0

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_6

    .line 476
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 480
    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    if-nez p0, :cond_1

    return v2

    .line 486
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 496
    :cond_2
    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    .line 498
    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 499
    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 503
    :cond_3
    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBottom:I

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v2, p0

    goto :goto_0

    .line 507
    :cond_4
    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBottom:I

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v3, p0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 514
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 515
    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p0

    add-int/2addr v2, v1

    return v2

    .line 472
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 0

    .line 524
    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    return p0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDividerPadding()I
    .locals 0

    .line 305
    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    return p0
.end method

.method public getDividerWidth()I
    .locals 0

    .line 314
    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    return p0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 1364
    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    return p0
.end method

.method public getShowDividers()I
    .locals 0

    .line 245
    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    return p0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getVirtualChildCount()I
    .locals 0

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getWeightSum()F
    .locals 0

    .line 576
    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    return p0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 614
    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 615
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 616
    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 617
    :cond_3
    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_5

    .line 620
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method public isBaselineAligned()Z
    .locals 0

    .line 417
    iget-boolean p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    return p0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 0

    .line 445
    iget-boolean p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    return p0
.end method

.method layoutHorizontal(IIII)V
    .locals 24

    move-object/from16 v6, p0

    .line 1216
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->isLayoutRtl()Z

    move-result v0

    .line 1217
    iget v7, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    sub-int v1, p4, p2

    .line 1224
    iget v2, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int v8, v1, v2

    sub-int/2addr v1, v7

    .line 1227
    iget v2, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int v9, v1, v2

    .line 1229
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v10

    .line 1231
    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    const v2, 0x800007

    and-int/2addr v2, v1

    and-int/lit8 v11, v1, 0x70

    .line 1234
    iget-boolean v12, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    .line 1236
    iget-object v13, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mMaxAscent:[I

    .line 1237
    iget-object v14, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mMaxDescent:[I

    .line 1239
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLayoutDirection()I

    move-result v1

    .line 1240
    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 1253
    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    goto :goto_0

    .line 1243
    :cond_0
    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    add-int v1, v1, p3

    sub-int v1, v1, p1

    iget v2, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 1248
    :cond_1
    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    sub-int v2, p3, p1

    iget v3, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v15

    add-int/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v10, -0x1

    move/from16 v16, v0

    const/16 v17, -0x1

    goto :goto_1

    :cond_2
    move/from16 v16, v2

    move/from16 v17, v5

    :goto_1
    move v3, v2

    :goto_2
    if-ge v3, v10, :cond_e

    mul-int v0, v17, v3

    add-int v2, v16, v0

    .line 1267
    invoke-virtual {v6, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1270
    invoke-virtual {v6, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v0

    add-int/2addr v1, v0

    move/from16 v21, v5

    move/from16 v22, v7

    move/from16 v19, v10

    move/from16 v20, v11

    goto/16 :goto_6

    .line 1271
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v15, 0x8

    if-eq v5, v15, :cond_d

    .line 1272
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1273
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1277
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    move/from16 v18, v3

    if-eqz v12, :cond_4

    .line 1279
    iget v3, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    move/from16 v19, v10

    const/4 v10, -0x1

    if-eq v3, v10, :cond_5

    .line 1280
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v3

    goto :goto_3

    :cond_4
    move/from16 v19, v10

    :cond_5
    const/4 v3, -0x1

    .line 1283
    :goto_3
    iget v10, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    if-gez v10, :cond_6

    move v10, v11

    :cond_6
    and-int/lit8 v10, v10, 0x70

    move/from16 v20, v11

    const/16 v11, 0x10

    if-eq v10, v11, :cond_b

    const/16 v11, 0x30

    if-eq v10, v11, :cond_9

    const/16 v11, 0x50

    if-eq v10, v11, :cond_7

    move v3, v7

    const/4 v11, -0x1

    :goto_4
    const/16 v21, 0x1

    goto :goto_5

    :cond_7
    sub-int v10, v8, v5

    .line 1313
    iget v11, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v11

    const/4 v11, -0x1

    if-eq v3, v11, :cond_8

    .line 1315
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v21, v21, v3

    const/4 v3, 0x2

    .line 1316
    aget v22, v14, v3

    sub-int v22, v22, v21

    sub-int v10, v10, v22

    :cond_8
    move v3, v10

    goto :goto_4

    :cond_9
    const/4 v11, -0x1

    .line 1290
    iget v10, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v7

    const/16 v21, 0x1

    if-eq v3, v11, :cond_a

    .line 1292
    aget v22, v13, v21

    sub-int v22, v22, v3

    add-int v10, v10, v22

    :cond_a
    move v3, v10

    goto :goto_5

    :cond_b
    const/4 v11, -0x1

    const/16 v21, 0x1

    sub-int v3, v9, v5

    const/4 v10, 0x2

    .line 1308
    div-int/2addr v3, v10

    add-int/2addr v3, v7

    iget v10, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v10

    iget v10, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v10

    .line 1324
    :goto_5
    invoke-virtual {v6, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1325
    iget v10, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    add-int/2addr v1, v10

    .line 1328
    :cond_c
    iget v10, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v1

    .line 1329
    invoke-virtual {v6, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v22, v10, v1

    move-object v1, v0

    move-object/from16 v0, p0

    move-object/from16 p1, v1

    move v11, v2

    move/from16 v2, v22

    move/from16 v22, v7

    const/16 v23, -0x1

    move-object v7, v4

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1331
    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v15, v0

    move-object/from16 v0, p1

    .line 1332
    invoke-virtual {v6, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v15, v1

    add-int/2addr v10, v15

    .line 1334
    invoke-virtual {v6, v0, v11}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v3, v18, v0

    move v1, v10

    goto :goto_7

    :cond_d
    move/from16 v18, v3

    move/from16 v22, v7

    move/from16 v19, v10

    move/from16 v20, v11

    const/16 v21, 0x1

    :goto_6
    const/16 v23, -0x1

    :goto_7
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v5, v21

    move/from16 v7, v22

    const/4 v15, 0x2

    goto/16 :goto_2

    :cond_e
    return-void
.end method

.method layoutVertical(IIII)V
    .locals 17

    move-object/from16 v6, p0

    .line 1111
    iget v7, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    sub-int v0, p3, p1

    .line 1118
    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    sub-int v8, v0, v1

    sub-int/2addr v0, v7

    .line 1121
    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    sub-int v9, v0, v1

    .line 1123
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v10

    .line 1125
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v1, v0, 0x70

    const v2, 0x800007

    and-int v11, v0, v2

    const/16 v0, 0x10

    if-eq v1, v0, :cond_1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_0

    .line 1141
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    goto :goto_0

    .line 1131
    :cond_0
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1136
    :cond_1
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    sub-int v1, p4, p2

    iget v2, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x0

    move v12, v1

    :goto_1
    if-ge v12, v10, :cond_8

    .line 1146
    invoke-virtual {v6, v12}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x1

    if-nez v13, :cond_2

    .line 1148
    invoke-virtual {v6, v12}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_5

    .line 1149
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    .line 1150
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1151
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1154
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 1156
    iget v1, v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    if-gez v1, :cond_3

    move v1, v11

    .line 1160
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLayoutDirection()I

    move-result v2

    .line 1161
    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v14, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    .line 1174
    iget v1, v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    :goto_2
    move v2, v1

    goto :goto_4

    :cond_4
    sub-int v1, v8, v4

    .line 1169
    iget v2, v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    :cond_5
    sub-int v1, v9, v4

    .line 1164
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    :goto_3
    sub-int/2addr v1, v2

    goto :goto_2

    .line 1178
    :goto_4
    invoke-virtual {v6, v12}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1179
    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 1182
    :cond_6
    iget v1, v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int v16, v0, v1

    .line 1183
    invoke-virtual {v6, v13}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v3, v16, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v14, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1185
    iget v0, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v0

    invoke-virtual {v6, v13}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int/2addr v15, v0

    add-int v16, v16, v15

    .line 1187
    invoke-virtual {v6, v13, v12}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v12, v0

    move/from16 v0, v16

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    :goto_5
    move v1, v14

    :goto_6
    add-int/2addr v12, v1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1062
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method measureHorizontal(II)V
    .locals 0

    .line 994
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "horizontal mode not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method measureNullChild(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method measureVertical(II)V
    .locals 33

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    .line 642
    iput v10, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 652
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 653
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 658
    iget v14, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    .line 659
    iget-boolean v15, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    move v1, v10

    move v3, v1

    move v4, v3

    move v5, v4

    move/from16 v18, v5

    move/from16 v20, v18

    move/from16 v0, v16

    move/from16 v19, v17

    const/high16 v2, -0x80000000

    :goto_0
    const/16 v6, 0x8

    move/from16 v22, v4

    if-ge v5, v11, :cond_10

    .line 665
    invoke-virtual {v7, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 668
    iget v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual {v7, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    move/from16 v23, v11

    move/from16 v4, v22

    :goto_1
    const/high16 v9, -0x80000000

    move/from16 v22, v13

    goto/16 :goto_a

    :cond_0
    move/from16 v25, v1

    .line 672
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 673
    invoke-virtual {v7, v4, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v5, v1

    move/from16 v23, v11

    move/from16 v4, v22

    move/from16 v1, v25

    goto :goto_1

    .line 677
    :cond_1
    invoke-virtual {v7, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 678
    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v6, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v1, v6

    iput v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 681
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 683
    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    add-float v26, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v13, v1, :cond_3

    .line 685
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    if-nez v0, :cond_3

    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_3

    .line 689
    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 690
    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v0

    move/from16 v27, v2

    iget v2, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    move/from16 v21, v3

    move-object v3, v4

    move/from16 v23, v11

    move/from16 v18, v17

    move/from16 v28, v22

    move/from16 v8, v25

    move/from16 v1, v27

    const/high16 v9, -0x80000000

    move v11, v5

    move/from16 v22, v13

    move-object v13, v6

    goto/16 :goto_4

    :cond_3
    move/from16 v27, v2

    .line 695
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    if-nez v0, :cond_4

    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_4

    const/4 v0, -0x2

    .line 701
    iput v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    const/high16 v2, -0x80000000

    :goto_2
    const/16 v28, 0x0

    cmpl-float v0, v26, v16

    if-nez v0, :cond_5

    .line 708
    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    move/from16 v29, v0

    goto :goto_3

    :cond_5
    const/16 v29, 0x0

    :goto_3
    move-object/from16 v0, p0

    move/from16 v8, v25

    const/high16 v24, 0x40000000    # 2.0f

    move-object v1, v4

    move/from16 v31, v2

    move/from16 v30, v27

    move v2, v5

    move v9, v3

    move/from16 v3, p1

    move-object/from16 v25, v4

    move/from16 v23, v11

    move/from16 v11, v24

    move/from16 v32, v22

    move/from16 v22, v13

    move/from16 v13, v32

    move/from16 v4, v28

    move v11, v5

    move/from16 v5, p2

    move/from16 v21, v9

    move/from16 v28, v13

    const/high16 v9, -0x80000000

    move-object v13, v6

    move/from16 v6, v29

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    move/from16 v0, v31

    if-eq v0, v9, :cond_6

    .line 713
    iput v0, v13, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    .line 716
    :cond_6
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 717
    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    add-int v2, v1, v0

    .line 718
    iget v3, v13, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v13, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v25

    .line 719
    invoke-virtual {v7, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 718
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    move/from16 v1, v30

    if-eqz v15, :cond_7

    .line 722
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    :cond_7
    :goto_4
    if-ltz v14, :cond_8

    add-int/lit8 v5, v11, 0x1

    if-ne v14, v5, :cond_8

    .line 731
    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iput v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    :cond_8
    if-ge v11, v14, :cond_a

    .line 737
    iget v0, v13, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-gtz v0, :cond_9

    goto :goto_5

    .line 738
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_5
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_b

    .line 745
    iget v0, v13, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    move/from16 v0, v17

    move/from16 v20, v0

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    .line 754
    :goto_6
    iget v2, v13, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    iget v4, v13, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 755
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 756
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 757
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v10, v6}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->combineMeasuredStates(II)I

    move-result v6

    if-eqz v19, :cond_c

    .line 759
    iget v8, v13, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_c

    move/from16 v8, v17

    goto :goto_7

    :cond_c
    const/4 v8, 0x0

    .line 760
    :goto_7
    iget v10, v13, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v10, v10, v16

    if-lez v10, :cond_e

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    move v2, v4

    :goto_8
    move/from16 v13, v21

    .line 765
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v13, v0

    goto :goto_9

    :cond_e
    move/from16 v13, v21

    if-eqz v0, :cond_f

    move v4, v2

    :cond_f
    move/from16 v2, v28

    .line 768
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v28, v4

    .line 772
    :goto_9
    invoke-virtual {v7, v3, v11}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v11

    move v2, v1

    move v1, v5

    move v10, v6

    move/from16 v19, v8

    move v3, v13

    move/from16 v4, v28

    move v5, v0

    move/from16 v0, v26

    :goto_a
    add-int/lit8 v5, v5, 0x1

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v13, v22

    move/from16 v11, v23

    goto/16 :goto_0

    :cond_10
    move v8, v1

    move v1, v2

    move/from16 v23, v11

    move/from16 v2, v22

    const/high16 v9, -0x80000000

    move/from16 v22, v13

    move v13, v3

    .line 775
    iget v3, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    if-lez v3, :cond_11

    move/from16 v3, v23

    invoke-virtual {v7, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 776
    iget v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v5, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v4, v5

    iput v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    goto :goto_b

    :cond_11
    move/from16 v3, v23

    :cond_12
    :goto_b
    move/from16 v4, v22

    if-eqz v15, :cond_16

    if-eq v4, v9, :cond_13

    if-nez v4, :cond_16

    :cond_13
    const/4 v5, 0x0

    .line 781
    iput v5, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v3, :cond_16

    .line 784
    invoke-virtual {v7, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_14

    .line 787
    iget v9, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual {v7, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v11

    add-int/2addr v9, v11

    iput v9, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    goto :goto_d

    .line 791
    :cond_14
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v6, :cond_15

    .line 792
    invoke-virtual {v7, v9, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v9

    add-int/2addr v5, v9

    goto :goto_d

    .line 797
    :cond_15
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 799
    iget v14, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    add-int v21, v14, v1

    .line 800
    iget v6, v11, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int v21, v21, v6

    iget v6, v11, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int v21, v21, v6

    .line 801
    invoke-virtual {v7, v9}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int v6, v21, v6

    .line 800
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    :goto_d
    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8

    goto :goto_c

    .line 806
    :cond_16
    iget v5, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v6, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    iget v9, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    add-int/2addr v6, v9

    add-int/2addr v5, v6

    iput v5, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 808
    iget v5, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v6, p2

    move v9, v13

    const/4 v11, 0x0

    .line 814
    invoke-static {v5, v6, v11}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->resolveSizeAndState(III)I

    move-result v5

    const v11, 0xffffff

    and-int/2addr v11, v5

    .line 820
    iget v13, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v11, v13

    if-nez v18, :cond_1b

    if-eqz v11, :cond_17

    cmpl-float v13, v0, v16

    if-lez v13, :cond_17

    goto :goto_10

    .line 912
    :cond_17
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v15, :cond_1a

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v4, v2, :cond_1a

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v3, :cond_1a

    .line 920
    invoke-virtual {v7, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 922
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v11, 0x8

    if-ne v9, v11, :cond_18

    goto :goto_f

    .line 926
    :cond_18
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 928
    iget v9, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v9, v9, v16

    if-lez v9, :cond_19

    .line 931
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 933
    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 930
    invoke-virtual {v4, v9, v13}, Landroid/view/View;->measure(II)V

    :cond_19
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1a
    move/from16 v23, v3

    move/from16 v3, p1

    goto/16 :goto_1a

    .line 822
    :cond_1b
    :goto_10
    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    cmpl-float v9, v1, v16

    if-lez v9, :cond_1c

    move v0, v1

    :cond_1c
    const/4 v1, 0x0

    .line 824
    iput v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    move v9, v0

    move v0, v1

    :goto_11
    if-ge v0, v3, :cond_2a

    .line 827
    invoke-virtual {v7, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_29

    .line 829
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_1d

    goto/16 :goto_18

    .line 833
    :cond_1d
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 835
    iget v1, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v18, v1, v16

    if-lez v18, :cond_23

    if-lez v11, :cond_23

    int-to-float v15, v11

    mul-float/2addr v15, v1

    div-float/2addr v15, v9

    float-to-int v15, v15

    sub-float/2addr v9, v1

    sub-int/2addr v11, v15

    .line 844
    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    move/from16 v18, v9

    iget v9, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    add-int/2addr v1, v9

    iget v9, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v9

    iget v9, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v9

    iget v9, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    move/from16 v23, v3

    move/from16 v3, p1

    invoke-static {v3, v1, v9}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 850
    iget v9, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    if-nez v9, :cond_20

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v4, v9, :cond_1e

    goto :goto_13

    :cond_1e
    if-lez v15, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 v15, 0x0

    .line 864
    :goto_12
    invoke-static {v15, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 863
    invoke-virtual {v13, v1, v15}, Landroid/view/View;->measure(II)V

    goto :goto_14

    :cond_20
    const/high16 v9, 0x40000000    # 2.0f

    .line 853
    :goto_13
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v15, v21, v15

    if-gez v15, :cond_21

    const/4 v15, 0x0

    .line 859
    :cond_21
    invoke-static {v15, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 858
    invoke-virtual {v13, v1, v15}, Landroid/view/View;->measure(II)V

    .line 869
    :goto_14
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    invoke-static {v10, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->combineMeasuredStates(II)I

    move-result v10

    move/from16 v9, v18

    :cond_22
    move/from16 v18, v4

    goto :goto_15

    :cond_23
    move/from16 v23, v3

    move/from16 v3, p1

    if-gez v11, :cond_22

    .line 871
    iget v1, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v1, v15, :cond_22

    .line 872
    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    iget v15, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    add-int/2addr v1, v15

    iget v15, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v15

    iget v15, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v15

    iget v15, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    invoke-static {v3, v1, v15}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 876
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v11

    if-gez v15, :cond_24

    const/4 v15, 0x0

    .line 880
    :cond_24
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v18, v15, v18

    sub-int v11, v11, v18

    move/from16 v18, v4

    const/high16 v4, 0x40000000    # 2.0f

    .line 883
    invoke-static {v15, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 882
    invoke-virtual {v13, v1, v15}, Landroid/view/View;->measure(II)V

    .line 886
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    invoke-static {v10, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->combineMeasuredStates(II)I

    move-result v10

    .line 891
    :goto_15
    iget v1, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    iget v4, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v4

    .line 892
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    .line 893
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v12, v15, :cond_25

    .line 895
    iget v15, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    move/from16 v21, v1

    const/4 v1, -0x1

    if-ne v15, v1, :cond_26

    move/from16 v15, v17

    goto :goto_16

    :cond_25
    move/from16 v21, v1

    const/4 v1, -0x1

    :cond_26
    const/4 v15, 0x0

    :goto_16
    if-eqz v15, :cond_27

    move/from16 v4, v21

    .line 898
    :cond_27
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v19, :cond_28

    .line 901
    iget v4, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    if-ne v4, v1, :cond_28

    move/from16 v4, v17

    goto :goto_17

    :cond_28
    const/4 v4, 0x0

    .line 903
    :goto_17
    iget v15, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 904
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    add-int v19, v15, v19

    iget v1, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int v19, v19, v1

    iget v1, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int v19, v19, v1

    .line 905
    invoke-virtual {v7, v13}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v1, v19, v1

    .line 904
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    move/from16 v19, v4

    goto :goto_19

    :cond_29
    :goto_18
    move/from16 v23, v3

    move/from16 v18, v4

    move/from16 v3, p1

    :goto_19
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v18

    move/from16 v3, v23

    const/4 v1, 0x0

    goto/16 :goto_11

    :cond_2a
    move/from16 v23, v3

    move/from16 v3, p1

    .line 909
    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    iget v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    iput v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    move v0, v2

    :goto_1a
    if-nez v19, :cond_2b

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v12, v1, :cond_2b

    goto :goto_1b

    :cond_2b
    move v0, v8

    .line 944
    :goto_1b
    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 947
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 949
    invoke-static {v0, v3, v10}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v7, v0, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setMeasuredDimension(II)V

    if-eqz v20, :cond_2c

    move/from16 v0, v23

    .line 953
    invoke-direct {v7, v0, v6}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->forceUniformWidth(II)V

    :cond_2c
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 324
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1091
    iget p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1092
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->layoutVertical(IIII)V

    goto :goto_0

    .line 1094
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->layoutHorizontal(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 598
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureVertical(II)V

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureHorizontal(II)V

    :goto_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 1194
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 1195
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mLayoutDirection:I

    if-eq p1, v0, :cond_0

    .line 1196
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mLayoutDirection:I

    .line 1197
    iget p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    if-nez p1, :cond_0

    .line 1198
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 431
    iput-boolean p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-ltz p1, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 539
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    return-void

    .line 536
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base aligned child index out of range (0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 272
    :cond_0
    iput-object p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 274
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    .line 275
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    goto :goto_0

    .line 277
    :cond_1
    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    .line 278
    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 280
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setWillNotDraw(Z)V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 294
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1379
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    .line 1388
    :cond_1
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    .line 1389
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1396
    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_0

    const v0, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 1397
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    .line 1398
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 462
    iput-boolean p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1351
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1352
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    .line 1353
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .line 228
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    .line 231
    :cond_0
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    and-int/lit8 p1, p1, 0x70

    .line 1405
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v1, v0, 0x70

    if-eq v1, p1, :cond_0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    .line 1406
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    .line 1407
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    .line 593
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
