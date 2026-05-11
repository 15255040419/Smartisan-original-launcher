.class Lcom/smartisanos/launcher/view/b/b;
.super Lcom/smartisanos/smengine/a;
.source "FolderPageView.java"


# instance fields
.field final synthetic RB:Lcom/smartisanos/launcher/view/Z;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/t;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/launcher/view/Z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/b;->this$0:Lcom/smartisanos/launcher/view/b/t;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/b/b;->RB:Lcom/smartisanos/launcher/view/Z;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/b;->RB:Lcom/smartisanos/launcher/view/Z;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/b/t;->x()Lcom/smartisanos/smengine/F;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    return-void
.end method
