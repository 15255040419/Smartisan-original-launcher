.class public Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;
.super Ljava/lang/Object;
.source "VisibilityLoggerMixin.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field public static final EXTRA_SOURCE_METRICS_CATEGORY:Ljava/lang/String; = ":settings:source_metrics"

.field private static final TAG:Ljava/lang/String; = "VisibilityLoggerMixin"


# instance fields
.field private final mMetricsCategory:I

.field private mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mSourceMetricsCategory:I

.field private mVisibleTimestamp:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    .line 49
    iput v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    return-void
.end method

.method public constructor <init>(ILcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    .line 53
    iput p1, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    .line 54
    iput-object p2, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method


# virtual methods
.method public elapsedTimeSinceVisible()J
    .locals 4

    .line 90
    iget-wide v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mVisibleTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 93
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mVisibleTimestamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mVisibleTimestamp:J

    .line 68
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->hidden(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mVisibleTimestamp:J

    .line 60
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 61
    iget p0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    invoke-virtual {v0, v2, p0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->visible(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method public setSourceMetricsCategory(Landroid/app/Activity;)V
    .locals 2

    .line 77
    iget v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const-string v1, ":settings:source_metrics"

    .line 84
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    :cond_2
    :goto_0
    return-void
.end method
