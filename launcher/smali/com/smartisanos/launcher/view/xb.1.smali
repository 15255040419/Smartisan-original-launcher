.class Lcom/smartisanos/launcher/view/xb;
.super Lcom/smartisanos/smengine/n;
.source "MainView.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/view/zb;

.field final synthetic vD:Lcom/smartisanos/smengine/Ea;

.field final synthetic wD:Lcom/smartisanos/smengine/F;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/zb;ILcom/smartisanos/smengine/Ea;Lcom/smartisanos/smengine/F;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/xb;->this$1:Lcom/smartisanos/launcher/view/zb;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/xb;->vD:Lcom/smartisanos/smengine/Ea;

    iput-object p4, p0, Lcom/smartisanos/launcher/view/xb;->wD:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/xb;->vD:Lcom/smartisanos/smengine/Ea;

    const-string v1, "t_blur_background"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeWallpaper TEXTURE_ID_BLUR_BACKGROUND texture id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Da;->Rk()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v1

    const-string v2, "changeWallpaper TEXTURE_ID_BLUR_BACKGROUND texture null"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/xb;->wD:Lcom/smartisanos/smengine/F;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 5
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->isTransWallpaperBlur:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/xb;->vD:Lcom/smartisanos/smengine/Ea;

    const-string v2, "background.png"

    invoke-static {v2}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/xb;->vD:Lcom/smartisanos/smengine/Ea;

    invoke-static {v2}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    :cond_1
    return-void
.end method
