.class public Lcom/smartisanos/smengine/oa;
.super Lcom/smartisanos/smengine/c;
.source "SceneNodeTweenAnimation.java"

# interfaces
.implements Laurelienribon/tweenengine/a;


# instance fields
.field private Vo:Laurelienribon/tweenengine/k;


# direct methods
.method public constructor <init>(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/smengine/c;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/na;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1, v1, v2}, Lcom/smartisanos/smengine/na;-><init>(Lcom/smartisanos/smengine/SceneNode;FFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/smengine/c;-><init>()V

    .line 4
    new-instance v0, Lcom/smartisanos/smengine/na;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1, v1, v2}, Lcom/smartisanos/smengine/na;-><init>(Lcom/smartisanos/smengine/SceneNode;FFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/oa;->va(Z)V

    return-void
.end method

.method private d(Laurelienribon/tweenengine/k;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/c;->pC:I

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p0, Lcom/smartisanos/smengine/Animation$AnimationException;

    const-string p1, "unknown target value type"

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Animation$AnimationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-array v0, v1, [F

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget v1, p0, v2

    aput v1, v0, v2

    aget v1, p0, v5

    aput v1, v0, v5

    aget v1, p0, v4

    aput v1, v0, v4

    aget p0, p0, v3

    aput p0, v0, v3

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/k;->a([F)Laurelienribon/tweenengine/k;

    goto/16 :goto_0

    :pswitch_1
    new-array v0, v1, [F

    .line 4
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget v1, p0, v2

    aput v1, v0, v2

    aget v1, p0, v5

    aput v1, v0, v5

    aget v1, p0, v4

    aput v1, v0, v4

    aget p0, p0, v3

    aput p0, v0, v3

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/k;->a([F)Laurelienribon/tweenengine/k;

    goto/16 :goto_0

    :pswitch_2
    new-array v0, v1, [F

    .line 5
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget v1, p0, v2

    aput v1, v0, v2

    aget v1, p0, v5

    aput v1, v0, v5

    aget v1, p0, v4

    aput v1, v0, v4

    aget p0, p0, v3

    aput p0, v0, v3

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/k;->a([F)Laurelienribon/tweenengine/k;

    goto/16 :goto_0

    :pswitch_3
    new-array v0, v1, [F

    .line 6
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget v1, p0, v2

    aput v1, v0, v2

    aget v1, p0, v5

    aput v1, v0, v5

    aget v1, p0, v4

    aput v1, v0, v4

    aget p0, p0, v3

    aput p0, v0, v3

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/k;->a([F)Laurelienribon/tweenengine/k;

    goto/16 :goto_0

    .line 7
    :pswitch_4
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget v0, p0, v2

    aget p0, p0, v5

    invoke-virtual {p1, v0, p0}, Laurelienribon/tweenengine/k;->a(FF)Laurelienribon/tweenengine/k;

    goto :goto_0

    .line 8
    :pswitch_5
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget v0, p0, v2

    aget p0, p0, v5

    invoke-virtual {p1, v0, p0}, Laurelienribon/tweenengine/k;->a(FF)Laurelienribon/tweenengine/k;

    goto :goto_0

    .line 9
    :pswitch_6
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget p0, p0, v2

    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/k;->h(F)Laurelienribon/tweenengine/k;

    goto :goto_0

    .line 10
    :pswitch_7
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget p0, p0, v2

    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/k;->h(F)Laurelienribon/tweenengine/k;

    goto :goto_0

    .line 11
    :pswitch_8
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget p0, p0, v2

    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/k;->h(F)Laurelienribon/tweenengine/k;

    goto :goto_0

    :pswitch_9
    new-array v0, v1, [F

    .line 12
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget v1, p0, v2

    aput v1, v0, v2

    aget v1, p0, v5

    aput v1, v0, v5

    aget v1, p0, v4

    aput v1, v0, v4

    aget p0, p0, v3

    aput p0, v0, v3

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/k;->a([F)Laurelienribon/tweenengine/k;

    goto :goto_0

    .line 13
    :pswitch_a
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget p0, p0, v2

    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/k;->h(F)Laurelienribon/tweenengine/k;

    goto :goto_0

    .line 14
    :pswitch_b
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget v0, p0, v2

    aget v1, p0, v5

    aget p0, p0, v4

    invoke-virtual {p1, v0, v1, p0}, Laurelienribon/tweenengine/k;->a(FFF)Laurelienribon/tweenengine/k;

    goto :goto_0

    .line 15
    :pswitch_c
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget v0, p0, v2

    aget v1, p0, v5

    aget p0, p0, v4

    invoke-virtual {p1, v0, v1, p0}, Laurelienribon/tweenengine/k;->a(FFF)Laurelienribon/tweenengine/k;

    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aget p0, p0, v2

    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/k;->h(F)Laurelienribon/tweenengine/k;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    const-class v0, Lcom/smartisanos/smengine/na;

    invoke-static {v0}, Laurelienribon/tweenengine/k;->d(Ljava/lang/Class;)Laurelienribon/tweenengine/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    const-class v0, Lcom/smartisanos/smengine/na;

    new-instance v1, Lcom/smartisanos/smengine/ma;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/ma;-><init>(Lcom/smartisanos/smengine/la;)V

    invoke-static {v0, v1}, Laurelienribon/tweenengine/k;->a(Ljava/lang/Class;Laurelienribon/tweenengine/l;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    iget v1, p0, Lcom/smartisanos/smengine/c;->pC:I

    iget v2, p0, Lcom/smartisanos/smengine/c;->mDuration:F

    invoke-static {v0, v1, v2}, Laurelienribon/tweenengine/k;->a(Ljava/lang/Object;IF)Laurelienribon/tweenengine/k;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/oa;->d(Laurelienribon/tweenengine/k;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

    iget v1, p0, Lcom/smartisanos/smengine/c;->mC:I

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/c;->Ka(I)Laurelienribon/tweenengine/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/k;->a(Laurelienribon/tweenengine/n;)Laurelienribon/tweenengine/k;

    iget v1, p0, Lcom/smartisanos/smengine/c;->oC:F

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->f(F)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

    new-instance v1, Lcom/smartisanos/smengine/b;

    invoke-direct {v1, p0}, Lcom/smartisanos/smengine/b;-><init>(Lcom/smartisanos/smengine/c;)V

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->a(Laurelienribon/tweenengine/m;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->F(I)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->setName(Ljava/lang/String;)V

    .line 12
    iget v0, p0, Lcom/smartisanos/smengine/c;->mRepeatCount:I

    if-lez v0, :cond_1

    .line 13
    iget-object v1, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

    iget v2, p0, Lcom/smartisanos/smengine/c;->nC:F

    invoke-virtual {v1, v0, v2}, Laurelienribon/tweenengine/b;->b(IF)Ljava/lang/Object;

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/b;->a(Laurelienribon/tweenengine/a;)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

    iget-object v1, p0, Lcom/smartisanos/smengine/c;->mUserData:Ljava/lang/Byte;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

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

.method public Ij()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

    if-eqz v0, :cond_0

    const/high16 v1, 0x447a0000    # 1000.0f

    .line 2
    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->update(F)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

    :cond_0
    return-void
.end method

.method public a(IFF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/smengine/na;

    .line 2
    iput p1, p0, Lcom/smartisanos/smengine/c;->pC:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/16 v1, 0x14

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aput p3, p0, v2

    .line 4
    invoke-virtual {v0, p2, v2}, Lcom/smartisanos/smengine/na;->h(FZ)V

    goto :goto_0

    .line 5
    :cond_0
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

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aput p3, p0, v2

    .line 7
    invoke-virtual {v0, p2, v2}, Lcom/smartisanos/smengine/na;->g(FZ)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aput p3, p0, v2

    .line 9
    invoke-virtual {v0, p2, v2}, Lcom/smartisanos/smengine/na;->f(FZ)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aput p3, p0, v2

    .line 11
    invoke-virtual {v0, p2, v2}, Lcom/smartisanos/smengine/na;->c(FZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(IFFFFFF)V
    .locals 4

    .line 12
    iget-object v0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/smengine/na;

    .line 13
    iput p1, p0, Lcom/smartisanos/smengine/c;->pC:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    if-ne p1, v2, :cond_0

    .line 14
    invoke-virtual {v0, p2, p3, p4, v3}, Lcom/smartisanos/smengine/na;->a(FFFZ)V

    .line 15
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aput p5, p0, v3

    .line 16
    aput p6, p0, v2

    .line 17
    aput p7, p0, v1

    goto :goto_0

    .line 18
    :cond_0
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

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aput p5, p0, v3

    .line 20
    aput p6, p0, v2

    .line 21
    aput p7, p0, v1

    .line 22
    invoke-virtual {v0, p2, p3, p4, v3}, Lcom/smartisanos/smengine/na;->b(FFFZ)V

    :goto_0
    return-void
.end method

.method public a(IFFFFFFFF)V
    .locals 12

    move-object v0, p0

    move v1, p1

    .line 23
    iget-object v2, v0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/smartisanos/smengine/na;

    .line 24
    iput v1, v0, Lcom/smartisanos/smengine/c;->pC:I

    const/4 v2, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x3

    if-eq v1, v11, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown animation value type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v8, 0x0

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 26
    invoke-virtual/range {v3 .. v8}, Lcom/smartisanos/smengine/na;->c(FFFFZ)V

    .line 27
    iget-object v0, v0, Lcom/smartisanos/smengine/c;->lC:[F

    aput p6, v0, v10

    .line 28
    aput p7, v0, v9

    .line 29
    aput p8, v0, v2

    .line 30
    aput p9, v0, v11

    goto :goto_0

    :pswitch_1
    const/4 v8, 0x0

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 31
    invoke-virtual/range {v3 .. v8}, Lcom/smartisanos/smengine/na;->b(FFFFZ)V

    .line 32
    iget-object v0, v0, Lcom/smartisanos/smengine/c;->lC:[F

    aput p6, v0, v10

    .line 33
    aput p7, v0, v9

    .line 34
    aput p8, v0, v2

    .line 35
    aput p9, v0, v11

    goto :goto_0

    :pswitch_2
    const/4 v8, 0x0

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 36
    invoke-virtual/range {v3 .. v8}, Lcom/smartisanos/smengine/na;->e(FFFFZ)V

    .line 37
    iget-object v0, v0, Lcom/smartisanos/smengine/c;->lC:[F

    aput p6, v0, v10

    .line 38
    aput p7, v0, v9

    .line 39
    aput p8, v0, v2

    .line 40
    aput p9, v0, v11

    goto :goto_0

    :pswitch_3
    const/4 v8, 0x0

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 41
    invoke-virtual/range {v3 .. v8}, Lcom/smartisanos/smengine/na;->d(FFFFZ)V

    .line 42
    iget-object v0, v0, Lcom/smartisanos/smengine/c;->lC:[F

    aput p6, v0, v10

    .line 43
    aput p7, v0, v9

    .line 44
    aput p8, v0, v2

    .line 45
    aput p9, v0, v11

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 46
    invoke-virtual/range {v3 .. v8}, Lcom/smartisanos/smengine/na;->a(FFFFZ)V

    .line 47
    iget-object v0, v0, Lcom/smartisanos/smengine/c;->lC:[F

    aput p6, v0, v10

    .line 48
    aput p7, v0, v9

    .line 49
    aput p8, v0, v2

    .line 50
    aput p9, v0, v11

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/smartisanos/smengine/a;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 52
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    check-cast p0, Lcom/smartisanos/smengine/na;

    invoke-static {p0, p1}, Lcom/smartisanos/smengine/na;->a(Lcom/smartisanos/smengine/na;Lcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/a;

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
    iget-object v0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

    :cond_0
    return-void
.end method

.method public c(Lcom/smartisanos/smengine/a/j;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    check-cast p0, Lcom/smartisanos/smengine/na;

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/na;->j(Lcom/smartisanos/smengine/a/j;)V

    return-void
.end method

.method public g(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 2
    check-cast p0, Lcom/smartisanos/smengine/na;

    .line 3
    invoke-static {p0, p1}, Lcom/smartisanos/smengine/na;->a(Lcom/smartisanos/smengine/na;Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/SceneNode;

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 5
    invoke-static {p0}, Lcom/smartisanos/smengine/na;->c(Lcom/smartisanos/smengine/na;)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 6
    invoke-static {p0}, Lcom/smartisanos/smengine/na;->c(Lcom/smartisanos/smengine/na;)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 7
    invoke-static {p0}, Lcom/smartisanos/smengine/na;->c(Lcom/smartisanos/smengine/na;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    iput p1, p0, Lcom/smartisanos/smengine/a/j;->z:F

    :cond_0
    return-void
.end method

.method public getUserData()B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laurelienribon/tweenengine/b;->getUserData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

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
    iget-object p0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

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
    iget-object p0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

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
    iget-object v0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Laurelienribon/tweenengine/b;->kill()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

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
    check-cast v0, Lcom/smartisanos/smengine/na;

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/na;->reset()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/smartisanos/smengine/oa;->Vo:Laurelienribon/tweenengine/k;

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/oa;->Hj()Laurelienribon/tweenengine/k;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/d;->e(Laurelienribon/tweenengine/k;)V

    return-void
.end method

.method public ta(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    check-cast p0, Lcom/smartisanos/smengine/na;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/na;->Qb(Z)V

    return-void
.end method

.method public ua(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    check-cast p0, Lcom/smartisanos/smengine/na;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/na;->Rb(Z)V

    return-void
.end method

.method public va(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 2
    check-cast p0, Lcom/smartisanos/smengine/na;

    .line 3
    invoke-static {p0, p1}, Lcom/smartisanos/smengine/na;->a(Lcom/smartisanos/smengine/na;Z)Z

    :cond_0
    return-void
.end method
