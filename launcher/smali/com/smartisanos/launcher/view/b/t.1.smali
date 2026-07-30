.class public Lcom/smartisanos/launcher/view/b/t;
.super Lcom/smartisanos/launcher/view/b/fa;
.source "FolderPageView.java"


# static fields
.field private static UM:Lcom/smartisanos/smengine/F; = null

.field private static aR:Lcom/smartisanos/smengine/F; = null

.field private static bR:Lcom/smartisanos/smengine/F; = null

.field private static cR:Lcom/smartisanos/smengine/F; = null

.field private static dR:Lcom/smartisanos/smengine/F; = null

.field private static eR:Z = false


# instance fields
.field private TQ:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private UQ:Z

.field private VQ:Lcom/smartisanos/launcher/view/a/g;

.field private WQ:F

.field private XQ:F

.field private Xn:F

.field private YQ:F

.field private ZQ:F

.field private _Q:F

.field log:Lcom/smartisanos/launcher/va;

.field private mIsClosing:Z

.field private mTextView:Lcom/smartisanos/launcher/view/Mc;

.field private sceneMetrics:Lcom/smartisanos/launcher/data/FolderSceneMetrics$Result;

.field private vC:Lcom/smartisanos/smengine/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/data/FolderInfo;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;-><init>(Ljava/lang/String;)V

    .line 2
    const-class p1, Lcom/smartisanos/launcher/view/b/t;

    invoke-static {p1}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/t;->log:Lcom/smartisanos/launcher/va;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/t;->mIsClosing:Z

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/t;->UQ:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    iput p1, p0, Lcom/smartisanos/launcher/view/b/t;->Xn:F

    .line 6
    iget p1, p0, Lcom/smartisanos/launcher/view/b/t;->Xn:F

    const/high16 p2, 0x3e800000    # 0.25f

    mul-float/2addr p2, p1

    iput p2, p0, Lcom/smartisanos/launcher/view/b/t;->WQ:F

    const p2, 0x3e99999a    # 0.3f

    mul-float/2addr p2, p1

    .line 7
    iput p2, p0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    const p2, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, p1

    .line 8
    iput p2, p0, Lcom/smartisanos/launcher/view/b/t;->YQ:F

    const p2, 0x3e19999a    # 0.15f

    mul-float/2addr p2, p1

    .line 9
    iput p2, p0, Lcom/smartisanos/launcher/view/b/t;->ZQ:F

    const p2, 0x3d4ccccd    # 0.05f

    mul-float/2addr p1, p2

    .line 10
    iput p1, p0, Lcom/smartisanos/launcher/view/b/t;->_Q:F

    .line 11
    iput-object p3, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method private Ac(Z)V
    .locals 8

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->mf()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v0, v2, :cond_1

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    invoke-static {v1, v3, v0}, Lcom/smartisanos/launcher/pb;->a(IZLcom/smartisanos/launcher/data/Constants$IconType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    invoke-static {v1, v4, v0}, Lcom/smartisanos/launcher/pb;->a(IZLcom/smartisanos/launcher/data/Constants$IconType;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    sget-object v1, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getFolderAnimationModulus()[F

    move-result-object v0

    .line 8
    aget v1, v0, v4

    .line 9
    aget v0, v0, v3

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 11
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v5}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 12
    invoke-virtual {v5, v3, v3, v3}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 14
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/h;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 15
    iget v6, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v5, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v6, v7

    iput v6, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 16
    iget v6, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v5, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v6, v7

    iput v6, p1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 17
    :cond_2
    iget v6, p1, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v6, v1

    iget v7, v5, Lcom/smartisanos/smengine/a/j;->x:F

    div-float/2addr v6, v7

    .line 18
    iget v7, p1, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v7, v1

    iget v1, v5, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr v7, v1

    .line 19
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1, v6, v7, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 20
    new-instance v5, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v5}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 21
    iget v6, p0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    const/16 v7, 0xe

    invoke-virtual {v5, p1, v1, v7, v6}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 22
    sget-object p1, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    invoke-static {p1, v5}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v4}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 24
    new-instance v1, Lcom/smartisanos/launcher/view/b/p;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/b/p;-><init>(Lcom/smartisanos/launcher/view/b/t;)V

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 25
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v2, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 26
    new-instance p1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {p1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 27
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v3, v3, v3, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    new-instance v3, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v3, v2, v2, v2, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iget v5, p0, Lcom/smartisanos/launcher/view/b/t;->ZQ:F

    invoke-virtual {p1, v1, v3, v7, v5}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 28
    sget-object v1, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    invoke-static {v1, p1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v4}, Lcom/smartisanos/smengine/oa;->ta(Z)V

    .line 30
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v2, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 31
    new-instance p1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {p1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/la;->Xi()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 33
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 34
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 35
    iget v4, v3, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v4, v0

    iput v4, v3, Lcom/smartisanos/smengine/a/j;->y:F

    .line 36
    iget v0, p0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    invoke-virtual {p1, v1, v3, v7, v0}, Lcom/smartisanos/launcher/animations/s;->b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 37
    sget-object v0, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p1

    .line 38
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto/16 :goto_2

    .line 39
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 40
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v5}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 41
    invoke-virtual {v5, v3, v3, v3}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 42
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 43
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/h;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 44
    iget v6, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v5, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v6, v7

    iput v6, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 45
    iget v6, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v5, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v6, v7

    iput v6, p1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 46
    :cond_4
    iget v6, p1, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v6, v1

    iget v7, v5, Lcom/smartisanos/smengine/a/j;->x:F

    div-float/2addr v6, v7

    .line 47
    iget v7, p1, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v7, v1

    iget v1, v5, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr v7, v1

    .line 48
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1, v6, v7, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 49
    new-instance v5, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v5}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 50
    iget v6, p0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    const/4 v7, 0x2

    invoke-virtual {v5, v1, p1, v7, v6}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 51
    sget-object p1, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    invoke-static {p1, v5}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p1

    .line 52
    invoke-virtual {p1, v4}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 53
    new-instance v1, Lcom/smartisanos/launcher/view/b/q;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/b/q;-><init>(Lcom/smartisanos/launcher/view/b/t;)V

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 54
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v2, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 55
    new-instance p1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {p1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 56
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    .line 57
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 58
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v3, v3, v3, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    new-instance v3, Lcom/smartisanos/smengine/a/k;

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v3, v5, v5, v5, v5}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iget v5, p0, Lcom/smartisanos/launcher/view/b/t;->WQ:F

    invoke-virtual {p1, v1, v3, v7, v5}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    goto :goto_1

    .line 59
    :cond_5
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    new-instance v5, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v5, v3, v3, v3, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iget v3, p0, Lcom/smartisanos/launcher/view/b/t;->WQ:F

    invoke-virtual {p1, v1, v5, v7, v3}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 60
    :goto_1
    sget-object v1, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    invoke-static {v1, p1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p1

    .line 61
    invoke-virtual {p1, v4}, Lcom/smartisanos/smengine/oa;->ta(Z)V

    .line 62
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    iget v3, p0, Lcom/smartisanos/launcher/view/b/t;->_Q:F

    invoke-virtual {v1, v3, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 63
    new-instance p1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {p1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 64
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 65
    sget-object v3, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 66
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v3, v0

    iput v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 67
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/la;->Xi()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 68
    iget v3, p0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    invoke-virtual {p1, v1, v0, v7, v3}, Lcom/smartisanos/launcher/animations/s;->b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 69
    sget-object v0, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0, v2, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 71
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result p1

    if-nez p1, :cond_6

    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_7

    .line 72
    :cond_6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p0, p1, v4}, Lcom/smartisanos/launcher/view/b/t;->c(Lcom/smartisanos/launcher/view/a/g;Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method private Bc(Z)V
    .locals 7

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/k;-><init>()V

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/k;-><init>()V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 6
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 8
    :cond_1
    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 9
    sget-object v3, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 10
    sget-object v3, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 11
    new-instance v3, Lcom/smartisanos/launcher/view/b/b;

    invoke-direct {v3, p0, v2}, Lcom/smartisanos/launcher/view/b/b;-><init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/launcher/view/Z;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 13
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_3

    .line 14
    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 15
    :cond_3
    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 16
    new-instance v3, Lcom/smartisanos/launcher/view/b/c;

    invoke-direct {v3, p0, v2}, Lcom/smartisanos/launcher/view/b/c;-><init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/launcher/view/Z;)V

    .line 17
    :goto_0
    new-instance v2, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v2}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 18
    iget v5, p0, Lcom/smartisanos/launcher/view/b/t;->WQ:F

    const/16 v6, 0xe

    invoke-virtual {v2, v0, v1, v6, v5}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 19
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    sget-object v1, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 21
    sget-object v0, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    .line 22
    new-instance p1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {p1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 23
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/k;-><init>()V

    .line 24
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/k;-><init>()V

    .line 25
    iget v2, p0, Lcom/smartisanos/launcher/view/b/t;->WQ:F

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 26
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    sget-object v0, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_4
    return-void
.end method

.method private Cc(Z)V
    .locals 11

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lcom/smartisanos/smengine/oa;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/view/b/t;->WQ:F

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, p1

    .line 3
    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    const/16 v0, 0x1b

    .line 4
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    iget p0, p0, Lcom/smartisanos/launcher/view/b/t;->YQ:F

    invoke-virtual {v0, p0, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/smartisanos/smengine/oa;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 7
    iget v0, p0, Lcom/smartisanos/launcher/view/b/t;->ZQ:F

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    .line 8
    invoke-virtual/range {v1 .. v10}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    const/16 v0, 0xe

    .line 9
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :goto_0
    return-void
.end method

.method private Pz()V
    .locals 1

    .line 1
    sget-object p0, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setOnClickListener(Lcom/smartisanos/smengine/aa;)V

    .line 3
    sget-object p0, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 4
    :cond_0
    sget-object p0, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 6
    :cond_1
    sget-object p0, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 8
    :cond_2
    sget-object p0, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 10
    :cond_3
    sget-object p0, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    :cond_4
    return-void
.end method

.method private Qz()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Mc;->clear(Z)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    :cond_0
    return-void
.end method

.method private Rz()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/i;

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/i;->clone()Lcom/smartisanos/smengine/a/i;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/i;->clone()Lcom/smartisanos/smengine/a/i;

    move-result-object v0

    .line 5
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_0

    .line 6
    iget v2, v1, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/smartisanos/smengine/a/i;->x:F

    .line 7
    iget v2, v0, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    add-float/2addr v2, v3

    iput v2, v0, Lcom/smartisanos/smengine/a/i;->x:F

    goto :goto_0

    .line 8
    :cond_0
    iget v2, v1, Lcom/smartisanos/smengine/a/i;->x:F

    const/high16 v3, 0x43fa0000    # 500.0f

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/smartisanos/smengine/a/i;->x:F

    .line 9
    iget v2, v0, Lcom/smartisanos/smengine/a/i;->x:F

    add-float/2addr v2, v3

    iput v2, v0, Lcom/smartisanos/smengine/a/i;->x:F

    .line 10
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/b/fa;->a(Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/i;)V

    return-void
.end method

.method private Sz()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->Ra()Landroid/content/res/Resources;

    move-result-object v0

    .line 5
    sget v1, Lcom/smartisanos/launcher/ob;->page_default_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v3, v0

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->TQ:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_title_font_max_width:I

    int-to-float v1, v1

    .line 7
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_title_font_max_height:I

    int-to-float v0, v0

    .line 8
    new-instance v8, Lcom/smartisanos/launcher/view/Mc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "folder_text"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    sget-object v5, Lcom/smartisanos/launcher/view/Mc;->FO:Landroid/graphics/Paint;

    float-to-int v6, v1

    float-to-int v7, v0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/smartisanos/launcher/view/Mc;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V

    iput-object v8, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 13
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/i;-><init>()V

    .line 14
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_2

    .line 15
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->pageWorldCenterPointsInWindow:[[Lcom/smartisanos/smengine/a/j;

    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result v4

    aget-object v1, v1, v4

    const/4 v4, 0x0

    aget-object v1, v1, v4

    .line 16
    iget v4, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v4, v0, Lcom/smartisanos/smengine/a/i;->x:F

    .line 17
    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/t;->TQ:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_bookcase_height:F

    div-float/2addr v5, v3

    add-float/2addr v1, v5

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_title_margin_bottom:F

    add-float/2addr v1, v4

    iput v1, v0, Lcom/smartisanos/smengine/a/i;->y:F

    goto :goto_0

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/t;->TQ:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_title_location_y:F

    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/t;->TQ:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {v4, v1}, Lcom/smartisanos/launcher/data/FolderVisualGeometry;->resolveTitleScreenY(Ljava/lang/Object;F)F

    move-result v1

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v4, v4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v5, v5

    invoke-static {v2, v1, v4, v5, v0}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    iget v0, v0, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v1, v2, v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->TQ:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_text_font_size:I

    mul-int/lit8 v0, v0, 0x2

    .line 21
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Mc;->getWidth()F

    move-result v1

    int-to-float v0, v0

    add-float/2addr v1, v0

    .line 22
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Mc;->getHeight()F

    move-result v2

    add-float/2addr v2, v0

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    neg-float v4, v1

    div-float/2addr v4, v3

    neg-float v5, v2

    div-float/2addr v5, v3

    div-float/2addr v1, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->updateGeometricState()V

    .line 25
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 26
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_3

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    new-instance v1, Lcom/smartisanos/launcher/view/b/j;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/b/j;-><init>(Lcom/smartisanos/launcher/view/b/t;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setOnClickListener(Lcom/smartisanos/smengine/aa;)V

    :cond_4
    return-void
.end method

.method private Tz()V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_5

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v1

    .line 3
    iget-object v3, v0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 6
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    .line 7
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 8
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/a/g;

    .line 9
    invoke-virtual {v5, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/Mc;

    .line 10
    invoke-virtual {v5, v3}, Lcom/smartisanos/launcher/view/a/g;->fb(I)Lcom/smartisanos/smengine/F;

    move-result-object v7

    .line 11
    invoke-virtual {v5, v2}, Lcom/smartisanos/launcher/view/a/g;->fb(I)Lcom/smartisanos/smengine/F;

    move-result-object v8

    .line 12
    invoke-virtual {v5, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/smengine/F;

    const/16 v10, 0x1b

    .line 13
    invoke-virtual {v5, v10}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/smengine/F;

    const/4 v11, 0x0

    const/16 v12, 0xe

    if-eqz v6, :cond_0

    .line 14
    new-instance v15, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v6

    invoke-direct {v15, v6}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 15
    iget v6, v0, Lcom/smartisanos/launcher/view/b/t;->WQ:F

    invoke-virtual {v15, v6}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v14, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v13, v15

    move-object v2, v15

    move v15, v6

    .line 16
    invoke-virtual/range {v13 .. v22}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 17
    invoke-virtual {v2, v12}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 18
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v6, v11, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_0
    if-eqz v7, :cond_1

    .line 19
    new-instance v2, Lcom/smartisanos/smengine/oa;

    invoke-direct {v2, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 20
    iget v6, v0, Lcom/smartisanos/launcher/view/b/t;->WQ:F

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v14, 0x3

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v13, v2

    .line 21
    invoke-virtual/range {v13 .. v22}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 22
    invoke-virtual {v2, v12}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 23
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v6, v11, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_1
    if-eqz v8, :cond_2

    .line 24
    new-instance v2, Lcom/smartisanos/smengine/oa;

    invoke-direct {v2, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 25
    iget v6, v0, Lcom/smartisanos/launcher/view/b/t;->WQ:F

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v14, 0x3

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v13, v2

    .line 26
    invoke-virtual/range {v13 .. v22}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 27
    invoke-virtual {v2, v12}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 28
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v6, v11, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_2
    if-eqz v9, :cond_3

    .line 29
    new-instance v2, Lcom/smartisanos/smengine/oa;

    invoke-direct {v2, v9}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 30
    iget v6, v0, Lcom/smartisanos/launcher/view/b/t;->WQ:F

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v14, 0x3

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v13, v2

    .line 31
    invoke-virtual/range {v13 .. v22}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 32
    invoke-virtual {v2, v12}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 33
    new-instance v6, Lcom/smartisanos/launcher/view/b/r;

    invoke-direct {v6, v0, v5}, Lcom/smartisanos/launcher/view/b/r;-><init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 34
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v6, v11, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_3
    if-eqz v10, :cond_4

    .line 35
    new-instance v2, Lcom/smartisanos/smengine/oa;

    invoke-direct {v2, v10}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 36
    iget v6, v0, Lcom/smartisanos/launcher/view/b/t;->WQ:F

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v14, 0x3

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v13, v2

    .line 37
    invoke-virtual/range {v13 .. v22}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 38
    invoke-virtual {v2, v12}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 39
    new-instance v6, Lcom/smartisanos/launcher/view/b/s;

    invoke-direct {v6, v0, v5}, Lcom/smartisanos/launcher/view/b/s;-><init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 40
    iget-object v5, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v5, v11, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static Ur()Lcom/smartisanos/smengine/F;
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->ug()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/smartisanos/smengine/Da;

    invoke-direct {v1, v0}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    const-string v2, "t_blur_background_folder"

    .line 5
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private Uy()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/view/Fb;->h(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 4
    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "mFolderPageBackgroundColorRect"

    invoke-static {v5, v2, v1, v3, v4}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v1

    sput-object v1, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    .line 5
    sget-object v1, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    const-string v2, "TextureModularColorMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 6
    sget-object v1, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 7
    sget-object v1, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v5, -0x40000000    # -2.0f

    invoke-virtual {v1, v2, v5}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 8
    sget-object v1, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    const/16 v2, 0x56

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 9
    sget-object v1, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 10
    sget-object v1, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 11
    sget-object v1, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 12
    sget-object v1, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v5, v6, v4}, Lcom/smartisanos/smengine/L;->c(IIII)V

    .line 13
    sget-object v1, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 14
    invoke-static {v0}, Lcom/smartisanos/launcher/view/Fb;->g(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    .line 15
    sget-object v0, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v0, v1, p0, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 16
    sget-object p0, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const-string p0, "mFolderPageBackgroundColorRect_TextureName"

    .line 17
    sget-object v0, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 18
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 19
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v2, 0xff

    .line 20
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 21
    new-instance v1, Lcom/smartisanos/smengine/Da;

    invoke-direct {v1, v0}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 22
    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 23
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 24
    sget-object p0, Lcom/smartisanos/launcher/data/Constants;->sBGColorInLargeScreen:Lcom/smartisanos/smengine/a/k;

    if-eqz p0, :cond_1

    .line 25
    sget-object v0, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    iget v1, p0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v2, p0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v3, p0, Lcom/smartisanos/smengine/a/k;->z:F

    iget p0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 26
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    sget-object v0, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method

.method private a(ILjava/util/ArrayList;)Lcom/smartisanos/launcher/view/b/M;
    .locals 3

    .line 39
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPage by page index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_2

    .line 40
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 41
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v0

    .line 42
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPage error, page index ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], max cell count ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], cell list size ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 44
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/t;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_2
    :goto_0
    new-instance p0, Lcom/smartisanos/launcher/data/Q;

    invoke-direct {p0}, Lcom/smartisanos/launcher/data/Q;-><init>()V

    const/4 v0, 0x2

    .line 47
    iput v0, p0, Lcom/smartisanos/launcher/data/Q;->Er:I

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/launcher/data/ItemInfo;

    iget p2, p2, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    invoke-static {p1, p2}, Lcom/smartisanos/launcher/Aa;->g(II)Ljava/util/ArrayList;

    move-result-object p2

    .line 49
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, p2, p1, v2, p0}, Lcom/smartisanos/launcher/view/b/fa;->a(Ljava/util/ArrayList;ILjava/lang/String;Lcom/smartisanos/launcher/data/Q;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    .line 50
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/M;->zb(I)V

    .line 51
    iput p1, p0, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method private a(ZLcom/smartisanos/smengine/F;)V
    .locals 12

    if-nez p2, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/k;-><init>()V

    .line 55
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/k;-><init>()V

    .line 56
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 57
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 58
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 59
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v5}, Lcom/smartisanos/smengine/a/j;-><init>()V

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x40800000    # 4.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {v0, v8, v8, v8, v8}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 61
    invoke-virtual {v1, v9, v9, v9, v9}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 62
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/la;->Zi()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 63
    invoke-virtual {p2, v3}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 64
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/h;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 66
    iget v10, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v11, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/a/g;->Ul()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v11

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    mul-float/2addr v10, v11

    div-float/2addr v10, v7

    .line 67
    iget p1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v11, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/a/g;->Ul()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v11

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    mul-float/2addr p1, v11

    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Ul()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    div-float v10, p1, v7

    .line 69
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Ul()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    :goto_0
    div-float/2addr p1, v7

    .line 70
    invoke-virtual {v4, v10, p1, v9}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 71
    invoke-virtual {p2}, Lcom/smartisanos/smengine/F;->getWidth()F

    move-result p1

    div-float/2addr p1, v6

    invoke-virtual {p2}, Lcom/smartisanos/smengine/F;->getHeight()F

    move-result v7

    div-float/2addr v7, v6

    invoke-virtual {v5, p1, v7, v9}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 72
    new-instance p1, Lcom/smartisanos/launcher/view/b/d;

    invoke-direct {p1, p0, p2, v3}, Lcom/smartisanos/launcher/view/b/d;-><init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/smengine/F;Lcom/smartisanos/smengine/a/j;)V

    const/16 v6, 0xe

    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {v0, v9, v9, v9, v9}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 74
    invoke-virtual {v1, v8, v8, v8, v8}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 75
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/la;->Zi()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 76
    invoke-virtual {p2, v2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 77
    invoke-virtual {p2}, Lcom/smartisanos/smengine/F;->getWidth()F

    move-result p1

    div-float/2addr p1, v6

    invoke-virtual {p2}, Lcom/smartisanos/smengine/F;->getHeight()F

    move-result v10

    div-float/2addr v10, v6

    invoke-virtual {v4, p1, v10, v9}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 78
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 79
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/h;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 80
    iget v6, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v10, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/a/g;->Ul()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v10

    iget v10, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    mul-float/2addr v6, v10

    div-float/2addr v6, v7

    .line 81
    iget p1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v10, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/a/g;->Ul()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v10

    iget v10, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    mul-float/2addr p1, v10

    goto :goto_1

    .line 82
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Ul()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    div-float v6, p1, v7

    .line 83
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Ul()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    :goto_1
    div-float/2addr p1, v7

    .line 84
    invoke-virtual {v5, v6, p1, v9}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 85
    new-instance p1, Lcom/smartisanos/launcher/view/b/e;

    invoke-direct {p1, p0, p2, v2}, Lcom/smartisanos/launcher/view/b/e;-><init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/smengine/F;Lcom/smartisanos/smengine/a/j;)V

    const/4 v6, 0x2

    .line 86
    :goto_2
    new-instance v7, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v7}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 87
    iget v9, p0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    invoke-virtual {v7, v0, v1, v6, v9}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 88
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-static {p2, v7}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 89
    new-instance v0, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 90
    iget v1, p0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    invoke-virtual {v0, v2, v3, v6, v1}, Lcom/smartisanos/launcher/animations/s;->b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 91
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    .line 92
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-static {p2, v0}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 93
    new-instance p1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {p1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 94
    iget v0, p0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    invoke-virtual {p1, v4, v5, v6, v0}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 95
    invoke-static {p2, p1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p1

    const/4 p2, 0x0

    .line 96
    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 97
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0, v8, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/b/t;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/t;->UQ:Z

    return p1
.end method

.method public static as()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/view/b/t;->eR:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "folder/folder_open_3_3.png"

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/smartisanos/launcher/e/s;->u(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "folder/folder_open_3_3_cover.png"

    .line 5
    invoke-static {v0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v1, v0}, Lcom/smartisanos/launcher/e/s;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/b/t;->Ur()Lcom/smartisanos/smengine/F;

    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcom/smartisanos/launcher/view/b/t;->eR:Z

    return-void
.end method

.method private b(Lcom/smartisanos/smengine/F;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/k;-><init>()V

    .line 41
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/k;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 42
    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 44
    new-instance v3, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v3}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    const/16 v4, 0xe

    .line 45
    iget v5, p0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 46
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-static {p1, v3}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method private c(Lcom/smartisanos/launcher/view/a/g;Z)V
    .locals 13

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/g;->fb(I)Lcom/smartisanos/smengine/F;

    move-result-object v1

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p1, v2}, Lcom/smartisanos/launcher/view/a/g;->fb(I)Lcom/smartisanos/smengine/F;

    move-result-object v2

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v3, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/k;-><init>()V

    .line 4
    new-instance v4, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/k;-><init>()V

    .line 5
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v5}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 6
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 7
    sget-object v7, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v7, v5}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 8
    sget-object v7, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v7, v6}, Lcom/smartisanos/smengine/F;->getSize(Lcom/smartisanos/smengine/a/j;)V

    .line 9
    iget v7, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v6, Lcom/smartisanos/smengine/a/j;->x:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, v5, Lcom/smartisanos/smengine/a/j;->x:F

    .line 10
    iget v7, v5, Lcom/smartisanos/smengine/a/j;->y:F

    iget v6, v6, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr v6, v9

    add-float/2addr v7, v6

    iput v7, v5, Lcom/smartisanos/smengine/a/j;->y:F

    .line 11
    iget v6, v5, Lcom/smartisanos/smengine/a/j;->z:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    iput v6, v5, Lcom/smartisanos/smengine/a/j;->z:F

    .line 12
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 13
    new-instance v8, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v8}, Lcom/smartisanos/smengine/a/j;-><init>()V

    const v9, 0x3e99999a    # 0.3f

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 15
    iput v9, v6, Lcom/smartisanos/smengine/a/j;->z:F

    :cond_1
    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v2, v8}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 17
    iput v9, v6, Lcom/smartisanos/smengine/a/j;->z:F

    .line 18
    :cond_2
    new-instance v9, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v9}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 19
    new-instance v10, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v10}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 20
    new-instance v11, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v11}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 21
    iget-object v12, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v12

    .line 22
    invoke-virtual {v12}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v12

    .line 23
    invoke-virtual {v12, v5, v9}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    if-eqz v1, :cond_3

    .line 24
    invoke-virtual {v12, v6, v10}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    :cond_3
    if-eqz v2, :cond_4

    .line 25
    invoke-virtual {v12, v8, v11}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    :cond_4
    const/4 v5, 0x0

    if-eqz p2, :cond_5

    .line 26
    invoke-virtual {v3, v7, v7, v7, v7}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 27
    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    goto :goto_0

    .line 28
    :cond_5
    invoke-virtual {v3, v5, v5, v5, v5}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 29
    invoke-virtual {v4, v7, v7, v7, v7}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 30
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v6, :cond_6

    .line 31
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x3dcccccd    # 0.1f

    .line 32
    invoke-virtual {v4, p1, p1, p1, p1}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    :cond_6
    :goto_0
    const/16 p1, 0xf

    const/16 v6, 0xe

    if-eqz v1, :cond_8

    .line 33
    new-instance v7, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v7}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 34
    iget v8, p0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    invoke-virtual {v7, v3, v4, p1, v8}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 35
    new-instance v8, Lcom/smartisanos/launcher/view/b/f;

    invoke-direct {v8, p0, v1}, Lcom/smartisanos/launcher/view/b/f;-><init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/smengine/F;)V

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    .line 36
    invoke-static {v1, v7}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v7

    .line 37
    invoke-virtual {v7, v0}, Lcom/smartisanos/smengine/oa;->ta(Z)V

    .line 38
    iget-object v8, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v8, v5, v7}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 39
    new-instance v7, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v7}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 40
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v8

    .line 41
    new-instance v12, Lcom/smartisanos/launcher/view/b/g;

    invoke-direct {v12, p0, v1, v10, v8}, Lcom/smartisanos/launcher/view/b/g;-><init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/smengine/F;Lcom/smartisanos/smengine/a/j;I)V

    invoke-virtual {v7, v12}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    if-eqz p2, :cond_7

    .line 42
    iget v8, p0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    invoke-virtual {v7, v10, v9, v6, v8}, Lcom/smartisanos/launcher/animations/s;->b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    goto :goto_1

    .line 43
    :cond_7
    iget v8, p0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    invoke-virtual {v7, v9, v10, v6, v8}, Lcom/smartisanos/launcher/animations/s;->b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 44
    :goto_1
    iget-object v8, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-static {v1, v7}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    invoke-virtual {v8, v5, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_8
    if-eqz v2, :cond_a

    .line 45
    new-instance v1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 46
    iget v7, p0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    invoke-virtual {v1, v3, v4, p1, v7}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 47
    new-instance p1, Lcom/smartisanos/launcher/view/b/h;

    invoke-direct {p1, p0, v2}, Lcom/smartisanos/launcher/view/b/h;-><init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/smengine/F;)V

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    .line 48
    invoke-static {v2, v1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p1

    .line 49
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/oa;->ta(Z)V

    .line 50
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0, v5, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 51
    new-instance p1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {p1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 52
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v0

    .line 53
    new-instance v1, Lcom/smartisanos/launcher/view/b/i;

    invoke-direct {v1, p0, v2, v11, v0}, Lcom/smartisanos/launcher/view/b/i;-><init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/smengine/F;Lcom/smartisanos/smengine/a/j;I)V

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    if-eqz p2, :cond_9

    .line 54
    iget p2, p0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    invoke-virtual {p1, v11, v9, v6, p2}, Lcom/smartisanos/launcher/animations/s;->b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    goto :goto_2

    .line 55
    :cond_9
    iget p2, p0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    invoke-virtual {p1, v9, v11, v6, p2}, Lcom/smartisanos/launcher/animations/s;->b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 56
    :goto_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-static {v2, p1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_a
    return-void
.end method

.method static synthetic d(Lcom/smartisanos/launcher/view/b/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/t;->Pz()V

    return-void
.end method

.method static synthetic e(Lcom/smartisanos/launcher/view/b/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/t;->Qz()V

    return-void
.end method

.method static synthetic f(Lcom/smartisanos/launcher/view/b/t;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method static synthetic u()Lcom/smartisanos/smengine/F;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    return-object v0
.end method

.method static synthetic x()Lcom/smartisanos/smengine/F;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    return-object v0
.end method

.method private z(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/db;->hh()Lcom/smartisanos/launcher/view/a/ka;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->zn()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/b/M;->Ab(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public Fq()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Gr()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Md()V

    return-void
.end method

.method public I(Z)Lcom/smartisanos/launcher/view/b/M;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/t;->Tr()V

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "### createEmptyPage: create a empty page"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->getPageCount()I

    move-result v1

    .line 5
    new-instance v2, Lcom/smartisanos/launcher/data/Q;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/Q;-><init>()V

    const/4 v3, 0x2

    .line 6
    iput v3, v2, Lcom/smartisanos/launcher/data/Q;->Er:I

    const-string v4, ""

    .line 7
    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/smartisanos/launcher/view/b/fa;->a(Ljava/util/ArrayList;ILjava/lang/String;Lcom/smartisanos/launcher/data/Q;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    .line 8
    iput-boolean p1, v0, Lcom/smartisanos/launcher/view/b/M;->uI:Z

    const/4 p1, 0x1

    .line 9
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 10
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->l(Lcom/smartisanos/launcher/view/b/M;)V

    return-object v0
.end method

.method public Jb(Z)F
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/t;->kr()F

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object p1

    .line 3
    iget-object v2, p1, Lcom/smartisanos/smengine/d/f;->tY:Lcom/smartisanos/smengine/a/i;

    .line 4
    invoke-virtual {v2, v1, v1}, Lcom/smartisanos/smengine/a/i;->set(FF)Lcom/smartisanos/smengine/a/i;

    .line 5
    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/launcher/view/b/fa;->a(ILcom/smartisanos/smengine/a/i;)V

    .line 6
    iget p0, v2, Lcom/smartisanos/smengine/a/i;->x:F

    .line 7
    invoke-virtual {p1}, Lcom/smartisanos/smengine/d/f;->release()V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/smartisanos/smengine/a/i;

    invoke-direct {p1}, Lcom/smartisanos/smengine/a/i;-><init>()V

    .line 9
    invoke-virtual {p1, v1, v1}, Lcom/smartisanos/smengine/a/i;->set(FF)Lcom/smartisanos/smengine/a/i;

    .line 10
    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-virtual {p0, v1, p1}, Lcom/smartisanos/launcher/view/b/fa;->a(ILcom/smartisanos/smengine/a/i;)V

    .line 11
    iget p0, p1, Lcom/smartisanos/smengine/a/i;->x:F

    :goto_0
    add-float/2addr p0, v0

    return p0
.end method

.method public Kq()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->getPageCount()I

    move-result v0

    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->getMaxPageCount(I)I

    move-result v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/t;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "FolderPageview max page count reached, long press do not create a new page ,return"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_3

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Sn()I

    move-result v0

    if-nez v0, :cond_3

    .line 6
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/t;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "all pages are invisible, long press do not create a new page ,return"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    return v2

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_4

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_4

    return v2

    .line 10
    :cond_4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 11
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Rq()Ljava/util/ArrayList;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 14
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v3

    .line 15
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_6

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v2

    if-ne v3, p0, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method public Sr()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "### animation not run !!!!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public Tr()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->updatePageCellCenterPoints(I)V

    return-void
.end method

.method public Vr()Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    sget-object p0, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setForceDispatchTouchToView(Z)V

    .line 7
    sget-object p0, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public Wr()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public Xr()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public Yr()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/b/t;->mIsClosing:Z

    return p0
.end method

.method public Zr()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/b/t;->UQ:Z

    return p0
.end method

.method public _r()V
    .locals 29

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/b/t;->UQ:Z

    .line 3
    new-instance v2, Lcom/smartisanos/smengine/g;

    invoke-direct {v2}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v2, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 6
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v6, -0x40800000    # -1.0f

    const-string v7, "TextureModularColorMaterial"

    const/4 v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-nez v4, :cond_3

    .line 7
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const-string v11, "gaussianbackground_folder"

    if-eqz v4, :cond_2

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v4

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    .line 9
    invoke-static {v4}, Lcom/smartisanos/launcher/view/Fb;->h(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v12

    .line 10
    invoke-static {v4}, Lcom/smartisanos/launcher/view/Fb;->g(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    .line 11
    iget v13, v12, Lcom/smartisanos/smengine/a/j;->x:F

    iget v14, v12, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-static {v11, v13, v14, v10, v1}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v11

    sput-object v11, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    .line 12
    sget-object v11, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    iget v13, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v14, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v15, v4, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v11, v13, v14, v15}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    const/16 v11, 0x8

    new-array v11, v11, [F

    .line 13
    iget v13, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v14, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v15, v4, Lcom/smartisanos/smengine/a/j;->z:F

    const/16 v16, 0x0

    iget v4, v12, Lcom/smartisanos/smengine/a/j;->x:F

    iget v12, v12, Lcom/smartisanos/smengine/a/j;->y:F

    move/from16 v17, v4

    move/from16 v18, v12

    move-object/from16 v19, v11

    invoke-static/range {v13 .. v19}, Lcom/smartisanos/launcher/e/s;->a(FFFZFF[F)V

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mesh_"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v12

    if-nez v12, :cond_0

    .line 16
    sget-object v12, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v12

    .line 17
    sget-object v13, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v13, v12}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 18
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v13

    invoke-virtual {v13}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v13

    invoke-virtual {v13, v4, v12}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    goto :goto_0

    .line 19
    :cond_0
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 20
    :goto_0
    invoke-virtual {v12, v3}, Lcom/smartisanos/smengine/y;->Ua(I)[F

    move-result-object v4

    if-nez v4, :cond_1

    .line 21
    invoke-virtual {v12, v3, v11}, Lcom/smartisanos/smengine/y;->c(I[F)V

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v12, v3, v11}, Lcom/smartisanos/smengine/y;->d(I[F)V

    .line 23
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    sget-object v11, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v11}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_2

    .line 24
    :cond_2
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v4, v4

    sget v12, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v12, v12

    invoke-static {v11, v4, v12, v10, v1}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v4

    sput-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    .line 25
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v10, v10, v10}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 26
    :goto_2
    invoke-static {v7}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v4

    .line 27
    sget-object v11, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11, v4}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 28
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 29
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v10, v10, v10, v9}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 30
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 31
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 32
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 33
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 34
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    const/16 v11, 0x55

    invoke-virtual {v4, v11}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 35
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 36
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_4

    .line 37
    :cond_3
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v4, :cond_4

    .line 38
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v4

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    .line 39
    invoke-static {v4}, Lcom/smartisanos/launcher/view/Fb;->g(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    .line 40
    sget-object v11, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    iget v12, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v13, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v11, v12, v13, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_3

    .line 41
    :cond_4
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v10, v10, v10}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 42
    :goto_3
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 43
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 44
    :goto_4
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    new-instance v11, Lcom/smartisanos/launcher/view/b/m;

    invoke-direct {v11, v0}, Lcom/smartisanos/launcher/view/b/m;-><init>(Lcom/smartisanos/launcher/view/b/t;)V

    invoke-virtual {v4, v11}, Lcom/smartisanos/smengine/SceneNode;->setOnClickListener(Lcom/smartisanos/smengine/aa;)V

    .line 45
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const-string v11, "background.png"

    if-eqz v4, :cond_8

    .line 46
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v4, :cond_6

    .line 47
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/t;->log:Lcom/smartisanos/launcher/va;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mGaussianBackgroundRect isTransparentTheme = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 48
    :cond_5
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-static {v11}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    goto :goto_5

    .line 49
    :cond_6
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/t;->log:Lcom/smartisanos/launcher/va;

    const-string v11, "mGaussianBackgroundRect sIsGaussianTheme = t_blur_background"

    invoke-virtual {v4, v11}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 50
    :cond_7
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    const-string v11, "t_blur_background"

    invoke-virtual {v4, v11}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    goto :goto_5

    .line 51
    :cond_8
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v4

    const-string v12, "t_blur_background_folder"

    .line 52
    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v13

    if-nez v13, :cond_9

    .line 53
    invoke-static {}, Lcom/smartisanos/launcher/view/b/t;->Ur()Lcom/smartisanos/smengine/F;

    .line 54
    :cond_9
    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v4

    if-nez v4, :cond_a

    .line 55
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-static {v11}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    goto :goto_5

    .line 56
    :cond_a
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 57
    :goto_5
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    if-nez v4, :cond_b

    .line 58
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/t;->Uy()V

    goto :goto_6

    .line 59
    :cond_b
    sget-object v11, Lcom/smartisanos/launcher/data/Constants;->sBGColorInLargeScreen:Lcom/smartisanos/smengine/a/k;

    iget v12, v11, Lcom/smartisanos/smengine/a/k;->x:F

    iget v13, v11, Lcom/smartisanos/smengine/a/k;->y:F

    iget v14, v11, Lcom/smartisanos/smengine/a/k;->z:F

    iget v11, v11, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v4, v12, v13, v14, v11}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 60
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 61
    :goto_6
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    const-string v11, "folder/folder_open_3_3.png"

    const-string v12, "folder_background_bookcase"

    if-nez v4, :cond_d

    .line 62
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result v4

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    .line 63
    iget v13, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_bookcase_width:F

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_bookcase_height:F

    invoke-static {v12, v13, v4, v10, v1}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v4

    sput-object v4, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    .line 64
    invoke-static {v7}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v4

    .line 65
    sget-object v13, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v13, v4}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 66
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 67
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 68
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 69
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    invoke-static {v11}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 70
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 71
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 72
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    const/16 v13, 0x57

    invoke-virtual {v4, v13}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 73
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 74
    sget-boolean v13, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v13, :cond_c

    .line 75
    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->pageWorldCenterPointsInWindow:[[Lcom/smartisanos/smengine/a/j;

    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result v13

    aget-object v4, v4, v13

    aget-object v4, v4, v3

    .line 76
    :cond_c
    sget-object v13, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    iget v14, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v13, v14, v4, v10}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 77
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 78
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v9, v9, v9, v9}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 79
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 80
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v4, :cond_f

    .line 81
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    sget-object v13, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v13}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_7

    .line 82
    :cond_d
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 83
    sget-boolean v13, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v13, :cond_e

    .line 84
    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->pageWorldCenterPointsInWindow:[[Lcom/smartisanos/smengine/a/j;

    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result v13

    aget-object v4, v4, v13

    aget-object v4, v4, v3

    .line 85
    :cond_e
    sget-object v13, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    iget v14, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v13, v14, v4, v10}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 86
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 87
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 88
    :cond_f
    :goto_7
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    if-nez v4, :cond_11

    .line 89
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result v4

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    .line 90
    iget v13, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_bookcase_cover_width:F

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_bookcase_cover_height:F

    invoke-static {v12, v13, v4, v10, v1}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v4

    sput-object v4, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    .line 91
    invoke-static {v7}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v4

    .line 92
    sget-object v12, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v12, v4}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 93
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 94
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 95
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 96
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    const-string v12, "folder/folder_open_3_3_cover.png"

    invoke-static {v12}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 97
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 98
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 99
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    iget-object v12, v0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v12

    add-int/2addr v12, v1

    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 100
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 101
    sget-boolean v12, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v12, :cond_10

    .line 102
    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->pageWorldCenterPointsInWindow:[[Lcom/smartisanos/smengine/a/j;

    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result v12

    aget-object v4, v4, v12

    aget-object v4, v4, v3

    .line 103
    :cond_10
    sget-object v12, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    iget v13, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v12, v13, v4, v10}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 104
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 105
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v9, v9, v9, v9}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 106
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 107
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 108
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v4, :cond_13

    .line 109
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    sget-object v12, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v12}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_8

    .line 110
    :cond_11
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 111
    sget-boolean v12, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v12, :cond_12

    .line 112
    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->pageWorldCenterPointsInWindow:[[Lcom/smartisanos/smengine/a/j;

    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result v12

    aget-object v4, v4, v12

    aget-object v4, v4, v3

    .line 113
    :cond_12
    sget-object v12, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    iget v13, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v12, v13, v4, v10}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 114
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 115
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 116
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 117
    :cond_13
    :goto_8
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    if-nez v4, :cond_14

    .line 118
    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v4

    .line 119
    new-instance v12, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v12}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 120
    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/SceneNode;->getSize(Lcom/smartisanos/smengine/a/j;)V

    .line 121
    iget v4, v12, Lcom/smartisanos/smengine/a/j;->x:F

    .line 122
    iget v12, v12, Lcom/smartisanos/smengine/a/j;->y:F

    const-string v13, "folder_background_bookcase_preview"

    .line 123
    invoke-static {v13, v4, v12, v10, v1}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v4

    sput-object v4, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    .line 124
    invoke-static {v7}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v4

    .line 125
    sget-object v7, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v7, v4}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 126
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 127
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 128
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 129
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    invoke-static {v11}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 130
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 131
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 132
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    const/16 v5, 0x58

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 133
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 134
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 135
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->dR:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_9

    .line 136
    :cond_14
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 137
    :goto_9
    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/b/t;->Bc(Z)V

    .line 138
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    invoke-direct {v0, v1, v4}, Lcom/smartisanos/launcher/view/b/t;->a(ZLcom/smartisanos/smengine/F;)V

    .line 139
    sget-object v4, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    invoke-direct {v0, v1, v4}, Lcom/smartisanos/launcher/view/b/t;->a(ZLcom/smartisanos/smengine/F;)V

    .line 140
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v1, :cond_19

    .line 141
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    .line 142
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 143
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 144
    iget-object v5, v0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/la;->Zi()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 145
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 146
    iget-object v7, v0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/la;->aj()Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    .line 147
    new-instance v8, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v8, v9, v9, v9}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 148
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v9

    .line 149
    invoke-virtual {v9}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v9

    .line 150
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v4

    move v11, v3

    .line 151
    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_19

    .line 152
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/a/g;

    .line 153
    invoke-virtual {v12, v6}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 154
    new-instance v13, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v13}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 155
    invoke-virtual {v9, v6, v13}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v13

    .line 156
    new-instance v14, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v14, v10, v10, v10}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 157
    new-instance v15, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v15, v5}, Lcom/smartisanos/smengine/a/j;-><init>(Lcom/smartisanos/smengine/a/j;)V

    .line 158
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v16

    if-nez v16, :cond_15

    .line 159
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    move-object/from16 v18, v4

    iget-wide v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 160
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/smartisanos/launcher/view/a/la;->r(J)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 161
    iget v3, v15, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v3, v4

    iput v3, v15, Lcom/smartisanos/smengine/a/j;->x:F

    .line 162
    iget v3, v15, Lcom/smartisanos/smengine/a/j;->y:F

    iget v4, v1, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v3, v4

    iput v3, v15, Lcom/smartisanos/smengine/a/j;->y:F

    .line 163
    iget v3, v15, Lcom/smartisanos/smengine/a/j;->z:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    add-float/2addr v3, v1

    iput v3, v15, Lcom/smartisanos/smengine/a/j;->z:F

    .line 164
    invoke-virtual {v9, v15, v14}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    goto :goto_b

    :cond_15
    move-object/from16 v18, v4

    move-object v1, v13

    .line 165
    :goto_b
    new-instance v3, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v3}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 166
    iget v4, v0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    const/16 v14, 0xe

    invoke-virtual {v3, v1, v13, v14, v4}, Lcom/smartisanos/launcher/animations/s;->b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 167
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-static {v12, v3}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 168
    new-instance v1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 169
    iget v3, v0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    invoke-virtual {v1, v7, v8, v14, v3}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 170
    new-instance v3, Lcom/smartisanos/launcher/view/b/n;

    invoke-direct {v3, v0, v12}, Lcom/smartisanos/launcher/view/b/n;-><init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    .line 171
    invoke-static {v12, v1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    const/4 v3, 0x0

    .line 172
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 173
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4, v10, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    const/4 v1, 0x1

    .line 174
    invoke-virtual {v12, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Mc;

    .line 175
    invoke-virtual {v12, v3}, Lcom/smartisanos/launcher/view/a/g;->fb(I)Lcom/smartisanos/smengine/F;

    move-result-object v13

    .line 176
    invoke-virtual {v12, v1}, Lcom/smartisanos/launcher/view/a/g;->fb(I)Lcom/smartisanos/smengine/F;

    move-result-object v12

    if-eqz v4, :cond_16

    .line 177
    new-instance v1, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 178
    iget v4, v0, Lcom/smartisanos/launcher/view/b/t;->WQ:F

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x3f800000    # 1.0f

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v19, v1

    .line 179
    invoke-virtual/range {v19 .. v28}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 180
    invoke-virtual {v1, v14}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 181
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4, v10, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_16
    if-eqz v13, :cond_17

    .line 182
    new-instance v1, Lcom/smartisanos/smengine/oa;

    invoke-direct {v1, v13}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 183
    iget v4, v0, Lcom/smartisanos/launcher/view/b/t;->WQ:F

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x3f800000    # 1.0f

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v19, v1

    .line 184
    invoke-virtual/range {v19 .. v28}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 185
    invoke-virtual {v1, v14}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 186
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4, v10, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_17
    if-eqz v12, :cond_18

    .line 187
    new-instance v1, Lcom/smartisanos/smengine/oa;

    invoke-direct {v1, v12}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 188
    iget v4, v0, Lcom/smartisanos/launcher/view/b/t;->WQ:F

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x3f800000    # 1.0f

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v19, v1

    .line 189
    invoke-virtual/range {v19 .. v28}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 190
    invoke-virtual {v1, v14}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 191
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4, v10, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_18
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v18

    const/4 v1, 0x1

    goto/16 :goto_a

    .line 192
    :cond_19
    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/b/t;->Ac(Z)V

    .line 193
    iget-object v3, v0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v3, :cond_1a

    .line 194
    invoke-virtual {v3, v10, v10, v10, v10}, Lcom/smartisanos/launcher/view/Mc;->setColor(FFFF)V

    .line 195
    iget-object v3, v0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v3

    invoke-virtual {v3, v10, v10, v10, v10}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 196
    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/b/t;->Cc(Z)V

    .line 197
    :cond_1a
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    const/high16 v4, 0x2000000

    invoke-virtual {v3, v4, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 198
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    new-instance v3, Lcom/smartisanos/launcher/view/b/o;

    invoke-direct {v3, v0, v2}, Lcom/smartisanos/launcher/view/b/o;-><init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/launcher/view/Z;)V

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 199
    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    return-void

    .line 200
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "### folder open not finish???"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/smartisanos/launcher/data/FolderInfo;)V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/FolderInfo;->lf()I

    move-result v0

    if-lez v0, :cond_4

    .line 5
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->pageWorldCenterPointsInWindow:[[Lcom/smartisanos/smengine/a/j;

    iget v2, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    aget-object v3, v1, v2

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    .line 6
    aget-object v1, v1, v2

    aget-object v1, v1, v4

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_1

    .line 8
    invoke-virtual {p1, v5}, Lcom/smartisanos/launcher/data/FolderInfo;->ia(I)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    .line 9
    iget v7, v6, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_0

    .line 10
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget v6, v6, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 16
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/view/b/t;->a(ILjava/util/ArrayList;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    const/4 v2, 0x1

    .line 20
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 21
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/b/t;->z(Lcom/smartisanos/launcher/view/b/M;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->l(Lcom/smartisanos/launcher/view/b/M;)V

    const/4 v4, 0x0

    .line 23
    invoke-virtual {p1, v3, v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 24
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateWorldTransforms()V

    .line 25
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->updateWorldBoundingVolume()V

    .line 26
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 27
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 28
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 30
    iget-object v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/smartisanos/launcher/view/activeicon/m;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x7

    if-eqz v2, :cond_3

    .line 31
    iget-wide v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {p1, v1, v2}, Lcom/smartisanos/launcher/view/b/M;->s(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v2

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/a/la;->a(Lcom/smartisanos/launcher/view/activeicon/m;)V

    goto :goto_2

    .line 33
    :cond_3
    iget-object v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v4, Lcom/smartisanos/launcher/view/activeicon/H;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    iget-wide v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {p1, v1, v2}, Lcom/smartisanos/launcher/view/b/M;->s(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v2

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/a/la;->a(Lcom/smartisanos/launcher/view/activeicon/H;)V

    goto :goto_2

    .line 36
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/t;->create()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/t;->TQ:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {p0, v0, v1}, Lcom/smartisanos/launcher/data/FolderSceneMetrics;->resolve(Ljava/lang/Object;ILjava/lang/Object;)Lcom/smartisanos/launcher/data/FolderSceneMetrics$Result;

    move-result-object v7

    iput-object v7, p0, Lcom/smartisanos/launcher/view/b/t;->sceneMetrics:Lcom/smartisanos/launcher/data/FolderSceneMetrics$Result;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/FolderSceneMetrics$Result;->getUniformScale()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/FolderSceneMetrics$Result;->getTranslateX()F

    move-result v1

    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/FolderSceneMetrics$Result;->getTranslateY()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/FolderSceneMetrics$Result;->isIdentity()Z

    move-result v0

    if-nez v0, :folder_scene_metrics_applied

    move-object v0, p0

    const/4 v1, 0x1

    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/FolderSceneMetrics$Result;->getSafeClipRect()Lcom/smartisanos/launcher/data/FolderSceneMetrics$SafeClipRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/FolderSceneMetrics$SafeClipRect;->getLeft()I

    move-result v2

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/FolderSceneMetrics$Result;->getSafeClipRect()Lcom/smartisanos/launcher/data/FolderSceneMetrics$SafeClipRect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/FolderSceneMetrics$SafeClipRect;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/FolderSceneMetrics$Result;->getSafeClipRect()Lcom/smartisanos/launcher/data/FolderSceneMetrics$SafeClipRect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/FolderSceneMetrics$SafeClipRect;->getRight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/FolderSceneMetrics$Result;->getSafeClipRect()Lcom/smartisanos/launcher/data/FolderSceneMetrics$SafeClipRect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/FolderSceneMetrics$SafeClipRect;->getBottom()I

    move-result v5

    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/FolderSceneMetrics$Result;->getSafeClipRect()Lcom/smartisanos/launcher/data/FolderSceneMetrics$SafeClipRect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/FolderSceneMetrics$SafeClipRect;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/SceneNode;->setScissor(ZIIIIZ)V

    :folder_scene_metrics_applied
    .line 37
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 38
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Aq()V

    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/launcher/animations/r;Lcom/smartisanos/launcher/view/ec;)V
    .locals 0

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/smartisanos/launcher/view/b/fa;->a(Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/launcher/animations/r;Lcom/smartisanos/launcher/view/ec;)V

    .line 99
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object p0

    const-string p1, "cellIntoFolderArea"

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/C;->Ia(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object p0

    const-string p1, "cellExitFolderArea"

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/C;->Ia(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/b/M;I)Z
    .locals 2

    .line 52
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not call switchPageMode page = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " action = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ar()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public b(Lcom/smartisanos/launcher/data/FolderInfo;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/FolderInfo;->lf()I

    move-result v0

    if-lez v0, :cond_5

    .line 2
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->pageWorldCenterPointsInWindow:[[Lcom/smartisanos/smengine/a/j;

    iget v2, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    aget-object v3, v1, v2

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    .line 3
    aget-object v1, v1, v2

    aget-object v1, v1, v4

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/t;->TQ:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/b/N;->C(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v2

    .line 5
    iget v5, v2, Lcom/smartisanos/smengine/a/i;->x:F

    add-float/2addr v3, v5

    .line 6
    iget v5, v2, Lcom/smartisanos/smengine/a/i;->y:F

    add-float/2addr v1, v5

    .line 7
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :goto_0
    if-ge v4, v0, :cond_1

    .line 8
    invoke-virtual {p1, v4}, Lcom/smartisanos/launcher/data/FolderInfo;->ia(I)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    .line 9
    iget v7, v6, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_0

    .line 10
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget v6, v6, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v0, 0x1

    move v4, v1

    move v1, v0

    .line 16
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 17
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 19
    invoke-direct {p0, v6, v7}, Lcom/smartisanos/launcher/view/b/t;->a(ILjava/util/ArrayList;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v6

    .line 20
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    .line 21
    invoke-virtual {v6, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 22
    invoke-virtual {p0, v6}, Lcom/smartisanos/launcher/view/b/fa;->l(Lcom/smartisanos/launcher/view/b/M;)V

    .line 23
    invoke-direct {p0, v6}, Lcom/smartisanos/launcher/view/b/t;->z(Lcom/smartisanos/launcher/view/b/M;)V

    const/4 v8, 0x0

    .line 24
    invoke-virtual {v6, v3, v4, v8}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 25
    iget v8, v2, Lcom/smartisanos/smengine/a/i;->x:F

    add-float/2addr v3, v8

    .line 26
    iget v8, v2, Lcom/smartisanos/smengine/a/i;->y:F

    add-float/2addr v4, v8

    .line 27
    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateWorldTransforms()V

    .line 28
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/M;->updateWorldBoundingVolume()V

    .line 29
    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 30
    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 31
    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 32
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 33
    iget-object v9, v8, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v10, Lcom/smartisanos/launcher/view/activeicon/m;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x7

    if-eqz v9, :cond_3

    .line 34
    iget-wide v8, v8, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v6, v8, v9}, Lcom/smartisanos/launcher/view/b/M;->s(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v8

    .line 35
    iget-object v9, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v9

    invoke-virtual {v8, v10}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-virtual {v9, v8}, Lcom/smartisanos/launcher/view/a/la;->a(Lcom/smartisanos/launcher/view/activeicon/m;)V

    goto :goto_3

    .line 36
    :cond_3
    iget-object v9, v8, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v11, Lcom/smartisanos/launcher/view/activeicon/H;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 37
    iget-wide v8, v8, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v6, v8, v9}, Lcom/smartisanos/launcher/view/b/M;->s(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v8

    .line 38
    iget-object v9, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v9

    invoke-virtual {v8, v10}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-virtual {v9, v8}, Lcom/smartisanos/launcher/view/a/la;->a(Lcom/smartisanos/launcher/view/activeicon/H;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 39
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public clear(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Mc;->clear(Z)V

    .line 3
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    .line 5
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    .line 6
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->clear(Z)V

    return-void
.end method

.method public create()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/t;->Rz()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/t;->Sz()V

    return-void
.end method

.method public cs()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->updatePageCellCenterPoints(I)V

    return-void
.end method

.method public ds()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/b/M;->ib(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAllViewCanBeTouched()Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    .line 3
    invoke-virtual {v1, p0}, Lcom/smartisanos/smengine/SceneNode;->setForceDispatchTouchToView(Z)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/smartisanos/launcher/view/b/fa;->getAllViewCanBeTouched()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public h(ZZ)V
    .locals 28

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    if-nez v1, :cond_11

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/b/t;->mIsClosing:Z

    .line 3
    iget-object v2, v0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/FolderInfo;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/FolderInfo;->lf()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 5
    iget-object v2, v0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/a/g;->fb(Z)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Vg()V

    const/high16 v2, 0x2000000

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/t;->Pz()V

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/t;->Qz()V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/db;->eh()V

    .line 11
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v1, :cond_1

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 13
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Vg()V

    .line 14
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/t;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "close. setLauncherStatus(StatusManager.ON_FOLDER_DOING_ANIM, false)"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 15
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    return-void

    .line 18
    :cond_3
    new-instance v4, Lcom/smartisanos/smengine/g;

    invoke-direct {v4}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v4, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v2

    .line 21
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    const/4 v4, 0x2

    if-nez p2, :cond_9

    .line 22
    iget-object v5, v0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v1, :cond_a

    .line 23
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v5

    if-ltz v5, :cond_a

    .line 24
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v5, :cond_a

    .line 25
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    .line 26
    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 27
    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 28
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 29
    iget-object v7, v0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/la;->Zi()Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    .line 30
    new-instance v8, Lcom/smartisanos/smengine/a/j;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v9, v9}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 31
    iget-object v10, v0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/a/la;->aj()Lcom/smartisanos/smengine/a/j;

    move-result-object v10

    .line 32
    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v11

    .line 33
    invoke-virtual {v11}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v11

    .line 34
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v5

    move v12, v3

    .line 35
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_a

    .line 36
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/smartisanos/launcher/view/a/g;

    .line 37
    invoke-virtual {v13, v6}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 38
    new-instance v14, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v14}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 39
    invoke-virtual {v11, v6, v14}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v14

    .line 40
    new-instance v15, Lcom/smartisanos/smengine/a/j;

    const/4 v9, 0x0

    invoke-direct {v15, v9, v9, v9}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 41
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1, v7}, Lcom/smartisanos/smengine/a/j;-><init>(Lcom/smartisanos/smengine/a/j;)V

    .line 42
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v16

    if-nez v16, :cond_4

    .line 43
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    move-object/from16 v17, v10

    iget-wide v9, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 44
    iget-object v3, v0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lcom/smartisanos/launcher/view/a/la;->r(J)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 45
    iget v9, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v3, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v9, v10

    iput v9, v1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 46
    iget v9, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v10, v3, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v9, v10

    iput v9, v1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 47
    iget v9, v1, Lcom/smartisanos/smengine/a/j;->z:F

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->z:F

    add-float/2addr v9, v3

    iput v9, v1, Lcom/smartisanos/smengine/a/j;->z:F

    .line 48
    invoke-virtual {v11, v1, v15}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object/from16 v17, v10

    move-object v1, v14

    .line 49
    :goto_1
    new-instance v3, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v3}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 50
    iget v9, v0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    invoke-virtual {v3, v14, v1, v4, v9}, Lcom/smartisanos/launcher/animations/s;->b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 51
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-static {v13, v3}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 52
    new-instance v1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 53
    iget v3, v0, Lcom/smartisanos/launcher/view/b/t;->XQ:F

    move-object/from16 v10, v17

    invoke-virtual {v1, v8, v10, v4, v3}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 54
    new-instance v3, Lcom/smartisanos/launcher/view/b/k;

    invoke-direct {v3, v0, v13}, Lcom/smartisanos/launcher/view/b/k;-><init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    .line 55
    invoke-static {v13, v1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    const/4 v3, 0x0

    .line 56
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 57
    iget-object v14, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v14, v9, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v13, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Mc;

    .line 59
    invoke-virtual {v13, v3}, Lcom/smartisanos/launcher/view/a/g;->fb(I)Lcom/smartisanos/smengine/F;

    move-result-object v14

    .line 60
    invoke-virtual {v13, v1}, Lcom/smartisanos/launcher/view/a/g;->fb(I)Lcom/smartisanos/smengine/F;

    move-result-object v3

    if-eqz v9, :cond_5

    .line 61
    new-instance v1, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 62
    iget v9, v0, Lcom/smartisanos/launcher/view/b/t;->WQ:F

    invoke-virtual {v1, v9}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v19, 0x3

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v18, v1

    .line 63
    invoke-virtual/range {v18 .. v27}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 64
    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 65
    iget-object v9, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    const/4 v15, 0x0

    invoke-virtual {v9, v15, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_5
    if-eqz v14, :cond_6

    .line 66
    new-instance v1, Lcom/smartisanos/smengine/oa;

    invoke-direct {v1, v14}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 67
    iget v9, v0, Lcom/smartisanos/launcher/view/b/t;->WQ:F

    invoke-virtual {v1, v9}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v19, 0x3

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v18, v1

    .line 68
    invoke-virtual/range {v18 .. v27}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 69
    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 70
    iget-object v9, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    const/4 v14, 0x0

    invoke-virtual {v9, v14, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_6
    if-eqz v3, :cond_7

    .line 71
    new-instance v1, Lcom/smartisanos/smengine/oa;

    invoke-direct {v1, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 72
    iget v3, v0, Lcom/smartisanos/launcher/view/b/t;->WQ:F

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v19, 0x3

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v18, v1

    .line 73
    invoke-virtual/range {v18 .. v27}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 74
    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 75
    iget-object v3, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_7
    const/4 v1, 0x0

    .line 76
    invoke-virtual {v13, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/F;

    .line 77
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    if-eqz v3, :cond_8

    .line 78
    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float v13, v1, v9

    div-float/2addr v1, v9

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v3, v13, v1, v9}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 79
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto :goto_2

    :cond_8
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_2
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 80
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/t;->Tz()V

    :cond_a
    const/4 v1, 0x0

    if-nez p2, :cond_b

    .line 81
    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/b/t;->Ac(Z)V

    .line 82
    :cond_b
    sget-object v3, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    if-eqz v3, :cond_c

    .line 83
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 84
    sget-object v3, Lcom/smartisanos/launcher/view/b/t;->aR:Lcom/smartisanos/smengine/F;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 85
    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/b/t;->Bc(Z)V

    .line 86
    :cond_c
    sget-object v3, Lcom/smartisanos/launcher/view/b/t;->bR:Lcom/smartisanos/smengine/F;

    if-eqz v3, :cond_e

    if-nez p2, :cond_d

    .line 87
    invoke-direct {v0, v1, v3}, Lcom/smartisanos/launcher/view/b/t;->a(ZLcom/smartisanos/smengine/F;)V

    goto :goto_3

    .line 88
    :cond_d
    invoke-direct {v0, v3}, Lcom/smartisanos/launcher/view/b/t;->b(Lcom/smartisanos/smengine/F;)V

    .line 89
    :cond_e
    :goto_3
    sget-object v3, Lcom/smartisanos/launcher/view/b/t;->cR:Lcom/smartisanos/smengine/F;

    if-eqz v3, :cond_f

    .line 90
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 91
    :cond_f
    iget-object v3, v0, Lcom/smartisanos/launcher/view/b/t;->mTextView:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v3, :cond_10

    .line 92
    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/b/t;->Cc(Z)V

    .line 93
    :cond_10
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    new-instance v3, Lcom/smartisanos/launcher/view/b/l;

    invoke-direct {v3, v0, v2}, Lcom/smartisanos/launcher/view/b/l;-><init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/launcher/view/Z;)V

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 94
    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/t;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    return-void

    .line 95
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "### folder close not finish???"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/t;->Tr()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->gH:I

    .line 4
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    .line 5
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getMaxPageCount(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->LQ:I

    .line 6
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_app_count:I

    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->MQ:I

    .line 7
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->TQ:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 8
    new-instance v0, Lcom/smartisanos/launcher/animations/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/animations/r;-><init>(Lcom/smartisanos/launcher/view/b/fa;Z)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {p0, p0, v0, v1}, Lcom/smartisanos/launcher/view/b/t;->a(Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/launcher/animations/r;Lcom/smartisanos/launcher/view/ec;)V

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    const-string v2, "CoverPageClicked"

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/C;->a(Ljava/lang/String;Lcom/smartisanos/smengine/B;)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/ec;->b(Lcom/smartisanos/launcher/view/b/fa;)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/b/ra;->b(Lcom/smartisanos/launcher/view/b/fa;)V

    .line 17
    new-instance v0, Lcom/smartisanos/launcher/animations/Qa;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/animations/Qa;-><init>(Lcom/smartisanos/launcher/view/b/fa;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->yQ:Lcom/smartisanos/launcher/animations/Qa;

    .line 18
    new-instance v0, Lcom/smartisanos/launcher/view/b/P;

    const-string v1, "pageParentForTranslate"

    invoke-direct {v0, v1, p0}, Lcom/smartisanos/launcher/view/b/P;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setCollideAlways(Z)V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 22
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/b/fa;->AQ:Z

    return-void
.end method

.method public jr()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public kr()F
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    add-float/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public lb(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_3X3_MODE_FOLDER(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "should not call it. mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onClose()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 2
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/b/M;->b(Lcom/smartisanos/launcher/view/b/fa;)V

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->getAnimation()Lcom/smartisanos/launcher/animations/Ja;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->getAnimation()Lcom/smartisanos/launcher/animations/Ja;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/animations/Ja;->c(Lcom/smartisanos/launcher/view/b/M;)V

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/a/g;

    .line 6
    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/view/a/g;->k(Lcom/smartisanos/smengine/SceneNode;)V

    .line 7
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/SceneNode;->setParent(Lcom/smartisanos/smengine/SceneNode;)V

    .line 8
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->removeAllChildren()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setOnClickListener(Lcom/smartisanos/smengine/aa;)V

    .line 10
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setParent(Lcom/smartisanos/smengine/SceneNode;)V

    .line 11
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->removeAllChildren()V

    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/b/M;->clear(Z)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->setOnClickListener(Lcom/smartisanos/smengine/aa;)V

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/t;->cs()V

    return-void
.end method

.method public p(J)Lcom/smartisanos/launcher/view/a/g;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    check-cast v0, Lcom/smartisanos/launcher/view/a/ka;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/smartisanos/launcher/view/a/ka;->b(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->lf()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_a

    const/4 p1, 0x0

    move p2, p1

    move-object v2, v1

    .line 4
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_1

    .line 5
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v3, :cond_0

    move-object v2, v4

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_9

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gt p2, v3, :cond_9

    .line 8
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/launcher/view/a/g;

    .line 9
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/data/FolderInfo;->ia(I)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    const/4 v5, -0x1

    iput v5, v4, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    .line 10
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/la;->fj()V

    .line 11
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    instance-of v4, v4, Lcom/smartisanos/launcher/view/b/M;

    const/16 v5, 0x10

    if-eqz v4, :cond_6

    .line 12
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    .line 13
    iget-object v6, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->tl()V

    .line 14
    iget-object v6, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4, v6, p1}, Lcom/smartisanos/launcher/view/b/M;->g(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 15
    iget-object v6, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v6

    .line 16
    iget-object v7, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v7

    .line 17
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/t;->cs()V

    .line 18
    invoke-static {v6, v7}, Lcom/smartisanos/launcher/view/b/M;->y(II)I

    move-result p0

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v8

    .line 20
    aget-object p0, v8, p0

    .line 21
    invoke-virtual {p2, v6, v7}, Lcom/smartisanos/launcher/view/a/g;->v(II)V

    .line 22
    invoke-virtual {p2, v4}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 23
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->jl()V

    .line 24
    invoke-virtual {p2, p1}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    .line 25
    iget v6, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p2, v6, v7, p0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 26
    invoke-virtual {p2, p0, p0, p0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 27
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz p0, :cond_3

    .line 28
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result p0

    if-ne v3, p0, :cond_3

    const/16 p0, 0xa

    .line 29
    invoke-virtual {p2, p0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    const v6, 0x3dcccccd    # 0.1f

    if-eqz v3, :cond_2

    .line 30
    invoke-virtual {p2, p0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0, v6, v6, v6, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 31
    :cond_2
    invoke-virtual {p2, p1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 32
    invoke-virtual {p2, p1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0, v6, v6, v6, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 33
    :cond_3
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 34
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->Qe()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 35
    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/smartisanos/launcher/view/activeicon/H;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 36
    invoke-static {}, Lcom/smartisanos/launcher/view/activeicon/H;->zq()V

    .line 37
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez p0, :cond_5

    .line 38
    invoke-virtual {p2, v5, p1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 39
    :cond_5
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 40
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 41
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    .line 42
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->Om()V

    goto/16 :goto_1

    .line 43
    :cond_6
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    instance-of v4, v4, Lcom/smartisanos/launcher/view/V;

    if-eqz v4, :cond_8

    .line 44
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    .line 45
    iget-object v6, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    .line 46
    iget-object v7, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    .line 47
    iget-object v8, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->km()Lcom/smartisanos/launcher/view/a/f;

    move-result-object v8

    iget-object v8, v8, Lcom/smartisanos/launcher/view/a/f;->xy:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v8

    .line 48
    iget-object v9, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/V;

    .line 49
    iget-object v10, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/view/V;->x(Lcom/smartisanos/launcher/view/a/g;)V

    .line 50
    iget-object v10, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 51
    iget-object v10, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/a/g;->tl()V

    .line 52
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/a/g;->clear(Z)V

    .line 53
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 54
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->tl()V

    .line 55
    invoke-virtual {p2, v3}, Lcom/smartisanos/launcher/view/a/g;->clear(Z)V

    const/4 p0, -0x2

    .line 56
    iput p0, v4, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 57
    iget p0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {v9, v4, p0}, Lcom/smartisanos/launcher/view/V;->b(Lcom/smartisanos/launcher/data/ItemInfo;I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    .line 58
    iget p2, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v6, Lcom/smartisanos/smengine/a/j;->y:F

    iget v6, v6, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p0, p2, v10, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 59
    iget p2, v7, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v7, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v7, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p0, p2, v6, v7}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 60
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->km()Lcom/smartisanos/launcher/view/a/f;

    move-result-object p2

    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6, v8}, Lcom/smartisanos/smengine/a/j;-><init>(Lcom/smartisanos/smengine/a/j;)V

    iput-object v6, p2, Lcom/smartisanos/launcher/view/a/f;->xy:Lcom/smartisanos/smengine/a/j;

    .line 61
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/launcher/view/l;

    invoke-virtual {p2, v3}, Lcom/smartisanos/launcher/view/l;->U(Z)V

    .line 62
    invoke-virtual {p0, v5, p1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 63
    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/ItemInfo;->Qe()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 64
    iget-object p2, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/smartisanos/launcher/view/activeicon/H;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 65
    invoke-static {}, Lcom/smartisanos/launcher/view/activeicon/H;->zq()V

    .line 66
    :cond_7
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 67
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/V;->gp()V

    goto :goto_2

    :cond_8
    :goto_1
    move-object p0, p2

    .line 68
    :goto_2
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/data/FolderInfo;->ia(I)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/ItemInfo;->clone()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p1

    .line 69
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-wide v3, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object p1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->saa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {p1, v1, p2}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 73
    iget-wide p1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {p1, p2}, Lcom/smartisanos/launcher/Aa;->j(J)Lcom/smartisanos/launcher/data/ItemInfo;

    .line 74
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 75
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "### size error"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_a
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    .line 77
    iget p1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {v0, p1, p0}, Lcom/smartisanos/launcher/data/FolderInfo;->j(II)V

    move-object p0, v1

    :goto_3
    return-object p0
.end method

.method public s(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 2
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    move v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_3

    .line 3
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/t;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "it will be crash in USER_DEBUG"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void

    .line 5
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->p(Lcom/smartisanos/launcher/view/b/M;)I

    move-result p1

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/t;->jr()I

    move-result v2

    if-ne v2, v4, :cond_6

    new-array v3, v4, [Lcom/smartisanos/smengine/a/j;

    .line 8
    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->pageWorldCenterPointsInWindow:[[Lcom/smartisanos/smengine/a/j;

    iget v5, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    aget-object v4, v4, v5

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->tr()F

    move-result v4

    .line 10
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ge v0, v5, :cond_4

    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    .line 12
    div-int v7, v0, v2

    .line 13
    rem-int v8, v0, v2

    int-to-float v7, v7

    mul-float/2addr v7, v4

    .line 14
    aget-object v9, v3, v8

    iget v9, v9, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v7, v9

    .line 15
    aget-object v8, v3, v8

    iget v8, v8, Lcom/smartisanos/smengine/a/j;->y:F

    .line 16
    invoke-virtual {v5, v7, v8, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    neg-int p1, p1

    int-to-float p1, p1

    mul-float/2addr p1, v4

    invoke-virtual {v0, p1, v6, v6}, Lcom/smartisanos/launcher/view/b/P;->setTranslate(FFF)V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateGeometricState()V

    .line 19
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/t;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### after reset current screenIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_5
    return-void

    .line 20
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Group size wrong:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateTitle(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/t;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "updateTitle. may be crash."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/g;->Na(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/t;->Qz()V

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/t;->Sz()V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 9
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/t;->VQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    iget-wide v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v2, "_id"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "title"

    .line 12
    invoke-virtual {v1, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object p0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->VZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/F;->a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V

    return-void
.end method

.method public w(Lcom/smartisanos/launcher/view/b/M;)Z
    .locals 2

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not call switchPageMode page = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
