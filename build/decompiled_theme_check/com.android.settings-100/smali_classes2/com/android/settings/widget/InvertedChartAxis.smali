.class public Lcom/android/settings/widget/InvertedChartAxis;
.super Ljava/lang/Object;
.source "InvertedChartAxis.java"

# interfaces
.implements Lcom/android/settings/widget/ChartAxis;


# instance fields
.field private mSize:F

.field private final mWrapped:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/ChartAxis;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    return-void
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartAxis;->buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public convertToPoint(J)F
    .locals 1

    .line 46
    iget v0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mSize:F

    iget-object p0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {p0, p1, p2}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public convertToValue(F)J
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    iget p0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mSize:F

    sub-float/2addr p0, p1

    invoke-interface {v0, p0}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTickPoints()[F
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v0}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 63
    iget v2, p0, Lcom/android/settings/widget/InvertedChartAxis;->mSize:F

    aget v3, v0, v1

    sub-float/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setBounds(JJ)Z
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartAxis;->setBounds(JJ)Z

    move-result p0

    return p0
.end method

.method public setSize(F)Z
    .locals 0

    .line 40
    iput p1, p0, Lcom/android/settings/widget/InvertedChartAxis;->mSize:F

    .line 41
    iget-object p0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {p0, p1}, Lcom/android/settings/widget/ChartAxis;->setSize(F)Z

    move-result p0

    return p0
.end method

.method public shouldAdjustAxis(J)I
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {p0, p1, p2}, Lcom/android/settings/widget/ChartAxis;->shouldAdjustAxis(J)I

    move-result p0

    return p0
.end method
