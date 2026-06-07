.class public final Lb/c/a/c/c1;
.super Ljava/lang/Object;
.source "MapMaker.java"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Lcom/google/common/collect/MapMakerInternalMap$n;

.field public e:Lcom/google/common/collect/MapMakerInternalMap$n;

.field public f:Lb/c/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/a/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lb/c/a/c/c1;->b:I

    .line 3
    iput v0, p0, Lb/c/a/c/c1;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 7
    iget v0, p0, Lb/c/a/c/c1;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method public a(I)Lb/c/a/c/c1;
    .locals 5

    .line 4
    iget v0, p0, Lb/c/a/c/c1;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Lb/c/a/c/c1;->c:I

    const-string v4, "concurrency level was already set to %s"

    invoke-static {v0, v4, v3}, Lb/c/a/a/l;->a(ZLjava/lang/String;I)V

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 5
    :goto_1
    invoke-static {v1}, Lb/c/a/a/l;->a(Z)V

    .line 6
    iput p1, p0, Lb/c/a/c/c1;->c:I

    return-object p0
.end method

.method public a(Lb/c/a/a/f;)Lb/c/a/c/c1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/a/f<",
            "Ljava/lang/Object;",
            ">;)",
            "Lb/c/a/c/c1;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/c1;->f:Lb/c/a/a/f;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lb/c/a/c/c1;->f:Lb/c/a/a/f;

    const-string v3, "key equivalence was already set to %s"

    invoke-static {v0, v3, v2}, Lb/c/a/a/l;->b(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lb/c/a/a/f;

    iput-object p1, p0, Lb/c/a/c/c1;->f:Lb/c/a/a/f;

    .line 3
    iput-boolean v1, p0, Lb/c/a/c/c1;->a:Z

    return-object p0
.end method

.method public a(Lcom/google/common/collect/MapMakerInternalMap$n;)Lb/c/a/c/c1;
    .locals 4

    .line 8
    iget-object v0, p0, Lb/c/a/c/c1;->d:Lcom/google/common/collect/MapMakerInternalMap$n;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lb/c/a/c/c1;->d:Lcom/google/common/collect/MapMakerInternalMap$n;

    const-string v3, "Key strength was already set to %s"

    invoke-static {v0, v3, v2}, Lb/c/a/a/l;->b(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$n;

    iput-object v0, p0, Lb/c/a/c/c1;->d:Lcom/google/common/collect/MapMakerInternalMap$n;

    .line 10
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$n;->a:Lcom/google/common/collect/MapMakerInternalMap$n;

    if-eq p1, v0, :cond_1

    .line 11
    iput-boolean v1, p0, Lb/c/a/c/c1;->a:Z

    :cond_1
    return-object p0
.end method

.method public b()I
    .locals 2

    .line 4
    iget v0, p0, Lb/c/a/c/c1;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :cond_0
    return v0
.end method

.method public b(I)Lb/c/a/c/c1;
    .locals 5

    .line 1
    iget v0, p0, Lb/c/a/c/c1;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Lb/c/a/c/c1;->b:I

    const-string v4, "initial capacity was already set to %s"

    invoke-static {v0, v4, v3}, Lb/c/a/a/l;->a(ZLjava/lang/String;I)V

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2
    :goto_1
    invoke-static {v1}, Lb/c/a/a/l;->a(Z)V

    .line 3
    iput p1, p0, Lb/c/a/c/c1;->b:I

    return-object p0
.end method

.method public b(Lcom/google/common/collect/MapMakerInternalMap$n;)Lb/c/a/c/c1;
    .locals 4

    .line 5
    iget-object v0, p0, Lb/c/a/c/c1;->e:Lcom/google/common/collect/MapMakerInternalMap$n;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lb/c/a/c/c1;->e:Lcom/google/common/collect/MapMakerInternalMap$n;

    const-string v3, "Value strength was already set to %s"

    invoke-static {v0, v3, v2}, Lb/c/a/a/l;->b(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$n;

    iput-object v0, p0, Lb/c/a/c/c1;->e:Lcom/google/common/collect/MapMakerInternalMap$n;

    .line 7
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$n;->a:Lcom/google/common/collect/MapMakerInternalMap$n;

    if-eq p1, v0, :cond_1

    .line 8
    iput-boolean v1, p0, Lb/c/a/c/c1;->a:Z

    :cond_1
    return-object p0
.end method

.method public c()Lb/c/a/a/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/a/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/c1;->f:Lb/c/a/a/f;

    invoke-virtual {p0}, Lb/c/a/c/c1;->d()Lcom/google/common/collect/MapMakerInternalMap$n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$n;->a()Lb/c/a/a/f;

    move-result-object v1

    invoke-static {v0, v1}, Lb/c/a/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/c/a/a/f;

    return-object v0
.end method

.method public d()Lcom/google/common/collect/MapMakerInternalMap$n;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/c/a/c/c1;->d:Lcom/google/common/collect/MapMakerInternalMap$n;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$n;->a:Lcom/google/common/collect/MapMakerInternalMap$n;

    invoke-static {v0, v1}, Lb/c/a/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$n;

    return-object v0
.end method

.method public e()Lcom/google/common/collect/MapMakerInternalMap$n;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/c/a/c/c1;->e:Lcom/google/common/collect/MapMakerInternalMap$n;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$n;->a:Lcom/google/common/collect/MapMakerInternalMap$n;

    invoke-static {v0, v1}, Lb/c/a/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$n;

    return-object v0
.end method

.method public f()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lb/c/a/c/c1;->a:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lb/c/a/c/c1;->b()I

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {p0}, Lb/c/a/c/c1;->a()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lb/c/a/c/c1;)Lcom/google/common/collect/MapMakerInternalMap;

    move-result-object v0

    return-object v0
.end method

.method public g()Lb/c/a/c/c1;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$n;->b:Lcom/google/common/collect/MapMakerInternalMap$n;

    invoke-virtual {p0, v0}, Lb/c/a/c/c1;->a(Lcom/google/common/collect/MapMakerInternalMap$n;)Lb/c/a/c/c1;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lb/c/a/a/i;->a(Ljava/lang/Object;)Lb/c/a/a/i$b;

    move-result-object v0

    .line 2
    iget v1, p0, Lb/c/a/c/c1;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v3, "initialCapacity"

    .line 3
    invoke-virtual {v0, v3, v1}, Lb/c/a/a/i$b;->a(Ljava/lang/String;I)Lb/c/a/a/i$b;

    .line 4
    :cond_0
    iget v1, p0, Lb/c/a/c/c1;->c:I

    if-eq v1, v2, :cond_1

    const-string v2, "concurrencyLevel"

    .line 5
    invoke-virtual {v0, v2, v1}, Lb/c/a/a/i$b;->a(Ljava/lang/String;I)Lb/c/a/a/i$b;

    .line 6
    :cond_1
    iget-object v1, p0, Lb/c/a/c/c1;->d:Lcom/google/common/collect/MapMakerInternalMap$n;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/c/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyStrength"

    invoke-virtual {v0, v2, v1}, Lb/c/a/a/i$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/c/a/a/i$b;

    .line 8
    :cond_2
    iget-object v1, p0, Lb/c/a/c/c1;->e:Lcom/google/common/collect/MapMakerInternalMap$n;

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/c/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueStrength"

    invoke-virtual {v0, v2, v1}, Lb/c/a/a/i$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/c/a/a/i$b;

    .line 10
    :cond_3
    iget-object v1, p0, Lb/c/a/c/c1;->f:Lb/c/a/a/f;

    if-eqz v1, :cond_4

    const-string v1, "keyEquivalence"

    .line 11
    invoke-virtual {v0, v1}, Lb/c/a/a/i$b;->b(Ljava/lang/Object;)Lb/c/a/a/i$b;

    .line 12
    :cond_4
    invoke-virtual {v0}, Lb/c/a/a/i$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
