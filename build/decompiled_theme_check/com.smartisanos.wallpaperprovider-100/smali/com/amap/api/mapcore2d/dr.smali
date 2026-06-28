.class Lcom/amap/api/mapcore2d/dr;
.super Lcom/amap/api/mapcore2d/dw;
.source "CrashLogUpDateProcessor.java"


# static fields
.field private static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/dw;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 0

    .line 25
    sget-object p0, Lcom/amap/api/mapcore2d/dv;->c:Ljava/lang/String;

    return-object p0
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 4

    .line 37
    sget-boolean p0, Lcom/amap/api/mapcore2d/dr;->a:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 38
    sput-boolean v0, Lcom/amap/api/mapcore2d/dr;->a:Z

    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    monitor-enter p0

    .line 40
    :try_start_0
    new-instance v1, Lcom/amap/api/mapcore2d/en;

    invoke-direct {v1, p1}, Lcom/amap/api/mapcore2d/en;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/en;->a()Lcom/amap/api/mapcore2d/ep;

    move-result-object p1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 45
    monitor-exit p0

    return v2

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ep;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/ep;->a(Z)V

    .line 49
    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/en;->a(Lcom/amap/api/mapcore2d/ep;)V

    .line 52
    monitor-exit p0

    return v2

    .line 54
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return v0
.end method

.method protected b()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
