.class public Lcom/smartisanos/launcher/a/n;
.super Ljava/lang/Object;
.source "ChangeWallpaperByFourFingerSlide.java"


# static fields
.field private static currentPage:Lcom/smartisanos/launcher/view/b/M;

.field private static final log:Lcom/smartisanos/launcher/va;

.field private static qj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/a/n;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/n;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/smartisanos/launcher/a/n;->qj:Z

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/smartisanos/launcher/a/n;->currentPage:Lcom/smartisanos/launcher/view/b/M;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 1
    sput-object p0, Lcom/smartisanos/launcher/a/n;->currentPage:Lcom/smartisanos/launcher/view/b/M;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/F;Lcom/smartisanos/smengine/F;ZF)V
    .locals 0

    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/a/n;->b(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/F;Lcom/smartisanos/smengine/F;ZF)V

    return-void
.end method

.method static synthetic a(ZLandroid/graphics/Bitmap;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/a/n;->b(ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/a/n;->qj:Z

    return v0
.end method

.method static synthetic access$200()Lcom/smartisanos/launcher/view/b/M;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/a/n;->currentPage:Lcom/smartisanos/launcher/view/b/M;

    return-object v0
.end method

.method static synthetic access$400()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/a/n;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/a/n;->p(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static b(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/F;Lcom/smartisanos/smengine/F;ZF)V
    .locals 2

    .line 37
    new-instance v0, Lcom/smartisanos/smengine/oa;

    invoke-direct {v0, p0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v1, 0x3e99999a    # 0.3f

    .line 38
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    if-eqz p3, :cond_0

    float-to-int p3, p4

    neg-int p3, p3

    goto :goto_0

    :cond_0
    float-to-int p3, p4

    :goto_0
    const/4 p4, 0x4

    const/4 v1, 0x0

    int-to-float p3, p3

    .line 39
    invoke-virtual {v0, p4, v1, p3}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    const/16 p3, 0xe

    .line 40
    invoke-virtual {v0, p3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 41
    new-instance p3, Lcom/smartisanos/launcher/a/m;

    invoke-direct {p3, p0, p2, p1}, Lcom/smartisanos/launcher/a/m;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/F;Lcom/smartisanos/smengine/F;)V

    invoke-virtual {v0, p3}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 42
    invoke-virtual {v0}, Lcom/smartisanos/smengine/oa;->start()V

    return-void
.end method

.method private static b(ZLandroid/graphics/Bitmap;)V
    .locals 13

    .line 2
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v0, v0

    .line 3
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v1, v1

    .line 4
    sget v2, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    int-to-float v2, v2

    .line 5
    sget v3, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v3, v3

    add-float v4, v2, v3

    mul-float/2addr v0, v4

    div-float v12, v0, v3

    mul-float/2addr v1, v4

    div-float/2addr v1, v3

    neg-float v0, v2

    const/4 v2, 0x1

    const-string v3, "backgroundAnim"

    .line 6
    invoke-static {v3, v12, v1, v0, v2}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v10

    const-string v0, "TextureModularColorMaterial"

    .line 7
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v7

    .line 9
    new-instance v1, Lcom/smartisanos/smengine/Da;

    invoke-direct {v1, p1}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    const-string p1, "texture_back_anim"

    .line 10
    invoke-virtual {v7, p1, v1}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 11
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 12
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 13
    invoke-virtual {v10, p1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    invoke-virtual {v10, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    const/4 v0, 0x0

    .line 16
    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 17
    invoke-virtual {v10, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 18
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 19
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 21
    new-instance v9, Lcom/smartisanos/smengine/SceneNode;

    const-string v3, "fourfingeranim"

    invoke-direct {v9, v3}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 23
    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 24
    invoke-virtual {v1, v9}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    if-eqz p0, :cond_0

    float-to-int v1, v12

    goto :goto_0

    :cond_0
    float-to-int v1, v12

    neg-int v1, v1

    :goto_0
    int-to-float v1, v1

    .line 25
    invoke-virtual {v10, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslateX(F)V

    .line 26
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 27
    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 28
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/smartisanos/smengine/k;->Vj()Lcom/smartisanos/smengine/Camera;

    move-result-object v1

    .line 30
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    const-string v4, "t_blur_background_anim"

    invoke-virtual {v3, p1, v4}, Lcom/smartisanos/launcher/view/Eb;->y(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/smengine/F;

    move-result-object v8

    .line 31
    invoke-virtual {v8, v2}, Lcom/smartisanos/smengine/SceneNode;->setSceneNodeForceRender(Z)V

    .line 32
    invoke-virtual {v8, v1}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 33
    invoke-virtual {v8, v0}, Lcom/smartisanos/smengine/SceneNode;->setSceneNodeForceRender(Z)V

    .line 34
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->wt()V

    .line 35
    new-instance p1, Lcom/smartisanos/launcher/a/l;

    const/16 v6, 0x64

    move-object v5, p1

    move v11, p0

    invoke-direct/range {v5 .. v12}, Lcom/smartisanos/launcher/a/l;-><init>(ILcom/smartisanos/smengine/Ea;Lcom/smartisanos/smengine/F;Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/F;ZF)V

    const/4 p0, 0x0

    .line 36
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method static synthetic e(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/smartisanos/launcher/a/n;->qj:Z

    return p0
.end method

.method private static p(Landroid/graphics/Bitmap;)V
    .locals 6

    const-string v0, "_light"

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/smartisanos/launcher/a/n;->qj:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->initByTheme(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Mc;->ui()V

    .line 5
    sget-object v1, Lcom/smartisanos/launcher/a/n;->currentPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->ui()V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->ui()V

    .line 8
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sStatusbarColorSuffix:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz p0, :cond_1

    .line 9
    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->k(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 10
    invoke-static {v3}, Lcom/smartisanos/launcher/e/s;->n(Landroid/graphics/Bitmap;)Z

    move-result v4

    .line 11
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    const/4 v3, 0x0

    if-eq v4, v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    const-string v5, ""

    if-eqz v1, :cond_4

    if-eqz v4, :cond_3

    .line 12
    :try_start_1
    sput-object v5, Lcom/smartisanos/launcher/data/Constants;->sStatusbarColorSuffix:Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->n(Lcom/smartisanos/launcher/theme/v;)V

    goto :goto_2

    .line 14
    :cond_3
    sput-object v0, Lcom/smartisanos/launcher/data/Constants;->sStatusbarColorSuffix:Ljava/lang/String;

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/e/s;->d(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    .line 16
    :cond_4
    :goto_2
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sNaviBarLightOrDarkSuffix:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz p0, :cond_5

    .line 17
    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->j(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->m(Landroid/graphics/Bitmap;)Z

    move-result v4

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    if-eq v4, v1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    if-eqz v2, :cond_8

    if-eqz v4, :cond_7

    .line 20
    sput-object v5, Lcom/smartisanos/launcher/data/Constants;->sNaviBarLightOrDarkSuffix:Ljava/lang/String;

    goto :goto_5

    .line 21
    :cond_7
    sput-object v0, Lcom/smartisanos/launcher/data/Constants;->sNaviBarLightOrDarkSuffix:Ljava/lang/String;

    .line 22
    :goto_5
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object p0

    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sNaviBarLightOrDarkSuffix:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/e/s;->c(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_6
    return-void
.end method

.method public static u(Z)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/smartisanos/launcher/a/n;->qj:Z

    const/4 v1, 0x0

    .line 2
    sput-object v1, Lcom/smartisanos/launcher/a/n;->currentPage:Lcom/smartisanos/launcher/view/b/M;

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Wq()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v2

    sput-object v2, Lcom/smartisanos/launcher/a/n;->currentPage:Lcom/smartisanos/launcher/view/b/M;

    .line 5
    sget-object v2, Lcom/smartisanos/launcher/a/n;->currentPage:Lcom/smartisanos/launcher/view/b/M;

    if-nez v2, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 7
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "wallpaper_direction"

    .line 8
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    const-string v3, "content://com.smartisanos.wallpaperprovider/wallpapers"

    .line 9
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/J;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "request_change_wallpaper"

    .line 11
    invoke-virtual {v5, v3, v6, v1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_result"

    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    invoke-virtual {p0, v4, v0}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    return-void

    .line 14
    :cond_1
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_2

    .line 15
    sget-object v2, Lcom/smartisanos/launcher/a/n;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeWallpaper wallpaperUri = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Constants.sWallpaperUri = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->sWallpaperUri:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 16
    :cond_2
    sput-object v1, Lcom/smartisanos/launcher/data/Constants;->sWallpaperUri:Ljava/lang/String;

    .line 17
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 18
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 19
    invoke-static {v3}, Lcom/smartisanos/launcher/e/s;->h(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 20
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 21
    new-instance v2, Lcom/smartisanos/launcher/a/i;

    invoke-direct {v2, v1}, Lcom/smartisanos/launcher/a/i;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    .line 22
    new-instance v1, Lcom/smartisanos/launcher/a/k;

    const/16 v2, 0x64

    invoke-direct {v1, v2, v3, p0}, Lcom/smartisanos/launcher/a/k;-><init>(ILandroid/graphics/Bitmap;Z)V

    const/4 p0, 0x0

    .line 23
    invoke-virtual {v1, p0}, Lcom/smartisanos/smengine/n;->q(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
