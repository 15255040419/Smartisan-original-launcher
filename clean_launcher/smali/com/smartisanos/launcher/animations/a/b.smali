.class public Lcom/smartisanos/launcher/animations/a/b;
.super Lcom/smartisanos/launcher/animations/a/k;
.source "PageScorllAnimationFolder.java"


# static fields
.field public static jp:Z = false

.field private static kp:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/animations/a/a;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/a/a;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/animations/a/b;->kp:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public me()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    .line 4
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/animations/a/b;->jp:Z

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/animations/a/b;->kp:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/a/k;->d(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/a/k;->d(Ljava/lang/Runnable;)V

    :goto_1
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
    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/N;->C(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/a/i;->x:F

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
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/k;->ne()V

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
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/k;->te()V

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
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/k;->ue()V

    .line 33
    iget p0, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    return p0
.end method
