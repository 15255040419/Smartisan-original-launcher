.class Lcom/smartisanos/launcher/view/a/b;
.super Lcom/smartisanos/smengine/ba;
.source "Cell.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/g;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/b;->this$0:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/ba;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method


# virtual methods
.method public j(Lcom/smartisanos/smengine/SceneNode;)Z
    .locals 5

    # A Cell long-click is the original drag/edit entry.  It cannot become a
    # system-panel pull-down after the user starts moving the icon.
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/smartisanos/launcher/gesture/SystemPanelCompat;->setInteractionBlocked(Z)V

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/smartisanos/launcher/Qa;->r(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/b;->this$0:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Hd()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 5
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v3, 0x200

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v3, 0x10000

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    iget-object p1, p1, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/ec;->Np()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/b;->this$0:Lcom/smartisanos/launcher/view/a/g;

    sget v0, Lcom/smartisanos/launcher/view/a/g;->qI:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/g;->eb(I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/b;->this$0:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 9
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/b;->this$0:Lcom/smartisanos/launcher/view/a/g;

    iget v1, p0, Lcom/smartisanos/smengine/ba;->MG:F

    iget p0, p0, Lcom/smartisanos/smengine/ba;->NG:F

    invoke-virtual {p1, v0, v1, p0}, Lcom/smartisanos/launcher/view/Ha;->d(Lcom/smartisanos/launcher/view/a/g;FF)Z

    move-result p0

    return p0

    :cond_5
    return v2

    .line 10
    :cond_6
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_7

    .line 11
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getTMotionEvent()Lcom/smartisanos/smengine/va;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 12
    invoke-virtual {v0}, Lcom/smartisanos/smengine/va;->Ds()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 13
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/b;->this$0:Lcom/smartisanos/launcher/view/a/g;

    iget v3, p0, Lcom/smartisanos/smengine/ba;->MG:F

    iget v4, p0, Lcom/smartisanos/smengine/ba;->NG:F

    invoke-virtual {v0, v1, v3, v4}, Lcom/smartisanos/launcher/view/Ha;->c(Lcom/smartisanos/launcher/view/a/g;FF)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 14
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/b;->this$0:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x2000

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 15
    :cond_8
    iget p0, p1, Lcom/smartisanos/smengine/SceneNode;->mPressure:F

    return v0

    .line 16
    :cond_9
    :goto_0
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/b;->this$0:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/g;->t(Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "########## longclickcancel,because ON_ALL_CELL_RESET_BACKGROUND_ANIMATION"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_a
    :goto_1
    return v1
.end method
