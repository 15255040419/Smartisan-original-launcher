.class Lcom/smartisanos/launcher/view/Kc;
.super Lcom/smartisanos/smengine/a;
.source "StatusBar.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Lc;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Lc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Kc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Kc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Lc;->e(Lcom/smartisanos/launcher/view/Lc;)Lcom/smartisanos/launcher/view/Mc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Kc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Lc;->e(Lcom/smartisanos/launcher/view/Lc;)Lcom/smartisanos/launcher/view/Mc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Mc;->clear(Z)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Kc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/Lc;->b(Lcom/smartisanos/launcher/view/Lc;Lcom/smartisanos/launcher/view/Mc;)Lcom/smartisanos/launcher/view/Mc;

    return-void
.end method
