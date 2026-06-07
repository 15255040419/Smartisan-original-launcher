.class public Lb/c/a/c/p0$b;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation
.end field

.field public b:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lb/c/a/c/p0$b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array p1, p1, [Ljava/util/Map$Entry;

    iput-object p1, p0, Lb/c/a/c/p0$b;->b:[Ljava/util/Map$Entry;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lb/c/a/c/p0$b;->c:I

    .line 5
    iput-boolean p1, p0, Lb/c/a/c/p0$b;->d:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/p0$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lb/c/a/c/p0$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 6
    iget v0, p0, Lb/c/a/c/p0$b;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lb/c/a/c/p0$b;->a(I)V

    .line 7
    invoke-static {p1, p2}, Lb/c/a/c/p0;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lb/c/a/c/p0$b;->b:[Ljava/util/Map$Entry;

    iget v0, p0, Lb/c/a/c/p0$b;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lb/c/a/c/p0$b;->c:I

    aput-object p1, p2, v0

    return-object p0
.end method

.method public a()Lb/c/a/c/p0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/p0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lb/c/a/c/p0$b;->a:Ljava/util/Comparator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 10
    iget-boolean v0, p0, Lb/c/a/c/p0$b;->d:Z

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lb/c/a/c/p0$b;->b:[Ljava/util/Map$Entry;

    iget v2, p0, Lb/c/a/c/p0$b;->c:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    iput-object v0, p0, Lb/c/a/c/p0$b;->b:[Ljava/util/Map$Entry;

    .line 12
    :cond_0
    iget-object v0, p0, Lb/c/a/c/p0$b;->b:[Ljava/util/Map$Entry;

    iget v2, p0, Lb/c/a/c/p0$b;->c:I

    iget-object v3, p0, Lb/c/a/c/p0$b;->a:Ljava/util/Comparator;

    .line 13
    invoke-static {v3}, Lb/c/a/c/g1;->a(Ljava/util/Comparator;)Lb/c/a/c/g1;

    move-result-object v3

    invoke-static {}, Lcom/google/common/collect/Maps;->a()Lcom/google/common/base/Function;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/c/a/c/g1;->a(Lcom/google/common/base/Function;)Lb/c/a/c/g1;

    move-result-object v3

    .line 14
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 15
    :cond_1
    iget v0, p0, Lb/c/a/c/p0$b;->c:I

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 16
    iput-boolean v2, p0, Lb/c/a/c/p0$b;->d:Z

    .line 17
    iget-object v1, p0, Lb/c/a/c/p0$b;->b:[Ljava/util/Map$Entry;

    invoke-static {v0, v1}, Lb/c/a/c/n1;->a(I[Ljava/util/Map$Entry;)Lb/c/a/c/p0;

    move-result-object v0

    return-object v0

    .line 18
    :cond_2
    iget-object v0, p0, Lb/c/a/c/p0$b;->b:[Ljava/util/Map$Entry;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lb/c/a/c/p0$b;->b:[Ljava/util/Map$Entry;

    aget-object v1, v2, v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lb/c/a/c/p0;->b(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/p0;

    move-result-object v0

    return-object v0

    .line 19
    :cond_3
    invoke-static {}, Lb/c/a/c/p0;->h()Lb/c/a/c/p0;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/c/a/c/p0$b;->b:[Ljava/util/Map$Entry;

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 2
    array-length v1, v0

    .line 3
    invoke-static {v1, p1}, Lb/c/a/c/m0$a;->a(II)I

    move-result p1

    .line 4
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/Map$Entry;

    iput-object p1, p0, Lb/c/a/c/p0$b;->b:[Ljava/util/Map$Entry;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lb/c/a/c/p0$b;->d:Z

    :cond_0
    return-void
.end method
