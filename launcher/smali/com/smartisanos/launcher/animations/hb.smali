.class Lcom/smartisanos/launcher/animations/hb;
.super Lcom/smartisanos/smengine/a;
.source "TrashAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/lb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/lb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/hb;->this$0:Lcom/smartisanos/launcher/animations/lb;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/smartisanos/launcher/view/V;->a(IZZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/hb;->this$0:Lcom/smartisanos/launcher/animations/lb;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/lb;->a(Lcom/smartisanos/launcher/animations/lb;)Lcom/smartisanos/launcher/view/Sc;

    move-result-object v1

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v3, v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/hb;->this$0:Lcom/smartisanos/launcher/animations/lb;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/lb;->a(Lcom/smartisanos/launcher/animations/lb;)Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Raa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/TrashView$STATUS;Z)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/hb;->this$0:Lcom/smartisanos/launcher/animations/lb;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/lb;->a(Lcom/smartisanos/launcher/animations/lb;)Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Qaa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/TrashView$STATUS;Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/hb;->this$0:Lcom/smartisanos/launcher/animations/lb;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/lb;->a(Lcom/smartisanos/launcher/animations/lb;)Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/hb;->this$0:Lcom/smartisanos/launcher/animations/lb;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/lb;->a(Lcom/smartisanos/launcher/animations/lb;)Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/hb;->this$0:Lcom/smartisanos/launcher/animations/lb;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/lb;->a(Lcom/smartisanos/launcher/animations/lb;)Lcom/smartisanos/launcher/view/Sc;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 8
    invoke-static {v2}, Lcom/smartisanos/launcher/animations/lb;->D(Z)Z

    return-void
.end method
