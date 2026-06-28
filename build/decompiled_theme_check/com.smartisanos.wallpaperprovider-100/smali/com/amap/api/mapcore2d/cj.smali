.class Lcom/amap/api/mapcore2d/cj;
.super Lcom/amap/api/mapcore2d/h;
.source "TransAnim.java"


# instance fields
.field private c:Lcom/amap/api/mapcore2d/ab;

.field private d:Lcom/amap/api/mapcore2d/ab;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/amap/api/mapcore2d/ck;


# direct methods
.method public constructor <init>(IILcom/amap/api/mapcore2d/ab;Lcom/amap/api/mapcore2d/ab;ILcom/amap/api/mapcore2d/ck;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/h;-><init>(II)V

    .line 29
    iput-object p3, p0, Lcom/amap/api/mapcore2d/cj;->c:Lcom/amap/api/mapcore2d/ab;

    .line 30
    iput-object p4, p0, Lcom/amap/api/mapcore2d/cj;->d:Lcom/amap/api/mapcore2d/ab;

    .line 32
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cj;->c:Lcom/amap/api/mapcore2d/ab;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ab;->e()D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/amap/api/mapcore2d/cj;->e:I

    .line 33
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cj;->c:Lcom/amap/api/mapcore2d/ab;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ab;->f()D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/amap/api/mapcore2d/cj;->f:I

    .line 34
    iput-object p6, p0, Lcom/amap/api/mapcore2d/cj;->l:Lcom/amap/api/mapcore2d/ck;

    .line 35
    invoke-virtual {p4}, Lcom/amap/api/mapcore2d/ab;->e()D

    move-result-wide p1

    iget-object p3, p0, Lcom/amap/api/mapcore2d/cj;->c:Lcom/amap/api/mapcore2d/ab;

    .line 36
    invoke-virtual {p3}, Lcom/amap/api/mapcore2d/ab;->e()D

    move-result-wide v0

    sub-double/2addr p1, v0

    .line 35
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/amap/api/mapcore2d/cj;->i:I

    .line 37
    invoke-virtual {p4}, Lcom/amap/api/mapcore2d/ab;->f()D

    move-result-wide p1

    iget-object p3, p0, Lcom/amap/api/mapcore2d/cj;->c:Lcom/amap/api/mapcore2d/ab;

    .line 38
    invoke-virtual {p3}, Lcom/amap/api/mapcore2d/ab;->f()D

    move-result-wide p3

    sub-double/2addr p1, p3

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/amap/api/mapcore2d/cj;->j:I

    .line 39
    invoke-direct {p0, p5}, Lcom/amap/api/mapcore2d/cj;->a(I)V

    return-void
.end method

.method private a(III)I
    .locals 1

    const/4 v0, 0x0

    if-le p2, p1, :cond_0

    add-int/2addr p1, p3

    if-lt p1, p2, :cond_1

    .line 92
    iput v0, p0, Lcom/amap/api/mapcore2d/cj;->k:I

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p3

    if-gt p1, p2, :cond_1

    .line 98
    iput v0, p0, Lcom/amap/api/mapcore2d/cj;->k:I

    :goto_0
    move p1, p2

    :cond_1
    return p1
.end method

.method private a(I)V
    .locals 1

    .line 43
    div-int/lit8 p1, p1, 0xa

    div-int/lit8 p1, p1, 0xa

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 47
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore2d/cj;->i:I

    div-int/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore2d/cj;->g:I

    .line 48
    iget v0, p0, Lcom/amap/api/mapcore2d/cj;->j:I

    div-int/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore2d/cj;->h:I

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 10

    .line 65
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cj;->d:Lcom/amap/api/mapcore2d/ab;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ab;->e()D

    move-result-wide v0

    double-to-int v0, v0

    .line 66
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cj;->d:Lcom/amap/api/mapcore2d/ab;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ab;->f()D

    move-result-wide v1

    double-to-int v1, v1

    .line 68
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cj;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    iput v0, p0, Lcom/amap/api/mapcore2d/cj;->e:I

    .line 70
    iput v1, p0, Lcom/amap/api/mapcore2d/cj;->f:I

    .line 72
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cj;->l:Lcom/amap/api/mapcore2d/ck;

    new-instance v7, Lcom/amap/api/mapcore2d/ab;

    iget v1, p0, Lcom/amap/api/mapcore2d/cj;->f:I

    int-to-double v2, v1

    iget p0, p0, Lcom/amap/api/mapcore2d/cj;->e:I

    int-to-double v4, p0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore2d/ab;-><init>(DDZ)V

    invoke-interface {v0, v7}, Lcom/amap/api/mapcore2d/ck;->a(Lcom/amap/api/mapcore2d/ab;)V

    goto :goto_0

    .line 74
    :cond_0
    iget v2, p0, Lcom/amap/api/mapcore2d/cj;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amap/api/mapcore2d/cj;->k:I

    .line 75
    iget v2, p0, Lcom/amap/api/mapcore2d/cj;->e:I

    iget v3, p0, Lcom/amap/api/mapcore2d/cj;->g:I

    invoke-direct {p0, v2, v0, v3}, Lcom/amap/api/mapcore2d/cj;->a(III)I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore2d/cj;->e:I

    .line 76
    iget v2, p0, Lcom/amap/api/mapcore2d/cj;->f:I

    iget v3, p0, Lcom/amap/api/mapcore2d/cj;->h:I

    invoke-direct {p0, v2, v1, v3}, Lcom/amap/api/mapcore2d/cj;->a(III)I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore2d/cj;->f:I

    .line 78
    iget-object v2, p0, Lcom/amap/api/mapcore2d/cj;->l:Lcom/amap/api/mapcore2d/ck;

    new-instance v9, Lcom/amap/api/mapcore2d/ab;

    iget v3, p0, Lcom/amap/api/mapcore2d/cj;->f:I

    int-to-double v4, v3

    iget v3, p0, Lcom/amap/api/mapcore2d/cj;->e:I

    int-to-double v6, v3

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/mapcore2d/ab;-><init>(DDZ)V

    invoke-interface {v2, v9}, Lcom/amap/api/mapcore2d/ck;->a(Lcom/amap/api/mapcore2d/ab;)V

    .line 79
    iget v2, p0, Lcom/amap/api/mapcore2d/cj;->e:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore2d/cj;->f:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/cj;->a(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cj;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected b()V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cj;->l:Lcom/amap/api/mapcore2d/ck;

    invoke-interface {p0}, Lcom/amap/api/mapcore2d/ck;->b()V

    .line 54
    invoke-static {}, Lcom/amap/api/mapcore2d/q;->a()Lcom/amap/api/mapcore2d/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/q;->b()V

    return-void
.end method

.method protected f()V
    .locals 0

    .line 105
    invoke-static {}, Lcom/amap/api/mapcore2d/bw;->a()Lcom/amap/api/mapcore2d/bw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bw;->b()V

    return-void
.end method
