.class public Lcom/android/settings/widget/ChartGridView;
.super Landroid/view/View;
.source "ChartGridView.java"


# instance fields
.field private mBorder:Landroid/graphics/drawable/Drawable;

.field private mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mLabelColor:I

.field private mLabelEnd:Landroid/text/Layout;

.field private mLabelMid:Landroid/text/Layout;

.field private mLabelSize:I

.field private mLabelStart:Landroid/text/Layout;

.field private mPrimary:Landroid/graphics/drawable/Drawable;

.field private mSecondary:Landroid/graphics/drawable/Drawable;

.field private mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartGridView;->setWillNotDraw(Z)V

    .line 74
    sget-object v1, Lcom/android/settings/R$styleable;->ChartGridView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x3

    .line 77
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/widget/ChartGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x4

    .line 78
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/widget/ChartGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x2

    .line 79
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/widget/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    const/4 p3, -0x1

    .line 81
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 82
    sget-object v1, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 84
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/widget/ChartGridView;->mLabelSize:I

    .line 86
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 88
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/ChartGridView;->mLabelColor:I

    .line 92
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private makeLabel(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 9

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 171
    new-instance v3, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v3, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 172
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v3, Landroid/text/TextPaint;->density:F

    .line 173
    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 174
    iget v0, p0, Lcom/android/settings/widget/ChartGridView;->mLabelColor:I

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 175
    iget p0, p0, Lcom/android/settings/widget/ChartGridView;->mLabelSize:I

    int-to-float p0, p0

    invoke-virtual {v3, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 177
    new-instance p0, Landroid/text/StaticLayout;

    .line 178
    invoke-static {p1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v4, v0

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p0
.end method


# virtual methods
.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1

    const-string v0, "missing horiz"

    .line 96
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ChartAxis;

    iput-object p1, p0, Lcom/android/settings/widget/ChartGridView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    const-string p1, "missing vert"

    .line 97
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ChartAxis;

    iput-object p1, p0, Lcom/android/settings/widget/ChartGridView;->mVert:Lcom/android/settings/widget/ChartAxis;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getWidth()I

    move-result v0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 114
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 118
    iget-object v5, p0, Lcom/android/settings/widget/ChartGridView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v5}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v5

    .line 119
    array-length v6, v5

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_0

    aget v8, v5, v7

    int-to-float v9, v4

    add-float/2addr v9, v8

    int-to-float v10, v1

    .line 120
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    float-to-int v8, v8

    .line 121
    invoke-virtual {v2, v3, v8, v0, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 128
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 129
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 131
    iget-object v5, p0, Lcom/android/settings/widget/ChartGridView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v5}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v5

    .line 132
    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_1

    aget v8, v5, v7

    int-to-float v9, v4

    add-float/2addr v9, v8

    int-to-float v10, v0

    .line 133
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    float-to-int v8, v8

    .line 134
    invoke-virtual {v2, v8, v3, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 142
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mLabelStart:Landroid/text/Layout;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    div-int/lit8 v3, v2, 0x8

    .line 144
    :cond_2
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mLabelStart:Landroid/text/Layout;

    if-eqz v2, :cond_3

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    const/4 v5, 0x0

    add-int v6, v1, v3

    int-to-float v6, v6

    .line 147
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 148
    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 149
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 152
    :cond_3
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mLabelMid:Landroid/text/Layout;

    if-eqz v2, :cond_4

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 155
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v5

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-int v6, v1, v3

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 156
    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 157
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 160
    :cond_4
    iget-object p0, p0, Lcom/android/settings/widget/ChartGridView;->mLabelEnd:Landroid/text/Layout;

    if-eqz p0, :cond_5

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 163
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 164
    invoke-virtual {p0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 165
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    return-void
.end method

.method setBounds(JJ)V
    .locals 5

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    add-long v1, p1, p3

    const-wide/16 v3, 0x2

    .line 102
    div-long/2addr v1, v3

    .line 103
    invoke-static {v0, p1, p2, p1, p2}, Lcom/android/settings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartGridView;->makeLabel(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/ChartGridView;->mLabelStart:Landroid/text/Layout;

    .line 104
    invoke-static {v0, v1, v2, v1, v2}, Lcom/android/settings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartGridView;->makeLabel(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/ChartGridView;->mLabelMid:Landroid/text/Layout;

    .line 105
    invoke-static {v0, p3, p4, p3, p4}, Lcom/android/settings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartGridView;->makeLabel(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/ChartGridView;->mLabelEnd:Landroid/text/Layout;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->invalidate()V

    return-void
.end method
