.class Lcom/smartisanos/launcher/view/b/i;
.super Lcom/smartisanos/smengine/a;
.source "FolderPageView.java"


# instance fields
.field final synthetic XB:Lcom/smartisanos/smengine/F;

.field final synthetic YB:Lcom/smartisanos/smengine/a/j;

.field final synthetic tB:I

.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/t;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/smengine/F;Lcom/smartisanos/smengine/a/j;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/i;->this$0:Lcom/smartisanos/launcher/view/b/t;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/b/i;->XB:Lcom/smartisanos/smengine/F;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/b/i;->YB:Lcom/smartisanos/smengine/a/j;

    iput p4, p0, Lcom/smartisanos/launcher/view/b/i;->tB:I

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/i;->XB:Lcom/smartisanos/smengine/F;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/i;->YB:Lcom/smartisanos/smengine/a/j;

    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/i;->XB:Lcom/smartisanos/smengine/F;

    iget v1, p0, Lcom/smartisanos/launcher/view/b/i;->tB:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/i;->XB:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/i;->XB:Lcom/smartisanos/smengine/F;

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method
