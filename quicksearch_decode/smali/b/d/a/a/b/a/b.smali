.class public Lb/d/a/a/b/a/b;
.super Ljava/lang/Object;
.source "LruMemoryCache.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;


# instance fields
.field public final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 2
    iput p1, p0, Lb/d/a/a/b/a/b;->b:I

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lb/d/a/a/b/a/b;->a:Ljava/util/LinkedHashMap;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lb/d/a/a/b/a/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(I)V
    .locals 3

    .line 13
    :goto_0
    monitor-enter p0

    .line 14
    :try_start_0
    iget v0, p0, Lb/d/a/a/b/a/b;->c:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Lb/d/a/a/b/a/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lb/d/a/a/b/a/b;->c:I

    if-nez v0, :cond_4

    .line 15
    :cond_0
    iget v0, p0, Lb/d/a/a/b/a/b;->c:I

    if-le v0, p1, :cond_3

    iget-object v0, p0, Lb/d/a/a/b/a/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p0, Lb/d/a/a/b/a/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v0, :cond_2

    .line 17
    monitor-exit p0

    goto :goto_2

    .line 18
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 20
    iget-object v2, p0, Lb/d/a/a/b/a/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget v2, p0, Lb/d/a/a/b/a/b;->c:I

    invoke-virtual {p0, v1, v0}, Lb/d/a/a/b/a/b;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, p0, Lb/d/a/a/b/a/b;->c:I

    .line 22
    monitor-exit p0

    goto :goto_0

    .line 23
    :cond_3
    :goto_1
    monitor-exit p0

    :goto_2
    return-void

    .line 24
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget v0, p0, Lb/d/a/a/b/a/b;->c:I

    invoke-virtual {p0, p1, p2}, Lb/d/a/a/b/a/b;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lb/d/a/a/b/a/b;->c:I

    .line 7
    iget-object v0, p0, Lb/d/a/a/b/a/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 8
    iget v0, p0, Lb/d/a/a/b/a/b;->c:I

    invoke-virtual {p0, p1, p2}, Lb/d/a/a/b/a/b;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lb/d/a/a/b/a/b;->c:I

    .line 9
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget p1, p0, Lb/d/a/a/b/a/b;->b:I

    invoke-virtual {p0, p1}, Lb/d/a/a/b/a/b;->a(I)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int/2addr p1, p2

    return p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lb/d/a/a/b/a/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lb/d/a/a/b/a/b;->c:I

    invoke-virtual {p0, p1, v0}, Lb/d/a/a/b/a/b;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    sub-int/2addr v1, p1

    iput v1, p0, Lb/d/a/a/b/a/b;->c:I

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lb/d/a/a/b/a/b;->a(I)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lb/d/a/a/b/a/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public keys()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lb/d/a/a/b/a/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lb/d/a/a/b/a/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lb/d/a/a/b/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "LruCache[maxSize=%d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1
    iget v3, p0, Lb/d/a/a/b/a/b;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
