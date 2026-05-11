.class Lcom/smartisanos/launcher/a/k;
.super Lcom/smartisanos/smengine/n;
.source "ChangeWallpaperByFourFingerSlide.java"


# instance fields
.field final synthetic tD:Landroid/graphics/Bitmap;

.field final synthetic uD:Z


# direct methods
.method constructor <init>(ILandroid/graphics/Bitmap;Z)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/a/k;->tD:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/smartisanos/launcher/a/k;->uD:Z

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sGaussianResSuffix:Ljava/lang/String;

    const-string v1, "_light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/smartisanos/launcher/a/k;->tD:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v2}, Lcom/smartisanos/launcher/e/s;->l(Landroid/graphics/Bitmap;)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x0

    if-eq v2, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    .line 4
    :goto_1
    invoke-static {v0}, Lcom/smartisanos/launcher/a/n;->e(Z)Z

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/a/k;->tD:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/smartisanos/launcher/a/n;->b(Landroid/graphics/Bitmap;)V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/a/n;->access$200()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/launcher/view/b/ka;

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/a/n;->access$200()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/ka;

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 9
    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/b/ka;->rb(Z)V

    .line 10
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/V;->rb(Z)V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/V;->kb(Z)V

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Fh()Lcom/smartisanos/launcher/view/hc;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/hc;->rb(Z)V

    .line 14
    :cond_3
    new-instance v0, Lcom/smartisanos/launcher/a/j;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/a/j;-><init>(Lcom/smartisanos/launcher/a/k;I)V

    const/4 p0, 0x0

    .line 15
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method
