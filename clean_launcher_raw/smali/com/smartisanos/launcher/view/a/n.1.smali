.class Lcom/smartisanos/launcher/view/a/n;
.super Lcom/smartisanos/smengine/n;
.source "CellAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/X;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/X;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/n;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/n;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x3dcccccd    # 0.1f

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_0
    return-void
.end method
