.class Lcom/smartisanos/launcher/view/zb;
.super Lcom/smartisanos/smengine/n;
.source "MainView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Eb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Eb;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/launcher/view/Eb;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 3
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v1, :cond_normal_theme_wallpaper_uri

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sWallpaperUri:Ljava/lang/String;

    goto :goto_theme_wallpaper_uri

    :cond_normal_theme_wallpaper_uri
    const/4 v1, 0x0

    :goto_theme_wallpaper_uri

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->n(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sGaussianResSuffix:Ljava/lang/String;

    const-string v3, "_light"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->l(Landroid/graphics/Bitmap;)Z

    move-result v5

    .line 6
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v6, :cond_2

    .line 7
    iget-object v6, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/Eb;->d(Lcom/smartisanos/launcher/view/Eb;)Lcom/smartisanos/smengine/F;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 8
    iget-object v6, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/Eb;->d(Lcom/smartisanos/launcher/view/Eb;)Lcom/smartisanos/smengine/F;

    move-result-object v6

    sget-object v7, Lcom/smartisanos/launcher/data/Constants;->sBGColorInLargeScreen:Lcom/smartisanos/smengine/a/k;

    iget v8, v7, Lcom/smartisanos/smengine/a/k;->x:F

    iget v9, v7, Lcom/smartisanos/smengine/a/k;->y:F

    iget v10, v7, Lcom/smartisanos/smengine/a/k;->z:F

    iget v7, v7, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v6, v8, v9, v10, v7}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_0

    :cond_1
    move v5, v2

    :cond_2
    :goto_0
    const/4 v6, 0x0

    if-eq v5, v2, :cond_3

    move v7, v4

    goto :goto_1

    :cond_3
    move v7, v6

    .line 9
    :goto_1
    sget-boolean v8, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isDarkImage = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " nowDark = "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " needChangeDarkLight = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_4
    if-eqz v7, :cond_5

    .line 10
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->initByTheme(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Mc;->ui()V

    .line 12
    :cond_5
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-eqz v7, :cond_7

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 15
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->ui()V

    .line 16
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/b/M;->ib(Z)V

    goto :goto_2

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->ui()V

    .line 19
    :cond_7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;

    return-void

    .line 20
    :cond_8
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sStatusbarColorSuffix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v4

    .line 21
    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->sNaviBarLightOrDarkSuffix:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v4

    if-eqz v1, :cond_9

    .line 22
    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->k(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 23
    invoke-static {v8}, Lcom/smartisanos/launcher/e/s;->n(Landroid/graphics/Bitmap;)Z

    move-result v9

    .line 24
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 25
    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->j(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 26
    invoke-static {v8}, Lcom/smartisanos/launcher/e/s;->m(Landroid/graphics/Bitmap;)Z

    move-result v10

    .line 27
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :cond_9
    move v9, v0

    move v10, v5

    :goto_3
    if-eq v9, v0, :cond_a

    move v0, v4

    goto :goto_4

    :cond_a
    move v0, v6

    :goto_4
    if-eq v10, v5, :cond_b

    move v5, v4

    goto :goto_5

    :cond_b
    move v5, v6

    .line 28
    :goto_5
    invoke-static {v2, v1}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/launcher/theme/v;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 29
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v8

    const-string v11, "background.png"

    .line 30
    invoke-static {v11}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 31
    invoke-virtual {v8, v12}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 32
    new-instance v13, Lcom/smartisanos/smengine/Da;

    invoke-direct {v13, v1}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    invoke-virtual {v8, v12, v13}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 34
    invoke-virtual {v13, v4}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    const-string v12, "t_blur_anim_background"

    .line 35
    invoke-virtual {v8, v12}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 36
    invoke-virtual {v8, v12}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 37
    iget-object v12, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-static {v12}, Lcom/smartisanos/launcher/view/Eb;->e(Lcom/smartisanos/launcher/view/Eb;)Lcom/smartisanos/launcher/theme/t;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/smartisanos/launcher/theme/t;->e(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 38
    :cond_c
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 39
    :goto_6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/smartisanos/smengine/k;->Vj()Lcom/smartisanos/smengine/Camera;

    move-result-object v1

    .line 41
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/Ra;->it()Lcom/smartisanos/smengine/J;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/J;->Hk()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 42
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v13

    invoke-virtual {v13}, Lcom/smartisanos/smengine/Ra;->it()Lcom/smartisanos/smengine/J;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/smartisanos/smengine/J;->ba(Z)V

    .line 43
    :cond_d
    iget-object v13, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Eb;->uh()Lcom/smartisanos/smengine/F;

    move-result-object v13

    .line 44
    invoke-virtual {v13, v4}, Lcom/smartisanos/smengine/SceneNode;->setSceneNodeForceRender(Z)V

    .line 45
    invoke-virtual {v13, v1}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 46
    invoke-virtual {v13, v6}, Lcom/smartisanos/smengine/SceneNode;->setSceneNodeForceRender(Z)V

    .line 47
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->wt()V

    .line 48
    new-instance v1, Lcom/smartisanos/launcher/view/xb;

    const/16 v14, 0x64

    invoke-direct {v1, p0, v14, v8, v13}, Lcom/smartisanos/launcher/view/xb;-><init>(Lcom/smartisanos/launcher/view/zb;ILcom/smartisanos/smengine/Ea;Lcom/smartisanos/smengine/F;)V

    const/4 v8, 0x0

    .line 49
    invoke-virtual {v1, v8}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 50
    invoke-static {}, Lcom/smartisanos/launcher/view/b/t;->Ur()Lcom/smartisanos/smengine/F;

    .line 51
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez v1, :cond_f

    .line 52
    iget-object v1, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/launcher/view/Eb;)Lcom/smartisanos/smengine/F;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v1

    instance-of v1, v1, Lcom/smartisanos/smengine/mymaterial/A;

    if-nez v1, :cond_e

    const-string v1, "TexturePreColorMaterial"

    .line 53
    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v1

    .line 54
    iget-object v13, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-static {v13}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/launcher/view/Eb;)Lcom/smartisanos/smengine/F;

    move-result-object v13

    invoke-static {v11}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v6, v11}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 55
    iget-object v6, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/launcher/view/Eb;)Lcom/smartisanos/smengine/F;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 56
    :cond_e
    iget-object v1, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/launcher/view/Eb;)Lcom/smartisanos/smengine/F;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/smengine/mymaterial/f;)V

    :cond_f
    if-eqz v7, :cond_11

    .line 57
    iget-object v1, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/b/M;

    .line 59
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/M;->ui()V

    .line 60
    invoke-virtual {v6, v4}, Lcom/smartisanos/launcher/view/b/M;->ib(Z)V

    goto :goto_7

    .line 61
    :cond_10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 62
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->ui()V

    .line 63
    :cond_11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    new-instance v4, Lcom/smartisanos/launcher/view/yb;

    invoke-direct {v4, p0, v14, v12}, Lcom/smartisanos/launcher/view/yb;-><init>(Lcom/smartisanos/launcher/view/zb;IZ)V

    invoke-static {v1, v4}, Lcom/smartisanos/launcher/view/Eb;->d(Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;

    .line 64
    iget-object v1, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/Eb;->f(Lcom/smartisanos/launcher/view/Eb;)Lcom/smartisanos/smengine/n;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 65
    iget-object v1, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/Eb;->f(Lcom/smartisanos/launcher/view/Eb;)Lcom/smartisanos/smengine/n;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/smartisanos/smengine/n;->q(F)V

    const-string v1, ""

    if-eqz v0, :cond_13

    if-eqz v9, :cond_12

    .line 66
    sput-object v1, Lcom/smartisanos/launcher/data/Constants;->sStatusbarColorSuffix:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->n(Lcom/smartisanos/launcher/theme/v;)V

    goto :goto_8

    .line 68
    :cond_12
    sput-object v3, Lcom/smartisanos/launcher/data/Constants;->sStatusbarColorSuffix:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/e/s;->d(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    :cond_13
    :goto_8
    if-eqz v5, :cond_15

    if-eqz v10, :cond_14

    .line 70
    sput-object v1, Lcom/smartisanos/launcher/data/Constants;->sNaviBarLightOrDarkSuffix:Ljava/lang/String;

    goto :goto_9

    .line 71
    :cond_14
    sput-object v3, Lcom/smartisanos/launcher/data/Constants;->sNaviBarLightOrDarkSuffix:Ljava/lang/String;

    .line 72
    :goto_9
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sNaviBarLightOrDarkSuffix:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->c(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    .line 73
    :cond_15
    iget-object p0, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;

    return-void
.end method
