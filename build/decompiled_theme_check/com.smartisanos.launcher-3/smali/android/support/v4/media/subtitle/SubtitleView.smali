.class Landroid/support/v4/media/subtitle/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"


# static fields
.field private static final COLOR_BEVEL_DARK:I = -0x80000000

.field private static final COLOR_BEVEL_LIGHT:I = -0x7f000001

.field private static final INNER_PADDING_RATIO:F = 0.125f


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mBackgroundColor:I

.field private final mCornerRadius:F

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mForegroundColor:I

.field private mHasMeasurements:Z

.field private mInnerPaddingX:I

.field private mLastMeasuredWidth:I

.field private mLayout:Landroid/text/StaticLayout;

.field private final mLineBounds:Landroid/graphics/RectF;

.field private final mOutlineWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mShadowOffsetX:F

.field private final mShadowOffsetY:F

.field private final mShadowRadius:F

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private final mText:Landroid/text/SpannableStringBuilder;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/subtitle/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/subtitle/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/media/subtitle/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 6
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mSpacingMult:F

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mSpacingAdd:F

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mInnerPaddingX:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 11
    sget p2, Landroid/support/mediacompat/R$dimen;->subtitle_corner_radius:I

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mCornerRadius:F

    .line 13
    sget p2, Landroid/support/mediacompat/R$dimen;->subtitle_outline_width:I

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mOutlineWidth:F

    .line 15
    sget p2, Landroid/support/mediacompat/R$dimen;->subtitle_shadow_radius:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mShadowRadius:F

    .line 17
    sget p2, Landroid/support/mediacompat/R$dimen;->subtitle_shadow_offset:I

    .line 18
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mShadowOffsetX:F

    .line 19
    iget p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mShadowOffsetX:F

    iput p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mShadowOffsetY:F

    .line 20
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 21
    iget-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 22
    iget-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 24
    iget-object p0, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private computeMeasurements(I)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mHasMeasurements:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mLastMeasuredWidth:I

    if-ne p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    if-gtz p1, :cond_1

    return v0

    .line 3
    :cond_1
    iput-boolean v1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mHasMeasurements:Z

    .line 4
    iput p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mLastMeasuredWidth:I

    .line 5
    iget-object v2, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v0, v3, v4, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 6
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget v0, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mSpacingAdd:F

    iget v2, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mSpacingMult:F

    .line 7
    invoke-virtual {p1, v0, v2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v1}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    return v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3
    iget v2, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mInnerPaddingX:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    .line 6
    iget-object v4, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 7
    iget-object v5, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 8
    iget-object v6, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 9
    iget v7, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mBackgroundColor:I

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_1

    .line 10
    iget v7, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mCornerRadius:F

    .line 11
    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    int-to-float v9, v9

    .line 12
    iget v10, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mBackgroundColor:I

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move v10, v9

    move v9, v8

    :goto_0
    if-ge v9, v3, :cond_1

    .line 14
    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v2

    sub-float/2addr v11, v12

    iput v11, v6, Landroid/graphics/RectF;->left:F

    .line 15
    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v11

    add-float/2addr v11, v12

    iput v11, v6, Landroid/graphics/RectF;->right:F

    .line 16
    iput v10, v6, Landroid/graphics/RectF;->top:F

    .line 17
    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v10

    int-to-float v10, v10

    iput v10, v6, Landroid/graphics/RectF;->bottom:F

    .line 18
    iget v10, v6, Landroid/graphics/RectF;->bottom:F

    .line 19
    invoke-virtual {p1, v6, v7, v7, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 20
    :cond_1
    iget v2, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mEdgeType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 21
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 22
    iget v2, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mOutlineWidth:F

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 23
    iget v2, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mEdgeColor:I

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 26
    iget v2, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mShadowRadius:F

    iget v3, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mShadowOffsetX:F

    iget v5, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mShadowOffsetY:F

    iget v6, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mEdgeColor:I

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_3

    :cond_3
    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    const/4 v6, 0x4

    if-ne v2, v6, :cond_8

    :cond_4
    if-ne v2, v5, :cond_5

    goto :goto_1

    :cond_5
    move v3, v8

    :goto_1
    const/4 v2, -0x1

    if-eqz v3, :cond_6

    move v5, v2

    goto :goto_2

    .line 27
    :cond_6
    iget v5, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mEdgeColor:I

    :goto_2
    if-eqz v3, :cond_7

    .line 28
    iget v2, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mEdgeColor:I

    .line 29
    :cond_7
    iget v3, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mShadowRadius:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    .line 30
    iget v6, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mForegroundColor:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    iget v6, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mShadowRadius:F

    neg-float v7, v3

    invoke-virtual {v4, v6, v7, v7, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 33
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 34
    iget v5, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mShadowRadius:F

    invoke-virtual {v4, v5, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 35
    :cond_8
    :goto_3
    iget p0, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mForegroundColor:I

    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    const/4 p0, 0x0

    .line 38
    invoke-virtual {v4, p0, p0, p0, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 39
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    .line 1
    invoke-direct {p0, p4}, Landroid/support/v4/media/subtitle/SubtitleView;->computeMeasurements(I)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v4/media/subtitle/SubtitleView;->computeMeasurements(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 5
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    .line 6
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x1000000

    .line 8
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mHasMeasurements:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mBackgroundColor:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEdgeColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mEdgeColor:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEdgeType(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mEdgeType:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mForegroundColor:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/media/subtitle/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mHasMeasurements:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 v0, 0x3e000000    # 0.125f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 3
    iput p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mInnerPaddingX:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mHasMeasurements:Z

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroid/support/v4/media/subtitle/SubtitleView;->mHasMeasurements:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
