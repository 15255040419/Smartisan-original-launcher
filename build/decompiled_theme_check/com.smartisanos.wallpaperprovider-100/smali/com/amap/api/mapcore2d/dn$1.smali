.class Lcom/amap/api/mapcore2d/dn$1;
.super Ljava/lang/Object;
.source "SDKLogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/dn;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/di;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/amap/api/mapcore2d/di;

.field final synthetic c:Z

.field final synthetic d:Lcom/amap/api/mapcore2d/dn;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/dn;Landroid/content/Context;Lcom/amap/api/mapcore2d/di;Z)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/amap/api/mapcore2d/dn$1;->d:Lcom/amap/api/mapcore2d/dn;

    iput-object p2, p0, Lcom/amap/api/mapcore2d/dn$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/mapcore2d/dn$1;->b:Lcom/amap/api/mapcore2d/di;

    iput-boolean p4, p0, Lcom/amap/api/mapcore2d/dn$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 201
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 202
    :try_start_1
    new-instance v1, Lcom/amap/api/mapcore2d/el;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/dn$1;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore2d/el;-><init>(Landroid/content/Context;Z)V

    .line 204
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dn$1;->b:Lcom/amap/api/mapcore2d/di;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/el;->a(Lcom/amap/api/mapcore2d/di;)V

    .line 205
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    :try_start_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/dn$1;->c:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 210
    :try_start_3
    new-instance v1, Lcom/amap/api/mapcore2d/en;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/dn$1;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore2d/en;-><init>(Landroid/content/Context;)V

    .line 212
    new-instance v2, Lcom/amap/api/mapcore2d/ep;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/ep;-><init>()V

    .line 213
    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/ep;->c(Z)V

    .line 214
    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/ep;->a(Z)V

    .line 215
    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/ep;->b(Z)V

    .line 216
    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/en;->a(Lcom/amap/api/mapcore2d/ep;)V

    .line 218
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    :try_start_4
    iget-object p0, p0, Lcom/amap/api/mapcore2d/dn$1;->d:Lcom/amap/api/mapcore2d/dn;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/dn;->a(Lcom/amap/api/mapcore2d/dn;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/dv;->a(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 218
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception p0

    .line 205
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p0

    .line 222
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
