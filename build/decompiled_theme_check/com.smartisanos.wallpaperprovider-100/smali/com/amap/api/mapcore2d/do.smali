.class Lcom/amap/api/mapcore2d/do;
.super Lcom/amap/api/mapcore2d/dw;
.source "ANRLogUpDateProcessor.java"


# static fields
.field private static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/dw;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 0

    .line 21
    sget-object p0, Lcom/amap/api/mapcore2d/dv;->d:Ljava/lang/String;

    return-object p0
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 4

    .line 32
    invoke-static {p1}, Lcom/amap/api/mapcore2d/de;->m(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_2

    sget-boolean p0, Lcom/amap/api/mapcore2d/do;->a:Z

    if-eqz p0, :cond_2

    .line 34
    sput-boolean v1, Lcom/amap/api/mapcore2d/do;->a:Z

    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    monitor-enter p0

    .line 37
    :try_start_0
    new-instance v2, Lcom/amap/api/mapcore2d/en;

    invoke-direct {v2, p1}, Lcom/amap/api/mapcore2d/en;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/en;->a()Lcom/amap/api/mapcore2d/ep;

    move-result-object p1

    if-nez p1, :cond_0

    .line 44
    monitor-exit p0

    return v0

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ep;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore2d/ep;->c(Z)V

    .line 49
    invoke-virtual {v2, p1}, Lcom/amap/api/mapcore2d/en;->a(Lcom/amap/api/mapcore2d/ep;)V

    .line 50
    monitor-exit p0

    return v0

    .line 52
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return v1
.end method

.method protected b()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
