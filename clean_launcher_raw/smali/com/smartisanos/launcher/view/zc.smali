.class Lcom/smartisanos/launcher/view/zc;
.super Lcom/smartisanos/smengine/a;
.source "SettingButton.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ec;

.field final synthetic wB:Z


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ec;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/zc;->this$0:Lcom/smartisanos/launcher/view/Ec;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/zc;->wB:Z

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public Fj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/zc;->this$0:Lcom/smartisanos/launcher/view/Ec;

    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/zc;->wB:Z

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method

.method public onEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/zc;->this$0:Lcom/smartisanos/launcher/view/Ec;

    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/zc;->wB:Z

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/zc;->this$0:Lcom/smartisanos/launcher/view/Ec;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method
