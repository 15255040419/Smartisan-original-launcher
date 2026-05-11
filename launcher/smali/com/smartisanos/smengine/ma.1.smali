.class final Lcom/smartisanos/smengine/ma;
.super Ljava/lang/Object;
.source "SceneNodeTweenAnimation.java"

# interfaces
.implements Laurelienribon/tweenengine/l;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/la;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/smengine/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/na;I[F)I
    .locals 4

    const/16 p0, 0x14

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, p0, :cond_0

    const/4 p0, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    packed-switch p2, :pswitch_data_0

    return v1

    .line 2
    :pswitch_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/na;->ss()Lcom/smartisanos/smengine/a/k;

    move-result-object p1

    .line 3
    iget p2, p1, Lcom/smartisanos/smengine/a/k;->x:F

    aput p2, p3, v1

    .line 4
    iget p2, p1, Lcom/smartisanos/smengine/a/k;->y:F

    aput p2, p3, v0

    .line 5
    iget p2, p1, Lcom/smartisanos/smengine/a/k;->z:F

    aput p2, p3, v3

    .line 6
    iget p1, p1, Lcom/smartisanos/smengine/a/k;->w:F

    aput p1, p3, v2

    return p0

    .line 7
    :pswitch_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/na;->rs()Lcom/smartisanos/smengine/a/k;

    move-result-object p1

    .line 8
    iget p2, p1, Lcom/smartisanos/smengine/a/k;->x:F

    aput p2, p3, v1

    .line 9
    iget p2, p1, Lcom/smartisanos/smengine/a/k;->y:F

    aput p2, p3, v0

    .line 10
    iget p2, p1, Lcom/smartisanos/smengine/a/k;->z:F

    aput p2, p3, v3

    .line 11
    iget p1, p1, Lcom/smartisanos/smengine/a/k;->w:F

    aput p1, p3, v2

    return p0

    .line 12
    :pswitch_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/na;->us()Lcom/smartisanos/smengine/a/k;

    move-result-object p1

    .line 13
    iget p2, p1, Lcom/smartisanos/smengine/a/k;->x:F

    aput p2, p3, v1

    .line 14
    iget p2, p1, Lcom/smartisanos/smengine/a/k;->y:F

    aput p2, p3, v0

    .line 15
    iget p2, p1, Lcom/smartisanos/smengine/a/k;->z:F

    aput p2, p3, v3

    .line 16
    iget p1, p1, Lcom/smartisanos/smengine/a/k;->w:F

    aput p1, p3, v2

    return p0

    .line 17
    :pswitch_3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/na;->ts()Lcom/smartisanos/smengine/a/k;

    move-result-object p1

    .line 18
    iget p2, p1, Lcom/smartisanos/smengine/a/k;->x:F

    aput p2, p3, v1

    .line 19
    iget p2, p1, Lcom/smartisanos/smengine/a/k;->y:F

    aput p2, p3, v0

    .line 20
    iget p2, p1, Lcom/smartisanos/smengine/a/k;->z:F

    aput p2, p3, v3

    .line 21
    iget p1, p1, Lcom/smartisanos/smengine/a/k;->w:F

    aput p1, p3, v2

    return p0

    .line 22
    :pswitch_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/na;->vs()F

    move-result p0

    .line 23
    invoke-virtual {p1}, Lcom/smartisanos/smengine/na;->ws()F

    move-result p1

    .line 24
    aput p0, p3, v1

    .line 25
    aput p1, p3, v0

    return v0

    .line 26
    :pswitch_5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/na;->xs()Lcom/smartisanos/smengine/a/i;

    move-result-object p0

    .line 27
    iget p1, p0, Lcom/smartisanos/smengine/a/i;->x:F

    aput p1, p3, v1

    .line 28
    iget p0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    aput p0, p3, v0

    return v3

    .line 29
    :pswitch_6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/na;->zs()F

    move-result p0

    .line 30
    aput p0, p3, v1

    return v0

    .line 31
    :pswitch_7
    invoke-virtual {p1}, Lcom/smartisanos/smengine/na;->getTranslateY()F

    move-result p0

    .line 32
    aput p0, p3, v1

    return v0

    .line 33
    :pswitch_8
    invoke-virtual {p1}, Lcom/smartisanos/smengine/na;->getTranslateX()F

    move-result p0

    .line 34
    aput p0, p3, v1

    return v0

    .line 35
    :pswitch_9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/na;->qs()Lcom/smartisanos/smengine/a/k;

    move-result-object p1

    .line 36
    iget p2, p1, Lcom/smartisanos/smengine/a/k;->x:F

    aput p2, p3, v1

    .line 37
    iget p2, p1, Lcom/smartisanos/smengine/a/k;->y:F

    aput p2, p3, v0

    .line 38
    iget p2, p1, Lcom/smartisanos/smengine/a/k;->z:F

    aput p2, p3, v3

    .line 39
    iget p1, p1, Lcom/smartisanos/smengine/a/k;->w:F

    aput p1, p3, v2

    return p0

    .line 40
    :pswitch_a
    invoke-virtual {p1}, Lcom/smartisanos/smengine/na;->ps()F

    move-result p0

    .line 41
    aput p0, p3, v1

    return v0

    .line 42
    :pswitch_b
    invoke-virtual {p1}, Lcom/smartisanos/smengine/na;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    .line 43
    iget p1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    aput p1, p3, v1

    .line 44
    iget p1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    aput p1, p3, v0

    .line 45
    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    aput p0, p3, v3

    return v2

    .line 46
    :pswitch_c
    invoke-virtual {p1}, Lcom/smartisanos/smengine/na;->ys()Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    .line 47
    iget p1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    aput p1, p3, v1

    .line 48
    iget p1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    aput p1, p3, v0

    .line 49
    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    aput p0, p3, v3

    return v2

    :cond_0
    const/4 p0, 0x0

    .line 50
    aput p0, p3, v1

    return v0

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

