.class public Lcom/android/settings/widget/ChartDataUsageView$DataAxis;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/ChartAxis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataAxis"
.end annotation


# static fields
.field private static final LOG_SCALE:Z = false

.field private static final sSpanSize:Ljava/lang/Object;

.field private static final sSpanUnit:Ljava/lang/Object;


# instance fields
.field private mMax:J

.field private mMin:J

.field private mSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 618
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    .line 619
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 0

    const/4 p0, 0x3

    .line 623
    invoke-static {p1, p3, p4, p0}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p0

    .line 625
    sget-object p1, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    iget-object p3, p0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const-string p4, "^1"

    invoke-static {p2, p1, p3, p4}, Lcom/android/settings/widget/ChartDataUsageView;->access$800(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 626
    sget-object p1, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    iget-object p3, p0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const-string p4, "^2"

    invoke-static {p2, p1, p3, p4}, Lcom/android/settings/widget/ChartDataUsageView;->access$800(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 627
    iget-wide p0, p0, Landroid/text/format/Formatter$BytesResult;->roundedBytes:J

    return-wide p0
.end method

.method public convertToPoint(J)F
    .locals 3

    .line 602
    iget v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr p1, v1

    long-to-float p1, p1

    mul-float/2addr v0, p1

    iget-wide p0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    sub-long/2addr p0, v1

    long-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public convertToValue(F)J
    .locals 5

    .line 614
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    long-to-float v2, v0

    iget-wide v3, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    sub-long/2addr v3, v0

    long-to-float v0, v3

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    div-float/2addr p1, p0

    add-float/2addr v2, p1

    float-to-long p0, v2

    return-wide p0
.end method

.method public getTickPoints()[F
    .locals 7

    .line 632
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v2, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x10

    .line 635
    div-long v2, v0, v2

    invoke-static {v2, v3}, Lcom/android/settings/widget/ChartDataUsageView;->access$900(J)J

    move-result-wide v2

    .line 636
    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 637
    new-array v0, v0, [F

    .line 638
    iget-wide v4, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    const/4 v1, 0x0

    .line 639
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_0

    .line 640
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result v6

    aput v6, v0, v1

    add-long/2addr v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 569
    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setBounds(JJ)Z
    .locals 2

    .line 574
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 575
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    .line 576
    iput-wide p3, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    const/4 p0, 0x1

    return p0
.end method

.method public setSize(F)Z
    .locals 1

    .line 585
    iget v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 586
    iput p1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldAdjustAxis(J)I
    .locals 4

    .line 649
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result p1

    float-to-double p1, p1

    .line 650
    iget p0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v0, p0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v0, v2

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    float-to-double v0, p0

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    cmpl-double p0, p1, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
