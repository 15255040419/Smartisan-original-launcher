.class public final Lb/c/a/c/y0;
.super Lb/c/a/c/k0;
.source "JdkBackedImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/c/y0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/k0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final transient e:Lb/c/a/c/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/o0<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TV;TK;>;"
        }
    .end annotation
.end field

.field public transient h:Lb/c/a/c/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/y0<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/c/a/c/o0;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/o0<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb/c/a/c/k0;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c/a/c/y0;->e:Lb/c/a/c/o0;

    .line 3
    iput-object p2, p0, Lb/c/a/c/y0;->f:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Lb/c/a/c/y0;->g:Ljava/util/Map;

    return-void
.end method

.method public static a(I[Ljava/util/Map$Entry;)Lb/c/a/c/k0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lb/c/a/c/k0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/common/collect/Maps;->b(I)Ljava/util/HashMap;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/google/common/collect/Maps;->b(I)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    .line 4
    aget-object v3, p1, v2

    invoke-static {v3}, Lb/c/a/c/n1;->a(Ljava/util/Map$Entry;)Lb/c/a/c/q0;

    move-result-object v3

    .line 5
    aput-object v3, p1, v2

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "="

    if-nez v4, :cond_1

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aget-object p1, p1, v2

    const-string v0, "value"

    invoke-static {v0, p0, p1}, Lb/c/a/c/p0;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aget-object p1, p1, v2

    const-string v0, "key"

    invoke-static {v0, p0, p1}, Lb/c/a/c/p0;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 10
    :cond_2
    invoke-static {p1, p0}, Lb/c/a/c/o0;->b([Ljava/lang/Object;I)Lb/c/a/c/o0;

    move-result-object p0

    .line 11
    new-instance p1, Lb/c/a/c/y0;

    invoke-direct {p1, p0, v0, v1}, Lb/c/a/c/y0;-><init>(Lb/c/a/c/o0;Ljava/util/Map;Ljava/util/Map;)V

    return-object p1
.end method

.method public static synthetic a(Lb/c/a/c/y0;)Lb/c/a/c/o0;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/c/a/c/y0;->e:Lb/c/a/c/o0;

    return-object p0
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

    .line 12
    new-instance v0, Lb/c/a/c/r0$b;

    iget-object v1, p0, Lb/c/a/c/y0;->e:Lb/c/a/c/o0;

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
    iget-object v0, p0, Lb/c/a/c/y0;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public inverse()Lb/c/a/c/k0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/k0<",
            "TV;TK;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lb/c/a/c/y0;->h:Lb/c/a/c/y0;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lb/c/a/c/y0;

    new-instance v1, Lb/c/a/c/y0$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lb/c/a/c/y0$b;-><init>(Lb/c/a/c/y0;Lb/c/a/c/y0$a;)V

    iget-object v2, p0, Lb/c/a/c/y0;->g:Ljava/util/Map;

    iget-object v3, p0, Lb/c/a/c/y0;->f:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lb/c/a/c/y0;-><init>(Lb/c/a/c/o0;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v0, p0, Lb/c/a/c/y0;->h:Lb/c/a/c/y0;

    .line 4
    iput-object p0, v0, Lb/c/a/c/y0;->h:Lb/c/a/c/y0;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/y0;->inverse()Lb/c/a/c/k0;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/y0;->e:Lb/c/a/c/o0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
