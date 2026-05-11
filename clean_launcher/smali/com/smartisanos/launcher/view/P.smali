.class Lcom/smartisanos/launcher/view/P;
.super Lcom/smartisanos/smengine/a;
.source "DockView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/V;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/V;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/P;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/P;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->k(Lcom/smartisanos/launcher/view/V;)[Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/P;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/V;->k(Lcom/smartisanos/launcher/view/V;)[Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/P;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->i(Lcom/smartisanos/launcher/view/V;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/P;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/V;->i(Lcom/smartisanos/launcher/view/V;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/P;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/V;->i(Lcom/smartisanos/launcher/view/V;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/P;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->j(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/P;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->j(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 6
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/P;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->e(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/Z;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/P;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->e(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/Z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/P;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->k(Lcom/smartisanos/launcher/view/V;)[Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/P;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/V;->k(Lcom/smartisanos/launcher/view/V;)[Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method
