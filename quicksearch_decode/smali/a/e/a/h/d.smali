.class public La/e/a/h/d;
.super Ljava/lang/Object;
.source "ChainHead.java"


# instance fields
.field public a:La/e/a/h/f;

.field public b:La/e/a/h/f;

.field public c:La/e/a/h/f;

.field public d:La/e/a/h/f;

.field public e:La/e/a/h/f;

.field public f:La/e/a/h/f;

.field public g:La/e/a/h/f;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La/e/a/h/f;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:I

.field public k:F

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>(La/e/a/h/f;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, La/e/a/h/d;->k:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, La/e/a/h/d;->m:Z

    .line 4
    iput-object p1, p0, La/e/a/h/d;->a:La/e/a/h/f;

    .line 5
    iput p2, p0, La/e/a/h/d;->l:I

    .line 6
    iput-boolean p3, p0, La/e/a/h/d;->m:Z

    return-void
.end method

.method public static a(La/e/a/h/f;I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, La/e/a/h/f;->s()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, La/e/a/h/f;->C:[La/e/a/h/f$b;

    aget-object v0, v0, p1

    sget-object v1, La/e/a/h/f$b;->c:La/e/a/h/f$b;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, La/e/a/h/f;->g:[I

    aget v0, p0, p1

    if-eqz v0, :cond_0

    aget p0, p0, p1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-boolean v0, p0, La/e/a/h/d;->q:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, La/e/a/h/d;->b()V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, La/e/a/h/d;->q:Z

    return-void
.end method

.method public final b()V
    .locals 13

    .line 1
    iget v0, p0, La/e/a/h/d;->l:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    .line 2
    iget-object v2, p0, La/e/a/h/d;->a:La/e/a/h/f;

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v4

    move v2, v3

    :goto_0
    const/4 v6, 0x1

    if-nez v2, :cond_d

    .line 3
    iget v7, p0, La/e/a/h/d;->i:I

    add-int/2addr v7, v6

    iput v7, p0, La/e/a/h/d;->i:I

    .line 4
    iget-object v7, v4, La/e/a/h/f;->i0:[La/e/a/h/f;

    iget v8, p0, La/e/a/h/d;->l:I

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 5
    iget-object v7, v4, La/e/a/h/f;->h0:[La/e/a/h/f;

    aput-object v9, v7, v8

    .line 6
    invoke-virtual {v4}, La/e/a/h/f;->s()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_8

    .line 7
    iget-object v7, p0, La/e/a/h/d;->b:La/e/a/h/f;

    if-nez v7, :cond_0

    .line 8
    iput-object v4, p0, La/e/a/h/d;->b:La/e/a/h/f;

    .line 9
    :cond_0
    iput-object v4, p0, La/e/a/h/d;->d:La/e/a/h/f;

    .line 10
    iget-object v7, v4, La/e/a/h/f;->C:[La/e/a/h/f$b;

    iget v8, p0, La/e/a/h/d;->l:I

    aget-object v7, v7, v8

    sget-object v10, La/e/a/h/f$b;->c:La/e/a/h/f$b;

    if-ne v7, v10, :cond_8

    iget-object v7, v4, La/e/a/h/f;->g:[I

    aget v10, v7, v8

    if-eqz v10, :cond_1

    aget v10, v7, v8

    const/4 v11, 0x3

    if-eq v10, v11, :cond_1

    aget v7, v7, v8

    if-ne v7, v1, :cond_8

    .line 11
    :cond_1
    iget v7, p0, La/e/a/h/d;->j:I

    add-int/2addr v7, v6

    iput v7, p0, La/e/a/h/d;->j:I

    .line 12
    iget-object v7, v4, La/e/a/h/f;->g0:[F

    iget v8, p0, La/e/a/h/d;->l:I

    aget v10, v7, v8

    const/4 v11, 0x0

    cmpl-float v12, v10, v11

    if-lez v12, :cond_2

    .line 13
    iget v12, p0, La/e/a/h/d;->k:F

    aget v7, v7, v8

    add-float/2addr v12, v7

    iput v12, p0, La/e/a/h/d;->k:F

    .line 14
    :cond_2
    iget v7, p0, La/e/a/h/d;->l:I

    invoke-static {v4, v7}, La/e/a/h/d;->a(La/e/a/h/f;I)Z

    move-result v7

    if-eqz v7, :cond_5

    cmpg-float v7, v10, v11

    if-gez v7, :cond_3

    .line 15
    iput-boolean v6, p0, La/e/a/h/d;->n:Z

    goto :goto_1

    .line 16
    :cond_3
    iput-boolean v6, p0, La/e/a/h/d;->o:Z

    .line 17
    :goto_1
    iget-object v7, p0, La/e/a/h/d;->h:Ljava/util/ArrayList;

    if-nez v7, :cond_4

    .line 18
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, La/e/a/h/d;->h:Ljava/util/ArrayList;

    .line 19
    :cond_4
    iget-object v7, p0, La/e/a/h/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_5
    iget-object v7, p0, La/e/a/h/d;->f:La/e/a/h/f;

    if-nez v7, :cond_6

    .line 21
    iput-object v4, p0, La/e/a/h/d;->f:La/e/a/h/f;

    .line 22
    :cond_6
    iget-object v7, p0, La/e/a/h/d;->g:La/e/a/h/f;

    if-eqz v7, :cond_7

    .line 23
    iget-object v7, v7, La/e/a/h/f;->h0:[La/e/a/h/f;

    iget v8, p0, La/e/a/h/d;->l:I

    aput-object v4, v7, v8

    .line 24
    :cond_7
    iput-object v4, p0, La/e/a/h/d;->g:La/e/a/h/f;

    :cond_8
    if-eq v5, v4, :cond_9

    .line 25
    iget-object v5, v5, La/e/a/h/f;->i0:[La/e/a/h/f;

    iget v7, p0, La/e/a/h/d;->l:I

    aput-object v4, v5, v7

    .line 26
    :cond_9
    iget-object v5, v4, La/e/a/h/f;->A:[La/e/a/h/e;

    add-int/lit8 v7, v0, 0x1

    aget-object v5, v5, v7

    iget-object v5, v5, La/e/a/h/e;->d:La/e/a/h/e;

    if-eqz v5, :cond_b

    .line 27
    iget-object v5, v5, La/e/a/h/e;->b:La/e/a/h/f;

    .line 28
    iget-object v7, v5, La/e/a/h/f;->A:[La/e/a/h/e;

    aget-object v8, v7, v0

    iget-object v8, v8, La/e/a/h/e;->d:La/e/a/h/e;

    if-eqz v8, :cond_b

    aget-object v7, v7, v0

    iget-object v7, v7, La/e/a/h/e;->d:La/e/a/h/e;

    iget-object v7, v7, La/e/a/h/e;->b:La/e/a/h/f;

    if-eq v7, v4, :cond_a

    goto :goto_2

    :cond_a
    move-object v9, v5

    :cond_b
    :goto_2
    if-eqz v9, :cond_c

    goto :goto_3

    :cond_c
    move-object v9, v4

    move v2, v6

    :goto_3
    move-object v5, v4

    move-object v4, v9

    goto/16 :goto_0

    .line 29
    :cond_d
    iput-object v4, p0, La/e/a/h/d;->c:La/e/a/h/f;

    .line 30
    iget v0, p0, La/e/a/h/d;->l:I

    if-nez v0, :cond_e

    iget-boolean v0, p0, La/e/a/h/d;->m:Z

    if-eqz v0, :cond_e

    .line 31
    iget-object v0, p0, La/e/a/h/d;->c:La/e/a/h/f;

    iput-object v0, p0, La/e/a/h/d;->e:La/e/a/h/f;

    goto :goto_4

    .line 32
    :cond_e
    iget-object v0, p0, La/e/a/h/d;->a:La/e/a/h/f;

    iput-object v0, p0, La/e/a/h/d;->e:La/e/a/h/f;

    .line 33
    :goto_4
    iget-boolean v0, p0, La/e/a/h/d;->o:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, La/e/a/h/d;->n:Z

    if-eqz v0, :cond_f

    move v3, v6

    :cond_f
    iput-boolean v3, p0, La/e/a/h/d;->p:Z

    return-void
.end method
