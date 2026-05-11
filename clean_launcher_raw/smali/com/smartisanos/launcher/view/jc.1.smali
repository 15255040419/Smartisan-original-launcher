.class Lcom/smartisanos/launcher/view/jc;
.super Lcom/smartisanos/smengine/ba;
.source "PageTitleView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/tc;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/tc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/jc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/ba;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method


# virtual methods
.method public j(Lcom/smartisanos/smengine/SceneNode;)Z
    .locals 8

    .line 1
    sget p1, Lcom/smartisanos/launcher/ob;->launcher_not_available_for_change_settings:I

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/Qa;->c(ZI)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/view/Ha;->Mb(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/tc;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "DragLayer is Dragging page"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return v0

    .line 5
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/high16 v1, 0x80000

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/tc;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "onClick return by preview true"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return v1

    .line 7
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/jc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/tc;->e(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result p1

    const/4 v2, 0x2

    if-nez p1, :cond_7

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object p1

    .line 11
    iget-object v3, p1, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    .line 12
    iget-object v4, p0, Lcom/smartisanos/launcher/view/jc;->this$0:Lcom/smartisanos/launcher/view/tc;

    iget v5, v4, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    iget v4, v4, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v6, v6

    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v7, v7

    invoke-static {v5, v4, v6, v7, v3}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 13
    iget-object v4, p0, Lcom/smartisanos/launcher/view/jc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/launcher/view/tc;)I

    move-result v4

    if-ne v0, v4, :cond_4

    .line 14
    iget-object v4, p0, Lcom/smartisanos/launcher/view/jc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/tc;->d(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/smengine/F;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/launcher/view/tc;Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/j;

    move-result-object v4

    .line 15
    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 16
    invoke-virtual {p1}, Lcom/smartisanos/smengine/d/f;->release()V

    return v1

    .line 17
    :cond_4
    iget-object v4, p0, Lcom/smartisanos/launcher/view/jc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/launcher/view/tc;)I

    move-result v4

    if-ne v2, v4, :cond_6

    .line 18
    iget-object v4, p0, Lcom/smartisanos/launcher/view/jc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/tc;->h(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/smengine/F;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/launcher/view/tc;Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/j;

    move-result-object v4

    .line 19
    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/smartisanos/smengine/d/f;->release()V

    return v1

    .line 21
    :cond_5
    iget-object v4, p0, Lcom/smartisanos/launcher/view/jc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/tc;->j(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/smengine/F;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/launcher/view/tc;Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/j;

    move-result-object v4

    .line 22
    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 23
    invoke-virtual {p1}, Lcom/smartisanos/smengine/d/f;->release()V

    return v1

    .line 24
    :cond_6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/d/f;->release()V

    .line 25
    :cond_7
    iget-object p1, p0, Lcom/smartisanos/launcher/view/jc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/tc;->setUp()V

    .line 26
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object p1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/jc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/tc;->e(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/jc;->this$0:Lcom/smartisanos/launcher/view/tc;

    iget v2, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    iget p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    invoke-virtual {p1, v1, v2, p0}, Lcom/smartisanos/launcher/view/Ha;->a(Lcom/smartisanos/launcher/view/b/M;FF)Z

    return v0

    :cond_8
    :goto_0
    return v1
.end method
