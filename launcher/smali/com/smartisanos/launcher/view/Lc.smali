.class public Lcom/smartisanos/launcher/view/Lc;
.super Lcom/smartisanos/smengine/SceneNode;
.source "StatusBar.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private LJ:Lcom/smartisanos/smengine/SceneNode;

.field private jH:I

.field private mText:Lcom/smartisanos/launcher/view/Mc;

.field private sO:Lcom/smartisanos/smengine/F;

.field private sc:[Lcom/smartisanos/launcher/view/Lc;

.field private tO:Lcom/smartisanos/smengine/F;

.field private uO:Lcom/smartisanos/launcher/view/Mc;

.field private vO:Lcom/smartisanos/launcher/view/Mc;

.field public wO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/Lc;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/Lc;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/smartisanos/launcher/view/Lc;

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/smartisanos/launcher/view/Lc;->jH:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/smartisanos/launcher/view/Lc;->wO:I

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Lc;->Ex()V

    return-void
.end method

.method private Ex()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v0, v0

    .line 3
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "background_status_bar"

    .line 4
    invoke-static {v4, v1, v0, v2, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 5
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 6
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez v1, :cond_1

    const-string v0, "TwoTexDifferentTexcoordMaterial"

    .line 7
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 10
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const-string v1, "status_bar.png"

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    const-string v1, "t_blur_background"

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 20
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_3

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/sa;->ob()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Lc;->Tl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->wa(I)Lcom/smartisanos/launcher/view/mb;

    move-result-object v0

    .line 25
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/view/mb;->Pw:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Lc;Lcom/smartisanos/launcher/view/Mc;)Lcom/smartisanos/launcher/view/Mc;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Lc;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Lc;->tO:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Lc;Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->tO:Lcom/smartisanos/smengine/F;

    return-object p1
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/Lc;)Lcom/smartisanos/launcher/view/Mc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    return-object p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/Lc;Lcom/smartisanos/launcher/view/Mc;)Lcom/smartisanos/launcher/view/Mc;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->mText:Lcom/smartisanos/launcher/view/Mc;

    return-object p1
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/Lc;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method static synthetic d(Lcom/smartisanos/launcher/view/Lc;)[Lcom/smartisanos/launcher/view/Lc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    return-object p0
.end method

.method static synthetic e(Lcom/smartisanos/launcher/view/Lc;)Lcom/smartisanos/launcher/view/Mc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Lc;->mText:Lcom/smartisanos/launcher/view/Mc;

    return-object p0
.end method


# virtual methods
.method public Bi()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Lc;->Li()V

    :cond_2
    return-void
.end method

.method public Li()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "status_bar.png"

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    const-string v0, "TwoTexDifferentTexcoordMaterial"

    .line 4
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 5
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    const-string v5, "t_blur_background"

    invoke-virtual {v0, v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Lc;->ip()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/I;

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    const/4 v5, 0x3

    .line 12
    invoke-virtual {v0, v5, v2}, Lcom/smartisanos/smengine/y;->c(I[F)V

    const-string v0, "TextureModularColorMaterial"

    .line 13
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 14
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5, v5, v5, v5}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v4, v2}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 18
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    if-eqz v0, :cond_4

    .line 19
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    array-length v5, v0

    if-ge v1, v5, :cond_4

    .line 20
    aget-object v5, v0, v1

    if-eqz v5, :cond_3

    .line 21
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aput-object v2, v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->LJ:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_5

    .line 25
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 26
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->LJ:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 27
    iput-object v2, p0, Lcom/smartisanos/launcher/view/Lc;->LJ:Lcom/smartisanos/smengine/SceneNode;

    .line 28
    :cond_5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target/--/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v1

    .line 32
    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 33
    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->cb(Ljava/lang/String;)V

    .line 37
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    return-void
.end method

.method public Mh()Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method public Tl()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/Lc;->jH:I

    return p0
.end method

.method public a(Lcom/smartisanos/smengine/g;FI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4
    sget v2, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v2, v2

    .line 5
    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v3, v3

    .line 6
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v4, v4

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/J;->Ra()Landroid/content/res/Resources;

    move-result-object v5

    .line 8
    sget v6, Lcom/smartisanos/launcher/ob;->multi_select_in_mode:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v6

    .line 10
    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 11
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 12
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v6, :cond_0

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    move-object v11, v5

    .line 14
    iget-object v5, v0, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 15
    sget-boolean v5, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/smartisanos/launcher/view/Lc;->log:Lcom/smartisanos/launcher/va;

    const-string v7, "## mStatusBarText != null11111"

    invoke-virtual {v5, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    const/4 v5, 0x0

    .line 16
    invoke-virtual {v0, v5, v6}, Lcom/smartisanos/launcher/view/Lc;->b(Lcom/smartisanos/smengine/g;F)V

    .line 17
    :cond_2
    new-instance v5, Lcom/smartisanos/launcher/view/Mc;

    const/4 v12, 0x0

    sget-object v13, Lcom/smartisanos/launcher/view/Mc;->EO:Landroid/graphics/Paint;

    float-to-int v14, v3

    float-to-int v15, v2

    const-string v10, "status_bar_text"

    move-object v9, v5

    invoke-direct/range {v9 .. v15}, Lcom/smartisanos/launcher/view/Mc;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V

    iput-object v5, v0, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    .line 18
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v5

    .line 19
    iget-object v7, v5, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    const/high16 v9, 0x40000000    # 2.0f

    div-float v10, v3, v9

    move v13, v2

    div-float/2addr v2, v9

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/launcher/J;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, v0, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Mc;->getWidth()F

    move-result v14

    invoke-static {v11, v12, v3, v14, v13}, Lcom/smartisanos/launcher/compat/EditModeHeaderCutoutCompat;->resolveAndBind(Landroid/app/Activity;Ljava/lang/Object;FFF)F

    move-result v10

    .line 22
    invoke-static {v10, v2, v3, v4, v7}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 23
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    iget v3, v7, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {v2, v3, v6, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 24
    invoke-virtual {v5}, Lcom/smartisanos/smengine/d/f;->release()V

    .line 25
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 26
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Mc;->updateGeometricState()V

    .line 27
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v2

    invoke-virtual {v2, v8, v8}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(IZ)V

    if-eqz v1, :cond_4

    .line 28
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v2

    invoke-virtual {v2, v6, v6, v6, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 29
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    move/from16 v3, p2

    .line 30
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v3, 0xd

    .line 31
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v7, v2

    .line 32
    invoke-virtual/range {v7 .. v16}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 33
    invoke-virtual {v1, v6, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 34
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Lc;->Tl()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/nb;->wa(I)Lcom/smartisanos/launcher/view/mb;

    move-result-object v1

    .line 35
    iget-object v0, v0, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    iget v1, v1, Lcom/smartisanos/launcher/view/mb;->Qw:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/g;FLjava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p3, :cond_6

    .line 36
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 37
    :cond_0
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Lc;->mText:Lcom/smartisanos/launcher/view/Mc;

    const/4 v3, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {v0, v3, v9}, Lcom/smartisanos/launcher/view/Lc;->h(Lcom/smartisanos/smengine/g;F)V

    .line 39
    :cond_1
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v2, :cond_2

    .line 40
    sget-object v2, Lcom/smartisanos/launcher/view/Lc;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "## mStatusBarText != null...."

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v3, v9}, Lcom/smartisanos/launcher/view/Lc;->b(Lcom/smartisanos/smengine/g;F)V

    .line 42
    :cond_2
    sget v2, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v10, v2

    .line 43
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v11, v2

    .line 44
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v12, v2

    .line 45
    new-instance v13, Lcom/smartisanos/launcher/view/Mc;

    const/4 v5, 0x0

    sget-object v6, Lcom/smartisanos/launcher/view/Mc;->EO:Landroid/graphics/Paint;

    float-to-int v7, v11

    float-to-int v8, v10

    const-string v3, "status_bar_center_text"

    move-object v2, v13

    move-object/from16 v4, p3

    invoke-direct/range {v2 .. v8}, Lcom/smartisanos/launcher/view/Mc;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V

    iput-object v13, v0, Lcom/smartisanos/launcher/view/Lc;->mText:Lcom/smartisanos/launcher/view/Mc;

    .line 46
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Lc;->mText:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v2, :cond_4

    .line 47
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v2

    .line 48
    iget-object v3, v2, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v11, v4

    div-float/2addr v10, v4

    .line 49
    invoke-static {}, Lcom/smartisanos/launcher/sa;->ub()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v6, :cond_3

    .line 50
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getStatusBarTextLeftMargin()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/smartisanos/launcher/view/Lc;->mText:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Mc;->getWidth()F

    move-result v6

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    .line 51
    :cond_3
    invoke-static {v5, v10, v11, v12, v3}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 52
    iget-object v4, v0, Lcom/smartisanos/launcher/view/Lc;->mText:Lcom/smartisanos/launcher/view/Mc;

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {v4, v3, v9, v9}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 53
    invoke-virtual {v2}, Lcom/smartisanos/smengine/d/f;->release()V

    .line 54
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Lc;->mText:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Mc;->updateGeometricState()V

    .line 55
    :cond_4
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Lc;->mText:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 56
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Lc;->mText:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Mc;->updateGeometricState()V

    .line 57
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Lc;->mText:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(IZ)V

    if-eqz v1, :cond_5

    .line 58
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Lc;->mText:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v2

    invoke-virtual {v2, v9, v9, v9, v9}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 59
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Lc;->mText:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    move/from16 v3, p2

    .line 60
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v3, 0xd

    .line 61
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v10, v2

    .line 62
    invoke-virtual/range {v10 .. v19}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 63
    invoke-virtual {v1, v9, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 64
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Lc;->Tl()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/nb;->wa(I)Lcom/smartisanos/launcher/view/mb;

    move-result-object v1

    .line 65
    iget-object v0, v0, Lcom/smartisanos/launcher/view/Lc;->mText:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    iget v1, v1, Lcom/smartisanos/launcher/view/mb;->Qw:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public b(ZF)Lcom/smartisanos/smengine/oa;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_4

    .line 4
    sget v4, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v10, v4

    .line 5
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v9, v4

    const/4 v4, 0x1

    const-string v5, "gaussian_background"

    .line 6
    invoke-static {v5, v9, v10, v2, v4}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v5

    iput-object v5, v0, Lcom/smartisanos/launcher/view/Lc;->tO:Lcom/smartisanos/smengine/F;

    const-string v5, "TextureModularColorMaterial"

    .line 7
    invoke-static {v5}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v5

    .line 8
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v6, :cond_1

    const-string v5, "TwoTexDifferentTexcoordMaterial"

    .line 9
    invoke-static {v5}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v5

    .line 10
    :cond_1
    iget-object v6, v0, Lcom/smartisanos/launcher/view/Lc;->tO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6, v5}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 11
    iget-object v5, v0, Lcom/smartisanos/launcher/view/Lc;->tO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 12
    iget-object v5, v0, Lcom/smartisanos/launcher/view/Lc;->tO:Lcom/smartisanos/smengine/F;

    const-string v6, "t_blur_background"

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 13
    iget-object v5, v0, Lcom/smartisanos/launcher/view/Lc;->tO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 14
    iget-object v5, v0, Lcom/smartisanos/launcher/view/Lc;->tO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 15
    iget-object v5, v0, Lcom/smartisanos/launcher/view/Lc;->tO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 16
    iget-object v5, v0, Lcom/smartisanos/launcher/view/Lc;->tO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, -0x40000000    # -2.0f

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 17
    iget-object v5, v0, Lcom/smartisanos/launcher/view/Lc;->tO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 18
    iget-object v5, v0, Lcom/smartisanos/launcher/view/Lc;->tO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 19
    iget-object v5, v0, Lcom/smartisanos/launcher/view/Lc;->tO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Lc;->Tl()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/nb;->wa(I)Lcom/smartisanos/launcher/view/mb;

    move-result-object v5

    .line 21
    iget-object v6, v0, Lcom/smartisanos/launcher/view/Lc;->tO:Lcom/smartisanos/smengine/F;

    iget v5, v5, Lcom/smartisanos/launcher/view/mb;->Pw:I

    sub-int/2addr v5, v4

    invoke-virtual {v6, v5}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    const/4 v8, 0x0

    .line 22
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 23
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    const/16 v5, 0x8

    new-array v13, v5, [F

    .line 24
    iget v5, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v4, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v11, v13

    invoke-static/range {v5 .. v11}, Lcom/smartisanos/launcher/e/s;->a(FFFZFF[F)V

    .line 25
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v4

    const-string v5, "statusgaussian_two.texture.cell"

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v4

    if-nez v4, :cond_2

    .line 26
    iget-object v4, v0, Lcom/smartisanos/launcher/view/Lc;->tO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v4

    .line 27
    iget-object v6, v0, Lcom/smartisanos/launcher/view/Lc;->tO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 28
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    .line 29
    :cond_2
    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/y;->Ua(I)[F

    move-result-object v5

    if-nez v5, :cond_3

    .line 30
    invoke-virtual {v4, v12, v13}, Lcom/smartisanos/smengine/y;->c(I[F)V

    goto :goto_0

    .line 31
    :cond_3
    invoke-virtual {v4, v12, v13}, Lcom/smartisanos/smengine/y;->d(I[F)V

    .line 32
    :cond_4
    :goto_0
    new-instance v4, Lcom/smartisanos/smengine/oa;

    iget-object v5, v0, Lcom/smartisanos/launcher/view/Lc;->tO:Lcom/smartisanos/smengine/F;

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    if-eqz v1, :cond_5

    move/from16 v19, v2

    move/from16 v23, v3

    goto :goto_1

    :cond_5
    move/from16 v23, v2

    move/from16 v19, v3

    :goto_1
    const/4 v15, 0x3

    move-object v14, v4

    move/from16 v16, v19

    move/from16 v17, v19

    move/from16 v18, v19

    move/from16 v20, v23

    move/from16 v21, v23

    move/from16 v22, v23

    .line 33
    invoke-virtual/range {v14 .. v23}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    move/from16 v2, p2

    .line 34
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 35
    new-instance v2, Lcom/smartisanos/launcher/view/Hc;

    invoke-direct {v2, v0, v1}, Lcom/smartisanos/launcher/view/Hc;-><init>(Lcom/smartisanos/launcher/view/Lc;Z)V

    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    return-object v4
.end method

.method public b(Lcom/smartisanos/smengine/g;F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 36
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 37
    new-instance v15, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    move/from16 v2, p2

    .line 38
    invoke-virtual {v15, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v2, 0xe

    .line 39
    invoke-virtual {v15, v2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v6, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v5, v15

    .line 40
    invoke-virtual/range {v5 .. v14}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 41
    new-instance v2, Lcom/smartisanos/launcher/view/Ic;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/Ic;-><init>(Lcom/smartisanos/launcher/view/Lc;)V

    invoke-virtual {v15, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    const/4 v2, 0x0

    .line 42
    invoke-virtual {v1, v2, v15}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 44
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/Mc;->clear(Z)V

    .line 45
    iput-object v3, v0, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    .line 46
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Lc;->vO:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 48
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Lc;->vO:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/Mc;->clear(Z)V

    .line 49
    iput-object v3, v0, Lcom/smartisanos/launcher/view/Lc;->vO:Lcom/smartisanos/launcher/view/Mc;

    .line 50
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Lc;->updateGeometricState()V

    return-void
.end method

.method public d(ZF)Lcom/smartisanos/smengine/g;
    .locals 12

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_a

    .line 3
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/I;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Lc;->rb(Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    sput-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 7
    :cond_2
    new-instance v2, Lcom/smartisanos/smengine/g;

    invoke-direct {v2}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 8
    sget v3, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    const/4 v4, 0x2

    div-int/2addr v3, v4

    int-to-float v3, v3

    .line 9
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    new-instance v6, Lcom/smartisanos/launcher/view/Lc;

    const-string v7, "origin"

    invoke-direct {v6, v7}, Lcom/smartisanos/launcher/view/Lc;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v1

    .line 10
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object v6, v5, v1

    iget-object v6, v6, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v6, :cond_3

    .line 11
    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 12
    :cond_3
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 13
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 14
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/L;->Fa(Z)V

    if-eqz v0, :cond_4

    .line 15
    sput-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 16
    :cond_4
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    new-instance v7, Lcom/smartisanos/launcher/view/Lc;

    const-string v8, "target"

    invoke-direct {v7, v8}, Lcom/smartisanos/launcher/view/Lc;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    .line 17
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "target/--/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "status_bar.png"

    .line 18
    invoke-static {v9}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 20
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 21
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/L;->Fa(Z)V

    .line 22
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 23
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object v7, v5, v6

    iget-object v7, v7, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v7, :cond_5

    .line 24
    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 25
    :cond_5
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    new-instance v7, Lcom/smartisanos/launcher/view/Lc;

    const-string v10, "next"

    invoke-direct {v7, v10}, Lcom/smartisanos/launcher/view/Lc;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v4

    .line 26
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-static {v9}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 28
    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 29
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 30
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 31
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/L;->Fa(Z)V

    .line 32
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object v7, v5, v4

    iget-object v7, v7, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v7, :cond_6

    .line 33
    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 34
    :cond_6
    new-instance v5, Lcom/smartisanos/smengine/SceneNode;

    const-string v7, "rotate90"

    invoke-direct {v5, v7}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object v7, v7, v6

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    const v7, 0x3fc90fdb

    .line 36
    new-instance v8, Lcom/smartisanos/smengine/a/j;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10, v10}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v5, v7, v8}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    neg-float v3, v3

    .line 37
    invoke-virtual {v5, v10, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 38
    new-instance v7, Lcom/smartisanos/smengine/SceneNode;

    const-string v8, "rotate180"

    invoke-direct {v7, v8}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 39
    iget-object v8, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    const v8, 0x40490fdb    # (float)Math.PI

    .line 40
    new-instance v11, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v11, v9, v10, v10}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v7, v8, v11}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 41
    sget v8, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v7, v10, v10, v8}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 42
    new-instance v8, Lcom/smartisanos/smengine/SceneNode;

    const-string v11, "rotateParent"

    invoke-direct {v8, v11}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/smartisanos/launcher/view/Lc;->LJ:Lcom/smartisanos/smengine/SceneNode;

    .line 43
    iget-object v8, p0, Lcom/smartisanos/launcher/view/Lc;->LJ:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v8, v5}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 44
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->LJ:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 45
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->LJ:Lcom/smartisanos/smengine/SceneNode;

    iget-object v7, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object v7, v7, v1

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 46
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->LJ:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v5, v10, v10, v3}, Lcom/smartisanos/smengine/SceneNode;->setScaleRotatePivot(FFF)V

    .line 47
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Lc;->LJ:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 48
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Lc;->updateGeometricState()V

    .line 49
    new-instance v3, Lcom/smartisanos/smengine/oa;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/Lc;->LJ:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v3, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 50
    invoke-virtual {v3, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 51
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p2, v9, v10, v10}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v3, p2}, Lcom/smartisanos/smengine/oa;->c(Lcom/smartisanos/smengine/a/j;)V

    const/16 p2, 0x1e

    .line 52
    invoke-virtual {v3, p2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 53
    new-instance p2, Ljava/lang/Float;

    invoke-direct {p2, v10}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    new-instance v5, Ljava/lang/Float;

    const v7, -0x4036f025

    invoke-direct {v5, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v3, v4, p2, v5}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 54
    invoke-virtual {v2, v10, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    if-eqz p1, :cond_7

    .line 55
    sput-boolean v6, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 56
    :cond_7
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object p1, p1, v6

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 57
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object p1, p1, v4

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 58
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz p1, :cond_8

    .line 59
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object p1, p1, v6

    iget-object p1, p1, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/smartisanos/smengine/L;->Va(I)V

    :cond_8
    if-eqz v0, :cond_9

    .line 60
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1, v6}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 61
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->sc:[Lcom/smartisanos/launcher/view/Lc;

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 62
    :cond_9
    new-instance p1, Lcom/smartisanos/launcher/view/Jc;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/view/Jc;-><init>(Lcom/smartisanos/launcher/view/Lc;)V

    invoke-virtual {v3, p1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    return-object v2

    :cond_a
    return-object v1
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 2
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez p1, :cond_0

    .line 3
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    instance-of p1, p1, Lcom/smartisanos/smengine/mymaterial/I;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/y;->yk()[F

    move-result-object p1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Lc;->ip()V

    :cond_0
    return-void
.end method

.method public fq()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/Lc;->b(Lcom/smartisanos/smengine/g;F)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Lc;->gq()V

    return-void
.end method

.method public gq()V
    .locals 11

    .line 1
    sget v0, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v0, v0

    .line 2
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v1, v1

    .line 3
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v2, v2

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/J;->Ra()Landroid/content/res/Resources;

    move-result-object v3

    .line 5
    sget v4, Lcom/smartisanos/launcher/ob;->selected_back:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v4, :cond_0

    const-string v3, " "

    :cond_0
    move-object v6, v3

    .line 7
    new-instance v3, Lcom/smartisanos/launcher/view/Mc;

    const/4 v7, 0x0

    sget-object v8, Lcom/smartisanos/launcher/view/Mc;->EO:Landroid/graphics/Paint;

    float-to-int v9, v1

    float-to-int v10, v0

    const-string v5, "status_bar_long_press_text"

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/smartisanos/launcher/view/Mc;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V

    iput-object v3, p0, Lcom/smartisanos/launcher/view/Lc;->vO:Lcom/smartisanos/launcher/view/Mc;

    .line 8
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Lc;->vO:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v3, :cond_2

    .line 9
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v3

    .line 10
    iget-object v4, v3, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v1, v5

    div-float/2addr v0, v5

    .line 11
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Lc;->vO:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Mc;->updateGeometricState()V

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/sa;->ub()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v7, :cond_1

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getStatusBarTextLeftMargin()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/Lc;->vO:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Mc;->getWidth()F

    move-result v7

    div-float/2addr v7, v5

    add-float/2addr v6, v7

    .line 14
    :cond_1
    invoke-static {v6, v0, v1, v2, v4}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->vO:Lcom/smartisanos/launcher/view/Mc;

    iget v1, v4, Lcom/smartisanos/smengine/a/j;->x:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 16
    invoke-virtual {v3}, Lcom/smartisanos/smengine/d/f;->release()V

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->vO:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->vO:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->updateGeometricState()V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->vO:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(IZ)V

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Lc;->Tl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->wa(I)Lcom/smartisanos/launcher/view/mb;

    move-result-object v0

    .line 21
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Lc;->vO:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object p0

    iget v0, v0, Lcom/smartisanos/launcher/view/mb;->Qw:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method public h(Lcom/smartisanos/smengine/g;F)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->mText:Lcom/smartisanos/launcher/view/Mc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    new-instance v11, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 3
    invoke-virtual {v11, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 p2, 0xe

    .line 4
    invoke-virtual {v11, p2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v11

    .line 5
    invoke-virtual/range {v1 .. v10}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 6
    new-instance p2, Lcom/smartisanos/launcher/view/Kc;

    invoke-direct {p2, p0}, Lcom/smartisanos/launcher/view/Kc;-><init>(Lcom/smartisanos/launcher/view/Lc;)V

    invoke-virtual {v11, p2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2, v11}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 9
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->mText:Lcom/smartisanos/launcher/view/Mc;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/Mc;->clear(Z)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->mText:Lcom/smartisanos/launcher/view/Mc;

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Lc;->updateGeometricState()V

    return-void
.end method

.method public ip()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/I;

    if-eqz v0, :cond_4

    .line 5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->wt()V

    .line 6
    sget v0, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v6, v0

    .line 7
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v5, v0

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 9
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    const/16 v1, 0x8

    new-array v8, v1, [F

    .line 10
    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lcom/smartisanos/launcher/e/s;->a(FFFZFF[F)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "statusbar_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "two.texture.cell"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v1

    if-nez v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v1

    .line 14
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 15
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    :cond_2
    const/4 p0, 0x3

    .line 16
    invoke-virtual {v1, p0}, Lcom/smartisanos/smengine/y;->Ua(I)[F

    move-result-object v0

    if-nez v0, :cond_3

    .line 17
    invoke-virtual {v1, p0, v8}, Lcom/smartisanos/smengine/y;->c(I[F)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {v1, p0, v8}, Lcom/smartisanos/smengine/y;->d(I[F)V

    :cond_4
    :goto_0
    return-void
.end method

.method public mb(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/Lc;->jH:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/view/Lc;->jH:I

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Lc;->updateLayer()V

    :cond_0
    return-void
.end method

.method public rb(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "status_bar.png"

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    const-string p1, "TwoTexDifferentTexcoordMaterial"

    .line 3
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p1

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-static {v0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 6
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    const-string v0, "background.png"

    invoke-static {v0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    const-string v0, "t_blur_background"

    invoke-virtual {p1, v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Lc;->ip()V

    goto :goto_1

    :cond_3
    const-string p1, "TextureModularColorMaterial"

    .line 12
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p1

    .line 13
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-static {v0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/smartisanos/smengine/y;->c(I[F)V

    .line 17
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->Va(I)V

    :goto_1
    return-void
.end method

.method public setColor(FFFF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    return-void
.end method

.method public updateGeometricState()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_0
    return-void
.end method

.method public updateLayer()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/SceneNode;->updateLayer()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Lc;->Tl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->wa(I)Lcom/smartisanos/launcher/view/mb;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Lc;->sO:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    .line 4
    iget v2, v0, Lcom/smartisanos/launcher/view/mb;->Pw:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Lc;->vO:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v1

    iget v2, v0, Lcom/smartisanos/launcher/view/mb;->Qw:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Lc;->uO:Lcom/smartisanos/launcher/view/Mc;

    if-eqz p0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object p0

    iget v0, v0, Lcom/smartisanos/launcher/view/mb;->Qw:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    :cond_2
    return-void
.end method

.method public ya(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/Lc;->b(Lcom/smartisanos/smengine/g;F)V

    .line 2
    invoke-virtual {p0, v1, v0, p1}, Lcom/smartisanos/launcher/view/Lc;->a(Lcom/smartisanos/smengine/g;FI)V

    return-void
.end method
