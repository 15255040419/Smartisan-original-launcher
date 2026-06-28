.class public Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;
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
    name = "TimeAxis"
.end annotation


# static fields
.field private static final FIRST_DAY_OF_WEEK:I


# instance fields
.field private mMax:J

.field private mMin:J

.field private mSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 474
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->FIRST_DAY_OF_WEEK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x9a7ec800L

    sub-long v2, v0, v2

    .line 482
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->setBounds(JJ)Z

    return-void
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 1

    .line 524
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p0, p1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-wide p3
.end method

.method public convertToPoint(J)F
    .locals 3

    .line 513
    iget v0, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mSize:F

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMin:J

    sub-long/2addr p1, v1

    long-to-float p1, p1

    mul-float/2addr v0, p1

    iget-wide p0, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMax:J

    sub-long/2addr p0, v1

    long-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public convertToValue(F)J
    .locals 5

    .line 518
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMin:J

    long-to-float v2, v0

    iget-wide v3, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMax:J

    sub-long/2addr v3, v0

    long-to-float v0, v3

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mSize:F

    div-float/2addr p1, p0

    add-float/2addr v2, p1

    float-to-long p0, v2

    return-wide p0
.end method

.method public getTickPoints()[F
    .locals 8

    const/16 v0, 0x20

    new-array v0, v0, [F

    .line 534
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 535
    iget-wide v2, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMax:J

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 536
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    iget v3, v1, Landroid/text/format/Time;->weekDay:I

    sget v4, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->FIRST_DAY_OF_WEEK:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    const/4 v2, 0x0

    .line 537
    iput v2, v1, Landroid/text/format/Time;->second:I

    iput v2, v1, Landroid/text/format/Time;->minute:I

    iput v2, v1, Landroid/text/format/Time;->hour:I

    const/4 v3, 0x1

    .line 539
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 540
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 541
    :goto_0
    iget-wide v6, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMin:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 542
    iget-wide v6, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMax:J

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    add-int/lit8 v6, v2, 0x1

    .line 543
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->convertToPoint(J)F

    move-result v4

    aput v4, v0, v2

    move v2, v6

    .line 545
    :cond_0
    iget v4, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v4, v4, -0x7

    iput v4, v1, Landroid/text/format/Time;->monthDay:I

    .line 546
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 547
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    goto :goto_0

    .line 550
    :cond_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 487
    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMin:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMax:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mSize:F

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

    .line 492
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMin:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMax:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 493
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMin:J

    .line 494
    iput-wide p3, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mMax:J

    const/4 p0, 0x1

    return p0
.end method

.method public setSize(F)Z
    .locals 1

    .line 503
    iget v0, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 504
    iput p1, p0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;->mSize:F

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldAdjustAxis(J)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
