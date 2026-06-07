.class public Lb/c/a/c/k1;
.super Lb/c/a/c/j0;
.source "RegularImmutableAsList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/j0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final b:Lb/c/a/c/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/m0<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final c:Lb/c/a/c/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/o0<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/c/a/c/m0;Lb/c/a/c/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/m0<",
            "TE;>;",
            "Lb/c/a/c/o0<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb/c/a/c/j0;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c/a/c/k1;->b:Lb/c/a/c/m0;

    .line 3
    iput-object p2, p0, Lb/c/a/c/k1;->c:Lb/c/a/c/o0;

    return-void
.end method

.method public constructor <init>(Lb/c/a/c/m0;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/m0<",
            "TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-static {p2}, Lb/c/a/c/o0;->a([Ljava/lang/Object;)Lb/c/a/c/o0;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lb/c/a/c/k1;-><init>(Lb/c/a/c/m0;Lb/c/a/c/o0;)V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/k1;->c:Lb/c/a/c/o0;

    invoke-virtual {v0, p1, p2}, Lb/c/a/c/o0;->a([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public b()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/k1;->c:Lb/c/a/c/o0;

    invoke-virtual {v0}, Lb/c/a/c/m0;->b()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/k1;->c:Lb/c/a/c/o0;

    invoke-virtual {v0}, Lb/c/a/c/m0;->c()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/k1;->c:Lb/c/a/c/o0;

    invoke-virtual {v0}, Lb/c/a/c/m0;->d()I

    move-result v0

    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/k1;->c:Lb/c/a/c/o0;

    invoke-virtual {v0, p1}, Lb/c/a/c/o0;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public g()Lb/c/a/c/m0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/m0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/k1;->b:Lb/c/a/c/m0;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/k1;->c:Lb/c/a/c/o0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public listIterator(I)Lb/c/a/c/v1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lb/c/a/c/v1<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lb/c/a/c/k1;->c:Lb/c/a/c/o0;

    invoke-virtual {v0, p1}, Lb/c/a/c/o0;->listIterator(I)Lb/c/a/c/v1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/c/a/c/k1;->listIterator(I)Lb/c/a/c/v1;

    move-result-object p1

    return-object p1
.end method
