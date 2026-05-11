.class public Lcom/smartisanos/launcher/animations/p;
.super Lcom/smartisanos/smengine/a;
.source "AnimationController.java"


# instance fields
.field private KA:Lcom/smartisanos/launcher/view/a/g;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/p;->KA:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/p;->KA:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/p;->KA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v1

    .line 4
    iget v2, v1, Lcom/smartisanos/launcher/view/lb;->yw:I

    add-int/lit8 v2, v2, -0x2f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/view/b/M;->j(IZ)V

    .line 5
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_1

    .line 6
    iget v1, v1, Lcom/smartisanos/launcher/view/lb;->Ow:I

    add-int/lit8 v1, v1, -0x2f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/b/M;->k(IZ)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Hg()V

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/p;->KA:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/r;->d(Lcom/smartisanos/launcher/view/a/g;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/p;->KA:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/p;->KA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/b/M;

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 4
    iget v1, v0, Lcom/smartisanos/launcher/view/lb;->yw:I

    add-int/lit8 v1, v1, -0x2f

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/launcher/view/b/M;->j(IZ)V

    .line 5
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_1

    .line 6
    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->Ow:I

    add-int/lit8 v0, v0, -0x2f

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/launcher/view/b/M;->k(IZ)V

    :cond_1
    :goto_0
    return-void
.end method
