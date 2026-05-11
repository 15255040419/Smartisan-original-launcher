.class Lcom/smartisanos/launcher/animations/M;
.super Lcom/smartisanos/smengine/a;
.source "DockViewAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/U;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/U;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/M;->this$0:Lcom/smartisanos/launcher/animations/U;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/M;->this$0:Lcom/smartisanos/launcher/animations/U;

    invoke-static {p1}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/U;)Lcom/smartisanos/launcher/view/V;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->ip()V

    .line 2
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/M;->this$0:Lcom/smartisanos/launcher/animations/U;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/U;)Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->fp()V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/animations/U;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "DOCK_FALL onComplete begin"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/M;->this$0:Lcom/smartisanos/launcher/animations/U;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/U;)Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/M;->this$0:Lcom/smartisanos/launcher/animations/U;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/U;)Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/Sc;->n(IZ)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/M;->this$0:Lcom/smartisanos/launcher/animations/U;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/U;)Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method
