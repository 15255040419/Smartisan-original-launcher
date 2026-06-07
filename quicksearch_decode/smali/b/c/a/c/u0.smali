.class public abstract Lb/c/a/c/u0;
.super Lb/c/a/c/m0;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/c/u0$a;,
        Lb/c/a/c/u0$b;,
        Lb/c/a/c/u0$d;,
        Lb/c/a/c/u0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/m0<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public transient b:Lb/c/a/c/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/o0<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/c/a/c/m0;-><init>()V

    return-void
.end method

.method public static synthetic a(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lb/c/a/c/u0;->c(I)I

    move-result p0

    return p0
.end method

.method public static varargs a(I[Ljava/lang/Object;)Lb/c/a/c/u0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lb/c/a/c/u0<",
            "TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    .line 4
    new-instance v1, Lb/c/a/c/u0$b;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lb/c/a/c/u0$b;-><init>(I)V

    :goto_0
    if-ge v0, p0, :cond_0

    .line 5
    aget-object v2, p1, v0

    invoke-static {v2}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, v2}, Lb/c/a/c/u0$d;->a(Ljava/lang/Object;)Lb/c/a/c/u0$d;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lb/c/a/c/u0$d;->b()Lb/c/a/c/u0$d;

    move-result-object p0

    invoke-virtual {p0}, Lb/c/a/c/u0$d;->a()Lb/c/a/c/u0;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    aget-object p0, p1, v0

    .line 9
    invoke-static {p0}, Lb/c/a/c/u0;->a(Ljava/lang/Object;)Lb/c/a/c/u0;

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    invoke-static {}, Lb/c/a/c/u0;->g()Lb/c/a/c/u0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Lb/c/a/c/u0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lb/c/a/c/u0<",
            "TE;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lb/c/a/c/s1;

    invoke-direct {v0, p0}, Lb/c/a/c/s1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/u0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lb/c/a/c/u0<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    .line 3
    invoke-static {v0, v1}, Lb/c/a/c/u0;->a(I[Ljava/lang/Object;)Lb/c/a/c/u0;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/Object;)Lb/c/a/c/u0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lb/c/a/c/u0<",
            "TE;>;"
        }
    .end annotation

    .line 11
    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 12
    array-length v0, p0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lb/c/a/c/u0;->a(I[Ljava/lang/Object;)Lb/c/a/c/u0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 13
    aget-object p0, p0, v0

    invoke-static {p0}, Lb/c/a/c/u0;->a(Ljava/lang/Object;)Lb/c/a/c/u0;

    move-result-object p0

    return-object p0

    .line 14
    :cond_1
    invoke-static {}, Lb/c/a/c/u0;->g()Lb/c/a/c/u0;

    move-result-object p0

    return-object p0
.end method

.method public static a(I[Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 6

    .line 17
    new-array p0, p0, [Ljava/lang/Object;

    .line 18
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 19
    aget-object v2, p1, v1

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lb/c/a/c/i0;->a(I)I

    move-result v3

    :goto_1
    and-int v4, v3, v0

    .line 21
    aget-object v5, p0, v4

    if-nez v5, :cond_0

    .line 22
    aput-object v2, p0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public static b(I)I
    .locals 5

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, 0x1

    const v1, 0x2ccccccc

    if-ge p0, v1, :cond_1

    add-int/lit8 v1, p0, -0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    :goto_0
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    if-ge p0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string p0, "collection too large"

    .line 3
    invoke-static {v0, p0}, Lb/c/a/a/l;->a(ZLjava/lang/Object;)V

    return v1
.end method

.method public static b([Ljava/lang/Object;)Z
    .locals 8

    .line 4
    array-length v0, p0

    invoke-static {v0}, Lb/c/a/c/u0;->c(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 5
    :cond_0
    array-length v3, p0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 6
    aget-object v3, p0, v2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-le v2, v0, :cond_0

    return v4

    .line 7
    :cond_2
    :goto_0
    array-length v3, p0

    sub-int/2addr v3, v4

    :goto_1
    if-le v3, v2, :cond_5

    .line 8
    aget-object v5, p0, v3

    if-nez v5, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    array-length v5, p0

    sub-int/2addr v5, v4

    sub-int/2addr v5, v3

    add-int/2addr v5, v2

    if-le v5, v0, :cond_4

    return v4

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 10
    :cond_5
    :goto_2
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v4

    :goto_3
    add-int v5, v2, v0

    if-gt v5, v3, :cond_8

    move v6, v1

    :goto_4
    if-ge v6, v0, :cond_7

    add-int v7, v2, v6

    .line 11
    aget-object v7, p0, v7

    if-nez v7, :cond_6

    move v2, v5

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    return v4

    :cond_8
    return v1
.end method

.method public static c(I)I
    .locals 1

    .line 1
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, Lb/c/a/g/a;->a(ILjava/math/RoundingMode;)I

    move-result p0

    mul-int/lit8 p0, p0, 0xd

    return p0
.end method

.method public static g()Lb/c/a/c/u0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lb/c/a/c/u0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lb/c/a/c/o1;->g:Lb/c/a/c/o1;

    return-object v0
.end method


# virtual methods
.method public a()Lb/c/a/c/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/o0<",
            "TE;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lb/c/a/c/u0;->b:Lb/c/a/c/o0;

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lb/c/a/c/u0;->e()Lb/c/a/c/o0;

    move-result-object v0

    iput-object v0, p0, Lb/c/a/c/u0;->b:Lb/c/a/c/o0;

    :cond_0
    return-object v0
.end method

.method public e()Lb/c/a/c/o0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/o0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/c/a/c/k1;

    invoke-virtual {p0}, Lb/c/a/c/m0;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lb/c/a/c/k1;-><init>(Lb/c/a/c/m0;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lb/c/a/c/u0;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lb/c/a/c/u0;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lb/c/a/c/u0;

    .line 3
    invoke-virtual {v0}, Lb/c/a/c/u0;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lb/c/a/c/u0;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1
    invoke-static {p0, p1}, Lb/c/a/c/p1;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lb/c/a/c/p1;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/m0;->iterator()Lb/c/a/c/u1;

    move-result-object v0

    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lb/c/a/c/u0$c;

    invoke-virtual {p0}, Lb/c/a/c/m0;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/c/a/c/u0$c;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
