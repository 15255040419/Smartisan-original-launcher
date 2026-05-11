.class Lcom/smartisanos/launcher/view/a/a;
.super Ljava/lang/Object;
.source "Cell.java"

# interfaces
.implements Lcom/smartisanos/smengine/aa;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/g;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/a;->this$0:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/a;->this$0:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/g;->t(Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "onClick return by preview true"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/a;->this$0:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v1

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getTMotionEvent()Lcom/smartisanos/smengine/va;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->Ds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v0

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result v1

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/a;->this$0:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->Es()Z

    move-result p1

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-static {p0, p1, v0, v1}, Lcom/smartisanos/launcher/eb;->b(Lcom/smartisanos/launcher/view/a/g;ZII)V

    return-void

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/a;->this$0:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/aa;->s(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/d;->Qg()Lcom/smartisanos/smengine/fa;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/fa;->g(Lcom/smartisanos/smengine/Fa;)V

    return-void
.end method
