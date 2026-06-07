.class public final Lb/c/a/c/n1;
.super Lb/c/a/c/p0;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/c/n1$b;,
        Lb/c/a/c/n1$a;
    }
.end annotation

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


# static fields
.field public static final h:Lb/c/a/c/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/p0<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J


# instance fields
.field public final transient e:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final transient f:[Lb/c/a/c/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lb/c/a/c/q0<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final transient g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lb/c/a/c/n1;

    sget-object v1, Lb/c/a/c/p0;->d:[Ljava/util/Map$Entry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lb/c/a/c/n1;-><init>([Ljava/util/Map$Entry;[Lb/c/a/c/q0;I)V

    sput-object v0, Lb/c/a/c/n1;->h:Lb/c/a/c/p0;

    return-void
.end method

.method public constructor <init>([Ljava/util/Map$Entry;[Lb/c/a/c/q0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;[",
            "Lb/c/a/c/q0<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb/c/a/c/p0;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c/a/c/n1;->e:[Ljava/util/Map$Entry;

    .line 3
    iput-object p2, p0, Lb/c/a/c/n1;->f:[Lb/c/a/c/q0;

    .line 4
    iput p3, p0, Lb/c/a/c/n1;->g:I

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/util/Map$Entry;Lb/c/a/c/q0;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map$Entry<",
            "**>;",
            "Lb/c/a/c/q0<",
            "**>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {p2}, Lb/c/a/c/n0;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "key"

    invoke-static {v1, v2, p1, p2}, Lb/c/a/c/p0;->a(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    .line 24
    invoke-virtual {p2}, Lb/c/a/c/q0;->a()Lb/c/a/c/q0;

    move-result-object p2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static a(I[Ljava/util/Map$Entry;)Lb/c/a/c/p0;
    .locals 9
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
    array-length v0, p1

    invoke-static {p0, v0}, Lb/c/a/a/l;->b(II)I

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lb/c/a/c/n1;->h:Lb/c/a/c/p0;

    check-cast p0, Lb/c/a/c/n1;

    return-object p0

    .line 3
    :cond_0
    array-length v0, p1

    if-ne p0, v0, :cond_1

    move-object v0, p1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0}, Lb/c/a/c/q0;->a(I)[Lb/c/a/c/q0;

    move-result-object v0

    :goto_0
    const-wide v1, 0x3ff3333333333333L    # 1.2

    .line 5
    invoke-static {p0, v1, v2}, Lb/c/a/c/i0;->a(ID)I

    move-result v1

    .line 6
    invoke-static {v1}, Lb/c/a/c/q0;->a(I)[Lb/c/a/c/q0;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p0, :cond_4

    .line 7
    aget-object v4, p1, v3

    .line 8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 10
    invoke-static {v5, v6}, Lb/c/a/c/z;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lb/c/a/c/i0;->a(I)I

    move-result v7

    and-int/2addr v7, v1

    .line 12
    aget-object v8, v2, v7

    if-nez v8, :cond_2

    .line 13
    invoke-static {v4, v5, v6}, Lb/c/a/c/n1;->a(Ljava/util/Map$Entry;Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/q0;

    move-result-object v4

    goto :goto_2

    :cond_2
    new-instance v4, Lb/c/a/c/q0$b;

    invoke-direct {v4, v5, v6, v8}, Lb/c/a/c/q0$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lb/c/a/c/q0;)V

    .line 14
    :goto_2
    aput-object v4, v2, v7

    .line 15
    aput-object v4, v0, v3

    .line 16
    invoke-static {v5, v4, v8}, Lb/c/a/c/n1;->a(Ljava/lang/Object;Ljava/util/Map$Entry;Lb/c/a/c/q0;)I

    move-result v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_3

    .line 17
    invoke-static {p0, p1}, Lb/c/a/c/z0;->a(I[Ljava/util/Map$Entry;)Lb/c/a/c/p0;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 18
    :cond_4
    new-instance p0, Lb/c/a/c/n1;

    invoke-direct {p0, v0, v2, v1}, Lb/c/a/c/n1;-><init>([Ljava/util/Map$Entry;[Lb/c/a/c/q0;I)V

    return-object p0
.end method

.method public static a(Ljava/util/Map$Entry;)Lb/c/a/c/q0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lb/c/a/c/q0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 22
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lb/c/a/c/n1;->a(Ljava/util/Map$Entry;Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/q0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map$Entry;Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;TK;TV;)",
            "Lb/c/a/c/q0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 19
    instance-of v0, p0, Lb/c/a/c/q0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lb/c/a/c/q0;

    .line 20
    invoke-virtual {v0}, Lb/c/a/c/q0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 21
    check-cast p0, Lb/c/a/c/q0;

    goto :goto_1

    :cond_1
    new-instance p0, Lb/c/a/c/q0;

    invoke-direct {p0, p1, p2}, Lb/c/a/c/q0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method

.method public static a(Ljava/lang/Object;[Lb/c/a/c/q0;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Lb/c/a/c/q0<",
            "*TV;>;I)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lb/c/a/c/i0;->a(I)I

    move-result v1

    and-int/2addr p2, v1

    .line 26
    aget-object p1, p1, p2

    :goto_0
    if-eqz p1, :cond_2

    .line 27
    invoke-virtual {p1}, Lb/c/a/c/n0;->getKey()Ljava/lang/Object;

    move-result-object p2

    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 29
    invoke-virtual {p1}, Lb/c/a/c/n0;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 30
    :cond_1
    invoke-virtual {p1}, Lb/c/a/c/q0;->a()Lb/c/a/c/q0;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
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

    .line 31
    new-instance v0, Lb/c/a/c/r0$b;

    iget-object v1, p0, Lb/c/a/c/n1;->e:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lb/c/a/c/r0$b;-><init>(Lb/c/a/c/p0;[Ljava/util/Map$Entry;)V

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
    new-instance v0, Lb/c/a/c/n1$a;

    invoke-direct {v0, p0}, Lb/c/a/c/n1$a;-><init>(Lb/c/a/c/n1;)V

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
    new-instance v0, Lb/c/a/c/n1$b;

    invoke-direct {v0, p0}, Lb/c/a/c/n1$b;-><init>(Lb/c/a/c/n1;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 5
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
    iget-object v0, p0, Lb/c/a/c/n1;->e:[Ljava/util/Map$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/n1;->f:[Lb/c/a/c/q0;

    iget v1, p0, Lb/c/a/c/n1;->g:I

    invoke-static {p1, v0, v1}, Lb/c/a/c/n1;->a(Ljava/lang/Object;[Lb/c/a/c/q0;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/n1;->e:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method
