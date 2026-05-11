.class public Lcom/smartisanos/launcher/animations/q;
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
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    const v2, 0x8000

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_3

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/bb;->yp()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/ga;->ma(Z)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 11
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 12
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v2

    if-nez v2, :cond_4

    .line 13
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_5

    .line 15
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    .line 16
    :cond_5
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v2

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v2

    .line 17
    iget v4, v2, Lcom/smartisanos/launcher/view/lb;->yw:I

    add-int/lit8 v4, v4, -0x2f

    invoke-virtual {v0, v4, v1}, Lcom/smartisanos/launcher/view/b/M;->j(IZ)V

    .line 18
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v4, :cond_7

    .line 19
    iget v4, v2, Lcom/smartisanos/launcher/view/lb;->Ow:I

    add-int/lit8 v4, v4, -0x2f

    invoke-virtual {v0, v4, v1}, Lcom/smartisanos/launcher/view/b/M;->k(IZ)V

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 21
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/a/Z;->fa(Z)V

    .line 22
    :cond_6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->rn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 23
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->rn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    iget v2, v2, Lcom/smartisanos/launcher/view/lb;->Aw:I

    add-int/lit8 v2, v2, -0x2f

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/ga;->ja(Z)V

    .line 25
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    const/high16 v2, 0x20000

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 26
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Hg()V

    .line 27
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/r;->d(Lcom/smartisanos/launcher/view/a/g;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

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

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/view/b/M;->j(IZ)V

    .line 5
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v2

    .line 7
    iget v1, v1, Lcom/smartisanos/launcher/view/lb;->Ow:I

    add-int/lit8 v1, v1, -0x2f

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/launcher/view/b/M;->k(IZ)V

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->rn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->rn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    iget v2, v2, Lcom/smartisanos/launcher/view/lb;->Aw:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 10
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/a/Z;->fa(Z)V

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v1

    if-nez v1, :cond_3

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    .line 16
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/ga;->ja(Z)V

    .line 18
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_6

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/bb;->yp()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-ne v0, v1, :cond_5

    goto :goto_1

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/ga;->ma(Z)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 23
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/q;->KA:Lcom/smartisanos/launcher/view/a/g;

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0, v3}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    :cond_7
    :goto_2
    return-void
.end method
