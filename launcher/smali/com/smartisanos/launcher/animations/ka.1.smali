.class Lcom/smartisanos/launcher/animations/ka;
.super Lcom/smartisanos/smengine/a;
.source "IconSortAnimation.java"


# instance fields
.field final synthetic Qf:Z

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/ma;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/ma;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/ka;->this$0:Lcom/smartisanos/launcher/animations/ma;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/animations/ka;->Qf:Z

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/ka;->Qf:Z

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Lc;->rb(Z)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/V;->rb(Z)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/V;->kb(Z)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Fh()Lcom/smartisanos/launcher/view/hc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/hc;->rb(Z)V

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/ka;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/ma;->j(Lcom/smartisanos/launcher/animations/ma;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 8
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/ka;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/ma;->j(Lcom/smartisanos/launcher/animations/ma;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/ka;

    .line 9
    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/b/ka;->rb(Z)V

    .line 10
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 11
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/tc;->Tp()Lcom/smartisanos/smengine/F;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 12
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/smartisanos/launcher/view/tc;->zb(Z)V

    .line 13
    :cond_1
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v4, :cond_2

    .line 14
    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
