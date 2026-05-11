.class Lcom/smartisanos/launcher/theme/n;
.super Lcom/smartisanos/smengine/n;
.source "ChangeThemeHandler.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/theme/o;

.field final synthetic wD:Lcom/smartisanos/smengine/F;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/o;ILcom/smartisanos/smengine/F;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/n;->this$1:Lcom/smartisanos/launcher/theme/o;

    iput-object p3, p0, Lcom/smartisanos/launcher/theme/n;->wD:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/n;->this$1:Lcom/smartisanos/launcher/theme/o;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/o;->vD:Lcom/smartisanos/smengine/Ea;

    const-string v1, "t_blur_background"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadBackgroundForNewTheme TEXTURE_ID_BLUR_BACKGROUND texture id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Da;->Rk()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "loadBackgroundForNewTheme TEXTURE_ID_BLUR_BACKGROUND texture null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/n;->wD:Lcom/smartisanos/smengine/F;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    return-void
.end method
