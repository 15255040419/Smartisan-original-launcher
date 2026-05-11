.class Lcom/smartisanos/launcher/view/a/k;
.super Lcom/smartisanos/smengine/a;
.source "CellAnimation.java"


# instance fields
.field final synthetic BB:Lcom/smartisanos/smengine/SceneNode;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/X;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/k;->this$0:Lcom/smartisanos/launcher/view/a/X;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/a/k;->BB:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/k;->BB:Lcom/smartisanos/smengine/SceneNode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method
