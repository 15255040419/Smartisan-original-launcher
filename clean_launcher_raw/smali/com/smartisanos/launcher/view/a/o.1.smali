.class Lcom/smartisanos/launcher/view/a/o;
.super Lcom/smartisanos/smengine/n;
.source "CellAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/X;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/X;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/o;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/o;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x3f65e5e6

    .line 2
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/o;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    instance-of v1, v1, Lcom/smartisanos/launcher/view/b/a;

    if-eqz v1, :cond_2

    :cond_1
    const v0, 0x3f333333    # 0.7f

    .line 3
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/o;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {v1, v0, v0, v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 5
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/o;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v3, :cond_4

    .line 7
    invoke-virtual {v1, v0, v0, v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 8
    :cond_4
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/o;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/launcher/view/b/a;

    if-eqz v0, :cond_6

    .line 9
    :cond_5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/o;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    :cond_6
    return-void
.end method
