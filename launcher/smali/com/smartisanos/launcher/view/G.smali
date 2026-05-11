.class Lcom/smartisanos/launcher/view/G;
.super Lcom/smartisanos/smengine/n;
.source "DockView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/V;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/V;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/G;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/G;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/V;->e(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/Z;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method
