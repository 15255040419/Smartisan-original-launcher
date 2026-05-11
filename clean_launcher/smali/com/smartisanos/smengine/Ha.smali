.class public Lcom/smartisanos/smengine/Ha;
.super Ljava/lang/Object;
.source "WaveNodeTweenAnimation.java"

# interfaces
.implements Laurelienribon/tweenengine/l;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/Ia;I[F)I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p1, 0x0

    .line 2
    aput p1, p3, v0

    return p0

    .line 3
    :pswitch_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ia;->Ws()F

    move-result p1

    aput p1, p3, v0

    return p0

    .line 4
    :pswitch_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ia;->Vs()F

    move-result p1

    aput p1, p3, v0

    return p0

    .line 5
    :pswitch_3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ia;->Ys()F

    move-result p1

    aput p1, p3, v0

    return p0

    .line 6
    :pswitch_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ia;->Xs()F

    move-result p1

    aput p1, p3, v0

    return p0

    .line 7
    :pswitch_5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ia;->Us()F

    move-result p1

    aput p1, p3, v0

    return p0

    .line 8
    :pswitch_6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ia;->Ts()F

    move-result p1

    aput p1, p3, v0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
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
    check-cast p1, Lcom/smartisanos/smengine/Ia;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/smengine/Ha;->a(Lcom/smartisanos/smengine/Ia;I[F)I

    move-result p0

    return p0
.end method

.method public b(Lcom/smartisanos/smengine/Ia;I[F)V
    .locals 2

    .line 2
    invoke-static {p1}, Lcom/smartisanos/smengine/Ia;->a(Lcom/smartisanos/smengine/Ia;)Lcom/smartisanos/smengine/a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/smartisanos/smengine/Ia;->a(Lcom/smartisanos/smengine/Ia;)Lcom/smartisanos/smengine/a;

    move-result-object p0

    invoke-static {p1}, Lcom/smartisanos/smengine/Ia;->b(Lcom/smartisanos/smengine/Ia;)Lcom/smartisanos/launcher/view/Uc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/a;->f(Lcom/smartisanos/smengine/SceneNode;)V

    .line 4
    invoke-static {p1}, Lcom/smartisanos/smengine/Ia;->a(Lcom/smartisanos/smengine/Ia;)Lcom/smartisanos/smengine/a;

    move-result-object p0

    invoke-static {p1}, Lcom/smartisanos/smengine/Ia;->b(Lcom/smartisanos/smengine/Ia;)Lcom/smartisanos/launcher/view/Uc;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/smartisanos/smengine/a;->b(Lcom/smartisanos/smengine/SceneNode;I[F)V

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_6

    if-eq p2, v0, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v1, 0x4

    if-eq p2, v1, :cond_2

    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    aget p0, p3, p0

    invoke-virtual {p1, p0, v0}, Lcom/smartisanos/smengine/Ia;->l(FZ)V

    goto :goto_0

    .line 6
    :cond_2
    aget p0, p3, p0

    invoke-virtual {p1, p0, v0}, Lcom/smartisanos/smengine/Ia;->k(FZ)V

    goto :goto_0

    .line 7
    :cond_3
    aget p0, p3, p0

    invoke-virtual {p1, p0, v0}, Lcom/smartisanos/smengine/Ia;->n(FZ)V

    goto :goto_0

    .line 8
    :cond_4
    aget p0, p3, p0

    invoke-virtual {p1, p0, v0}, Lcom/smartisanos/smengine/Ia;->m(FZ)V

    goto :goto_0

    .line 9
    :cond_5
    aget p0, p3, p0

    invoke-virtual {p1, p0, v0}, Lcom/smartisanos/smengine/Ia;->j(FZ)V

    goto :goto_0

    .line 10
    :cond_6
    aget p0, p3, p0

    invoke-virtual {p1, p0, v0}, Lcom/smartisanos/smengine/Ia;->i(FZ)V

    .line 11
    :goto_0
    invoke-static {p1}, Lcom/smartisanos/smengine/Ia;->a(Lcom/smartisanos/smengine/Ia;)Lcom/smartisanos/smengine/a;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 12
    invoke-static {p1}, Lcom/smartisanos/smengine/Ia;->a(Lcom/smartisanos/smengine/Ia;)Lcom/smartisanos/smengine/a;

    move-result-object p0

    invoke-static {p1}, Lcom/smartisanos/smengine/Ia;->b(Lcom/smartisanos/smengine/Ia;)Lcom/smartisanos/launcher/view/Uc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/a;->e(Lcom/smartisanos/smengine/SceneNode;)V

    .line 13
    invoke-static {p1}, Lcom/smartisanos/smengine/Ia;->a(Lcom/smartisanos/smengine/Ia;)Lcom/smartisanos/smengine/a;

    move-result-object p0

    invoke-static {p1}, Lcom/smartisanos/smengine/Ia;->b(Lcom/smartisanos/smengine/Ia;)Lcom/smartisanos/launcher/view/Uc;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/smengine/a;->a(Lcom/smartisanos/smengine/SceneNode;I[F)V

    :cond_7
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I[F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/smengine/Ia;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/smengine/Ha;->b(Lcom/smartisanos/smengine/Ia;I[F)V

    return-void
.end method
