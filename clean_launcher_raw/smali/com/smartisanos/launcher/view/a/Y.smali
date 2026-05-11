.class Lcom/smartisanos/launcher/view/a/Y;
.super Lcom/smartisanos/smengine/n;
.source "CellGaussianPart.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/Z;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/Z;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/Y;->this$0:Lcom/smartisanos/launcher/view/a/Z;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/Y;->this$0:Lcom/smartisanos/launcher/view/a/Z;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/Z;->a(Lcom/smartisanos/launcher/view/a/Z;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v0, 0x18

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/L;->Da(I)V

    return-void
.end method
