.class Lcom/smartisanos/launcher/animations/u;
.super Ljava/lang/Object;
.source "CellConvertAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ei:Lcom/smartisanos/launcher/view/a/g;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/u;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/u;->Ei:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/u;->Ei:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/u;->Ei:Lcom/smartisanos/launcher/view/a/g;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/u;->Ei:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/u;->Ei:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/u;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Um()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/u;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/u;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Na(Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/u;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/u;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/u;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_1
    return-void
.end method
