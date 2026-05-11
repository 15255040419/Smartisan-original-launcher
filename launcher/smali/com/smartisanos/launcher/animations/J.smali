.class Lcom/smartisanos/launcher/animations/J;
.super Lcom/smartisanos/smengine/a;
.source "DockViewAnimation.java"


# instance fields
.field final synthetic SA:Z

.field final synthetic TA:Lcom/smartisanos/smengine/SceneNode;

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/U;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/U;ZLcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/J;->this$0:Lcom/smartisanos/launcher/animations/U;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/animations/J;->SA:Z

    iput-object p3, p0, Lcom/smartisanos/launcher/animations/J;->TA:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/J;->SA:Z

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/J;->TA:Lcom/smartisanos/smengine/SceneNode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_0
    return-void
.end method
