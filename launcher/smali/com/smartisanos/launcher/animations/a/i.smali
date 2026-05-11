.class public abstract Lcom/smartisanos/launcher/animations/a/i;
.super Ljava/lang/Object;
.source "PageScrollAnimation.java"


# static fields
.field protected static hp:[F


# instance fields
.field protected Fo:F

.field protected Go:I

.field protected Ho:F

.field protected Io:F

.field protected Jo:F

.field protected Ko:[F

.field protected Lo:[F

.field protected Mn:Laurelienribon/tweenengine/h;

.field protected Mo:[F

.field protected No:[F

.field protected Oo:F

.field protected Po:F

.field protected Qo:F

.field protected Ro:F

.field protected So:F

.field protected To:I

.field protected Uo:I

.field protected Vo:Laurelienribon/tweenengine/k;

.field protected Wo:Lcom/smartisanos/launcher/view/b/M;

.field protected Xo:Lcom/smartisanos/launcher/view/b/M;

.field protected Yo:Lcom/smartisanos/launcher/view/b/M;

.field protected Zo:Lcom/smartisanos/launcher/view/b/M;

.field protected _o:Ljava/util/ArrayList;

.field protected ap:Z

.field protected bp:Z

.field private cp:Z

.field protected dl:Lcom/smartisanos/launcher/view/b/fa;

.field private dp:Z

.field private ep:F

.field protected fp:Lcom/smartisanos/smengine/a;

.field protected gp:Ljava/util/ArrayList;

.field protected mScrollX:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Ko:[F

    const/4 v0, 0x5

    new-array v1, v0, [F

    .line 3
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Lo:[F

    new-array v1, v0, [F

    .line 4
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Mo:[F

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->No:[F

    const/high16 v0, -0x3b860000    # -1000.0f

    .line 6
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    const/16 v0, -0x3e8

    .line 7
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->To:I

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/a/i;->ap:Z

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/smartisanos/launcher/animations/a/i;->bp:Z

    .line 10
    iput-boolean v1, p0, Lcom/smartisanos/launcher/animations/a/i;->cp:Z

    .line 11
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dp:Z

    const v0, 0x3e99999a    # 0.3f

    .line 12
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->ep:F

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->gp:Ljava/util/ArrayList;

    .line 14
    const-class v0, Lcom/smartisanos/launcher/animations/a/i;

    invoke-static {v0}, Laurelienribon/tweenengine/k;->d(Ljava/lang/Class;)Laurelienribon/tweenengine/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 15
    const-class v0, Lcom/smartisanos/launcher/animations/a/i;

    new-instance v1, Lcom/smartisanos/launcher/animations/a/h;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/animations/a/h;-><init>(Lcom/smartisanos/launcher/animations/a/i;)V

    invoke-static {v0, v1}, Laurelienribon/tweenengine/k;->a(Ljava/lang/Class;Laurelienribon/tweenengine/l;)V

    .line 16
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->_o:Ljava/util/ArrayList;

    return-void
.end method

.method private Bq()V
    .locals 8

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/animations/a/i;->hp:[F

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    new-array v1, v0, [F

    .line 2
    sput-object v1, Lcom/smartisanos/launcher/animations/a/i;->hp:[F

    .line 3
    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Fo:F

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    const-wide/high16 v4, 0x4079000000000000L    # 400.0

    .line 4
    iget v6, p0, Lcom/smartisanos/launcher/animations/a/i;->Fo:F

    div-float v6, v2, v6

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v5, v4

    add-float/2addr v2, v5

    .line 5
    sget-object v4, Lcom/smartisanos/launcher/animations/a/i;->hp:[F

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/a/i;IF)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/animations/a/i;->j(IF)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/a/i;[F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/a/i;->h([F)V

    return-void
.end method

.method private h([F)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Ko:[F

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Ko:[F

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/animations/a/i;->b([F)V

    return-void
.end method

.method private j(IF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Lo:[F

    add-int/lit8 v1, p1, -0x1

    aput p2, v0, v1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/animations/a/i;->d(IF)V

    return-void
.end method


# virtual methods
.method public I(Z)Lcom/smartisanos/launcher/view/b/M;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getPageCount()I

    move-result v1

    .line 3
    new-instance v2, Lcom/smartisanos/launcher/data/Q;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/Q;-><init>()V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    const-string v3, ""

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/smartisanos/launcher/view/b/fa;->a(Ljava/util/ArrayList;ILjava/lang/String;Lcom/smartisanos/launcher/data/Q;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    .line 5
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/M;->uI:Z

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-object p0
.end method

.method public J(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/fa;->M(F)V

    .line 3
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->To:I

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->_o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 5
    iget p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/animations/a/i;->To:I

    .line 6
    iget p1, p0, Lcom/smartisanos/launcher/animations/a/i;->To:I

    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p1, 0x1

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 11
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 13
    :cond_4
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/a/i;->ca(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    iget v4, p0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    invoke-virtual {v0, v3, v4, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->_o:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_5
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/animations/a/i;->ca(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    .line 19
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 21
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    invoke-virtual {p1, v3, v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 22
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->_o:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_6
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/animations/a/i;->ca(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    .line 24
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz p1, :cond_7

    .line 25
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 26
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    invoke-virtual {p1, v3, v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 27
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->_o:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_7
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->_o:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/b/fa;->h(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(ZFFLcom/smartisanos/smengine/a;)F
    .locals 0

    .line 20
    iput-object p4, p0, Lcom/smartisanos/launcher/animations/a/i;->fp:Lcom/smartisanos/smengine/a;

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p1, :cond_1

    const/high16 p1, 0x447a0000    # 1000.0f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    move p1, p3

    move p2, p4

    goto :goto_0

    :cond_0
    const/high16 p1, -0x3b860000    # -1000.0f

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    move p2, p3

    move p1, p4

    goto :goto_0

    :cond_1
    move p1, p3

    move p2, p1

    :goto_0
    if-eqz p1, :cond_2

    .line 21
    iget p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    :goto_1
    float-to-int p1, p1

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 22
    iget p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    goto :goto_1

    .line 23
    :cond_3
    iget p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_2
    if-gez p1, :cond_4

    goto :goto_3

    .line 24
    :cond_4
    iget p2, p0, Lcom/smartisanos/launcher/animations/a/i;->Go:I

    add-int/lit8 p3, p2, -0x1

    if-le p1, p3, :cond_5

    add-int/lit8 p3, p2, -0x1

    goto :goto_3

    :cond_5
    move p3, p1

    .line 25
    :goto_3
    iget p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    int-to-float p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/animations/a/i;->f(FF)V

    .line 26
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object p0

    sget-object p1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Naa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {p0, p1, p3}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    return p2
.end method

.method public a(FFLaurelienribon/tweenengine/n;FLjava/lang/Runnable;)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Mo:[F

    aput p1, v1, v0

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->No:[F

    aput p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Mo:[F

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/a/i;->No:[F

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/a/i;->a([F[FLaurelienribon/tweenengine/n;FZLjava/lang/Runnable;)V

    return-void
.end method

.method public a(FF[Laurelienribon/tweenengine/n;FLjava/lang/Runnable;)V
    .locals 3

    .line 14
    invoke-static {}, Laurelienribon/tweenengine/h;->Ha()Laurelienribon/tweenengine/h;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->F(I)Ljava/lang/Object;

    check-cast v0, Laurelienribon/tweenengine/h;

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Mn:Laurelienribon/tweenengine/h;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 15
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Lo:[F

    aput p1, v1, v0

    add-int/lit8 v1, v0, 0x1

    .line 16
    invoke-static {p0, v1, p4}, Laurelienribon/tweenengine/k;->a(Ljava/lang/Object;IF)Laurelienribon/tweenengine/k;

    move-result-object v2

    invoke-virtual {v2, p2}, Laurelienribon/tweenengine/k;->h(F)Laurelienribon/tweenengine/k;

    aget-object v0, p3, v0

    invoke-virtual {v2, v0}, Laurelienribon/tweenengine/k;->a(Laurelienribon/tweenengine/n;)Laurelienribon/tweenengine/k;

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Mn:Laurelienribon/tweenengine/h;

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/h;->a(Laurelienribon/tweenengine/k;)Laurelienribon/tweenengine/h;

    move v0, v1

    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Mn:Laurelienribon/tweenengine/h;

    new-instance p2, Lcom/smartisanos/launcher/animations/a/d;

    invoke-direct {p2, p0, p5}, Lcom/smartisanos/launcher/animations/a/d;-><init>(Lcom/smartisanos/launcher/animations/a/i;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Laurelienribon/tweenengine/b;->a(Laurelienribon/tweenengine/m;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->Mn:Laurelienribon/tweenengine/h;

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/d;->e(Laurelienribon/tweenengine/h;)V

    return-void
.end method

.method public a(Lcom/smartisanos/launcher/animations/a/g;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->gp:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/smartisanos/launcher/animations/a/i;)V
    .locals 2

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->gp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->gp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/animations/a/g;

    .line 6
    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/animations/a/i;->a(Lcom/smartisanos/launcher/animations/a/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a([F[FLaurelienribon/tweenengine/n;FZLjava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 10
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Ko:[F

    aget v3, p1, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0, v0, p4}, Laurelienribon/tweenengine/k;->a(Ljava/lang/Object;IF)Laurelienribon/tweenengine/k;

    move-result-object p1

    aget p4, p2, v0

    const/4 v0, 0x1

    aget p2, p2, v0

    invoke-virtual {p1, p4, p2}, Laurelienribon/tweenengine/k;->a(FF)Laurelienribon/tweenengine/k;

    invoke-virtual {p1, p3}, Laurelienribon/tweenengine/k;->a(Laurelienribon/tweenengine/n;)Laurelienribon/tweenengine/k;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Laurelienribon/tweenengine/b;->F(I)Ljava/lang/Object;

    check-cast p1, Laurelienribon/tweenengine/k;

    new-instance p2, Lcom/smartisanos/launcher/animations/a/c;

    invoke-direct {p2, p0, p5, p6}, Lcom/smartisanos/launcher/animations/a/c;-><init>(Lcom/smartisanos/launcher/animations/a/i;ZLjava/lang/Runnable;)V

    .line 12
    invoke-virtual {p1, p2}, Laurelienribon/tweenengine/b;->a(Laurelienribon/tweenengine/m;)Ljava/lang/Object;

    check-cast p1, Laurelienribon/tweenengine/k;

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Vo:Laurelienribon/tweenengine/k;

    .line 13
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->Vo:Laurelienribon/tweenengine/k;

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/d;->e(Laurelienribon/tweenengine/k;)V

    return-void
.end method

.method public b(FFLaurelienribon/tweenengine/n;FLjava/lang/Runnable;)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Mo:[F

    aput p1, v1, v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->No:[F

    aput p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Mo:[F

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/a/i;->No:[F

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/a/i;->a([F[FLaurelienribon/tweenengine/n;FZLjava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/smartisanos/launcher/animations/a/g;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->gp:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b([F)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    aget p1, p1, v0

    iput p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    .line 6
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/a/i;->J(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->te()V

    return-void
.end method

.method protected ca(I)Lcom/smartisanos/launcher/view/b/M;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Zo:Lcom/smartisanos/launcher/view/b/M;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    if-lt p1, v0, :cond_4

    .line 2
    iget v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Uo:I

    add-int/lit8 v3, v2, 0x1

    if-le p1, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eq p1, v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/b/M;

    return-object p0

    :cond_2
    return-object v1

    .line 5
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->Zo:Lcom/smartisanos/launcher/view/b/M;

    return-object p0

    :cond_4
    :goto_1
    return-object v1

    :cond_5
    if-ltz p1, :cond_7

    .line 6
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Uo:I

    if-le p1, v0, :cond_6

    goto :goto_2

    :cond_6
    if-ltz p1, :cond_7

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/b/M;

    return-object p0

    :cond_7
    :goto_2
    return-object v1
.end method

.method public d(IF)V
    .locals 0

    return-void
.end method

.method public d(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->Wn()V

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object p0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/z;->b(Lcom/smartisanos/smengine/y;)V

    const/4 p0, 0x1

    .line 4
    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/b/M;->clear(Z)V

    return-void
.end method

.method protected de()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->ar()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Go:I

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->tr()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Fo:F

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->or()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Jo:F

    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->mScrollX:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Io:F

    .line 6
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Io:F

    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Fo:F

    iget v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Go:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Ho:F

    return-void
.end method

.method public ee()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/animations/a/i;->cp:Z

    return p0
.end method

.method public f(FF)V
    .locals 7

    cmpl-float v0, p1, p2

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->onAnimationStart()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->onAnimationEnd()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v4, Laurelienribon/tweenengine/a/p;->OUT:Laurelienribon/tweenengine/a/p;

    iget v5, p0, Lcom/smartisanos/launcher/animations/a/i;->ep:F

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/launcher/animations/a/i;->a(FFLaurelienribon/tweenengine/n;FLjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public fe()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/b/fa;->s(Lcom/smartisanos/launcher/view/b/M;)V

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    .line 7
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    const/high16 v1, -0x3b860000    # -1000.0f

    .line 9
    iput v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    const/16 v1, -0x3e8

    .line 10
    iput v1, p0, Lcom/smartisanos/launcher/animations/a/i;->To:I

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 12
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c/i;->Xb(Z)V

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->fp:Lcom/smartisanos/smengine/a;

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v1}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 15
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->fp:Lcom/smartisanos/smengine/a;

    .line 16
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->gp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->gp:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/animations/a/g;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    invoke-interface {v0, v1}, Lcom/smartisanos/launcher/animations/a/g;->d(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public ge()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->le()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->fp:Lcom/smartisanos/smengine/a;

    .line 3
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    const/high16 v1, -0x3b860000    # -1000.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 4
    iput v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    goto :goto_0

    .line 5
    :cond_0
    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Uo:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    int-to-float v0, v1

    .line 6
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    .line 8
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Naa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    iget v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->onAnimationStart()V

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->onAnimationEnd()V

    :cond_2
    return-void
.end method

.method public he()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/animations/a/i;->ep:F

    return p0
.end method

.method public ie()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    return p0
.end method

.method public je()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Io:F

    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Jo:F

    sub-float/2addr v0, v1

    iget p0, p0, Lcom/smartisanos/launcher/animations/a/i;->Fo:F

    div-float/2addr v0, p0

    return v0
.end method

.method public ke()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/animations/a/i;->dp:Z

    return p0
.end method

.method public le()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Vo:Laurelienribon/tweenengine/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Laurelienribon/tweenengine/b;->kill()V

    .line 3
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Vo:Laurelienribon/tweenengine/k;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Mn:Laurelienribon/tweenengine/h;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Laurelienribon/tweenengine/b;->kill()V

    .line 6
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Mn:Laurelienribon/tweenengine/h;

    :cond_1
    return-void
.end method

.method public abstract me()V
.end method

.method public abstract ne()V
.end method

.method public oe()V
    .locals 0

    return-void
.end method

.method public onAnimationEnd()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->me()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->fe()V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    if-eqz p0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->M(F)V

    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    return-void
.end method

.method public onRelease()V
    .locals 0

    return-void
.end method

.method public pe()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->se()F

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/16 v2, 0x80

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Ha;->rp()Lcom/smartisanos/launcher/animations/a/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    instance-of v1, v0, Lcom/smartisanos/launcher/animations/a/b;

    if-eqz v1, :cond_0

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 9
    check-cast v0, Lcom/smartisanos/launcher/animations/a/b;

    sput-boolean v3, Lcom/smartisanos/launcher/animations/a/b;->jp:Z

    .line 10
    :cond_0
    iget v6, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    const/4 v7, 0x0

    sget-object v8, Laurelienribon/tweenengine/a/p;->OUT:Laurelienribon/tweenengine/a/p;

    const v9, 0x3eb851ec    # 0.36f

    new-instance v10, Lcom/smartisanos/launcher/animations/a/e;

    invoke-direct {v10, p0}, Lcom/smartisanos/launcher/animations/a/e;-><init>(Lcom/smartisanos/launcher/animations/a/i;)V

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/smartisanos/launcher/animations/a/i;->a(FFLaurelienribon/tweenengine/n;FLjava/lang/Runnable;)V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object p0

    sget-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Naa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {p0, v0, v4}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    const/high16 v0, -0x3de00000    # -40.0f

    .line 14
    iget v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Fo:F

    div-float/2addr v0, v2

    .line 15
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Ko:[F

    aput v1, v2, v4

    .line 16
    invoke-static {}, Laurelienribon/tweenengine/h;->Ia()Laurelienribon/tweenengine/h;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/b;->F(I)Ljava/lang/Object;

    check-cast v2, Laurelienribon/tweenengine/h;

    iput-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Mn:Laurelienribon/tweenengine/h;

    const v2, 0x3dcccccd    # 0.1f

    .line 17
    invoke-static {p0, v4, v2}, Laurelienribon/tweenengine/k;->a(Ljava/lang/Object;IF)Laurelienribon/tweenengine/k;

    move-result-object v2

    invoke-virtual {v2, v0}, Laurelienribon/tweenengine/k;->h(F)Laurelienribon/tweenengine/k;

    sget-object v0, Laurelienribon/tweenengine/a/p;->OUT:Laurelienribon/tweenengine/a/p;

    invoke-virtual {v2, v0}, Laurelienribon/tweenengine/k;->a(Laurelienribon/tweenengine/n;)Laurelienribon/tweenengine/k;

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Mn:Laurelienribon/tweenengine/h;

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/h;->a(Laurelienribon/tweenengine/k;)Laurelienribon/tweenengine/h;

    const v0, 0x3e99999a    # 0.3f

    .line 19
    invoke-static {p0, v4, v0}, Laurelienribon/tweenengine/k;->a(Ljava/lang/Object;IF)Laurelienribon/tweenengine/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/k;->h(F)Laurelienribon/tweenengine/k;

    sget-object v1, Laurelienribon/tweenengine/a/p;->OUT:Laurelienribon/tweenengine/a/p;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/k;->a(Laurelienribon/tweenengine/n;)Laurelienribon/tweenengine/k;

    .line 20
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Mn:Laurelienribon/tweenengine/h;

    invoke-virtual {v1, v0}, Laurelienribon/tweenengine/h;->a(Laurelienribon/tweenengine/k;)Laurelienribon/tweenengine/h;

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Mn:Laurelienribon/tweenengine/h;

    new-instance v1, Lcom/smartisanos/launcher/animations/a/f;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/animations/a/f;-><init>(Lcom/smartisanos/launcher/animations/a/i;)V

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->a(Laurelienribon/tweenengine/m;)Ljava/lang/Object;

    .line 22
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->Mn:Laurelienribon/tweenengine/h;

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/d;->e(Laurelienribon/tweenengine/h;)V

    .line 23
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object p0

    sget-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Naa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {p0, v0, v4}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    :goto_0
    return-void
.end method

.method public qe()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dp:Z

    return-void
.end method

.method public re()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dp:Z

    return-void
.end method

.method public se()F
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->le()V

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    const/high16 v1, -0x3b860000    # -1000.0f

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    move v0, v3

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->gp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->gp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/animations/a/g;

    sget v5, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    invoke-interface {v1, v5}, Lcom/smartisanos/launcher/animations/a/g;->startScroll(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->de()V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/N;->B(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    iput v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Po:F

    .line 9
    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/N;->v(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    iput v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Qo:F

    .line 10
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v1, v1

    iput v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Ro:F

    .line 11
    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/N;->r(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/smengine/a/i;->y:F

    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    .line 12
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Go:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Uo:I

    const/16 v0, -0x3e8

    .line 13
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->To:I

    .line 14
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Io:F

    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Jo:F

    iget v5, p0, Lcom/smartisanos/launcher/animations/a/i;->Fo:F

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->ne()V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->or()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->or()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 18
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/animations/a/i;->J(Z)V

    .line 19
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->te()V

    goto :goto_1

    :cond_1
    neg-float v0, v0

    .line 20
    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Fo:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->mScrollX:F

    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Jo:F

    .line 21
    :goto_1
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    cmpg-float v1, v0, v2

    if-gez v1, :cond_2

    move v0, v3

    goto :goto_2

    .line 22
    :cond_2
    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Uo:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    move v0, v1

    goto :goto_2

    .line 23
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 24
    :goto_2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 25
    iget-boolean v1, p0, Lcom/smartisanos/launcher/animations/a/i;->bp:Z

    if-eqz v1, :cond_4

    .line 26
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/c/i;->Xb(Z)V

    goto :goto_3

    .line 27
    :cond_4
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c/i;->Xb(Z)V

    .line 28
    :goto_3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Go:I

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/launcher/view/Z;->D(II)V

    .line 29
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Jaa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    .line 30
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Kaa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->fp:Lcom/smartisanos/smengine/a;

    .line 32
    iget p0, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    return p0
.end method

.method public setShowShadow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/a/i;->bp:Z

    return-void
.end method

.method public abstract te()V
.end method

.method public updateScroll(F)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/i;->Bq()V

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->mScrollX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->mScrollX:F

    .line 3
    iget p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Fo:F

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 4
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->mScrollX:F

    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Ho:F

    cmpg-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x4479c000    # 999.0f

    const/16 v5, 0x3e6

    const/16 v6, 0x3e8

    const/4 v7, 0x0

    const/16 v8, 0x3e7

    if-gez v2, :cond_2

    sub-float v2, v1, v0

    int-to-float p1, p1

    div-float/2addr v2, p1

    float-to-int v2, v2

    sub-float v0, v1, v0

    div-float/2addr v0, p1

    int-to-float p1, v2

    sub-float/2addr v0, p1

    if-ge v2, v6, :cond_1

    if-nez v2, :cond_0

    move p1, v7

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/smartisanos/launcher/animations/a/i;->hp:[F

    add-int/lit8 v1, v2, -0x1

    aget p1, p1, v1

    .line 6
    :goto_0
    sget-object v1, Lcom/smartisanos/launcher/animations/a/i;->hp:[F

    aget v1, v1, v2

    .line 7
    iget v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Ho:F

    sub-float/2addr v3, v0

    mul-float/2addr p1, v3

    sub-float/2addr v2, p1

    mul-float/2addr v1, v0

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Jo:F

    goto :goto_1

    .line 8
    :cond_1
    sget-object v2, Lcom/smartisanos/launcher/animations/a/i;->hp:[F

    aget v3, v2, v8

    aget v5, v2, v5

    sub-float/2addr v3, v5

    .line 9
    aget v2, v2, v8

    sub-float/2addr v1, v2

    add-float/2addr p1, v0

    sub-float/2addr p1, v4

    mul-float/2addr v3, p1

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Jo:F

    .line 10
    :goto_1
    iget p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Jo:F

    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Ho:F

    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Fo:F

    sub-float v2, v0, v1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_6

    sub-float/2addr v0, v1

    .line 11
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Jo:F

    goto :goto_4

    .line 12
    :cond_2
    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Io:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_5

    sub-float v2, v0, v1

    int-to-float p1, p1

    div-float/2addr v2, p1

    float-to-int v2, v2

    sub-float/2addr v0, v1

    div-float/2addr v0, p1

    int-to-float p1, v2

    sub-float/2addr v0, p1

    if-ge v2, v6, :cond_4

    if-nez v2, :cond_3

    move p1, v7

    goto :goto_2

    .line 13
    :cond_3
    sget-object p1, Lcom/smartisanos/launcher/animations/a/i;->hp:[F

    add-int/lit8 v1, v2, -0x1

    aget p1, p1, v1

    .line 14
    :goto_2
    sget-object v1, Lcom/smartisanos/launcher/animations/a/i;->hp:[F

    aget v1, v1, v2

    .line 15
    iget v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Io:F

    sub-float/2addr v3, v0

    mul-float/2addr p1, v3

    add-float/2addr v2, p1

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    iput v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Jo:F

    goto :goto_3

    .line 16
    :cond_4
    sget-object v2, Lcom/smartisanos/launcher/animations/a/i;->hp:[F

    aget v3, v2, v8

    aget v5, v2, v5

    sub-float/2addr v3, v5

    .line 17
    aget v2, v2, v8

    add-float/2addr v1, v2

    add-float/2addr p1, v0

    sub-float/2addr p1, v4

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    iput v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Jo:F

    .line 18
    :goto_3
    iget p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Jo:F

    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Io:F

    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Fo:F

    add-float v2, v0, v1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_6

    add-float/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Jo:F

    goto :goto_4

    .line 20
    :cond_5
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Jo:F

    .line 21
    :cond_6
    :goto_4
    iget p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Jo:F

    cmpl-float p1, p1, v7

    if-lez p1, :cond_7

    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->sLeftScreenEnabled:Z

    if-eqz p1, :cond_7

    iput v7, p0, Lcom/smartisanos/launcher/animations/a/i;->Jo:F

    .line 22
    :cond_7
    iget p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Io:F

    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Jo:F

    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Fo:F

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/animations/a/i;->J(Z)V

    .line 24
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->te()V

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object p1

    iget p0, p0, Lcom/smartisanos/launcher/animations/a/i;->Jo:F

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/Z;->w(F)V

    return-void
.end method
