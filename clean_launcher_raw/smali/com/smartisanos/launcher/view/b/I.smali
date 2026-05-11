.class Lcom/smartisanos/launcher/view/b/I;
.super Lcom/smartisanos/smengine/a;
.source "Page.java"


# instance fields
.field final synthetic Ei:Lcom/smartisanos/launcher/view/a/g;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/M;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/I;->this$0:Lcom/smartisanos/launcher/view/b/M;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/b/I;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/I;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/I;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method
