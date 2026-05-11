.class Lcom/smartisanos/launcher/view/b/w;
.super Lcom/smartisanos/smengine/a;
.source "Page.java"


# instance fields
.field final synthetic ZB:Z

.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/M;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/M;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/w;->this$0:Lcom/smartisanos/launcher/view/b/M;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/b/w;->ZB:Z

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/w;->ZB:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/w;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/M;->i(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method

.method public onComplete()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/w;->ZB:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/w;->this$0:Lcom/smartisanos/launcher/view/b/M;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/b/M;->b(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    const-string v0, "SimpleTextureMaterial"

    .line 5
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 6
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_1

    const-string v0, "TwoTexDifferentTexColorMaterial"

    .line 7
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 8
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_1

    const-string v0, "TwoTexDifferentTexColorAlphaMaskMaterial"

    .line 9
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/w;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/M;->i(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 11
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sBGColorInLargeScreen:Lcom/smartisanos/smengine/a/k;

    if-eqz v0, :cond_2

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/w;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/M;->i(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object p0

    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sBGColorInLargeScreen:Lcom/smartisanos/smengine/a/k;

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setBlendColor(FFFF)V

    :cond_2
    return-void
.end method
