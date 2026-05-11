.class public Lcom/smartisanos/launcher/view/b/qa;
.super Ljava/lang/Object;
.source "SwitchPageNode.java"

# interfaces
.implements Lcom/smartisanos/smengine/ha;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/ra;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/b/ra;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/qa;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/smartisanos/smengine/Fa;)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/b/ra;->y()Lcom/smartisanos/launcher/va;

    move-result-object p1

    const-string v0, "#### switchPageNode onUP"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/smartisanos/launcher/ua;->n(Z)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateGeometricState()V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->fi()V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/qa;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/b/ra;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/qa;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/b/ra;->j(Lcom/smartisanos/launcher/view/b/ra;)V

    .line 8
    new-instance p1, Lcom/smartisanos/smengine/A;

    invoke-direct {p1}, Lcom/smartisanos/smengine/A;-><init>()V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/qa;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/ra;->k(Lcom/smartisanos/launcher/view/b/ra;)Lcom/smartisanos/smengine/C;

    move-result-object v0

    const-string v1, "titleViewUp"

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/smengine/C;->b(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V

    .line 10
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/view/b/ra;->y()Lcom/smartisanos/launcher/va;

    move-result-object p1

    const-string v0, "@@@@@@@@@@@@@@@@@@@@ PageTitleView UP!!!!!!!!!"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/qa;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/b/ra;->c(Lcom/smartisanos/launcher/view/b/ra;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/qa;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/ra;->c(Lcom/smartisanos/launcher/view/b/ra;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 12
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/qa;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/ra;->ls()V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/qa;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    iget-object v0, p1, Lcom/smartisanos/launcher/view/b/ra;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/b/ra;->d(Lcom/smartisanos/launcher/view/b/ra;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/b/fa;->j(Ljava/util/ArrayList;)V

    .line 14
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/qa;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/ra;->e(Lcom/smartisanos/launcher/view/b/ra;)V

    .line 15
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/b/ra;->y()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "SwitchPageNode onUp mSomethingIsFloat set false"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public d(Lcom/smartisanos/smengine/Fa;)V
    .locals 0

    return-void
.end method

.method public f(Lcom/smartisanos/smengine/Fa;)V
    .locals 0

    return-void
.end method
