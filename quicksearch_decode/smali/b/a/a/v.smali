.class public Lb/a/a/v;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/a/v;->a:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lb/a/a/v;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/a/v;->a:J

    return-void
.end method
