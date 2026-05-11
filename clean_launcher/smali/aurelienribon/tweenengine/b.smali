.class public abstract Laurelienribon/tweenengine/b;
.super Ljava/lang/Object;
.source "BaseTween.java"


# instance fields
.field private callback:Laurelienribon/tweenengine/m;

.field private currentTime:F

.field protected delay:F

.field protected duration:F

.field private ff:I

.field private gf:Z

.field private hf:Z

.field private if:F

.field private jf:F

.field private kf:Z

.field private lf:Z

.field private mf:Z

.field private name:Ljava/lang/String;

.field private nf:Z

.field private of:Z

.field private pf:I

.field qf:Z

.field rf:Z

.field protected sf:Laurelienribon/tweenengine/a;

.field private step:I

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Laurelienribon/tweenengine/b;->qf:Z

    .line 3
    iput-boolean v0, p0, Laurelienribon/tweenengine/b;->rf:Z

    return-void
.end method

.method private Av()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Laurelienribon/tweenengine/b;->gf:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/b;->ff:I

    if-ltz v0, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/b;->step:I

    if-gez v0, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/b;->currentTime:F

    iget v4, p0, Laurelienribon/tweenengine/b;->jf:F

    add-float v5, v0, v4

    cmpl-float v5, v5, v3

    if-ltz v5, :cond_0

    .line 2
    iput-boolean v2, p0, Laurelienribon/tweenengine/b;->gf:Z

    const/4 v5, 0x0

    .line 3
    iput v5, p0, Laurelienribon/tweenengine/b;->step:I

    sub-float v0, v3, v0

    sub-float/2addr v4, v0

    .line 4
    iput v4, p0, Laurelienribon/tweenengine/b;->jf:F

    .line 5
    iput v3, p0, Laurelienribon/tweenengine/b;->currentTime:F

    .line 6
    invoke-virtual {p0, v2}, Laurelienribon/tweenengine/b;->D(I)V

    .line 7
    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/b;->D(I)V

    .line 8
    iget v1, p0, Laurelienribon/tweenengine/b;->step:I

    add-int/lit8 v2, v1, -0x1

    iget-boolean v3, p0, Laurelienribon/tweenengine/b;->gf:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Laurelienribon/tweenengine/b;->a(IIZF)V

    goto :goto_0

    .line 9
    :cond_0
    iget-boolean v0, p0, Laurelienribon/tweenengine/b;->gf:Z

    if-nez v0, :cond_1

    iget v0, p0, Laurelienribon/tweenengine/b;->ff:I

    if-ltz v0, :cond_1

    iget v4, p0, Laurelienribon/tweenengine/b;->step:I

    mul-int/lit8 v5, v0, 0x2

    if-le v4, v5, :cond_1

    iget v4, p0, Laurelienribon/tweenengine/b;->currentTime:F

    iget v5, p0, Laurelienribon/tweenengine/b;->jf:F

    add-float v6, v4, v5

    cmpg-float v6, v6, v3

    if-gez v6, :cond_1

    .line 10
    iput-boolean v2, p0, Laurelienribon/tweenengine/b;->gf:Z

    mul-int/2addr v0, v1

    .line 11
    iput v0, p0, Laurelienribon/tweenengine/b;->step:I

    sub-float/2addr v3, v4

    sub-float/2addr v5, v3

    .line 12
    iput v5, p0, Laurelienribon/tweenengine/b;->jf:F

    .line 13
    iget v0, p0, Laurelienribon/tweenengine/b;->duration:F

    iput v0, p0, Laurelienribon/tweenengine/b;->currentTime:F

    const/16 v0, 0x10

    .line 14
    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/b;->D(I)V

    const/16 v0, 0x20

    .line 15
    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/b;->D(I)V

    .line 16
    iget v0, p0, Laurelienribon/tweenengine/b;->step:I

    add-int/lit8 v1, v0, 0x1

    iget-boolean v2, p0, Laurelienribon/tweenengine/b;->gf:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Laurelienribon/tweenengine/b;->a(IIZF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private Bv()V
    .locals 7

    .line 1
    :goto_0
    iget v0, p0, Laurelienribon/tweenengine/b;->step:I

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/b;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    iget-boolean v0, p0, Laurelienribon/tweenengine/b;->gf:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Laurelienribon/tweenengine/b;->currentTime:F

    iget v3, p0, Laurelienribon/tweenengine/b;->jf:F

    add-float v4, v0, v3

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_1

    .line 3
    iput-boolean v2, p0, Laurelienribon/tweenengine/b;->gf:Z

    .line 4
    iget v4, p0, Laurelienribon/tweenengine/b;->step:I

    sub-int/2addr v4, v2

    iput v4, p0, Laurelienribon/tweenengine/b;->step:I

    sub-float/2addr v1, v0

    sub-float/2addr v3, v1

    .line 5
    iput v3, p0, Laurelienribon/tweenengine/b;->jf:F

    .line 6
    iget v0, p0, Laurelienribon/tweenengine/b;->duration:F

    iput v0, p0, Laurelienribon/tweenengine/b;->currentTime:F

    .line 7
    iget v0, p0, Laurelienribon/tweenengine/b;->step:I

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/b;->E(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->Ca()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->Ba()V

    :goto_1
    const/16 v0, 0x20

    .line 8
    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/b;->D(I)V

    .line 9
    iget v0, p0, Laurelienribon/tweenengine/b;->step:I

    add-int/lit8 v2, v0, 0x1

    iget-boolean v3, p0, Laurelienribon/tweenengine/b;->gf:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Laurelienribon/tweenengine/b;->a(IIZF)V

    goto :goto_0

    .line 10
    :cond_1
    iget-boolean v0, p0, Laurelienribon/tweenengine/b;->gf:Z

    if-nez v0, :cond_3

    iget v0, p0, Laurelienribon/tweenengine/b;->currentTime:F

    iget v3, p0, Laurelienribon/tweenengine/b;->jf:F

    add-float v4, v0, v3

    iget v5, p0, Laurelienribon/tweenengine/b;->if:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    .line 11
    iput-boolean v2, p0, Laurelienribon/tweenengine/b;->gf:Z

    .line 12
    iget v4, p0, Laurelienribon/tweenengine/b;->step:I

    add-int/2addr v4, v2

    iput v4, p0, Laurelienribon/tweenengine/b;->step:I

    sub-float/2addr v5, v0

    sub-float/2addr v3, v5

    .line 13
    iput v3, p0, Laurelienribon/tweenengine/b;->jf:F

    .line 14
    iput v1, p0, Laurelienribon/tweenengine/b;->currentTime:F

    .line 15
    iget v0, p0, Laurelienribon/tweenengine/b;->step:I

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/b;->E(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->Ba()V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->Ca()V

    :goto_2
    const/4 v0, 0x2

    .line 16
    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/b;->D(I)V

    .line 17
    iget v0, p0, Laurelienribon/tweenengine/b;->step:I

    add-int/lit8 v1, v0, -0x1

    iget-boolean v2, p0, Laurelienribon/tweenengine/b;->gf:Z

    invoke-virtual {p0, v0, v1, v2, v5}, Laurelienribon/tweenengine/b;->a(IIZF)V

    goto :goto_0

    .line 18
    :cond_3
    iget-boolean v0, p0, Laurelienribon/tweenengine/b;->gf:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Laurelienribon/tweenengine/b;->currentTime:F

    iget v4, p0, Laurelienribon/tweenengine/b;->jf:F

    add-float v5, v0, v4

    cmpg-float v5, v5, v1

    if-gez v5, :cond_5

    .line 19
    iput-boolean v3, p0, Laurelienribon/tweenengine/b;->gf:Z

    .line 20
    iget v3, p0, Laurelienribon/tweenengine/b;->step:I

    sub-int/2addr v3, v2

    iput v3, p0, Laurelienribon/tweenengine/b;->step:I

    sub-float v0, v1, v0

    sub-float/2addr v4, v0

    .line 21
    iput v4, p0, Laurelienribon/tweenengine/b;->jf:F

    .line 22
    iput v1, p0, Laurelienribon/tweenengine/b;->currentTime:F

    .line 23
    iget v1, p0, Laurelienribon/tweenengine/b;->step:I

    add-int/lit8 v2, v1, 0x1

    iget-boolean v3, p0, Laurelienribon/tweenengine/b;->gf:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Laurelienribon/tweenengine/b;->a(IIZF)V

    const/16 v0, 0x40

    .line 24
    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/b;->D(I)V

    .line 25
    iget v0, p0, Laurelienribon/tweenengine/b;->step:I

    if-gez v0, :cond_4

    iget v0, p0, Laurelienribon/tweenengine/b;->ff:I

    if-ltz v0, :cond_4

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/b;->D(I)V

    goto/16 :goto_0

    .line 26
    :cond_4
    iget v0, p0, Laurelienribon/tweenengine/b;->if:F

    iput v0, p0, Laurelienribon/tweenengine/b;->currentTime:F

    goto/16 :goto_0

    .line 27
    :cond_5
    iget-boolean v0, p0, Laurelienribon/tweenengine/b;->gf:Z

    if-eqz v0, :cond_7

    iget v0, p0, Laurelienribon/tweenengine/b;->currentTime:F

    iget v4, p0, Laurelienribon/tweenengine/b;->jf:F

    add-float v5, v0, v4

    iget v6, p0, Laurelienribon/tweenengine/b;->duration:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    .line 28
    iput-boolean v3, p0, Laurelienribon/tweenengine/b;->gf:Z

    .line 29
    iget v3, p0, Laurelienribon/tweenengine/b;->step:I

    add-int/2addr v3, v2

    iput v3, p0, Laurelienribon/tweenengine/b;->step:I

    sub-float v0, v6, v0

    sub-float/2addr v4, v0

    .line 30
    iput v4, p0, Laurelienribon/tweenengine/b;->jf:F

    .line 31
    iput v6, p0, Laurelienribon/tweenengine/b;->currentTime:F

    .line 32
    iget v2, p0, Laurelienribon/tweenengine/b;->step:I

    add-int/lit8 v3, v2, -0x1

    iget-boolean v4, p0, Laurelienribon/tweenengine/b;->gf:Z

    invoke-virtual {p0, v2, v3, v4, v0}, Laurelienribon/tweenengine/b;->a(IIZF)V

    const/4 v0, 0x4

    .line 33
    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/b;->D(I)V

    .line 34
    iget v0, p0, Laurelienribon/tweenengine/b;->step:I

    iget v2, p0, Laurelienribon/tweenengine/b;->ff:I

    mul-int/lit8 v3, v2, 0x2

    if-le v0, v3, :cond_6

    if-ltz v2, :cond_6

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/b;->D(I)V

    .line 35
    :cond_6
    iput v1, p0, Laurelienribon/tweenengine/b;->currentTime:F

    goto/16 :goto_0

    .line 36
    :cond_7
    iget-boolean v0, p0, Laurelienribon/tweenengine/b;->gf:Z

    if-eqz v0, :cond_8

    .line 37
    iget v1, p0, Laurelienribon/tweenengine/b;->jf:F

    sub-float v2, v1, v1

    .line 38
    iput v2, p0, Laurelienribon/tweenengine/b;->jf:F

    .line 39
    iget v2, p0, Laurelienribon/tweenengine/b;->currentTime:F

    add-float/2addr v2, v1

    iput v2, p0, Laurelienribon/tweenengine/b;->currentTime:F

    .line 40
    iget v2, p0, Laurelienribon/tweenengine/b;->step:I

    invoke-virtual {p0, v2, v2, v0, v1}, Laurelienribon/tweenengine/b;->a(IIZF)V

    goto :goto_3

    .line 41
    :cond_8
    iget v0, p0, Laurelienribon/tweenengine/b;->jf:F

    sub-float v1, v0, v0

    .line 42
    iput v1, p0, Laurelienribon/tweenengine/b;->jf:F

    .line 43
    iget v1, p0, Laurelienribon/tweenengine/b;->currentTime:F

    add-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/b;->currentTime:F

    :cond_9
    :goto_3
    return-void
.end method

.method private fa(F)Z
    .locals 2

    float-to-double p0, p1

    const-wide v0, -0x414f39085f4a1273L    # -1.0E-6

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private initialize()V
    .locals 4

    .line 1
    iget v0, p0, Laurelienribon/tweenengine/b;->currentTime:F

    iget v1, p0, Laurelienribon/tweenengine/b;->jf:F

    add-float/2addr v0, v1

    iget v1, p0, Laurelienribon/tweenengine/b;->delay:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->Fa()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Laurelienribon/tweenengine/b;->lf:Z

    .line 4
    iput-boolean v0, p0, Laurelienribon/tweenengine/b;->gf:Z

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Laurelienribon/tweenengine/b;->step:I

    .line 6
    iget v1, p0, Laurelienribon/tweenengine/b;->jf:F

    iget v2, p0, Laurelienribon/tweenengine/b;->delay:F

    iget v3, p0, Laurelienribon/tweenengine/b;->currentTime:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Laurelienribon/tweenengine/b;->jf:F

    .line 7
    iget v1, p0, Laurelienribon/tweenengine/b;->jf:F

    invoke-direct {p0, v1}, Laurelienribon/tweenengine/b;->fa(F)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 8
    iput v2, p0, Laurelienribon/tweenengine/b;->jf:F

    .line 9
    :cond_0
    iput v2, p0, Laurelienribon/tweenengine/b;->currentTime:F

    .line 10
    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/b;->D(I)V

    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/b;->D(I)V

    :cond_1
    return-void
.end method

.method private zv()V
    .locals 2

    .line 1
    iget v0, p0, Laurelienribon/tweenengine/b;->ff:I

    if-ltz v0, :cond_1

    iget v1, p0, Laurelienribon/tweenengine/b;->step:I

    mul-int/lit8 v0, v0, 0x2

    if-gt v1, v0, :cond_0

    if-gez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Laurelienribon/tweenengine/b;->mf:Z

    return-void
.end method


# virtual methods
.method protected abstract Ba()V
.end method

.method protected abstract Ca()V
.end method

.method protected D(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Laurelienribon/tweenengine/b;->callback:Laurelienribon/tweenengine/m;

    if-eqz v0, :cond_0

    iget v1, p0, Laurelienribon/tweenengine/b;->pf:I

    and-int/2addr v1, p1

    if-lez v1, :cond_0

    invoke-interface {v0, p1, p0}, Laurelienribon/tweenengine/m;->a(ILaurelienribon/tweenengine/b;)V

    :cond_0
    return-void
.end method

.method protected Da()V
    .locals 1

    .line 1
    iget v0, p0, Laurelienribon/tweenengine/b;->delay:F

    neg-float v0, v0

    iput v0, p0, Laurelienribon/tweenengine/b;->currentTime:F

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Laurelienribon/tweenengine/b;->step:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Laurelienribon/tweenengine/b;->gf:Z

    .line 4
    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/b;->E(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->Ba()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->Ca()V

    :goto_0
    return-void
.end method

.method protected E(I)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Laurelienribon/tweenengine/b;->hf:Z

    if-eqz p0, :cond_0

    rem-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Ea()F
    .locals 3

    .line 1
    iget v0, p0, Laurelienribon/tweenengine/b;->ff:I

    if-gez v0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 2
    :cond_0
    iget v1, p0, Laurelienribon/tweenengine/b;->delay:F

    iget v2, p0, Laurelienribon/tweenengine/b;->duration:F

    add-float/2addr v1, v2

    iget p0, p0, Laurelienribon/tweenengine/b;->if:F

    add-float/2addr p0, v2

    int-to-float v0, v0

    mul-float/2addr p0, v0

    add-float/2addr v1, p0

    return v1
.end method

.method public F(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iput p1, p0, Laurelienribon/tweenengine/b;->pf:I

    return-object p0
.end method

.method protected Fa()V
    .locals 0

    return-void
.end method

.method public a(Laurelienribon/tweenengine/m;)Ljava/lang/Object;
    .locals 0

    .line 3
    iput-object p1, p0, Laurelienribon/tweenengine/b;->callback:Laurelienribon/tweenengine/m;

    return-object p0
.end method

.method public a(Laurelienribon/tweenengine/o;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/o;->a(Laurelienribon/tweenengine/b;)Laurelienribon/tweenengine/o;

    return-object p0
.end method

.method protected a(IIZF)V
    .locals 0

    return-void
.end method

.method public a(Laurelienribon/tweenengine/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Laurelienribon/tweenengine/b;->sf:Laurelienribon/tweenengine/a;

    return-void
.end method

.method public b(IF)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Laurelienribon/tweenengine/b;->kf:Z

    if-nez v0, :cond_1

    .line 2
    iput p1, p0, Laurelienribon/tweenengine/b;->ff:I

    const/4 p1, 0x0

    cmpl-float v0, p2, p1

    if-ltz v0, :cond_0

    move p1, p2

    .line 3
    :cond_0
    iput p1, p0, Laurelienribon/tweenengine/b;->if:F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Laurelienribon/tweenengine/b;->hf:Z

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "You can\'t change the repetitions of a tween or timeline once it is started"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public build()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public f(F)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Laurelienribon/tweenengine/b;->delay:F

    add-float/2addr v0, p1

    iput v0, p0, Laurelienribon/tweenengine/b;->delay:F

    return-object p0
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    iput-object p1, p0, Laurelienribon/tweenengine/b;->userData:Ljava/lang/Object;

    return-object p0
.end method

.method public free()V
    .locals 0

    return-void
.end method

.method protected g(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->Ea()F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Laurelienribon/tweenengine/b;->currentTime:F

    .line 2
    iget p1, p0, Laurelienribon/tweenengine/b;->ff:I

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laurelienribon/tweenengine/b;->step:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Laurelienribon/tweenengine/b;->gf:Z

    mul-int/lit8 p1, p1, 0x2

    .line 4
    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/b;->E(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->Ca()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->Ba()V

    :goto_0
    return-void
.end method

.method public getCurrentTime()F
    .locals 0

    .line 1
    iget p0, p0, Laurelienribon/tweenengine/b;->currentTime:F

    return p0
.end method

.method public getDuration()F
    .locals 0

    .line 1
    iget p0, p0, Laurelienribon/tweenengine/b;->duration:F

    return p0
.end method

.method public getRepeatCount()I
    .locals 0

    .line 1
    iget p0, p0, Laurelienribon/tweenengine/b;->ff:I

    return p0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Laurelienribon/tweenengine/b;->userData:Ljava/lang/Object;

    return-object p0
.end method

.method public isFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Laurelienribon/tweenengine/b;->mf:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Laurelienribon/tweenengine/b;->nf:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isPaused()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Laurelienribon/tweenengine/b;->of:Z

    return p0
.end method

.method protected isValid(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Laurelienribon/tweenengine/b;->ff:I

    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    iget p0, p0, Laurelienribon/tweenengine/b;->ff:I

    if-gez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public kill()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Laurelienribon/tweenengine/b;->nf:Z

    return-void
.end method

.method protected reset()V
    .locals 2

    const/4 v0, -0x2

    .line 1
    iput v0, p0, Laurelienribon/tweenengine/b;->step:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Laurelienribon/tweenengine/b;->ff:I

    .line 3
    iput-boolean v0, p0, Laurelienribon/tweenengine/b;->hf:Z

    iput-boolean v0, p0, Laurelienribon/tweenengine/b;->gf:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Laurelienribon/tweenengine/b;->jf:F

    iput v1, p0, Laurelienribon/tweenengine/b;->currentTime:F

    iput v1, p0, Laurelienribon/tweenengine/b;->if:F

    iput v1, p0, Laurelienribon/tweenengine/b;->duration:F

    iput v1, p0, Laurelienribon/tweenengine/b;->delay:F

    .line 5
    iput-boolean v0, p0, Laurelienribon/tweenengine/b;->of:Z

    iput-boolean v0, p0, Laurelienribon/tweenengine/b;->nf:Z

    iput-boolean v0, p0, Laurelienribon/tweenengine/b;->mf:Z

    iput-boolean v0, p0, Laurelienribon/tweenengine/b;->lf:Z

    iput-boolean v0, p0, Laurelienribon/tweenengine/b;->kf:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Laurelienribon/tweenengine/b;->callback:Laurelienribon/tweenengine/m;

    const/16 v1, 0x8

    .line 7
    iput v1, p0, Laurelienribon/tweenengine/b;->pf:I

    .line 8
    iput-object v0, p0, Laurelienribon/tweenengine/b;->userData:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Laurelienribon/tweenengine/b;->rf:Z

    iput-boolean v0, p0, Laurelienribon/tweenengine/b;->qf:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Laurelienribon/tweenengine/b;->name:Ljava/lang/String;

    return-void
.end method

.method public start()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->build()Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Laurelienribon/tweenengine/b;->currentTime:F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Laurelienribon/tweenengine/b;->kf:Z

    return-object p0
.end method

.method public update(F)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Laurelienribon/tweenengine/b;->kf:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Laurelienribon/tweenengine/b;->of:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Laurelienribon/tweenengine/b;->nf:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Laurelienribon/tweenengine/b;->jf:F

    .line 3
    iget-boolean p1, p0, Laurelienribon/tweenengine/b;->lf:Z

    if-nez p1, :cond_1

    .line 4
    invoke-direct {p0}, Laurelienribon/tweenengine/b;->initialize()V

    .line 5
    :cond_1
    iget-boolean p1, p0, Laurelienribon/tweenengine/b;->lf:Z

    if-eqz p1, :cond_2

    .line 6
    invoke-direct {p0}, Laurelienribon/tweenengine/b;->Av()V

    .line 7
    invoke-direct {p0}, Laurelienribon/tweenengine/b;->Bv()V

    .line 8
    invoke-direct {p0}, Laurelienribon/tweenengine/b;->zv()V

    .line 9
    :cond_2
    iget p1, p0, Laurelienribon/tweenengine/b;->currentTime:F

    iget v0, p0, Laurelienribon/tweenengine/b;->jf:F

    add-float/2addr p1, v0

    iput p1, p0, Laurelienribon/tweenengine/b;->currentTime:F

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Laurelienribon/tweenengine/b;->jf:F

    :cond_3
    :goto_0
    return-void
.end method
