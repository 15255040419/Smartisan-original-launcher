.class Lcom/amap/api/mapcore2d/cb;
.super Lcom/amap/api/mapcore2d/by;
.source "TaskPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore2d/by<",
        "Lcom/amap/api/mapcore2d/cc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/by;-><init>()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized b(IZ)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/cc;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cb;->a:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 122
    monitor-exit p0

    return-object p1

    .line 124
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cb;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    move p1, v0

    .line 129
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_6

    .line 139
    iget-object v4, p0, Lcom/amap/api/mapcore2d/cb;->a:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore2d/cc;

    if-nez v4, :cond_2

    goto :goto_2

    .line 143
    :cond_2
    iget v5, v4, Lcom/amap/api/mapcore2d/cc;->a:I

    if-eqz p2, :cond_3

    if-nez v5, :cond_4

    .line 146
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v4, p0, Lcom/amap/api/mapcore2d/cb;->a:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-gez v5, :cond_4

    .line 154
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v4, p0, Lcom/amap/api/mapcore2d/cb;->a:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    :cond_4
    if-lt v3, p1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cb;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
