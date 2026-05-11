.class Lcom/smartisanos/launcher/view/b/d;
.super Lcom/smartisanos/smengine/a;
.source "FolderPageView.java"


# instance fields
.field final synthetic SB:Lcom/smartisanos/smengine/F;

.field final synthetic TB:Lcom/smartisanos/smengine/a/j;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/t;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/smengine/F;Lcom/smartisanos/smengine/a/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/d;->this$0:Lcom/smartisanos/launcher/view/b/t;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/b/d;->SB:Lcom/smartisanos/smengine/F;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/b/d;->TB:Lcom/smartisanos/smengine/a/j;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/d;->SB:Lcom/smartisanos/smengine/F;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/d;->TB:Lcom/smartisanos/smengine/a/j;

    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v2, v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/d;->SB:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method
