.class public Lcom/smartisanos/smengine/g;
.super Lcom/smartisanos/smengine/c;
.source "AnimationTimeLine.java"

# interfaces
.implements Laurelienribon/tweenengine/a;


# instance fields
.field private uC:Ljava/util/ArrayList;

.field private vC:Laurelienribon/tweenengine/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/smengine/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/g;->uC:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected Gj()Laurelienribon/tweenengine/h;
    .locals 4

    .line 1
    invoke-static {}, Laurelienribon/tweenengine/h;->Ha()Laurelienribon/tweenengine/h;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    iget v1, p0, Lcom/smartisanos/smengine/c;->oC:F

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->f(F)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/smengine/g;->uC:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 4
    iget-object v1, p0, Lcom/smartisanos/smengine/g;->uC:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/f;

    .line 5
    iget-object v2, v1, Lcom/smartisanos/smengine/f;->anim:Lcom/smartisanos/smengine/c;

    iget v3, v1, Lcom/smartisanos/smengine/f;->startTime:F

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->setDelay(F)V

    .line 6
    iget-object v2, v1, Lcom/smartisanos/smengine/f;->anim:Lcom/smartisanos/smengine/c;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/c;->Hj()Laurelienribon/tweenengine/k;

    move-result-object v2

    .line 7
    iget-object v1, v1, Lcom/smartisanos/smengine/f;->anim:Lcom/smartisanos/smengine/c;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/c;->Gj()Laurelienribon/tweenengine/h;

    move-result-object v1

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "tween and tl all null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "tween and tl all not null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 10
    iget-object v1, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/h;->a(Laurelienribon/tweenengine/k;)Laurelienribon/tweenengine/h;

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    .line 11
    iget-object v2, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    invoke-virtual {v2, v1}, Laurelienribon/tweenengine/h;->a(Laurelienribon/tweenengine/h;)Laurelienribon/tweenengine/h;

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    new-instance v1, Lcom/smartisanos/smengine/b;

    invoke-direct {v1, p0}, Lcom/smartisanos/smengine/b;-><init>(Lcom/smartisanos/smengine/c;)V

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->a(Laurelienribon/tweenengine/m;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->F(I)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/b;->a(Laurelienribon/tweenengine/a;)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->setName(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    iget-object v1, p0, Lcom/smartisanos/smengine/c;->mUserData:Ljava/lang/Byte;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p0, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    return-object p0
.end method

.method public Ij()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 2
    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->update(F)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    return-void
.end method

.method public Kj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/g;->uC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    return-void
.end method

.method public Lj()Laurelienribon/tweenengine/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    return-object p0
.end method

.method public a(FLcom/smartisanos/smengine/c;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/f;-><init>(Lcom/smartisanos/smengine/e;)V

    .line 2
    iput p1, v0, Lcom/smartisanos/smengine/f;->startTime:F

    .line 3
    iput-object p2, v0, Lcom/smartisanos/smengine/f;->anim:Lcom/smartisanos/smengine/c;

    .line 4
    invoke-virtual {p2, p1}, Lcom/smartisanos/smengine/c;->setDelay(F)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/smengine/g;->uC:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(B)V
    .locals 1

    const/4 v0, -0x1

    if-ge v0, p1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    iput-object v0, p0, Lcom/smartisanos/smengine/c;->mUserData:Ljava/lang/Byte;

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid user data, must >= 0"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    :cond_0
    return-void
.end method

.method public getUserData()B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laurelienribon/tweenengine/b;->getUserData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->getUserData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public isFinished()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->isFinished()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public kill()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/c;->sC:Lcom/smartisanos/smengine/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/a;->Fj()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Laurelienribon/tweenengine/b;->kill()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    return-void
.end method

.method public reset()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/g;->uC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/f;

    if-eqz v1, :cond_0

    .line 2
    iget-object v3, v1, Lcom/smartisanos/smengine/f;->anim:Lcom/smartisanos/smengine/c;

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3}, Lcom/smartisanos/smengine/c;->reset()V

    .line 4
    iput-object v2, v1, Lcom/smartisanos/smengine/f;->anim:Lcom/smartisanos/smengine/c;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/g;->uC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iput-object v2, p0, Lcom/smartisanos/smengine/g;->vC:Laurelienribon/tweenengine/h;

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Gj()Laurelienribon/tweenengine/h;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/smartisanos/smengine/c;->mRepeatCount:I

    if-lez v1, :cond_0

    .line 3
    iget p0, p0, Lcom/smartisanos/smengine/c;->nC:F

    invoke-virtual {v0, v1, p0}, Laurelienribon/tweenengine/b;->b(IF)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/d;->e(Laurelienribon/tweenengine/h;)V

    return-void
.end method
