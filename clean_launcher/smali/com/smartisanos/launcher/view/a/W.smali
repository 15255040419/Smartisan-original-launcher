.class Lcom/smartisanos/launcher/view/a/W;
.super Lcom/smartisanos/smengine/a;
.source "CellAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/X;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/X;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/W;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/W;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->b(FZ)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/W;->this$0:Lcom/smartisanos/launcher/view/a/X;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/a/X;->b(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/W;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setDragPoint(FF)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/W;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/W;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    .line 8
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 9
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    .line 10
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 11
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/W;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 12
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v0, v3

    .line 13
    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v2, v1

    .line 14
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/W;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setDragPoint(FF)V

    :goto_0
    return-void
.end method
