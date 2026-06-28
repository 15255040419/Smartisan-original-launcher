.class public Lcom/android/settings/widget/ChartSweepView;
.super Landroid/view/View;
.source "ChartSweepView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/ChartSweepView$OnSweepListener;
    }
.end annotation


# static fields
.field private static final DRAW_OUTLINE:Z = false

.field public static final HORIZONTAL:I = 0x0

.field private static final LARGE_WIDTH:I = 0x400

.field private static final MODE_DRAG:I = 0x1

.field private static final MODE_LABEL:I = 0x2

.field private static final MODE_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAxis:Lcom/android/settings/widget/ChartAxis;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContentOffset:Landroid/graphics/Rect;

.field private mDragInterval:J

.field private mFollowAxis:I

.field private mLabelColor:I

.field private mLabelLayout:Landroid/text/DynamicLayout;

.field private mLabelMinSize:I

.field private mLabelOffset:F

.field private mLabelSize:F

.field private mLabelTemplate:Landroid/text/SpannableStringBuilder;

.field private mLabelTemplateRes:I

.field private mLabelValue:J

.field private mListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

.field private mMargins:Landroid/graphics/Rect;

.field private mNeighborMargin:F

.field private mNeighbors:[Lcom/android/settings/widget/ChartSweepView;

.field private mOutlinePaint:Landroid/graphics/Paint;

.field private mSafeRegion:I

.field private mSweep:Landroid/graphics/drawable/Drawable;

.field private mSweepOffset:Landroid/graphics/Point;

.field private mSweepPadding:Landroid/graphics/Rect;

.field private mTouchMode:I

.field private mTracking:Landroid/view/MotionEvent;

.field private mTrackingStart:F

.field private mValidAfter:J

.field private mValidAfterDynamic:Lcom/android/settings/widget/ChartSweepView;

.field private mValidBefore:J

.field private mValidBeforeDynamic:Lcom/android/settings/widget/ChartSweepView;

.field private mValue:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    const-wide/16 v1, 0x1

    .line 98
    iput-wide v1, p0, Lcom/android/settings/widget/ChartSweepView;->mDragInterval:J

    new-array v1, v0, [Lcom/android/settings/widget/ChartSweepView;

    .line 110
    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mNeighbors:[Lcom/android/settings/widget/ChartSweepView;

    .line 151
    new-instance v1, Lcom/android/settings/widget/ChartSweepView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/ChartSweepView$1;-><init>(Lcom/android/settings/widget/ChartSweepView;)V

    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 123
    sget-object v1, Lcom/android/settings/R$styleable;->ChartSweepView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const p3, -0xffff01

    .line 126
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    const/4 v1, 0x6

    .line 127
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/android/settings/widget/ChartSweepView;->setSweepDrawable(Landroid/graphics/drawable/Drawable;I)V

    const/4 v1, -0x1

    .line 128
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setFollowAxis(I)V

    const/4 v1, 0x4

    .line 129
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setNeighborMargin(F)V

    const/4 v1, 0x5

    .line 130
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setSafeRegion(I)V

    const/4 v1, 0x2

    .line 132
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setLabelMinSize(I)V

    const/4 v1, 0x3

    .line 133
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setLabelTemplate(I)V

    .line 134
    invoke-virtual {p0, p3}, Lcom/android/settings/widget/ChartSweepView;->setLabelColor(I)V

    .line 139
    iget-object p3, p0, Lcom/android/settings/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object p3, p0, Lcom/android/settings/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    iget-object p3, p0, Lcom/android/settings/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/ChartSweepView;->setClickable(Z)V

    .line 146
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ChartSweepView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartSweepView;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->dispatchRequestEdit()V

    return-void
.end method

.method private buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;
    .locals 9

    .line 603
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    instance-of v0, v0, Lcom/android/settings/widget/InvertedChartAxis;

    if-eqz v0, :cond_0

    move-wide v7, p2

    move-wide p2, p4

    move-wide p4, v7

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p2, v0

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    cmp-long v2, p2, v3

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    cmp-long v0, p4, v0

    if-eqz v0, :cond_2

    cmp-long v0, p4, v3

    if-eqz v0, :cond_2

    move v5, v6

    .line 612
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v0, p2, p3}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result p2

    add-float/2addr p2, p6

    .line 613
    iget-object p3, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {p3, p4, p5}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result p3

    sub-float/2addr p3, p6

    .line 615
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 616
    iget p0, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    if-ne p0, v6, :cond_4

    if-eqz v5, :cond_3

    .line 617
    iget p0, p4, Landroid/graphics/Rect;->top:I

    float-to-int p1, p3

    add-int/2addr p0, p1

    iput p0, p4, Landroid/graphics/Rect;->bottom:I

    :cond_3
    if-eqz v2, :cond_6

    .line 618
    iget p0, p4, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    add-float/2addr p0, p2

    float-to-int p0, p0

    iput p0, p4, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    .line 620
    iget p0, p4, Landroid/graphics/Rect;->left:I

    float-to-int p1, p3

    add-int/2addr p0, p1

    iput p0, p4, Landroid/graphics/Rect;->right:I

    :cond_5
    if-eqz v2, :cond_6

    .line 621
    iget p0, p4, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, p2

    float-to-int p0, p0

    iput p0, p4, Landroid/graphics/Rect;->left:I

    :cond_6
    :goto_1
    return-object p4
.end method

.method private computeClampRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 8

    .line 591
    iget-wide v2, p0, Lcom/android/settings/widget/ChartSweepView;->mValidAfter:J

    iget-wide v4, p0, Lcom/android/settings/widget/ChartSweepView;->mValidBefore:J

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/widget/ChartSweepView;->buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v0

    .line 593
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getValidAfterDynamic()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getValidBeforeDynamic()J

    move-result-wide v5

    iget v7, p0, Lcom/android/settings/widget/ChartSweepView;->mNeighborMargin:F

    move-object v1, p0

    move-object v2, p1

    .line 592
    invoke-direct/range {v1 .. v7}, Lcom/android/settings/widget/ChartSweepView;->buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object p0

    .line 595
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 596
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_0
    return-object v0
.end method

.method private dispatchOnSweep(Z)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0, p0, p1}, Lcom/android/settings/widget/ChartSweepView$OnSweepListener;->onSweep(Lcom/android/settings/widget/ChartSweepView;Z)V

    :cond_0
    return-void
.end method

.method private dispatchRequestEdit()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0, p0}, Lcom/android/settings/widget/ChartSweepView$OnSweepListener;->requestEdit(Lcom/android/settings/widget/ChartSweepView;)V

    :cond_0
    return-void
