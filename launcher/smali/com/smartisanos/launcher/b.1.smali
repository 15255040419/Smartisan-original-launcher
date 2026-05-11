.class Lcom/smartisanos/launcher/b;
.super Lcom/smartisanos/smengine/n;
.source "ActivityProxy.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/J;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/J;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/b;->this$0:Lcom/smartisanos/launcher/J;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/b;->this$0:Lcom/smartisanos/launcher/J;

    iget-boolean p0, p0, Lcom/smartisanos/launcher/J;->Zf:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    :cond_0
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p0, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->isSinglePageMode(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 5
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWITCH_TO_SINGLE:Z

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v1, v2, v0}, Lcom/smartisanos/launcher/view/b/fa;->b(Lcom/smartisanos/launcher/view/b/M;IZ)Z

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->pr()Lcom/smartisanos/launcher/animations/Qa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/Qa;->Sd()V

    .line 9
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/d;->Oj()V

    .line 10
    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWITCH_TO_SINGLE:Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->it()Lcom/smartisanos/smengine/J;

    move-result-object p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/J;->s(F)V

    .line 12
    invoke-static {v0}, Lcom/smartisanos/launcher/a/a/e;->z(Z)V

    :cond_2
    :goto_0
    return-void
.end method
