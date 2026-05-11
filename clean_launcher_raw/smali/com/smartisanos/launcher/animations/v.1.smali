.class Lcom/smartisanos/launcher/animations/v;
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
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float/2addr v6, v5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v6, v7}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2, v7, v7, v7, v7}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 8
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    mul-float/2addr v4, v5

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float/2addr v0, v5

    invoke-virtual {v2, v4, v0, v7}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v7, v7, v7, v7}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Um()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->Na(Z)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/v;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object p0

    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_1
    return-void
.end method
