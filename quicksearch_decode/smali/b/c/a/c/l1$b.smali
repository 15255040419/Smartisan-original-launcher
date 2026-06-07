.class public final Lb/c/a/c/l1$b;
.super Lb/c/a/c/k0;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/c/l1$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/a/c/k0<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lb/c/a/c/l1;


# direct methods
.method public constructor <init>(Lb/c/a/c/l1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/a/c/l1$b;->e:Lb/c/a/c/l1;

    invoke-direct {p0}, Lb/c/a/c/k0;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb/c/a/c/l1;Lb/c/a/c/l1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/c/a/c/l1$b;-><init>(Lb/c/a/c/l1;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lb/c/a/c/u0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/u0<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lb/c/a/c/l1$b$a;

    invoke-direct {v0, p0}, Lb/c/a/c/l1$b$a;-><init>(Lb/c/a/c/l1$b;)V

    return-object v0
.end method

.method public b()Lb/c/a/c/u0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/u0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/c/a/c/s0;

    invoke-direct {v0, p0}, Lb/c/a/c/s0;-><init>(Lb/c/a/c/p0;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TV;-TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lb/c/a/c/l1$b;->e:Lb/c/a/c/l1;

    new-instance v1, Lb/c/a/c/r;

    invoke-direct {v1, p1}, Lb/c/a/c/r;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0, v1}, Lb/c/a/c/l1;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p0, Lb/c/a/c/l1$b;->e:Lb/c/a/c/l1;

    invoke-static {v1}, Lb/c/a/c/l1;->a(Lb/c/a/c/l1;)[Lb/c/a/c/q0;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lb/c/a/c/i0;->a(I)I

    move-result v1

    iget-object v2, p0, Lb/c/a/c/l1$b;->e:Lb/c/a/c/l1;

    invoke-static {v2}, Lb/c/a/c/l1;->b(Lb/c/a/c/l1;)I

    move-result v2

    and-int/2addr v1, v2

    .line 3
    iget-object v2, p0, Lb/c/a/c/l1$b;->e:Lb/c/a/c/l1;

    invoke-static {v2}, Lb/c/a/c/l1;->a(Lb/c/a/c/l1;)[Lb/c/a/c/q0;

    move-result-object v2

    aget-object v1, v2, v1

    :goto_0
    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lb/c/a/c/n0;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1}, Lb/c/a/c/n0;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {v1}, Lb/c/a/c/q0;->b()Lb/c/a/c/q0;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public inverse()Lb/c/a/c/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/k0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lb/c/a/c/l1$b;->e:Lb/c/a/c/l1;

    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/l1$b;->inverse()Lb/c/a/c/k0;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/l1$b;->inverse()Lb/c/a/c/k0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lb/c/a/c/l1$c;

    iget-object v1, p0, Lb/c/a/c/l1$b;->e:Lb/c/a/c/l1;

    invoke-direct {v0, v1}, Lb/c/a/c/l1$c;-><init>(Lb/c/a/c/k0;)V

    return-object v0
.end method
