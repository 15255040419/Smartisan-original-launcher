.class public final Lb/c/b/o/m/e;
.super Lb/c/b/q/a;
.source "JsonTreeReader.java"


# static fields
.field public static final u:Ljava/io/Reader;

.field public static final v:Ljava/lang/Object;


# instance fields
.field public q:[Ljava/lang/Object;

.field public r:I

.field public s:[Ljava/lang/String;

.field public t:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb/c/b/o/m/e$a;

    invoke-direct {v0}, Lb/c/b/o/m/e$a;-><init>()V

    sput-object v0, Lb/c/b/o/m/e;->u:Ljava/io/Reader;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb/c/b/o/m/e;->v:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb/c/b/e;)V
    .locals 2

    .line 1
    sget-object v0, Lb/c/b/o/m/e;->u:Ljava/io/Reader;

    invoke-direct {p0, v0}, Lb/c/b/q/a;-><init>(Ljava/io/Reader;)V

    const/16 v0, 0x20

    new-array v1, v0, [Ljava/lang/Object;

    .line 2
    iput-object v1, p0, Lb/c/b/o/m/e;->q:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lb/c/b/o/m/e;->r:I

    new-array v1, v0, [Ljava/lang/String;

    .line 4
    iput-object v1, p0, Lb/c/b/o/m/e;->s:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lb/c/b/o/m/e;->t:[I

    .line 6
    invoke-virtual {p0, p1}, Lb/c/b/o/m/e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/c/b/o/m/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/c/b/o/m/e;->q:[Ljava/lang/Object;

    iget v1, p0, Lb/c/b/o/m/e;->r:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final B()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lb/c/b/o/m/e;->q:[Ljava/lang/Object;

    iget v1, p0, Lb/c/b/o/m/e;->r:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lb/c/b/o/m/e;->r:I

    aget-object v1, v0, v1

    .line 2
    iget v2, p0, Lb/c/b/o/m/e;->r:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    return-object v1
.end method

.method public C()V
    .locals 2

    .line 1
    sget-object v0, Lb/c/b/q/b;->e:Lb/c/b/q/b;

    invoke-virtual {p0, v0}, Lb/c/b/o/m/e;->a(Lb/c/b/q/b;)V

    .line 2
    invoke-virtual {p0}, Lb/c/b/o/m/e;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lb/c/b/o/m/e;->a(Ljava/lang/Object;)V

    .line 5
    new-instance v1, Lb/c/b/j;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lb/c/b/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lb/c/b/o/m/e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a()V
    .locals 3

    .line 1
    sget-object v0, Lb/c/b/q/b;->a:Lb/c/b/q/b;

    invoke-virtual {p0, v0}, Lb/c/b/o/m/e;->a(Lb/c/b/q/b;)V

    .line 2
    invoke-virtual {p0}, Lb/c/b/o/m/e;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/c/b/d;

    .line 3
    invoke-virtual {v0}, Lb/c/b/d;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/c/b/o/m/e;->a(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lb/c/b/o/m/e;->t:[I

    iget v1, p0, Lb/c/b/o/m/e;->r:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public final a(Lb/c/b/q/b;)V
    .locals 3

    .line 5
    invoke-virtual {p0}, Lb/c/b/o/m/e;->t()Lb/c/b/q/b;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Lb/c/b/o/m/e;->t()Lb/c/b/q/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lb/c/b/o/m/e;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 6

    .line 8
    iget v0, p0, Lb/c/b/o/m/e;->r:I

    iget-object v1, p0, Lb/c/b/o/m/e;->q:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    mul-int/lit8 v3, v0, 0x2

    .line 10
    new-array v3, v3, [I

    mul-int/lit8 v4, v0, 0x2

    .line 11
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 12
    invoke-static {v1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-object v0, p0, Lb/c/b/o/m/e;->t:[I

    iget v1, p0, Lb/c/b/o/m/e;->r:I

    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object v0, p0, Lb/c/b/o/m/e;->s:[Ljava/lang/String;

    iget v1, p0, Lb/c/b/o/m/e;->r:I

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iput-object v2, p0, Lb/c/b/o/m/e;->q:[Ljava/lang/Object;

    .line 16
    iput-object v3, p0, Lb/c/b/o/m/e;->t:[I

    .line 17
    iput-object v4, p0, Lb/c/b/o/m/e;->s:[Ljava/lang/String;

    .line 18
    :cond_0
    iget-object v0, p0, Lb/c/b/o/m/e;->q:[Ljava/lang/Object;

    iget v1, p0, Lb/c/b/o/m/e;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/c/b/o/m/e;->r:I

    aput-object p1, v0, v1

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    sget-object v0, Lb/c/b/q/b;->c:Lb/c/b/q/b;

    invoke-virtual {p0, v0}, Lb/c/b/o/m/e;->a(Lb/c/b/q/b;)V

    .line 2
    invoke-virtual {p0}, Lb/c/b/o/m/e;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/c/b/h;

    .line 3
    invoke-virtual {v0}, Lb/c/b/h;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/c/b/o/m/e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public close()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    sget-object v2, Lb/c/b/o/m/e;->v:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lb/c/b/o/m/e;->q:[Ljava/lang/Object;

    .line 2
    iput v0, p0, Lb/c/b/o/m/e;->r:I

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    sget-object v0, Lb/c/b/q/b;->b:Lb/c/b/q/b;

    invoke-virtual {p0, v0}, Lb/c/b/o/m/e;->a(Lb/c/b/q/b;)V

    .line 2
    invoke-virtual {p0}, Lb/c/b/o/m/e;->B()Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lb/c/b/o/m/e;->B()Ljava/lang/Object;

    .line 4
    iget v0, p0, Lb/c/b/o/m/e;->r:I

    if-lez v0, :cond_0

    .line 5
    iget-object v1, p0, Lb/c/b/o/m/e;->t:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    sget-object v0, Lb/c/b/q/b;->d:Lb/c/b/q/b;

    invoke-virtual {p0, v0}, Lb/c/b/o/m/e;->a(Lb/c/b/q/b;)V

    .line 2
    invoke-virtual {p0}, Lb/c/b/o/m/e;->B()Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lb/c/b/o/m/e;->B()Ljava/lang/Object;

    .line 4
    iget v0, p0, Lb/c/b/o/m/e;->r:I

    if-lez v0, :cond_0

    .line 5
    iget-object v1, p0, Lb/c/b/o/m/e;->t:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lb/c/b/o/m/e;->r:I

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lb/c/b/o/m/e;->q:[Ljava/lang/Object;

    aget-object v3, v2, v1

    instance-of v3, v3, Lb/c/b/d;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 4
    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    const/16 v2, 0x5b

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/c/b/o/m/e;->t:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6
    :cond_0
    aget-object v3, v2, v1

    instance-of v3, v3, Lb/c/b/h;

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 7
    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    const/16 v2, 0x2e

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    iget-object v2, p0, Lb/c/b/o/m/e;->s:[Ljava/lang/String;

    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 10
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/c/b/o/m/e;->t()Lb/c/b/q/b;

    move-result-object v0

    .line 2
    sget-object v1, Lb/c/b/q/b;->d:Lb/c/b/q/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lb/c/b/q/b;->b:Lb/c/b/q/b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 4

    .line 1
    sget-object v0, Lb/c/b/q/b;->h:Lb/c/b/q/b;

    invoke-virtual {p0, v0}, Lb/c/b/o/m/e;->a(Lb/c/b/q/b;)V

    .line 2
    invoke-virtual {p0}, Lb/c/b/o/m/e;->B()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/c/b/j;

    invoke-virtual {v0}, Lb/c/b/j;->h()Z

    move-result v0

    .line 3
    iget v1, p0, Lb/c/b/o/m/e;->r:I

    if-lez v1, :cond_0

    .line 4
    iget-object v2, p0, Lb/c/b/o/m/e;->t:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_0
    return v0
.end method

.method public m()D
    .locals 5

    .line 1
    invoke-virtual {p0}, Lb/c/b/o/m/e;->t()Lb/c/b/q/b;

    move-result-object v0

    .line 2
    sget-object v1, Lb/c/b/q/b;->g:Lb/c/b/q/b;

    if-eq v0, v1, :cond_1

    sget-object v1, Lb/c/b/q/b;->f:Lb/c/b/q/b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lb/c/b/q/b;->g:Lb/c/b/q/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Lb/c/b/o/m/e;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lb/c/b/o/m/e;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/c/b/j;

    invoke-virtual {v0}, Lb/c/b/j;->j()D

    move-result-wide v0

    .line 6
    invoke-virtual {p0}, Lb/c/b/q/a;->j()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lb/c/b/o/m/e;->B()Ljava/lang/Object;

    .line 9
    iget v2, p0, Lb/c/b/o/m/e;->r:I

    if-lez v2, :cond_4

    .line 10
    iget-object v3, p0, Lb/c/b/o/m/e;->t:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_4
    return-wide v0
.end method

.method public n()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lb/c/b/o/m/e;->t()Lb/c/b/q/b;

    move-result-object v0

    .line 2
    sget-object v1, Lb/c/b/q/b;->g:Lb/c/b/q/b;

    if-eq v0, v1, :cond_1

    sget-object v1, Lb/c/b/q/b;->f:Lb/c/b/q/b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lb/c/b/q/b;->g:Lb/c/b/q/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Lb/c/b/o/m/e;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lb/c/b/o/m/e;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/c/b/j;

    invoke-virtual {v0}, Lb/c/b/j;->k()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Lb/c/b/o/m/e;->B()Ljava/lang/Object;

    .line 7
    iget v1, p0, Lb/c/b/o/m/e;->r:I

    if-lez v1, :cond_2

    .line 8
    iget-object v2, p0, Lb/c/b/o/m/e;->t:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_2
    return v0
.end method

.method public o()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lb/c/b/o/m/e;->t()Lb/c/b/q/b;

    move-result-object v0

    .line 2
    sget-object v1, Lb/c/b/q/b;->g:Lb/c/b/q/b;

    if-eq v0, v1, :cond_1

    sget-object v1, Lb/c/b/q/b;->f:Lb/c/b/q/b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lb/c/b/q/b;->g:Lb/c/b/q/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Lb/c/b/o/m/e;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lb/c/b/o/m/e;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/c/b/j;

    invoke-virtual {v0}, Lb/c/b/j;->l()J

    move-result-wide v0

    .line 6
    invoke-virtual {p0}, Lb/c/b/o/m/e;->B()Ljava/lang/Object;

    .line 7
    iget v2, p0, Lb/c/b/o/m/e;->r:I

    if-lez v2, :cond_2

    .line 8
    iget-object v3, p0, Lb/c/b/o/m/e;->t:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_2
    return-wide v0
.end method

.method public p()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lb/c/b/q/b;->e:Lb/c/b/q/b;

    invoke-virtual {p0, v0}, Lb/c/b/o/m/e;->a(Lb/c/b/q/b;)V

    .line 2
    invoke-virtual {p0}, Lb/c/b/o/m/e;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lb/c/b/o/m/e;->s:[Ljava/lang/String;

    iget v3, p0, Lb/c/b/o/m/e;->r:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/c/b/o/m/e;->a(Ljava/lang/Object;)V

    return-object v1
.end method

.method public q()V
    .locals 3

    .line 1
    sget-object v0, Lb/c/b/q/b;->i:Lb/c/b/q/b;

    invoke-virtual {p0, v0}, Lb/c/b/o/m/e;->a(Lb/c/b/q/b;)V

    .line 2
    invoke-virtual {p0}, Lb/c/b/o/m/e;->B()Ljava/lang/Object;

    .line 3
    iget v0, p0, Lb/c/b/o/m/e;->r:I

    if-lez v0, :cond_0

    .line 4
    iget-object v1, p0, Lb/c/b/o/m/e;->t:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lb/c/b/o/m/e;->t()Lb/c/b/q/b;

    move-result-object v0

    .line 2
    sget-object v1, Lb/c/b/q/b;->f:Lb/c/b/q/b;

    if-eq v0, v1, :cond_1

    sget-object v1, Lb/c/b/q/b;->g:Lb/c/b/q/b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lb/c/b/q/b;->f:Lb/c/b/q/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Lb/c/b/o/m/e;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lb/c/b/o/m/e;->B()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/c/b/j;

    invoke-virtual {v0}, Lb/c/b/j;->n()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget v1, p0, Lb/c/b/o/m/e;->r:I

    if-lez v1, :cond_2

    .line 7
    iget-object v2, p0, Lb/c/b/o/m/e;->t:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_2
    return-object v0
.end method

.method public t()Lb/c/b/q/b;
    .locals 3

    .line 1
    iget v0, p0, Lb/c/b/o/m/e;->r:I

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lb/c/b/q/b;->j:Lb/c/b/q/b;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lb/c/b/o/m/e;->A()Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    .line 5
    iget-object v1, p0, Lb/c/b/o/m/e;->q:[Ljava/lang/Object;

    iget v2, p0, Lb/c/b/o/m/e;->r:I

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    instance-of v1, v1, Lb/c/b/h;

    .line 6
    check-cast v0, Ljava/util/Iterator;

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 8
    sget-object v0, Lb/c/b/q/b;->e:Lb/c/b/q/b;

    return-object v0

    .line 9
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/c/b/o/m/e;->a(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lb/c/b/o/m/e;->t()Lb/c/b/q/b;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v1, :cond_3

    .line 11
    sget-object v0, Lb/c/b/q/b;->d:Lb/c/b/q/b;

    goto :goto_0

    :cond_3
    sget-object v0, Lb/c/b/q/b;->b:Lb/c/b/q/b;

    :goto_0
    return-object v0

    .line 12
    :cond_4
    instance-of v1, v0, Lb/c/b/h;

    if-eqz v1, :cond_5

    .line 13
    sget-object v0, Lb/c/b/q/b;->c:Lb/c/b/q/b;

    return-object v0

    .line 14
    :cond_5
    instance-of v1, v0, Lb/c/b/d;

    if-eqz v1, :cond_6

    .line 15
    sget-object v0, Lb/c/b/q/b;->a:Lb/c/b/q/b;

    return-object v0

    .line 16
    :cond_6
    instance-of v1, v0, Lb/c/b/j;

    if-eqz v1, :cond_a

    .line 17
    check-cast v0, Lb/c/b/j;

    .line 18
    invoke-virtual {v0}, Lb/c/b/j;->q()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19
    sget-object v0, Lb/c/b/q/b;->f:Lb/c/b/q/b;

    return-object v0

    .line 20
    :cond_7
    invoke-virtual {v0}, Lb/c/b/j;->o()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 21
    sget-object v0, Lb/c/b/q/b;->h:Lb/c/b/q/b;

    return-object v0

    .line 22
    :cond_8
    invoke-virtual {v0}, Lb/c/b/j;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23
    sget-object v0, Lb/c/b/q/b;->g:Lb/c/b/q/b;

    return-object v0

    .line 24
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_a
    instance-of v1, v0, Lb/c/b/g;

    if-eqz v1, :cond_b

    .line 26
    sget-object v0, Lb/c/b/q/b;->i:Lb/c/b/q/b;

    return-object v0

    .line 27
    :cond_b
    sget-object v1, Lb/c/b/o/m/e;->v:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lb/c/b/o/m/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/c/b/o/m/e;->t()Lb/c/b/q/b;

    move-result-object v0

    sget-object v1, Lb/c/b/q/b;->e:Lb/c/b/q/b;

    const-string v2, "null"

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lb/c/b/o/m/e;->p()Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lb/c/b/o/m/e;->s:[Ljava/lang/String;

    iget v1, p0, Lb/c/b/o/m/e;->r:I

    add-int/lit8 v1, v1, -0x2

    aput-object v2, v0, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lb/c/b/o/m/e;->B()Ljava/lang/Object;

    .line 5
    iget v0, p0, Lb/c/b/o/m/e;->r:I

    if-lez v0, :cond_1

    .line 6
    iget-object v1, p0, Lb/c/b/o/m/e;->s:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aput-object v2, v1, v0

    .line 7
    :cond_1
    :goto_0
    iget v0, p0, Lb/c/b/o/m/e;->r:I

    if-lez v0, :cond_2

    .line 8
    iget-object v1, p0, Lb/c/b/o/m/e;->t:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_2
    return-void
.end method
