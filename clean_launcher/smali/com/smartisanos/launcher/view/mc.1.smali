.class Lcom/smartisanos/launcher/view/mc;
.super Lcom/smartisanos/smengine/a;
.source "PageTitleView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/tc;

.field final synthetic uB:Lcom/smartisanos/smengine/a/k;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/tc;Lcom/smartisanos/smengine/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/mc;->this$0:Lcom/smartisanos/launcher/view/tc;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/mc;->uB:Lcom/smartisanos/smengine/a/k;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/mc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/launcher/view/tc;Z)Z

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/mc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/tc;->e(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->wn()Lcom/smartisanos/smengine/a/k;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/mc;->this$0:Lcom/smartisanos/launcher/view/tc;

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v3, v3

    iget v4, v0, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v4, v4

    iget v5, v0, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v5, v5

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int v6, v0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/smartisanos/launcher/view/tc;->a(IIIIZ)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/mc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/tc;->c(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/mc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public onStart()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/mc;->uB:Lcom/smartisanos/smengine/a/k;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/mc;->this$0:Lcom/smartisanos/launcher/view/tc;

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v2, v2

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v3, v3

    iget v4, v0, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v4, v4

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int v5, v0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/launcher/view/tc;->a(IIIIZ)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/mc;->this$0:Lcom/smartisanos/launcher/view/tc;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/launcher/view/tc;Z)Z

    :cond_0
    return-void
.end method
