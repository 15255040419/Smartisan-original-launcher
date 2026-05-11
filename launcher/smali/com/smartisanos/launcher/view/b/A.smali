.class Lcom/smartisanos/launcher/view/b/A;
.super Lcom/smartisanos/smengine/a;
.source "Page.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/M;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/A;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/A;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/M;->j(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method
