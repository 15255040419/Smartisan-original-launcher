.class Lcom/smartisanos/launcher/a/l;
.super Lcom/smartisanos/smengine/n;
.source "ChangeWallpaperByFourFingerSlide.java"


# instance fields
.field final synthetic EA:Lcom/smartisanos/smengine/SceneNode;

.field final synthetic GA:Lcom/smartisanos/smengine/F;

.field final synthetic uD:Z

.field final synthetic vD:Lcom/smartisanos/smengine/Ea;

.field final synthetic wD:Lcom/smartisanos/smengine/F;

.field final synthetic xD:F


# direct methods
.method constructor <init>(ILcom/smartisanos/smengine/Ea;Lcom/smartisanos/smengine/F;Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/F;ZF)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/a/l;->vD:Lcom/smartisanos/smengine/Ea;

    iput-object p3, p0, Lcom/smartisanos/launcher/a/l;->wD:Lcom/smartisanos/smengine/F;

    iput-object p4, p0, Lcom/smartisanos/launcher/a/l;->EA:Lcom/smartisanos/smengine/SceneNode;

    iput-object p5, p0, Lcom/smartisanos/launcher/a/l;->GA:Lcom/smartisanos/smengine/F;

    iput-boolean p6, p0, Lcom/smartisanos/launcher/a/l;->uD:Z

    iput p7, p0, Lcom/smartisanos/launcher/a/l;->xD:F

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/a/l;->vD:Lcom/smartisanos/smengine/Ea;

    const-string v1, "t_blur_background_anim"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/a/n;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeWallpaper BACK_ANIM_GAUSSIAN_TEXTURE_NAME texture id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Da;->Rk()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/a/n;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v2

    const-string v3, "changeWallpaper BACK_ANIM_GAUSSIAN_TEXTURE_NAME texture null"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/a/l;->wD:Lcom/smartisanos/smengine/F;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 5
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->isTransWallpaperBlur:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/a/l;->vD:Lcom/smartisanos/smengine/Ea;

    const-string v3, "texture_back_anim"

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/a/l;->vD:Lcom/smartisanos/smengine/Ea;

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/a/l;->vD:Lcom/smartisanos/smengine/Ea;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->cb(Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/a/l;->EA:Lcom/smartisanos/smengine/SceneNode;

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/a/l;->GA:Lcom/smartisanos/smengine/F;

    iget-boolean v3, p0, Lcom/smartisanos/launcher/a/l;->uD:Z

    iget p0, p0, Lcom/smartisanos/launcher/a/l;->xD:F

    invoke-static {v0, v1, v2, v3, p0}, Lcom/smartisanos/launcher/a/n;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/F;Lcom/smartisanos/smengine/F;ZF)V

    return-void
.end method
