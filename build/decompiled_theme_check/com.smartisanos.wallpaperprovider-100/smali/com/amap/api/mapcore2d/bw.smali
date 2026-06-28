.class Lcom/amap/api/mapcore2d/bw;
.super Ljava/lang/Object;
.source "StopAnimObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/bw$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/mapcore2d/bw;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/bw$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/amap/api/mapcore2d/bw;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/bw;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore2d/bw;->a:Lcom/amap/api/mapcore2d/bw;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bw;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/amap/api/mapcore2d/bw;
    .locals 1

    .line 12
    sget-object v0, Lcom/amap/api/mapcore2d/bw;->a:Lcom/amap/api/mapcore2d/bw;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/amap/api/mapcore2d/bw$a;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 31
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/bw$a;

    if-eqz v1, :cond_0

    .line 22
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/bw$a;->O()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 25
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/amap/api/mapcore2d/bw$a;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 36
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
