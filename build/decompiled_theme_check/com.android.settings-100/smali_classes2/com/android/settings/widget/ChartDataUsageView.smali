.class public Lcom/android/settings/widget/ChartDataUsageView;
.super Lcom/android/settings/widget/ChartView;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/ChartDataUsageView$DataAxis;,
        Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;,
        Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    }
.end annotation


# static fields
.field private static final DELAY_MILLIS:J = 0xfaL

.field private static final MSG_UPDATE_AXIS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DataUsage"


# instance fields
.field private mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private mGrid:Lcom/android/settings/widget/ChartGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mHorizListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

.field private mInspectEnd:J

.field private mInspectStart:J

.field private mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

.field private mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

.field private mSweepRight:Lcom/android/settings/widget/ChartSweepView;

.field private mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

.field private mVertListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

.field private mVertMax:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 306
    new-instance p1, Lcom/android/settings/widget/ChartDataUsageView$2;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/ChartDataUsageView$2;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHorizListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    .line 334
    new-instance p1, Lcom/android/settings/widget/ChartDataUsageView$3;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/ChartDataUsageView$3;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    .line 97
    new-instance p1, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;

    invoke-direct {p1}, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;-><init>()V

    new-instance p2, Lcom/android/settings/widget/InvertedChartAxis;

    new-instance p3, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;

    invoke-direct {p3}, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;-><init>()V

    invoke-direct {p2, p3}, Lcom/android/settings/widget/InvertedChartAxis;-><init>(Lcom/android/settings/widget/ChartAxis;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/ChartDataUsageView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    .line 99
    new-instance p1, Lcom/android/settings/widget/ChartDataUsageView$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/ChartDataUsageView$1;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/settings/widget/ChartSweepView;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updatePrimaryRange()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/settings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    return-object p0
.end method

.method static synthetic access$800(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(J)J
    .locals 0

    .line 52
    invoke-static {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->roundUpToPowerOfTwo(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private clearUpdateAxisDelayed(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 1

    .line 331
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method private getHistoryEnd()J
    .locals 2

    .line 408
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0
.end method

.method private getHistoryStart()J
    .locals 2

    .line 404
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0
.end method

.method private static roundUpToPowerOfTwo(J)J
    .locals 4

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    const/4 v2, 0x1

    ushr-long v2, p0, v2

    or-long/2addr p0, v2

    const/4 v2, 0x2

    ushr-long v2, p0, v2

    or-long/2addr p0, v2

    const/4 v2, 0x4

    ushr-long v2, p0, v2

    or-long/2addr p0, v2

    const/16 v2, 0x8

    ushr-long v2, p0, v2

    or-long/2addr p0, v2

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    or-long/2addr p0, v2

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    or-long/2addr p0, v2

    add-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    :goto_0
    return-wide p0
.end method

.method private sendUpdateAxisDelayed(Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 2

    const/16 v0, 0x64

    if-nez p2, :cond_0

    .line 324
    iget-object p2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 325
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 326
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xfa

    .line 325
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private static setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3

    .line 662
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 663
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 665
    invoke-static {p0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 666
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int v1, v0, p3

    const/16 p3, 0x12

    .line 667
    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 669
    :cond_0
    invoke-virtual {p0, v0, v1, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method private updateEstimateVisible()V
    .locals 9

    .line 288
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getMaxEstimate()J

    move-result-wide v0

    .line 292
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v5

    goto :goto_0

    .line 294
    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v5

    goto :goto_0

    :cond_1
    move-wide v5, v3

    :goto_0
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v3, v5

    :goto_1
    const-wide/16 v5, 0x7

    mul-long/2addr v3, v5

    const-wide/16 v5, 0xa

    .line 302
    div-long/2addr v3, v5

    cmp-long v0, v0, v3

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 303
    :goto_2
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setEstimateVisible(Z)V

    return-void
.end method

.method private updatePrimaryRange()V
    .locals 5

    .line 460
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    .line 461
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 463
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 464
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 465
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 466
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setSecondary(Z)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 469
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setSecondary(Z)V

    :goto_0
    return-void
.end method

.method private updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 12

    .line 228
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVertMax:J

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_1

    .line 232
    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->shouldAdjustAxis()I

    move-result v6

    if-lez v6, :cond_0

    const-wide/16 v6, 0xb

    mul-long/2addr v0, v6

    .line 235
    div-long/2addr v0, v2

    goto :goto_0

    :cond_0
    if-gez v6, :cond_2

    const-wide/16 v6, 0x9

    mul-long/2addr v0, v6

    .line 238
    div-long/2addr v0, v2

    goto :goto_0

    :cond_1
    move-wide v0, v4

    .line 245
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v6}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v8}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 246
    iget-object v8, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v8}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v10}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 247
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const-wide/16 v8, 0xc

    mul-long/2addr v6, v8

    div-long/2addr v6, v2

    const-wide/32 v2, 0x3200000

    .line 248
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 249
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 252
    iget-wide v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVertMax:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    .line 253
    iput-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVertMax:J

    .line 255
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v2, v4, v5, v0, v1}, Lcom/android/settings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v2

    .line 256
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 257
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setValidRange(JJ)V

    if-eqz v2, :cond_3

    .line 260
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 261
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mGrid:Lcom/android/settings/widget/ChartGridView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartGridView;->invalidate()V

    if-eqz p1, :cond_4

    .line 268
    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->updateValueFromPosition()V

    .line 274
    :cond_4
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    if-eq v0, p1, :cond_5

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->layoutSweep(Lcom/android/settings/widget/ChartSweepView;)V

    .line 277
    :cond_5
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    if-eq v0, p1, :cond_6

    .line 278
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->layoutSweep(Lcom/android/settings/widget/ChartSweepView;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 182
    iget-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz p1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {p1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setEndTime(J)V

    :cond_1
    const/4 p1, 0x0

    .line 185
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V

    .line 186
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    return-void
.end method

.method public bindNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 7

    const/4 v0, 0x4

    const-wide/16 v1, -0x1

    if-nez p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 194
    iget-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 195
    iget-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 196
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    return-void

    .line 200
    :cond_0
    iget-wide v3, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v3, v3, v1

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 201
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 202
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 203
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    iget-wide v5, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v3, v5, v6}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 206
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 207
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 210
    :goto_0
    iget-wide v5, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v3, v5, v1

    if-eqz v3, :cond_2

    .line 211
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    iget-wide v1, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    .line 214
    :cond_2
    iget-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 215
    iget-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    :goto_1
    const/4 p1, 0x0

    .line 218
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->invalidate()V

    return-void
.end method

.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 172
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    const/4 p1, 0x0

    .line 173
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V

    .line 174
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 175
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    .line 384
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mInspectEnd:J

    return-wide v0
.end method

.method public getInspectLeft()J
    .locals 2

    .line 388
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInspectRight()J
    .locals 2

    .line 392
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .line 380
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mInspectStart:J

    return-wide v0
.end method

.method public getLimitBytes()J
    .locals 2

    .line 400
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningBytes()J
    .locals 2

    .line 396
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 7

    .line 114
    invoke-super {p0}, Lcom/android/settings/widget/ChartView;->onFinishInflate()V

    const v0, 0x7f0a033c

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartGridView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mGrid:Lcom/android/settings/widget/ChartGridView;

    const v0, 0x7f0a080d

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const v0, 0x7f0a0237

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    .line 119
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    const v0, 0x7f0a08dd

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    .line 122
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    const v0, 0x7f0a08df

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    .line 124
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    const v0, 0x7f0a08de

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    const v0, 0x7f0a08e0

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    .line 129
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ChartSweepView;->setNeighbors([Lcom/android/settings/widget/ChartSweepView;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    new-array v2, v1, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ChartSweepView;->setNeighbors([Lcom/android/settings/widget/ChartSweepView;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    const/4 v2, 0x3

    new-array v3, v2, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    aput-object v5, v3, v1

    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    const/4 v6, 0x2

    aput-object v5, v3, v6

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ChartSweepView;->setNeighbors([Lcom/android/settings/widget/ChartSweepView;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    new-array v2, v2, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ChartSweepView;->setNeighbors([Lcom/android/settings/widget/ChartSweepView;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHorizListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings/widget/ChartSweepView$OnSweepListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHorizListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings/widget/ChartSweepView$OnSweepListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings/widget/ChartSweepView$OnSweepListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings/widget/ChartSweepView$OnSweepListener;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/ChartSweepView;->setClickable(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/ChartSweepView;->setFocusable(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/ChartSweepView;->setClickable(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/ChartSweepView;->setFocusable(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    const-wide/32 v1, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setDragInterval(J)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setDragInterval(J)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mGrid:Lcom/android/settings/widget/ChartGridView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartGridView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->init(Lcom/android/settings/widget/ChartAxis;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->init(Lcom/android/settings/widget/ChartAxis;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->init(Lcom/android/settings/widget/ChartAxis;)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->init(Lcom/android/settings/widget/ChartAxis;)V

    .line 163
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartDataUsageView;->setActivated(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->isActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 365
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    return v1

    .line 370
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->setActivated(Z)V

    :cond_2
    return v0
.end method

.method public setDateSelectionSweepVisible(I)V
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 692
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    return-void
.end method

.method public setListener(Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    return-void
.end method

.method public setVisibleRange(JJJJ)V
    .locals 7

    .line 418
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v0

    .line 419
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mGrid:Lcom/android/settings/widget/ChartGridView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartGridView;->setBounds(JJ)V

    .line 420
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 421
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 423
    iput-wide p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mInspectStart:J

    .line 424
    iput-wide p3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mInspectEnd:J

    .line 426
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->getHistoryStart()J

    move-result-wide v1

    .line 427
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->getHistoryEnd()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v1, v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    :goto_0
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v3, v1

    if-nez v1, :cond_1

    move-wide v1, p3

    goto :goto_1

    .line 432
    :cond_1
    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 434
    :goto_1
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 435
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartSweepView;->setValidRange(JJ)V

    add-long v3, p3, p1

    const-wide/16 v5, 0x2

    .line 438
    div-long/2addr v3, v5

    const-wide/32 v3, 0x240c8400

    sub-long v3, v1, v3

    .line 440
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 442
    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings/widget/ChartSweepView;

    cmp-long v6, p5, p1

    if-ltz v6, :cond_2

    cmp-long v6, p5, p3

    if-gtz v6, :cond_2

    goto :goto_2

    :cond_2
    move-wide p5, v3

    :goto_2
    invoke-virtual {v5, p5, p6}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 444
    iget-object p5, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings/widget/ChartSweepView;

    cmp-long p1, p7, p1

    if-ltz p1, :cond_3

    cmp-long p1, p7, p3

    if-gtz p1, :cond_3

    goto :goto_3

    :cond_3
    move-wide p7, v1

    :goto_3
    invoke-virtual {p5, p7, p8}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 446
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sweepMax"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "sweepMin"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 447
    invoke-virtual {p2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataUsage"

    .line 446
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    if-eqz v0, :cond_4

    .line 450
    iget-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {p1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 451
    iget-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {p1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    :cond_4
    const/4 p1, 0x0

    .line 454
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V

    .line 455
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 456
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updatePrimaryRange()V

    return-void
.end method
