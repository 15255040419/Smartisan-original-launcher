.class public final Lb/c/a/c/k0$a;
.super Lb/c/a/c/p0$b;
.source "ImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/p0$b<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/c/a/c/p0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/k0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lb/c/a/c/k0$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Lb/c/a/c/p0$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/p0$b;

    return-object p0
.end method

.method public a()Lb/c/a/c/k0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/k0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4
    iget v0, p0, Lb/c/a/c/p0$b;->c:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 5
    iget-object v3, p0, Lb/c/a/c/p0$b;->a:Ljava/util/Comparator;

    if-eqz v3, :cond_1

    .line 6
    iget-boolean v3, p0, Lb/c/a/c/p0$b;->d:Z

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, p0, Lb/c/a/c/p0$b;->b:[Ljava/util/Map$Entry;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    iput-object v0, p0, Lb/c/a/c/p0$b;->b:[Ljava/util/Map$Entry;

    .line 8
    :cond_0
    iget-object v0, p0, Lb/c/a/c/p0$b;->b:[Ljava/util/Map$Entry;

    iget v3, p0, Lb/c/a/c/p0$b;->c:I

    iget-object v4, p0, Lb/c/a/c/p0$b;->a:Ljava/util/Comparator;

    .line 9
    invoke-static {v4}, Lb/c/a/c/g1;->a(Ljava/util/Comparator;)Lb/c/a/c/g1;

    move-result-object v4

    invoke-static {}, Lcom/google/common/collect/Maps;->a()Lcom/google/common/base/Function;

    move-result-object v5

    invoke-virtual {v4, v5}, Lb/c/a/c/g1;->a(Lcom/google/common/base/Function;)Lb/c/a/c/g1;

    move-result-object v4

    .line 10
    invoke-static {v0, v2, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 11
    :cond_1
    iput-boolean v1, p0, Lb/c/a/c/p0$b;->d:Z

    .line 12
    iget v0, p0, Lb/c/a/c/p0$b;->c:I

    iget-object v1, p0, Lb/c/a/c/p0$b;->b:[Ljava/util/Map$Entry;

    invoke-static {v0, v1}, Lb/c/a/c/l1;->a(I[Ljava/util/Map$Entry;)Lb/c/a/c/k0;

    move-result-object v0

    return-object v0

    .line 13
    :cond_2
    iget-object v0, p0, Lb/c/a/c/p0$b;->b:[Ljava/util/Map$Entry;

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lb/c/a/c/p0$b;->b:[Ljava/util/Map$Entry;

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lb/c/a/c/k0;->b(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/k0;

    move-result-object v0

    return-object v0

    .line 14
    :cond_3
    invoke-static {}, Lb/c/a/c/k0;->h()Lb/c/a/c/k0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/p0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lb/c/a/c/k0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/k0$a;

    return-object p0
.end method

.method public bridge synthetic a()Lb/c/a/c/p0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/k0$a;->a()Lb/c/a/c/k0;

    move-result-object v0

    return-object v0
.end method
