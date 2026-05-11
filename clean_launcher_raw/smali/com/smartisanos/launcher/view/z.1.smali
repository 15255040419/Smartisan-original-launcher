.class Lcom/smartisanos/launcher/view/z;
.super Lcom/smartisanos/smengine/a;
.source "DockView.java"


# instance fields
.field final synthetic iB:Lcom/smartisanos/smengine/F;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/V;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/F;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/z;->this$0:Lcom/smartisanos/launcher/view/V;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/z;->iB:Lcom/smartisanos/smengine/F;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/z;->iB:Lcom/smartisanos/smengine/F;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method
