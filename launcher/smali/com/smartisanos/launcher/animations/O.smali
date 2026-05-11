.class Lcom/smartisanos/launcher/animations/O;
.super Lcom/smartisanos/smengine/a;
.source "DockViewAnimation.java"


# instance fields
.field final synthetic Ei:Lcom/smartisanos/launcher/view/a/g;

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/U;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/U;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/O;->this$0:Lcom/smartisanos/launcher/animations/U;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/O;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/O;->Ei:Lcom/smartisanos/launcher/view/a/g;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method
