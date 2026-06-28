.class Lcom/amap/api/mapcore2d/cr;
.super Lcom/amap/api/mapcore2d/h;
.source "ZoomCtlAnim.java"


# instance fields
.field public c:F

.field public d:Z

.field private e:Landroid/view/animation/Animation$AnimationListener;

.field private f:Lcom/amap/api/mapcore2d/b;

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/b;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    const/16 v0, 0xa0

    const/16 v1, 0x28

    .line 34
    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore2d/h;-><init>(II)V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/cr;->m:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 25
    iput v1, p0, Lcom/amap/api/mapcore2d/cr;->c:F

    .line 30
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/cr;->d:Z

    .line 36
    iput-object p1, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    .line 37
    iput-object p2, p0, Lcom/amap/api/mapcore2d/cr;->e:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .line 42
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cr;->l:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget v1, v0, Lcom/amap/api/mapcore2d/bf;->c:F

    iget v2, p0, Lcom/amap/api/mapcore2d/cr;->k:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/amap/api/mapcore2d/bf;->c:F

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget v1, v0, Lcom/amap/api/mapcore2d/bf;->c:F

    iget v2, p0, Lcom/amap/api/mapcore2d/cr;->k:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/amap/api/mapcore2d/bf;->c:F

    .line 46
    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 47
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget v1, v1, Lcom/amap/api/mapcore2d/bf;->c:F

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget v2, v2, Lcom/amap/api/mapcore2d/bf;->c:F

    iget v3, p0, Lcom/amap/api/mapcore2d/cr;->g:F

    iget v4, p0, Lcom/amap/api/mapcore2d/cr;->h:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 48
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v2, v1, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget v2, v2, Lcom/amap/api/mapcore2d/bf;->c:F

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/b;->d(F)Z

    .line 49
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/b;->b(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public a(FFZFF)V
    .locals 0

    .line 100
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/cr;->l:Z

    .line 101
    iput p4, p0, Lcom/amap/api/mapcore2d/cr;->g:F

    .line 102
    iput p5, p0, Lcom/amap/api/mapcore2d/cr;->h:F

    .line 104
    iput p1, p0, Lcom/amap/api/mapcore2d/cr;->i:F

    .line 105
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget p2, p0, Lcom/amap/api/mapcore2d/cr;->i:F

    iput p2, p1, Lcom/amap/api/mapcore2d/bf;->c:F

    .line 107
    iget-boolean p1, p0, Lcom/amap/api/mapcore2d/cr;->l:Z

    if-eqz p1, :cond_0

    .line 108
    iget p1, p0, Lcom/amap/api/mapcore2d/cr;->b:I

    int-to-float p1, p1

    mul-float/2addr p2, p1

    iget p1, p0, Lcom/amap/api/mapcore2d/cr;->a:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/amap/api/mapcore2d/cr;->k:F

    .line 109
    iget p1, p0, Lcom/amap/api/mapcore2d/cr;->i:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/amap/api/mapcore2d/cr;->j:F

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p2, p1

    .line 111
    iget p3, p0, Lcom/amap/api/mapcore2d/cr;->b:I

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget p3, p0, Lcom/amap/api/mapcore2d/cr;->a:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    iput p2, p0, Lcom/amap/api/mapcore2d/cr;->k:F

    .line 112
    iget p2, p0, Lcom/amap/api/mapcore2d/cr;->i:F

    mul-float/2addr p2, p1

    iput p2, p0, Lcom/amap/api/mapcore2d/cr;->j:F

    :goto_0
    return-void
.end method

.method public a(FZFF)V
    .locals 10

    .line 117
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->c:[F

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->c:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 118
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->c:[F

    aput p1, v0, v2

    .line 119
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->c:[F

    aget v0, v0, v3

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->c:[F

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->A()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bk;->a(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cr;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/16 v0, 0xa0

    .line 124
    iput v0, p0, Lcom/amap/api/mapcore2d/cr;->a:I

    .line 125
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->I()F

    move-result v4

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/amap/api/mapcore2d/cr;->a(FFZFF)V

    .line 126
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {p1, v2}, Lcom/amap/api/mapcore2d/bk$a;->a(Z)V

    .line 127
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iput-boolean v2, p1, Lcom/amap/api/mapcore2d/bk$a;->b:Z

    .line 128
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cr;->e:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {p1, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 129
    invoke-super {p0}, Lcom/amap/api/mapcore2d/h;->c()V

    goto :goto_0

    .line 131
    :cond_1
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/cr;->m:Z

    .line 132
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cr;->d()V

    .line 133
    iget v5, p0, Lcom/amap/api/mapcore2d/cr;->j:F

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/amap/api/mapcore2d/cr;->a(FFZFF)V

    .line 135
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {p1, v2}, Lcom/amap/api/mapcore2d/bk$a;->a(Z)V

    .line 136
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iput-boolean v2, p1, Lcom/amap/api/mapcore2d/bk$a;->b:Z

    .line 137
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cr;->e:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {p1, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 138
    invoke-super {p0}, Lcom/amap/api/mapcore2d/h;->c()V

    .line 139
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/cr;->m:Z

    :goto_0
    return-void
.end method

.method protected b()V
    .locals 6

    .line 54
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cr;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/bk$a;->b:Z

    .line 61
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cr;->d:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 62
    new-instance v0, Landroid/graphics/Point;

    iget v3, p0, Lcom/amap/api/mapcore2d/cr;->g:F

    float-to-int v3, v3

    iget v4, p0, Lcom/amap/api/mapcore2d/cr;->h:F

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 63
    iget-object v3, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->r()Lcom/amap/api/mapcore2d/bs;

    move-result-object v3

    iget v4, p0, Lcom/amap/api/mapcore2d/cr;->g:F

    float-to-int v4, v4

    iget v5, p0, Lcom/amap/api/mapcore2d/cr;->h:F

    float-to-int v5, v5

    invoke-interface {v3, v4, v5}, Lcom/amap/api/mapcore2d/bs;->a(II)Lcom/amap/api/mapcore2d/ab;

    move-result-object v3

    .line 65
    iget-object v4, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v4

    iget-object v4, v4, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    .line 66
    invoke-virtual {v5}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v5

    iget-object v5, v5, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    .line 67
    invoke-virtual {v5, v3}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/ab;)Lcom/amap/api/mapcore2d/ab;

    move-result-object v3

    iput-object v3, v4, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    .line 68
    iget-object v3, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/bf;->a(Landroid/graphics/Point;)V

    .line 69
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v0, v1, v1}, Lcom/amap/api/mapcore2d/bk$d;->a(ZZ)V

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget v3, p0, Lcom/amap/api/mapcore2d/cr;->c:F

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/ay;->c(F)F

    .line 73
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cr;->e:Landroid/view/animation/Animation$AnimationListener;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 74
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cr;->d:Z

    if-ne v0, v2, :cond_3

    .line 75
    new-instance v0, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    .line 76
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/bk$d;->c()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    .line 77
    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v4

    iget-object v4, v4, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/bk$d;->d()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 78
    iget-object v3, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->r()Lcom/amap/api/mapcore2d/bs;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    .line 79
    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v4

    iget-object v4, v4, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/bk$d;->c()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    .line 80
    invoke-virtual {v5}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v5

    iget-object v5, v5, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v5}, Lcom/amap/api/mapcore2d/bk$d;->d()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 78
    invoke-interface {v3, v4, v5}, Lcom/amap/api/mapcore2d/bs;->a(II)Lcom/amap/api/mapcore2d/ab;

    move-result-object v3

    .line 81
    iget-object v4, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v4

    iget-object v4, v4, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    .line 82
    invoke-virtual {v5}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v5

    iget-object v5, v5, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    .line 83
    invoke-virtual {v5, v3}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/ab;)Lcom/amap/api/mapcore2d/ab;

    move-result-object v3

    iput-object v3, v4, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    .line 84
    iget-object v3, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    .line 85
    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/bf;->a(Landroid/graphics/Point;)V

    .line 86
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v0, v1, v1}, Lcom/amap/api/mapcore2d/bk$d;->a(ZZ)V

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/amap/api/mapcore2d/bf;->c:F

    .line 91
    sput v1, Lcom/amap/api/mapcore2d/bn;->j:F

    .line 92
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cr;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore2d/bk;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception p0

    const-string v0, "ZoomCtlAnim"

    const-string v1, "onStop"

    .line 94
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
