.class public final Lb/c/a/c/q1;
.super Lb/c/a/c/k0;
.source "SingletonImmutableBiMap.java"


# annotations
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
.field public final transient e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final transient f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public transient g:Lb/c/a/c/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/k0<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb/c/a/c/k0;-><init>()V

    .line 2
    invoke-static {p1, p2}, Lb/c/a/c/z;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lb/c/a/c/q1;->e:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lb/c/a/c/q1;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lb/c/a/c/k0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lb/c/a/c/k0<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lb/c/a/c/k0;-><init>()V

    .line 6
    iput-object p1, p0, Lb/c/a/c/q1;->e:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lb/c/a/c/q1;->f:Ljava/lang/Object;

    .line 8
    iput-object p3, p0, Lb/c/a/c/q1;->g:Lb/c/a/c/k0;

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

    .line 1
    iget-object v0, p0, Lb/c/a/c/q1;->e:Ljava/lang/Object;

    iget-object v1, p0, Lb/c/a/c/q1;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lb/c/a/c/u0;->a(Ljava/lang/Object;)Lb/c/a/c/u0;

    move-result-object v0

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
    iget-object v0, p0, Lb/c/a/c/q1;->e:Ljava/lang/Object;

    invoke-static {v0}, Lb/c/a/c/u0;->a(Ljava/lang/Object;)Lb/c/a/c/u0;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/q1;->e:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/q1;->f:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    check-cast p1, Ljava/util/function/BiConsumer;

    iget-object v0, p0, Lb/c/a/c/q1;->e:Ljava/lang/Object;

    iget-object v1, p0, Lb/c/a/c/q1;->f:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

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
    iget-object v0, p0, Lb/c/a/c/q1;->e:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/c/a/c/q1;->f:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public inverse()Lb/c/a/c/k0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/k0<",
            "TV;TK;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lb/c/a/c/q1;->g:Lb/c/a/c/k0;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lb/c/a/c/q1;

    iget-object v1, p0, Lb/c/a/c/q1;->f:Ljava/lang/Object;

    iget-object v2, p0, Lb/c/a/c/q1;->e:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p0}, Lb/c/a/c/q1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lb/c/a/c/k0;)V

    iput-object v0, p0, Lb/c/a/c/q1;->g:Lb/c/a/c/k0;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/q1;->inverse()Lb/c/a/c/k0;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
