.class public Lcom/smartisanos/smengine/Ja;
.super Lcom/smartisanos/smengine/c;
.source "WaveNodeTweenAnimation.java"

# interfaces
.implements Laurelienribon/tweenengine/a;


# instance fields
.field protected Vo:Laurelienribon/tweenengine/k;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/Uc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/smengine/c;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/Ia;

    invoke-direct {v0, p1}, Lcom/smartisanos/smengine/Ia;-><init>(Lcom/smartisanos/launcher/view/Uc;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected Hj()Laurelienribon/tweenengine/k;
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/c;->pC:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    if-eqz v0, :cond_3

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/c;->mDuration:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 4
    const-class v0, Lcom/smartisanos/smengine/Ia;

    invoke-static {v0}, Laurelienribon/tweenengine/k;->d(Ljava/lang/Class;)Laurelienribon/tweenengine/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    const-class v0, Lcom/smartisanos/smengine/Ia;

    new-instance v1, Lcom/smartisanos/smengine/Ha;

    invoke-direct {v1}, Lcom/smartisanos/smengine/Ha;-><init>()V

    invoke-static {v0, v1}, Laurelienribon/tweenengine/k;->a(Ljava/lang/Class;Laurelienribon/tweenengine/l;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    iget v1, p0, Lcom/smartisanos/smengine/c;->pC:I

    iget v2, p0, Lcom/smartisanos/smengine/c;->mDuration:F

    invoke-static {v0, v1, v2}, Laurelienribon/tweenengine/k;->a(Ljava/lang/Object;IF)Laurelienribon/tweenengine/k;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/smengine/Ja;->Vo:Laurelienribon/tweenengine/k;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/smengine/Ja;->Vo:Laurelienribon/tweenengine/k;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/Ja;->d(Laurelienribon/tweenengine/k;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/smengine/Ja;->Vo:Laurelienribon/tweenengine/k;

    iget v1, p0, Lcom/smartisanos/smengine/c;->mC:I

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/c;->Ka(I)Laurelienribon/tweenengine/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/k;->a(Laurelienribon/tweenengine/n;)Laurelienribon/tweenengine/k;

    iget v1, p0, Lcom/smartisanos/smengine/c;->oC:F

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->f(F)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/smengine/Ja;->Vo:Laurelienribon/tweenengine/k;

    new-instance v1, Lcom/smartisanos/smengine/b;

    invoke-direct {v1, p0}, Lcom/smartisanos/smengine/b;-><init>(Lcom/smartisanos/smengine/c;)V

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->a(Laurelienribon/tweenengine/m;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/smengine/Ja;->Vo:Laurelienribon/tweenengine/k;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->F(I)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/smengine/Ja;->Vo:Laurelienribon/tweenengine/k;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->setName(Ljava/lang/String;)V

    .line 12
    iget v0, p0, Lcom/smartisanos/smengine/c;->mRepeatCount:I

    if-lez v0, :cond_1

    .line 13
    iget-object v1, p0, Lcom/smartisanos/smengine/Ja;->Vo:Laurelienribon/tweenengine/k;

    iget v2, p0, Lcom/smartisanos/smengine/c;->nC:F

    invoke-virtual {v1, v0, v2}, Laurelienribon/tweenengine/b;->b(IF)Ljava/lang/Object;

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/Ja;->Vo:Laurelienribon/tweenengine/k;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/b;->a(Laurelienribon/tweenengine/a;)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/smengine/Ja;->Vo:Laurelienribon/tweenengine/k;

    iget-object v1, p0, Lcom/smartisanos/smengine/c;->mUserData:Ljava/lang/Byte;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p0, p0, Lcom/smartisanos/smengine/Ja;->Vo:Laurelienribon/tweenengine/k;

    return-object p0

    .line 17
    :cond_2
    new-instance p0, Lcom/smartisanos/smengine/Animation$AnimationException;

    const-string v0, "duration is null"

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/Animation$AnimationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_3
    new-instance p0, Lcom/smartisanos/smengine/Animation$AnimationException;

    const-string v0, "target value is null error"

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/Animation$AnimationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_4
    new-instance p0, Lcom/smartisanos/smengine/Animation$AnimationException;

    const-string v0, "target value type is invalid"

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/Animation$AnimationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public Nj()Laurelienribon/tweenengine/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ja;->Vo:Laurelienribon/tweenengine/k;

    return-object p0
.end method

.method public a(IFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/smengine/Ia;

    .line 2
    iput p1, p0, Lcom/smartisanos/smengine/c;->pC:I

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown animation value type : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :pswitch_0
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aput p3, p0, v1

    .line 5
    invoke-virtual {v0, p2, v1}, Lcom/smartisanos/smengine/Ia;->l(FZ)V

    goto :goto_0

    .line 6
    :pswitch_1
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aput p3, p0, v1

    .line 7
    invoke-virtual {v0, p2, v1}, Lcom/smartisanos/smengine/Ia;->k(FZ)V

    goto :goto_0

    .line 8
    :pswitch_2
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aput p3, p0, v1

    .line 9
    invoke-virtual {v0, p2, v1}, Lcom/smartisanos/smengine/Ia;->n(FZ)V

    goto :goto_0

    .line 10
    :pswitch_3
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aput p3, p0, v1

    .line 11
    invoke-virtual {v0, p2, v1}, Lcom/smartisanos/smengine/Ia;->m(FZ)V

    goto :goto_0

    .line 12
    :pswitch_4
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aput p3, p0, v1

    .line 13
    invoke-virtual {v0, p2, v1}, Lcom/smartisanos/smengine/Ia;->j(FZ)V

    goto :goto_0

    .line 14
    :pswitch_5
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aput p3, p0, v1

    .line 15
    invoke-virtual {v0, p2, v1}, Lcom/smartisanos/smengine/Ia;->i(FZ)V

    :goto_0
    :pswitch_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public a(Lcom/smartisanos/smengine/a;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 17
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    check-cast p0, Lcom/smartisanos/smengine/Ia;

    invoke-static {p0, p1}, Lcom/smartisanos/smengine/Ia;->a(Lcom/smartisanos/smengine/Ia;Lcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/a;

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/Ja;->Vo:Laurelienribon/tweenengine/k;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/smengine/Ja;->Vo:Laurelienribon/tweenengine/k;

    :cond_0
    return-void
.end method

.method protected d(Laurelienribon/tweenengine/k;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/c;->pC:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p0, Lcom/smartisanos/smengine/Animation$AnimationException;

    const-string p1, "unknown target value type"

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Animation$AnimationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_0
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget p0, p0, v1

    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/k;->h(F)Laurelienribon/tweenengine/k;

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget p0, p0, v1

    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/k;->h(F)Laurelienribon/tweenengine/k;

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget p0, p0, v1

    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/k;->h(F)Laurelienribon/tweenengine/k;

    goto :goto_0

    .line 6
    :pswitch_3
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget p0, p0, v1

    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/k;->h(F)Laurelienribon/tweenengine/k;

    goto :goto_0

    .line 7
    :pswitch_4
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget p0, p0, v1

    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/k;->h(F)Laurelienribon/tweenengine/k;

    goto :goto_0

    .line 8
    :pswitch_5
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget p0, p0, v1

    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/k;->h(F)Laurelienribon/tweenengine/k;

    :goto_0
    :pswitch_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public isFinished()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ja;->Vo:Laurelienribon/tweenengine/k;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->isFinished()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isPaused()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ja;->Vo:Laurelienribon/tweenengine/k;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->isPaused()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public kill()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/Ja;->Vo:Laurelienribon/tweenengine/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Laurelienribon/tweenengine/b;->kill()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/smengine/Ja;->Vo:Laurelienribon/tweenengine/k;

    .line 4
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->sC:Lcom/smartisanos/smengine/a;

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a;->Fj()V

    :cond_0
    return-void
.end method

.method public o(F)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/c;->reset()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/smartisanos/smengine/Ia;

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ia;->reset()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/smartisanos/smengine/Ja;->Vo:Laurelienribon/tweenengine/k;

    return-void
.end method
