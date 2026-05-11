.class Lcom/smartisanos/launcher/view/b/oa;
.super Lcom/smartisanos/smengine/a;
.source "SwitchPageNode.java"


# instance fields
.field final synthetic iC:F

.field final synthetic jC:F

.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/ra;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/ra;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/oa;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    iput p2, p0, Lcom/smartisanos/launcher/view/b/oa;->iC:F

    iput p3, p0, Lcom/smartisanos/launcher/view/b/oa;->jC:F

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/oa;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/b/ra;->b(Lcom/smartisanos/launcher/view/b/ra;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 3
    iget v0, p0, Lcom/smartisanos/launcher/view/b/oa;->iC:F

    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 4
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/smartisanos/launcher/view/b/oa;->jC:F

    sub-float/2addr v1, v2

    .line 5
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 6
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/oa;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 7
    iget v3, v2, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v0, v3

    .line 8
    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v1, v2

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/oa;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setDragPoint(FF)V

    return-void
.end method
