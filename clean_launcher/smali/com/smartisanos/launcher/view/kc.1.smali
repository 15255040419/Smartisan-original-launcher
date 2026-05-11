.class Lcom/smartisanos/launcher/view/kc;
.super Lcom/smartisanos/smengine/a;
.source "PageTitleView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/tc;

.field final synthetic uB:Lcom/smartisanos/smengine/a/k;

.field final synthetic vB:I


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/tc;Lcom/smartisanos/smengine/a/k;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/kc;->this$0:Lcom/smartisanos/launcher/view/tc;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/kc;->uB:Lcom/smartisanos/smengine/a/k;

    iput p3, p0, Lcom/smartisanos/launcher/view/kc;->vB:I

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/kc;->this$0:Lcom/smartisanos/launcher/view/tc;

    iget p0, p0, Lcom/smartisanos/launcher/view/kc;->vB:I

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/tc;->setMode(I)V

    return-void
.end method

.method public onStart()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/kc;->uB:Lcom/smartisanos/smengine/a/k;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/kc;->this$0:Lcom/smartisanos/launcher/view/tc;

    iget p0, v0, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v2, p0

    iget p0, v0, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v3, p0

    iget p0, v0, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v4, p0

    iget p0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int v5, p0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/launcher/view/tc;->a(IIIIZ)V

    :cond_0
    return-void
.end method
