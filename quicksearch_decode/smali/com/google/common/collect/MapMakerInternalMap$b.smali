.class public abstract Lcom/google/common/collect/MapMakerInternalMap$b;
.super Lb/c/a/c/f0;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/f0<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x3L


# instance fields
.field public final a:Lcom/google/common/collect/MapMakerInternalMap$n;

.field public final b:Lcom/google/common/collect/MapMakerInternalMap$n;

.field public final c:Lb/c/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/a/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final d:I

.field public transient e:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/MapMakerInternalMap$n;Lcom/google/common/collect/MapMakerInternalMap$n;Lb/c/a/a/f;Lb/c/a/a/f;ILjava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$n;",
            "Lcom/google/common/collect/MapMakerInternalMap$n;",
            "Lb/c/a/a/f<",
            "Ljava/lang/Object;",
            ">;",
            "Lb/c/a/a/f<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb/c/a/c/f0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->a:Lcom/google/common/collect/MapMakerInternalMap$n;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->b:Lcom/google/common/collect/MapMakerInternalMap$n;

    .line 4
    iput-object p3, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->c:Lb/c/a/a/f;

    .line 5
    iput p5, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->d:I

    .line 6
    iput-object p6, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->e:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$b;->a()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/util/Map;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$b;->a()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->e:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public a(Ljava/io/ObjectInputStream;)V
    .locals 3

    .line 9
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/io/ObjectOutputStream;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/io/ObjectInputStream;)Lb/c/a/c/c1;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    .line 2
    new-instance v0, Lb/c/a/c/c1;

    invoke-direct {v0}, Lb/c/a/c/c1;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lb/c/a/c/c1;->b(I)Lb/c/a/c/c1;

    iget-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->a:Lcom/google/common/collect/MapMakerInternalMap$n;

    .line 4
    invoke-virtual {v0, p1}, Lb/c/a/c/c1;->a(Lcom/google/common/collect/MapMakerInternalMap$n;)Lb/c/a/c/c1;

    iget-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->b:Lcom/google/common/collect/MapMakerInternalMap$n;

    .line 5
    invoke-virtual {v0, p1}, Lb/c/a/c/c1;->b(Lcom/google/common/collect/MapMakerInternalMap$n;)Lb/c/a/c/c1;

    iget-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->c:Lb/c/a/a/f;

    .line 6
    invoke-virtual {v0, p1}, Lb/c/a/c/c1;->a(Lb/c/a/a/f;)Lb/c/a/c/c1;

    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->d:I

    .line 7
    invoke-virtual {v0, p1}, Lb/c/a/c/c1;->a(I)Lb/c/a/c/c1;

    return-object v0
.end method
