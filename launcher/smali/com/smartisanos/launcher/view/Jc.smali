.class Lcom/smartisanos/launcher/view/Jc;
.super Lcom/smartisanos/smengine/a;
.source "StatusBar.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Lc;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Lc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Jc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Jc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Lc;->d(Lcom/smartisanos/launcher/view/Lc;)[Lcom/smartisanos/launcher/view/Lc;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v2, v0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Jc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/Lc;->d(Lcom/smartisanos/launcher/view/Lc;)[Lcom/smartisanos/launcher/view/Lc;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_1

    if-eq v1, v2, :cond_0

    .line 4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Jc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/Lc;->d(Lcom/smartisanos/launcher/view/Lc;)[Lcom/smartisanos/launcher/view/Lc;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Jc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/Lc;->d(Lcom/smartisanos/launcher/view/Lc;)[Lcom/smartisanos/launcher/view/Lc;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Jc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Lc;->c(Lcom/smartisanos/launcher/view/Lc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Jc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Lc;->c(Lcom/smartisanos/launcher/view/Lc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Jc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Lc;->Li()V

    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Jc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Lc;->c(Lcom/smartisanos/launcher/view/Lc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Jc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Lc;->c(Lcom/smartisanos/launcher/view/Lc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Jc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Lc;->d(Lcom/smartisanos/launcher/view/Lc;)[Lcom/smartisanos/launcher/view/Lc;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Jc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Lc;->d(Lcom/smartisanos/launcher/view/Lc;)[Lcom/smartisanos/launcher/view/Lc;

    move-result-object p0

    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method
