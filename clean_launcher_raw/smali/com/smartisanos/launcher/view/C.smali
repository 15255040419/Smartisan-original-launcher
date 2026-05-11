.class Lcom/smartisanos/launcher/view/C;
.super Lcom/smartisanos/smengine/a;
.source "DockView.java"


# instance fields
.field final synthetic TA:Lcom/smartisanos/smengine/SceneNode;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/V;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/C;->this$0:Lcom/smartisanos/launcher/view/V;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/C;->TA:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/C;->TA:Lcom/smartisanos/smengine/SceneNode;

    if-eqz p0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_0
    return-void
.end method
