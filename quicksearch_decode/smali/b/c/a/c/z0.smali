.class public final Lb/c/a/c/z0;
.super Lb/c/a/c/p0;
.source "JdkBackedImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/p0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final transient e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final transient f:Lb/c/a/c/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/o0<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lb/c/a/c/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lb/c/a/c/o0<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb/c/a/c/p0;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c/a/c/z0;->e:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lb/c/a/c/z0;->f:Lb/c/a/c/o0;

    return-void
.end method

.method public static a(I[Ljava/util/Map$Entry;)Lb/c/a/c/p0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lb/c/a/c/p0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/Maps;->b(I)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 2
    aget-object v2, p1, v1

    invoke-static {v2}, Lb/c/a/c/n1;->a(Ljava/util/Map$Entry;)Lb/c/a/c/q0;

    move-result-object v2

    aput-object v2, p1, v1

    .line 3
    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    aget-object p0, p1, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key"

    invoke-static {v0, p0, p1}, Lb/c/a/c/p0;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 5
    :cond_1
    new-instance v1, Lb/c/a/c/z0;

    invoke-static {p1, p0}, Lb/c/a/c/o0;->b([Ljava/lang/Object;I)Lb/c/a/c/o0;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lb/c/a/c/z0;-><init>(Ljava/util/Map;Lb/c/a/c/o0;)V

    return-object v1
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Ljava/util/Map$Entry;)V
    .locals 1

    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lb/c/a/c/u0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/u0<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lb/c/a/c/r0$b;

    iget-object v1, p0, Lb/c/a/c/z0;->f:Lb/c/a/c/o0;

    invoke-direct {v0, p0, v1}, Lb/c/a/c/r0$b;-><init>(Lb/c/a/c/p0;Lb/c/a/c/o0;)V

    return-object v0
.end method

.method public b()Lb/c/a/c/u0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/u0<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/c/a/c/s0;

    invoke-direct {v0, p0}, Lb/c/a/c/s0;-><init>(Lb/c/a/c/p0;)V

    return-object v0
.end method

.method public c()Lb/c/a/c/m0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/m0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/c/a/c/t0;

    invoke-direct {v0, p0}, Lb/c/a/c/t0;-><init>(Lb/c/a/c/p0;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lb/c/a/c/z0;->f:Lb/c/a/c/o0;

    new-instance v1, Lb/c/a/c/m;

    invoke-direct {v1, p1}, Lb/c/a/c/m;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0, v1}, Lb/c/a/c/o0;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/z0;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/z0;->f:Lb/c/a/c/o0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
