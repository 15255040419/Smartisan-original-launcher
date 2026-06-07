.class public abstract Lb/c/a/c/v0;
.super Lb/c/a/c/u0;
.source "IndexedImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/u0<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/c/a/c/u0;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/u0;->a()Lb/c/a/c/o0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/c/a/c/o0;->a([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public e()Lb/c/a/c/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/o0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/c/a/c/v0$a;

    invoke-direct {v0, p0}, Lb/c/a/c/v0$a;-><init>(Lb/c/a/c/v0;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lb/c/a/c/v0;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public iterator()Lb/c/a/c/u1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/u1<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lb/c/a/c/u0;->a()Lb/c/a/c/o0;

    move-result-object v0

    invoke-virtual {v0}, Lb/c/a/c/o0;->iterator()Lb/c/a/c/u1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/v0;->iterator()Lb/c/a/c/u1;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-instance v1, Lb/c/a/c/s;

    invoke-direct {v1, p0}, Lb/c/a/c/s;-><init>(Lb/c/a/c/v0;)V

    const/16 v2, 0x511

    invoke-static {v0, v2, v1}, Lb/c/a/c/a0;->a(IILjava/util/function/IntFunction;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