.end method

.method public static getLabelBottom(Lcom/android/settings/widget/ChartSweepView;)F
    .locals 1

    .line 745
    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->getLabelTop(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v0

    iget-object p0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public static getLabelTop(Lcom/android/settings/widget/ChartSweepView;)F
    .locals 1

    .line 741
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getY()F

    move-result v0

    iget-object p0, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public static getLabelWidth(Lcom/android/settings/widget/ChartSweepView;)F
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p0

    return p0
.end method

.method private getParentContentRect()Landroid/graphics/Rect;
    .locals 5

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 559
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 560
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 561
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getTargetInset()F
    .locals 3

    .line 182
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 185
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    iget-object p0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    :goto_0
    int-to-float p0, p0

    add-float/2addr v2, p0

    return v2

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 189
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    iget-object p0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method private getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F
    .locals 1

    .line 414
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    if-nez v0, :cond_0

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getX()F

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getTargetInset()F

    move-result p0

    add-float/2addr v0, p0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0

    .line 417
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getY()F

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getTargetInset()F

    move-result p0

    add-float/2addr v0, p0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method private getValidAfterDynamic()J
    .locals 2

    .line 575
    iget-object p0, p0, Lcom/android/settings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings/widget/ChartSweepView;

    if-eqz p0, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0
.end method

.method private getValidBeforeDynamic()J
    .locals 2

    .line 580
    iget-object p0, p0, Lcom/android/settings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings/widget/ChartSweepView;

    if-eqz p0, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0
.end method

.method private invalidateLabel()V
    .locals 5

    .line 282
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    iget-wide v3, p0, Lcom/android/settings/widget/ChartSweepView;->mValue:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/settings/widget/ChartAxis;->buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelValue:J

    .line 284
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartSweepView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    goto :goto_0

    .line 288
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->mValue:J

    iput-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelValue:J

    :goto_0
    return-void
.end method

.method private invalidateLabelTemplate()V
    .locals 9

    .line 259
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelTemplateRes:I

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelTemplateRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 262
    new-instance v3, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v3, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v3, Landroid/text/TextPaint;->density:F

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 265
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelColor:I

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 267
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    .line 268
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    const/16 v4, 0x400

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    .line 270
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidateLabel()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    .line 274
    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    .line 277
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->requestLayout()V

    return-void
.end method


# virtual methods
.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    return-void
.end method

.method public addOnSweepListener(Lcom/android/settings/widget/ChartSweepView$OnSweepListener;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 628
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 629
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public getAxis()Lcom/android/settings/widget/ChartAxis;
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    return-object p0
.end method

.method public getFollowAxis()I
    .locals 0

    .line 166
    iget p0, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    return p0
.end method

.method public getLabelValue()J
    .locals 2

    .line 364
    iget-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelValue:J

    return-wide v0
.end method

.method public getMargins()Landroid/graphics/Rect;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPoint()F
    .locals 3

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    iget-wide v1, p0, Lcom/android/settings/widget/ChartSweepView;->mValue:J

    invoke-interface {v0, v1, v2}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getValue()J
    .locals 2

    .line 360
    iget-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->mValue:J

    return-wide v0
.end method

.method init(Lcom/android/settings/widget/ChartAxis;)V
    .locals 1

    const-string v0, "missing axis"

    .line 158
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ChartAxis;

    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    return-void
.end method

.method public invalidateLabelOffset()V
    .locals 4

    .line 298
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 299
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings/widget/ChartSweepView;

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 300
    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->getLabelWidth(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v0

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v3}, Lcom/android/settings/widget/ChartSweepView;->getLabelWidth(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelSize:F

    .line 301
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartSweepView;->getLabelTop(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v0

    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->getLabelBottom(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v3

    sub-float/2addr v0, v3

    cmpg-float v3, v0, v1

    if-gez v3, :cond_2

    :goto_0
    div-float v1, v0, v2

    goto :goto_1

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v0, :cond_1

    .line 306
    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->getLabelWidth(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v0

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v3}, Lcom/android/settings/widget/ChartSweepView;->getLabelWidth(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelSize:F

    .line 307
    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->getLabelTop(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v0

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v3}, Lcom/android/settings/widget/ChartSweepView;->getLabelBottom(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v3

    sub-float/2addr v0, v3

    cmpg-float v3, v0, v1

    if-gez v3, :cond_2

    neg-float v0, v0

    goto :goto_0

    .line 312
    :cond_1
    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->getLabelWidth(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelSize:F

    .line 318
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelSize:F

    iget v2, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelMinSize:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelSize:F

    .line 321
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelOffset:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_4

    .line 322
    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelOffset:F

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    .line 324
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 325
    :cond_3
    iget-object p0, p0, Lcom/android/settings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings/widget/ChartSweepView;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidateLabelOffset()V

    :cond_4
    return-void
.end method

.method public isTouchCloserTo(Landroid/view/MotionEvent;Lcom/android/settings/widget/ChartSweepView;)Z
    .locals 0

    .line 408
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartSweepView;->getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F

    move-result p0

    .line 409
    invoke-direct {p2, p1}, Lcom/android/settings/widget/ChartSweepView;->getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F

    move-result p1

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    .line 331
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 332
    iget-object p0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 333
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 704
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 706
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getWidth()I

    move-result v0

    .line 707
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getHeight()I

    move-result v1

    .line 710
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    if-eqz v2, :cond_0

    .line 711
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 713
    iget v3, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelSize:F

    const/high16 v4, 0x44800000    # 1024.0f

    sub-float/2addr v3, v4

    .line 714
    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v5, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelOffset:F

    add-float/2addr v3, v5

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 716
    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v3, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 718
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 719
    iget v2, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelSize:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/settings/widget/ChartSweepView;->mSafeRegion:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 724
    :goto_0
    iget v3, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 725
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    .line 726
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 725
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v5

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 732
    :goto_1
    iget-object p0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 698
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidateLabelOffset()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 638
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    if-eqz p1, :cond_0

    .line 639
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 640
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v0

    .line 642
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput p2, v1, Landroid/graphics/Point;->x:I

    .line 643
    iput p2, v1, Landroid/graphics/Point;->y:I

    .line 644
    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getTargetInset()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 645
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 648
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 649
    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 650
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 653
    :goto_0
    iget p1, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 654
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v0

    .line 656
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    neg-int p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 657
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 658
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 659
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 661
    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    .line 663
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    neg-int p1, v1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 664
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 665
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 666
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 669
    :goto_1
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 672
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getMeasuredWidth()I

    move-result p1

    .line 673
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getMeasuredHeight()I

    move-result v0

    .line 674
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    if-nez v1, :cond_2

    mul-int/lit8 p2, p1, 0x3

    .line 676
    invoke-virtual {p0, p2, v0}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 677
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 679
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 p1, p1, 0x2

    .line 680
    iget-object p2, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 681
    iget-object p2, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_2
    mul-int/lit8 v1, v0, 0x2

    .line 684
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 685
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 687
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 p1, p1, 0x2

    .line 688
    iget-object p2, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 689
    iget-object p2, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 692
    :goto_2
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Point;->offset(II)V

    .line 693
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    neg-int p2, p2

    iget-object p0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    neg-int p0, p0

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_1

    return v1

    .line 476
    :cond_1
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    if-ne v0, v3, :cond_2

    return v4

    .line 480
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 483
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getParentContentRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 484
    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartSweepView;->computeClampRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 485
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    return v4

    .line 488
    :cond_3
    iget v3, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    if-ne v3, v4, :cond_4

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getTop()I

    move-result v3

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    .line 490
    iget v5, p0, Lcom/android/settings/widget/ChartSweepView;->mTrackingStart:F

    .line 491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v6, p0, Lcom/android/settings/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    sub-float/2addr p1, v6

    add-float/2addr v5, p1

    .line 492
    iget p1, v2, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-static {v5, p1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    sub-float v2, p1, v3

    .line 494
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/ChartSweepView;->setTranslationY(F)V

    .line 496
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-interface {v2, p1}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v2

    goto :goto_0

    .line 498
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getLeft()I

    move-result v3

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    .line 499
    iget v5, p0, Lcom/android/settings/widget/ChartSweepView;->mTrackingStart:F

    .line 500
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v6, p0, Lcom/android/settings/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    sub-float/2addr p1, v6

    add-float/2addr v5, p1

    .line 501
    iget p1, v2, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-static {v5, p1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    sub-float v2, p1, v3

    .line 503
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/ChartSweepView;->setTranslationX(F)V

    .line 505
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-interface {v2, p1}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v2

    .line 509
    :goto_0
    iget-wide v5, p0, Lcom/android/settings/widget/ChartSweepView;->mDragInterval:J

    rem-long v5, v2, v5

    sub-long/2addr v2, v5

    .line 510
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 512
    invoke-direct {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->dispatchOnSweep(Z)V

    return v4

    .line 516
    :cond_5
    iget p1, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    if-ne p1, v3, :cond_6

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->performClick()Z

    goto :goto_1

    :cond_6
    if-ne p1, v4, :cond_7

    const/4 p1, 0x0

    .line 519
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->mTrackingStart:F

    const/4 v0, 0x0

    .line 520
    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    .line 521
    iget-wide v2, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelValue:J

    iput-wide v2, p0, Lcom/android/settings/widget/ChartSweepView;->mValue:J

    .line 522
    invoke-direct {p0, v4}, Lcom/android/settings/widget/ChartSweepView;->dispatchOnSweep(Z)V

    .line 523
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ChartSweepView;->setTranslationX(F)V

    .line 524
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ChartSweepView;->setTranslationY(F)V

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->requestLayout()V

    .line 528
    :cond_7
    :goto_1
    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    return v4

    .line 432
    :cond_8
    iget v2, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    if-ne v2, v4, :cond_b

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v6, v6, 0x8

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_9

    move v2, v4

    goto :goto_2

    :cond_9
    move v2, v1

    .line 434
    :goto_2
    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v6}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    :goto_3
    move v5, v4

    goto :goto_5

    :cond_a
    move v5, v1

    goto :goto_5

    .line 436
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v6, v6, 0x8

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_c

    move v2, v4

    goto :goto_4

    :cond_c
    move v2, v1

    .line 437
    :goto_4
    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v6}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    goto :goto_3

    .line 440
    :goto_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v6

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 444
    iget-object v7, p0, Lcom/android/settings/widget/ChartSweepView;->mNeighbors:[Lcom/android/settings/widget/ChartSweepView;

    array-length v8, v7

    move v9, v1

    :goto_6
    if-ge v9, v8, :cond_e

    aget-object v10, v7, v9

    .line 445
    invoke-virtual {p0, v6, v10}, Lcom/android/settings/widget/ChartSweepView;->isTouchCloserTo(Landroid/view/MotionEvent;Lcom/android/settings/widget/ChartSweepView;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 446
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    return v1

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 450
    :cond_e
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    if-eqz v2, :cond_11

    .line 453
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    if-ne v1, v4, :cond_f

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->mTrackingStart:F

    goto :goto_7

    .line 456
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->mTrackingStart:F

    .line 458
    :goto_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    .line 459
    iput v4, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    .line 462
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    move-result p0

    if-nez p0, :cond_10

    .line 463
    invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V

    :cond_10
    return v4

    :cond_11
    if-eqz v5, :cond_12

    .line 468
    iput v3, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    return v4

    .line 471
    :cond_12
    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    return v1
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    return-void
.end method

.method public setDragInterval(J)V
    .locals 0

    .line 174
    iput-wide p1, p0, Lcom/android/settings/widget/ChartSweepView;->mDragInterval:J

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 211
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ChartSweepView;->setFocusable(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->requestLayout()V

    return-void
.end method

.method public setFollowAxis(I)V
    .locals 0

    .line 240
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    return-void
.end method

.method public setLabelColor(I)V
    .locals 0

    .line 254
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelColor:I

    .line 255
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidateLabelTemplate()V

    return-void
.end method

.method public setLabelMinSize(I)V
    .locals 0

    .line 244
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelMinSize:I

    .line 245
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidateLabelTemplate()V

    return-void
.end method

.method public setLabelTemplate(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelTemplateRes:I

    .line 250
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidateLabelTemplate()V

    return-void
.end method

.method public setNeighborMargin(F)V
    .locals 0

    .line 386
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->mNeighborMargin:F

    return-void
.end method

.method public varargs setNeighbors([Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mNeighbors:[Lcom/android/settings/widget/ChartSweepView;

    return-void
.end method

.method public setSafeRegion(I)V
    .locals 0

    .line 390
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->mSafeRegion:I

    return-void
.end method

.method public setSweepDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartSweepView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_3

    .line 223
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 224
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 228
    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    .line 230
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 231
    iget-object p2, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_1

    .line 233
    :cond_3
    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    .line 236
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    return-void
.end method

.method public setValidRange(JJ)V
    .locals 0

    .line 381
    iput-wide p1, p0, Lcom/android/settings/widget/ChartSweepView;->mValidAfter:J

    .line 382
    iput-wide p3, p0, Lcom/android/settings/widget/ChartSweepView;->mValidBefore:J

    return-void
.end method

.method public setValidRangeDynamic(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings/widget/ChartSweepView;

    .line 400
    iput-object p2, p0, Lcom/android/settings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings/widget/ChartSweepView;

    return-void
.end method

.method public setValue(J)V
    .locals 0

    .line 355
    iput-wide p1, p0, Lcom/android/settings/widget/ChartSweepView;->mValue:J

    .line 356
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidateLabel()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 339
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object p0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 341
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public shouldAdjustAxis()I
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/settings/widget/ChartAxis;->shouldAdjustAxis(J)I

    move-result p0

    return p0
.end method

.method public updateValueFromPosition()V
    .locals 3

    .line 543
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getParentContentRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 544
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 546
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v0, v1}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 549
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v0, v1}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    :goto_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