.method public bridge synthetic a(Ljava/lang/Object;I[F)I
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/smengine/na;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/smengine/ma;->a(Lcom/smartisanos/smengine/na;I[F)I

    move-result p0

    return p0
.end method

.method public b(Lcom/smartisanos/smengine/na;I[F)V
    .locals 7

    .line 2
    invoke-static {p1}, Lcom/smartisanos/smengine/na;->a(Lcom/smartisanos/smengine/na;)Lcom/smartisanos/smengine/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/smartisanos/smengine/na;->a(Lcom/smartisanos/smengine/na;)Lcom/smartisanos/smengine/a;

    move-result-object v0

    invoke-static {p1}, Lcom/smartisanos/smengine/na;->b(Lcom/smartisanos/smengine/na;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/a;->f(Lcom/smartisanos/smengine/SceneNode;)V

    .line 4
    invoke-static {p1}, Lcom/smartisanos/smengine/na;->a(Lcom/smartisanos/smengine/na;)Lcom/smartisanos/smengine/a;

    move-result-object v0

    invoke-static {p1}, Lcom/smartisanos/smengine/na;->b(Lcom/smartisanos/smengine/na;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/smartisanos/smengine/a;->b(Lcom/smartisanos/smengine/SceneNode;I[F)V

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 5
    :pswitch_0
    aget v2, p3, v2

    aget v3, p3, v3

    aget v4, p3, v1

    aget v5, p3, v0

    const/4 v6, 0x1

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/na;->c(FFFFZ)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    aget v2, p3, v2

    aget v3, p3, v3

    aget v4, p3, v1

    aget v5, p3, v0

    const/4 v6, 0x1

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/na;->b(FFFFZ)V

    goto/16 :goto_0

    .line 7
    :pswitch_2
    aget v2, p3, v2

    aget v3, p3, v3

    aget v4, p3, v1

    aget v5, p3, v0

    const/4 v6, 0x1

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/na;->e(FFFFZ)V

    goto/16 :goto_0

    .line 8
    :pswitch_3
    aget v2, p3, v2

    aget v3, p3, v3

    aget v4, p3, v1

    aget v5, p3, v0

    const/4 v6, 0x1

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/na;->d(FFFFZ)V

    goto :goto_0

    .line 9
    :pswitch_4
    aget v0, p3, v2

    invoke-virtual {p1, v0, v3}, Lcom/smartisanos/smengine/na;->d(FZ)V

    .line 10
    aget v0, p3, v3

    invoke-virtual {p1, v0, v3}, Lcom/smartisanos/smengine/na;->e(FZ)V

    goto :goto_0

    .line 11
    :pswitch_5
    aget v0, p3, v2

    aget v1, p3, v3

    invoke-virtual {p1, v0, v1, v3}, Lcom/smartisanos/smengine/na;->b(FFZ)V

    goto :goto_0

    .line 12
    :pswitch_6
    aget v0, p3, v2

    invoke-virtual {p1, v0, v3}, Lcom/smartisanos/smengine/na;->h(FZ)V

    goto :goto_0

    .line 13
    :pswitch_7
    aget v0, p3, v2

    invoke-virtual {p1, v0, v3}, Lcom/smartisanos/smengine/na;->g(FZ)V

    goto :goto_0

    .line 14
    :pswitch_8
    aget v0, p3, v2

    invoke-virtual {p1, v0, v3}, Lcom/smartisanos/smengine/na;->f(FZ)V

    goto :goto_0

    .line 15
    :pswitch_9
    aget v2, p3, v2

    aget v3, p3, v3

    aget v4, p3, v1

    aget v5, p3, v0

    const/4 v6, 0x1

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/na;->a(FFFFZ)V

    goto :goto_0

    .line 16
    :pswitch_a
    aget v0, p3, v2

    invoke-virtual {p1, v0, v3}, Lcom/smartisanos/smengine/na;->c(FZ)V

    goto :goto_0

    .line 17
    :pswitch_b
    aget v0, p3, v2

    aget v2, p3, v3

    aget v1, p3, v1

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/smartisanos/smengine/na;->a(FFFZ)V

    goto :goto_0

    .line 18
    :pswitch_c
    aget v0, p3, v2

    aget v2, p3, v3

    aget v1, p3, v1

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/smartisanos/smengine/na;->b(FFFZ)V

    .line 19
    :goto_0
    invoke-static {p1}, Lcom/smartisanos/smengine/na;->a(Lcom/smartisanos/smengine/na;)Lcom/smartisanos/smengine/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    invoke-static {p1}, Lcom/smartisanos/smengine/na;->a(Lcom/smartisanos/smengine/na;)Lcom/smartisanos/smengine/a;

    move-result-object v0

    invoke-static {p1}, Lcom/smartisanos/smengine/na;->b(Lcom/smartisanos/smengine/na;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/a;->e(Lcom/smartisanos/smengine/SceneNode;)V

    .line 21
    invoke-static {p1}, Lcom/smartisanos/smengine/na;->a(Lcom/smartisanos/smengine/na;)Lcom/smartisanos/smengine/a;

    move-result-object v0

    invoke-static {p1}, Lcom/smartisanos/smengine/na;->b(Lcom/smartisanos/smengine/na;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/smartisanos/smengine/a;->a(Lcom/smartisanos/smengine/SceneNode;I[F)V

    :cond_1
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

.method public bridge synthetic b(Ljava/lang/Object;I[F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/smengine/na;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/smengine/ma;->b(Lcom/smartisanos/smengine/na;I[F)V

    return-void
.end method
