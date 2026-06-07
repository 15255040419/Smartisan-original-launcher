.class public Lb/c/a/c/l1;
.super Lb/c/a/c/k0;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/c/l1$c;,
        Lb/c/a/c/l1$b;
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


# static fields
.field public static final k:Lb/c/a/c/l1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/l1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient e:[Lb/c/a/c/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lb/c/a/c/q0<",
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

.field public final transient g:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final transient h:I

.field public final transient i:I

.field public transient j:Lb/c/a/c/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/k0<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Lb/c/a/c/l1;

    sget-object v3, Lb/c/a/c/p0;->d:[Ljava/util/Map$Entry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lb/c/a/c/l1;-><init>([Lb/c/a/c/q0;[Lb/c/a/c/q0;[Ljava/util/Map$Entry;II)V

    sput-object v6, Lb/c/a/c/l1;->k:Lb/c/a/c/l1;

    return-void
.end method

.method public constructor <init>([Lb/c/a/c/q0;[Lb/c/a/c/q0;[Ljava/util/Map$Entry;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lb/c/a/c/q0<",
            "TK;TV;>;[",
            "Lb/c/a/c/q0<",
            "TK;TV;>;[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb/c/a/c/k0;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c/a/c/l1;->e:[Lb/c/a/c/q0;

    .line 3
    iput-object p2, p0, Lb/c/a/c/l1;->f:[Lb/c/a/c/q0;

    .line 4
    iput-object p3, p0, Lb/c/a/c/l1;->g:[Ljava/util/Map$Entry;

    .line 5
    iput p4, p0, Lb/c/a/c/l1;->h:I

    .line 6
    iput p5, p0, Lb/c/a/c/l1;->i:I

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

    .line 26
    invoke-virtual {p2}, Lb/c/a/c/n0;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "value"

    invoke-static {v1, v2, p1, p2}, Lb/c/a/c/p0;->a(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    .line 27
    invoke-virtual {p2}, Lb/c/a/c/q0;->b()Lb/c/a/c/q0;

    move-result-object p2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static a(I[Ljava/util/Map$Entry;)Lb/c/a/c/k0;
    .locals 18
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

    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    array-length v2, v1

    invoke-static {v0, v2}, Lb/c/a/a/l;->b(II)I

    const-wide v2, 0x3ff3333333333333L    # 1.2

    .line 3
    invoke-static {v0, v2, v3}, Lb/c/a/c/i0;->a(ID)I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    .line 4
    invoke-static {v2}, Lb/c/a/c/q0;->a(I)[Lb/c/a/c/q0;

    move-result-object v4

    .line 5
    invoke-static {v2}, Lb/c/a/c/q0;->a(I)[Lb/c/a/c/q0;

    move-result-object v5

    .line 6
    array-length v2, v1

    if-ne v0, v2, :cond_0

    move-object v6, v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static/range {p0 .. p0}, Lb/c/a/c/q0;->a(I)[Lb/c/a/c/q0;

    move-result-object v2

    move-object v6, v2

    :goto_0
    const/4 v2, 0x0

    move v8, v2

    :goto_1
    if-ge v2, v0, :cond_4

    .line 8
    aget-object v3, v1, v2

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 10
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 11
    invoke-static {v9, v10}, Lb/c/a/c/z;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v11

    .line 13
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v12

    .line 14
    invoke-static {v11}, Lb/c/a/c/i0;->a(I)I

    move-result v13

    and-int/2addr v13, v7

    .line 15
    invoke-static {v12}, Lb/c/a/c/i0;->a(I)I

    move-result v14

    and-int/2addr v14, v7

    .line 16
    aget-object v15, v4, v13

    .line 17
    invoke-static {v9, v3, v15}, Lb/c/a/c/n1;->a(Ljava/lang/Object;Ljava/util/Map$Entry;Lb/c/a/c/q0;)I

    move-result v0

    .line 18
    aget-object v1, v5, v14

    move/from16 v16, v7

    .line 19
    invoke-static {v10, v3, v1}, Lb/c/a/c/l1;->a(Ljava/lang/Object;Ljava/util/Map$Entry;Lb/c/a/c/q0;)I

    move-result v7

    move/from16 v17, v8

    const/16 v8, 0x8

    if-gt v0, v8, :cond_3

    if-le v7, v8, :cond_1

    goto :goto_3

    :cond_1
    if-nez v1, :cond_2

    if-nez v15, :cond_2

    .line 20
    invoke-static {v3, v9, v10}, Lb/c/a/c/n1;->a(Ljava/util/Map$Entry;Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/q0;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v0, Lb/c/a/c/q0$a;

    invoke-direct {v0, v9, v10, v15, v1}, Lb/c/a/c/q0$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lb/c/a/c/q0;Lb/c/a/c/q0;)V

    .line 21
    :goto_2
    aput-object v0, v4, v13

    .line 22
    aput-object v0, v5, v14

    .line 23
    aput-object v0, v6, v2

    xor-int v0, v11, v12

    add-int v8, v17, v0

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, v16

    goto :goto_1

    .line 24
    :cond_3
    :goto_3
    invoke-static/range {p0 .. p1}, Lb/c/a/c/y0;->a(I[Ljava/util/Map$Entry;)Lb/c/a/c/k0;

    move-result-object v0

    return-object v0

    :cond_4
    move/from16 v16, v7

    move/from16 v17, v8

    .line 25
    new-instance v0, Lb/c/a/c/l1;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lb/c/a/c/l1;-><init>([Lb/c/a/c/q0;[Lb/c/a/c/q0;[Ljava/util/Map$Entry;II)V

    return-object v0
.end method

.method public static synthetic a(Lb/c/a/c/l1;)[Lb/c/a/c/q0;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/c/a/c/l1;->f:[Lb/c/a/c/q0;

    return-object p0
.end method

.method public static synthetic b(Lb/c/a/c/l1;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/c/a/c/l1;->h:I

    return p0
.end method

.method public static synthetic c(Lb/c/a/c/l1;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/c/a/c/l1;->i:I

    return p0
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

    .line 28
    invoke-virtual {p0}, Lb/c/a/c/p0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lb/c/a/c/u0;->g()Lb/c/a/c/u0;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lb/c/a/c/r0$b;

    iget-object v1, p0, Lb/c/a/c/l1;->g:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lb/c/a/c/r0$b;-><init>(Lb/c/a/c/p0;[Ljava/util/Map$Entry;)V

    :goto_0
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

    .line 2
    new-instance v0, Lb/c/a/c/s0;

    invoke-direct {v0, p0}, Lb/c/a/c/s0;-><init>(Lb/c/a/c/p0;)V

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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
    iget-object v0, p0, Lb/c/a/c/l1;->g:[Ljava/util/Map$Entry;

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
    iget-object v0, p0, Lb/c/a/c/l1;->e:[Lb/c/a/c/q0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lb/c/a/c/l1;->h:I

    invoke-static {p1, v0, v1}, Lb/c/a/c/n1;->a(Ljava/lang/Object;[Lb/c/a/c/q0;I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lb/c/a/c/l1;->i:I

    return v0
.end method

.method public inverse()Lb/c/a/c/k0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/k0<",
            "TV;TK;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lb/c/a/c/p0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lb/c/a/c/k0;->h()Lb/c/a/c/k0;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lb/c/a/c/l1;->j:Lb/c/a/c/k0;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lb/c/a/c/l1$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/c/a/c/l1$b;-><init>(Lb/c/a/c/l1;Lb/c/a/c/l1$a;)V

    iput-object v0, p0, Lb/c/a/c/l1;->j:Lb/c/a/c/k0;

    :cond_1
    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/l1;->inverse()Lb/c/a/c/k0;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/l1;->g:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method
