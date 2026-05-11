.class Lcom/smartisanos/launcher/view/ic;
.super Ljava/lang/Object;
.source "PageTitleView.java"

# interfaces
.implements Lcom/smartisanos/smengine/aa;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/tc;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/tc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ic;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/tc;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "onClick return by preview true"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ic;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/tc;->setUp()V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/bb;->Fp()V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v0

    .line 8
    iget-object v1, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    .line 9
    iget v2, p1, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    iget p1, p1, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v3, v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v4, v4

    invoke-static {v2, p1, v3, v4, v1}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    const/4 p1, 0x1

    .line 10
    iget-object v2, p0, Lcom/smartisanos/launcher/view/ic;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/launcher/view/tc;)I

    move-result v2

    if-ne p1, v2, :cond_8

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ic;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/tc;->d(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/smengine/F;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/launcher/view/tc;Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/j;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ic;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/tc;->e(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    return-void

    .line 15
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ic;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/tc;->f(Lcom/smartisanos/launcher/view/tc;)V

    goto/16 :goto_1

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ic;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/tc;->e(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/smartisanos/launcher/view/ic;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/tc;->e(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ic;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/tc;->e(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result p1

    if-nez p1, :cond_5

    .line 18
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ic;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/tc;->e(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Tn()V

    goto :goto_1

    .line 19
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/ic;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/tc;->e(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/b/fa;->w(Lcom/smartisanos/launcher/view/b/M;)Z

    goto :goto_1

    .line 20
    :cond_6
    :goto_0
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/smartisanos/launcher/view/tc;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "current page is null or empty !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 21
    :cond_7
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    return-void

    :cond_8
    const/4 p1, 0x2

    .line 22
    iget-object v2, p0, Lcom/smartisanos/launcher/view/ic;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/launcher/view/tc;)I

    move-result v2

    if-ne p1, v2, :cond_b

    .line 23
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ic;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/tc;->g(Lcom/smartisanos/launcher/view/tc;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 24
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    return-void

    .line 25
    :cond_9
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ic;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/tc;->h(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/smengine/F;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/launcher/view/tc;Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/j;

    move-result-object p1

    .line 26
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 27
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ic;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/tc;->i(Lcom/smartisanos/launcher/view/tc;)V

    .line 28
    :cond_a
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ic;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/tc;->j(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/smengine/F;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/launcher/view/tc;Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/j;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 30
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ic;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/tc;->b(Lcom/smartisanos/launcher/view/tc;)V

    .line 31
    :cond_b
    :goto_1
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    return-void
.end method
