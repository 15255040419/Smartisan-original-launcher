.class public Lcom/smartisanos/launcher/view/b/M;
.super Lcom/smartisanos/launcher/view/a;
.source "Page.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field protected AI:Ljava/util/ArrayList;

.field private BI:Z

.field private CI:Lcom/smartisanos/launcher/view/tc;

.field private DI:Ljava/lang/String;

.field private EI:Lcom/smartisanos/smengine/g;

.field private FI:Lcom/smartisanos/smengine/g;

.field private GI:Lcom/smartisanos/smengine/F;

.field private HI:Lcom/smartisanos/smengine/F;

.field private II:Lcom/smartisanos/smengine/F;

.field private JI:Ljava/lang/String;

.field private KI:Ljava/lang/String;

.field private LI:Ljava/lang/String;

.field private MI:Lcom/smartisanos/smengine/a/j;

.field protected Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private OI:Lcom/smartisanos/smengine/a/j;

.field private QI:[Lcom/smartisanos/smengine/a/j;

.field private RI:[F

.field protected TI:Lcom/smartisanos/smengine/a/k;

.field private UI:Lcom/smartisanos/smengine/F;

.field private VI:Lcom/smartisanos/smengine/F;

.field protected WG:F

.field private WI:[F

.field private XI:Lcom/smartisanos/smengine/a/j;

.field private ZI:Lcom/smartisanos/smengine/a/j;

.field private _I:Lcom/smartisanos/launcher/view/Mc;

.field private aJ:Lcom/smartisanos/smengine/F;

.field private animation:Lcom/smartisanos/launcher/animations/Ja;

.field private bJ:Lcom/smartisanos/smengine/F;

.field protected cJ:Lcom/smartisanos/launcher/view/c;

.field protected dJ:Lcom/smartisanos/launcher/view/b;

.field protected dl:Lcom/smartisanos/launcher/view/b/fa;

.field private eJ:Lcom/smartisanos/smengine/F;

.field private fJ:Lcom/smartisanos/smengine/a/j;

.field private gJ:I

.field private hJ:I

.field public id:I

.field private jH:I

.field private kH:I

.field protected lH:Lcom/smartisanos/smengine/Camera;

.field public pageIndex:I

.field public uI:Z

.field protected vI:Z

.field protected wI:Lcom/smartisanos/smengine/a/j;

.field private xI:Lcom/smartisanos/smengine/F;

.field private yI:I

.field private zI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/b/M;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/b/M;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/M;->uI:Z

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/M;->vI:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->wI:Lcom/smartisanos/smengine/a/j;

    .line 5
    iput p1, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    .line 6
    iput p1, p0, Lcom/smartisanos/launcher/view/b/M;->zI:I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/smartisanos/launcher/view/b/M;->id:I

    .line 8
    iput v1, p0, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->AI:Ljava/util/ArrayList;

    .line 10
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/M;->BI:Z

    const-string v1, "pageGaussianMask_long.press.blur"

    .line 11
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->JI:Ljava/lang/String;

    .line 12
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->MI:Lcom/smartisanos/smengine/a/j;

    .line 13
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->OI:Lcom/smartisanos/smengine/a/j;

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 14
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->RI:[F

    .line 15
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->TI:Lcom/smartisanos/smengine/a/k;

    .line 16
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->fJ:Lcom/smartisanos/smengine/a/j;

    .line 17
    iput p1, p0, Lcom/smartisanos/launcher/view/b/M;->gJ:I

    .line 18
    iput p1, p0, Lcom/smartisanos/launcher/view/b/M;->hJ:I

    .line 19
    iput p1, p0, Lcom/smartisanos/launcher/view/b/M;->jH:I

    .line 20
    iput p1, p0, Lcom/smartisanos/launcher/view/b/M;->kH:I

    .line 21
    iput-object p4, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 22
    iput-object p3, p0, Lcom/smartisanos/launcher/view/b/M;->DI:Ljava/lang/String;

    .line 23
    iget-object p3, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p3}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result p3

    invoke-static {p3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p3

    iput-object p3, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 24
    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/view/b/M;->f(Ljava/util/ArrayList;)V

    .line 25
    new-instance p2, Lcom/smartisanos/launcher/animations/Ja;

    invoke-direct {p2, p0}, Lcom/smartisanos/launcher/animations/Ja;-><init>(Lcom/smartisanos/launcher/view/b/M;)V

    iput-object p2, p0, Lcom/smartisanos/launcher/view/b/M;->animation:Lcom/smartisanos/launcher/animations/Ja;

    .line 26
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/M;->Ug()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/M;->mb(I)V

    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/M;->setZ(F)V

    .line 29
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->en()V

    .line 30
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->fn()V

    .line 31
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/M;->ey()V

    .line 32
    sget-boolean p2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p2, :cond_0

    .line 33
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result p2

    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 34
    sget p2, Lcom/smartisanos/launcher/data/Constants;->LAUNCHPAD_DOCK_HEIGHT:I

    .line 35
    sget p3, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float p3, p3

    .line 36
    sget p4, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float p4, p4

    .line 37
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    int-to-float p2, p2

    float-to-int p3, p3

    int-to-float p3, p3

    float-to-int p4, p4

    int-to-float p4, p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->TI:Lcom/smartisanos/smengine/a/k;

    :cond_0
    return-void
.end method

.method private Ug()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/b/H;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/b/H;-><init>(Lcom/smartisanos/launcher/view/b/M;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setOnClickListener(Lcom/smartisanos/smengine/aa;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method private a(Lcom/smartisanos/smengine/SceneNode;FFFLcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/oa;
    .locals 11

    .line 140
    new-instance v10, Lcom/smartisanos/smengine/oa;

    move-object v0, p1

    invoke-direct {v10, p1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    move v0, p4

    .line 141
    invoke-virtual {v10, p4}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v0, 0xe

    .line 142
    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v1, 0x3

    move-object v0, v10

    move v2, p2

    move v3, p2

    move v4, p2

    move v5, p2

    move v6, p3

    move v7, p3

    move v8, p3

    move v9, p3

    .line 143
    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 144
    new-instance v0, Lcom/smartisanos/launcher/view/b/v;

    move-object v1, p0

    move-object/from16 v2, p5

    invoke-direct {v0, p0, v2}, Lcom/smartisanos/launcher/view/b/v;-><init>(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    return-object v10
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/b/M;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/M;->KI:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/b/M;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method private d(FFZ)V
    .locals 8

    .line 1
    sget v0, Lcom/smartisanos/launcher/ob;->page_default_title:I

    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v3

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/view/tc;

    const-string v2, "PageTitleView"

    const/4 v6, 0x0

    move-object v1, v0

    move v4, p1

    move v5, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/smartisanos/launcher/view/tc;-><init>(Ljava/lang/String;Ljava/lang/String;FFFLcom/smartisanos/launcher/view/b/M;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result p1

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result p2

    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/tc;->create()V

    .line 6
    invoke-static {p1, p2, p3}, Lcom/smartisanos/launcher/view/b/N;->a(Lcom/smartisanos/launcher/data/LayoutProperty;Lcom/smartisanos/launcher/data/LayoutProperty;Z)Lcom/smartisanos/smengine/a/j;

    move-result-object p3

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    iget v1, p3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, p3, Lcom/smartisanos/smengine/a/j;->y:F

    iget p3, p3, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v1, v2, p3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 8
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/view/b/N;->a(Lcom/smartisanos/launcher/data/LayoutProperty;Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p1

    .line 9
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, p1, p3}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/tc;->yb(Z)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/tc;->yb(Z)V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/tc;->updateGeometricState()V

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/tc;->setMode(I)V

    :cond_1
    return-void
.end method

.method private ey()V
    .locals 4

    .line 1
    instance-of v0, p0, Lcom/smartisanos/launcher/view/b/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "page_blendNodeFixGLBug"

    .line 2
    invoke-static {v3, v0, v0, v2, v1}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->xI:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->xI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->xI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->xI:Lcom/smartisanos/smengine/F;

    const-string v2, "trans.png"

    invoke-static {v2}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->xI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->xI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->xI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->xI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->xI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->xI:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 13
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->xI:Lcom/smartisanos/smengine/F;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method

.method private fy()V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->GI:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/b/M;->oc(Z)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 5
    iget v3, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_width:F

    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_paddingleft:F

    sub-float v4, v3, v4

    iget v5, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_paddingright:F

    sub-float/2addr v4, v5

    .line 6
    iget v5, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_height:F

    iget v6, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_padingtop:F

    sub-float v7, v5, v6

    iget v8, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_paddingbottom:F

    sub-float/2addr v7, v8

    .line 7
    iget v9, v1, Lcom/smartisanos/smengine/a/j;->x:F

    div-float/2addr v3, v4

    mul-float/2addr v9, v3

    iput v9, v1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 8
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr v5, v7

    mul-float/2addr v3, v5

    iput v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 9
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_2

    .line 10
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->z:F

    div-float/2addr v6, v8

    mul-float/2addr v3, v6

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_gaussian_deltay:F

    sub-float/2addr v3, v2

    iput v3, v1, Lcom/smartisanos/smengine/a/j;->z:F

    goto :goto_0

    .line 11
    :cond_2
    iget v2, v1, Lcom/smartisanos/smengine/a/j;->z:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v7, v3

    add-float/2addr v6, v7

    add-float/2addr v8, v7

    div-float/2addr v6, v8

    mul-float/2addr v2, v6

    iput v2, v1, Lcom/smartisanos/smengine/a/j;->z:F

    .line 12
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_PageShadow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v0}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v2

    const-string v3, "TextureModularColorMaterial"

    .line 14
    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    .line 15
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 16
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    .line 17
    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v2, v5, v1, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 19
    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 20
    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    .line 21
    invoke-virtual {v3, v1, v4}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 22
    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    const-string v1, "folder_shadow.png"

    .line 23
    invoke-static {v1, v0}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 24
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    .line 25
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    goto :goto_1

    .line 26
    :cond_3
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 27
    :goto_1
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 28
    iput-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->GI:Lcom/smartisanos/smengine/F;

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->GI:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->GI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 31
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 32
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 33
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->GI:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->xw:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method static synthetic h(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method static synthetic i(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method private i(ZZ)Lcom/smartisanos/smengine/g;
    .locals 47

    move-object/from16 v6, p0

    move/from16 v7, p1

    .line 2
    iget-object v0, v6, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/M;->in()V

    .line 4
    :cond_0
    iget-object v0, v6, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v8, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 5
    iget v0, v6, Lcom/smartisanos/launcher/view/b/M;->yI:I

    const-string v9, "SimpleTextureClipPlaneMaterial"

    const v10, 0x3e99999a    # 0.3f

    const/16 v14, 0x1b

    const/4 v15, 0x0

    const/16 v5, 0xa

    const/16 v1, 0xe

    const/4 v11, 0x0

    const/high16 v16, 0x40000000    # 2.0f

    const/4 v12, 0x0

    if-nez v0, :cond_d

    .line 6
    iget-object v0, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 8
    iput-object v11, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    .line 9
    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    .line 10
    new-instance v0, Lcom/smartisanos/smengine/oa;

    iget-object v2, v6, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-direct {v0, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 11
    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 13
    iget-object v2, v6, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 14
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    iget v4, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v11, v2, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v11, v8

    sub-float v11, v11, v16

    iget v13, v2, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v3, v4, v11, v13}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 15
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v4, :cond_2

    .line 16
    iget-object v3, v6, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 17
    iget v4, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    iget v11, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_bottom:F

    add-float/2addr v4, v11

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    add-float/2addr v4, v3

    .line 18
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    iget v11, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v13, v2, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v13, v4

    iget v4, v2, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v3, v11, v13, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    :cond_2
    move-object v11, v3

    .line 19
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_b

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v4, :cond_a

    const/high16 v31, 0x3f800000    # 1.0f

    .line 22
    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 23
    new-instance v3, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v13

    invoke-direct {v3, v13}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 24
    invoke-virtual {v3, v10}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 25
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v27, 0x3

    const v35, 0x3dcccccd    # 0.1f

    move-object/from16 v26, v3

    move/from16 v28, v31

    move/from16 v29, v31

    move/from16 v30, v31

    move/from16 v32, v35

    move/from16 v33, v35

    move/from16 v34, v35

    .line 26
    invoke-virtual/range {v26 .. v35}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 27
    new-instance v13, Lcom/smartisanos/launcher/view/b/I;

    invoke-direct {v13, v6, v4}, Lcom/smartisanos/launcher/view/b/I;-><init>(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {v3, v13}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 28
    iget-object v13, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v13, v12, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_3
    const v3, 0x3ee66666    # 0.45f

    .line 29
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v13

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v13

    if-nez v13, :cond_4

    sget-boolean v13, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v13, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_4
    move v13, v3

    .line 30
    invoke-virtual {v4, v15}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 31
    invoke-virtual {v4, v15}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    const v24, 0x3dcccccd    # 0.1f

    const v25, 0x3e99999a    # 0.3f

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move v15, v1

    move-object v1, v3

    move-object v3, v2

    const/16 v15, 0xf

    move v2, v13

    move-object v10, v3

    const/high16 v15, -0x40800000    # -1.0f

    move/from16 v3, v24

    move-object/from16 v24, v4

    move/from16 v4, v25

    move-object/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/view/b/M;->a(Lcom/smartisanos/smengine/SceneNode;FFFLcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 32
    iget-object v1, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v12, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_1

    :cond_5
    move-object/from16 v26, v0

    move-object v10, v2

    const/high16 v15, -0x40800000    # -1.0f

    move-object v5, v4

    .line 33
    :goto_1
    invoke-virtual {v5, v14}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 34
    invoke-virtual {v5, v14}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3e99999a    # 0.3f

    move-object/from16 v0, p0

    move v2, v13

    move-object/from16 v24, v5

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/view/b/M;->a(Lcom/smartisanos/smengine/SceneNode;FFFLcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 35
    iget-object v1, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v12, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_2

    :cond_6
    move-object/from16 v24, v5

    .line 36
    :goto_2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_9

    move-object/from16 v5, v24

    const/4 v0, 0x1

    .line 37
    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 38
    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3e99999a    # 0.3f

    move-object/from16 v0, p0

    move v2, v13

    move-object/from16 v24, v5

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/view/b/M;->a(Lcom/smartisanos/smengine/SceneNode;FFFLcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 39
    iget-object v1, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v12, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_7
    const/4 v0, 0x3

    .line 40
    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 41
    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3e99999a    # 0.3f

    move-object/from16 v0, p0

    move v2, v13

    move-object/from16 v24, v5

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/view/b/M;->a(Lcom/smartisanos/smengine/SceneNode;FFFLcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 42
    iget-object v1, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v12, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_8
    const/4 v0, 0x5

    .line 43
    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 44
    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    const v4, 0x3e99999a    # 0.3f

    move-object/from16 v0, p0

    move v2, v13

    const v13, 0x3dcccccd    # 0.1f

    move v3, v13

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/view/b/M;->a(Lcom/smartisanos/smengine/SceneNode;FFFLcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 45
    iget-object v1, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v12, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_3

    :cond_9
    const v13, 0x3dcccccd    # 0.1f

    goto :goto_3

    :cond_a
    move-object/from16 v26, v0

    move-object v10, v2

    const v13, 0x3dcccccd    # 0.1f

    const/high16 v15, -0x40800000    # -1.0f

    :goto_3
    move-object v2, v10

    move-object/from16 v0, v26

    const/16 v1, 0xe

    const/16 v5, 0xa

    const v10, 0x3e99999a    # 0.3f

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v26, v0

    move-object v10, v2

    const/high16 v15, -0x40800000    # -1.0f

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 46
    invoke-static {v9, v0, v1}, Lcom/smartisanos/smengine/mymaterial/g;->a(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 47
    iget-object v1, v6, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 48
    iget-object v1, v6, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    sget v2, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 49
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    div-float v8, v8, v16

    invoke-direct {v1, v12, v15, v12, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 50
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 51
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_c

    .line 52
    iget-object v1, v6, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 53
    new-instance v3, Lcom/smartisanos/smengine/a/k;

    iget v4, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float v4, v4, v16

    iget v5, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    add-float/2addr v4, v5

    invoke-direct {v3, v12, v15, v12, v4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const/16 v4, 0xf

    invoke-virtual {v0, v4, v3}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 54
    iget v3, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float v3, v3, v16

    iget v4, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_bottom:F

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    add-float/2addr v4, v1

    div-float v4, v4, v16

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    :cond_c
    const/16 v19, 0x0

    .line 55
    iget v0, v10, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, v10, Lcom/smartisanos/smengine/a/j;->y:F

    iget v2, v10, Lcom/smartisanos/smengine/a/j;->z:F

    iget v3, v11, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v11, Lcom/smartisanos/smengine/a/j;->y:F

    iget v5, v11, Lcom/smartisanos/smengine/a/j;->z:F

    move-object/from16 v18, v26

    move/from16 v20, v0

    move/from16 v21, v1

    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v5

    invoke-virtual/range {v18 .. v25}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 56
    iget-object v0, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    move-object/from16 v1, v26

    invoke-virtual {v0, v12, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 57
    iget-object v0, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    new-instance v1, Lcom/smartisanos/launcher/view/b/J;

    invoke-direct {v1, v6, v7}, Lcom/smartisanos/launcher/view/b/J;-><init>(Lcom/smartisanos/launcher/view/b/M;Z)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 58
    iget-object v0, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    if-eqz p2, :cond_1a

    .line 59
    iget-object v0, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    goto/16 :goto_a

    :cond_d
    move-object v0, v11

    const/16 v2, 0x11

    const/high16 v15, -0x40800000    # -1.0f

    .line 61
    iget-object v1, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_e

    .line 62
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 63
    iput-object v0, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    .line 64
    :cond_e
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    .line 65
    new-instance v0, Lcom/smartisanos/smengine/oa;

    iget-object v1, v6, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v1, 0x3e99999a    # 0.3f

    .line 66
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v1, 0xe

    .line 67
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 68
    iget-object v1, v6, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 69
    invoke-static {v9, v3, v4}, Lcom/smartisanos/smengine/mymaterial/g;->a(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    .line 70
    iget-object v4, v6, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 71
    iget-object v4, v6, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    sget v5, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 72
    new-instance v4, Lcom/smartisanos/smengine/a/k;

    div-float v5, v8, v16

    invoke-direct {v4, v12, v15, v12, v5}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const/16 v9, 0xf

    invoke-virtual {v3, v9, v4}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 73
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    const/16 v30, 0x0

    .line 74
    iget v4, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, v1, Lcom/smartisanos/smengine/a/j;->z:F

    add-float/2addr v8, v5

    add-float v35, v8, v16

    move-object/from16 v29, v0

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v9

    move/from16 v34, v4

    move/from16 v36, v9

    invoke-virtual/range {v29 .. v36}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 75
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v4, :cond_f

    .line 76
    iget-object v4, v6, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v4

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    .line 77
    iget v5, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    iget v8, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_bottom:F

    add-float/2addr v5, v8

    iget v8, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    add-float/2addr v5, v8

    const/16 v30, 0x0

    .line 78
    iget v8, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    add-float v35, v9, v5

    move-object/from16 v29, v0

    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v33, v1

    move/from16 v34, v8

    move/from16 v36, v1

    invoke-virtual/range {v29 .. v36}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 79
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    iget v5, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float v5, v5, v16

    iget v8, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    add-float/2addr v5, v8

    invoke-direct {v1, v12, v15, v12, v5}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const/16 v5, 0xf

    invoke-virtual {v3, v5, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 80
    iget v1, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float v1, v1, v16

    iget v5, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_bottom:F

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    add-float/2addr v5, v4

    div-float v5, v5, v16

    add-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 81
    :cond_f
    iget-object v1, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v12, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 82
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_19

    const v8, 0x3dcccccd    # 0.1f

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v10, :cond_18

    const/high16 v46, 0x3f800000    # 1.0f

    const/16 v11, 0xa

    .line 85
    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 86
    new-instance v0, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v1, 0x3e19999a    # 0.15f

    .line 87
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v13, 0xe

    .line 88
    invoke-virtual {v0, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v38, 0x3

    const v42, 0x3dcccccd    # 0.1f

    move-object/from16 v37, v0

    move/from16 v39, v42

    move/from16 v40, v42

    move/from16 v41, v42

    move/from16 v43, v46

    move/from16 v44, v46

    move/from16 v45, v46

    .line 89
    invoke-virtual/range {v37 .. v46}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 90
    new-instance v1, Lcom/smartisanos/launcher/view/b/K;

    invoke-direct {v1, v6, v10}, Lcom/smartisanos/launcher/view/b/K;-><init>(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 91
    iget-object v1, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v12, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_5

    :cond_10
    const/16 v13, 0xe

    :goto_5
    const v0, 0x3ee66666    # 0.45f

    .line 92
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_11

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_11
    move v15, v0

    const/4 v5, 0x0

    .line 93
    invoke-virtual {v10, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 94
    invoke-virtual {v10, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    const v4, 0x3e19999a    # 0.15f

    const v2, 0x3dcccccd    # 0.1f

    move-object/from16 v0, p0

    move v3, v15

    move/from16 v16, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/view/b/M;->a(Lcom/smartisanos/smengine/SceneNode;FFFLcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 95
    iget-object v1, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v12, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_6

    :cond_12
    move/from16 v16, v5

    .line 96
    :goto_6
    invoke-virtual {v10, v14}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 97
    invoke-virtual {v10, v14}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    const v4, 0x3e19999a    # 0.15f

    const v2, 0x3dcccccd    # 0.1f

    move-object/from16 v0, p0

    move v3, v15

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/view/b/M;->a(Lcom/smartisanos/smengine/SceneNode;FFFLcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 98
    iget-object v1, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v12, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 99
    :cond_13
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_17

    const/4 v5, 0x1

    .line 100
    invoke-virtual {v10, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 101
    invoke-virtual {v10, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    const v4, 0x3e19999a    # 0.15f

    const v2, 0x3dcccccd    # 0.1f

    move-object/from16 v0, p0

    move v3, v15

    move/from16 v18, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/view/b/M;->a(Lcom/smartisanos/smengine/SceneNode;FFFLcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 102
    iget-object v1, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v12, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_7

    :cond_14
    move/from16 v18, v5

    :goto_7
    const/4 v5, 0x3

    .line 103
    invoke-virtual {v10, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 104
    invoke-virtual {v10, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    const v4, 0x3e19999a    # 0.15f

    const v2, 0x3dcccccd    # 0.1f

    move-object/from16 v0, p0

    move v3, v15

    move/from16 v17, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/view/b/M;->a(Lcom/smartisanos/smengine/SceneNode;FFFLcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 105
    iget-object v1, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v12, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_8

    :cond_15
    move/from16 v17, v5

    :goto_8
    const/4 v5, 0x5

    .line 106
    invoke-virtual {v10, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 107
    invoke-virtual {v10, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    const v4, 0x3e19999a    # 0.15f

    move-object/from16 v0, p0

    move v2, v8

    move v3, v15

    move v15, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/view/b/M;->a(Lcom/smartisanos/smengine/SceneNode;FFFLcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 108
    iget-object v1, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v12, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto/16 :goto_4

    :cond_16
    move v15, v5

    goto/16 :goto_4

    :cond_17
    const/4 v15, 0x5

    goto :goto_9

    :cond_18
    const/16 v11, 0xa

    const/16 v13, 0xe

    const/4 v15, 0x5

    const/16 v16, 0x0

    :goto_9
    const/16 v17, 0x3

    const/16 v18, 0x1

    goto/16 :goto_4

    .line 109
    :cond_19
    iget-object v0, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    new-instance v1, Lcom/smartisanos/launcher/view/b/u;

    invoke-direct {v1, v6, v7}, Lcom/smartisanos/launcher/view/b/u;-><init>(Lcom/smartisanos/launcher/view/b/M;Z)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 110
    iget-object v0, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    if-eqz p2, :cond_1a

    .line 111
    iget-object v0, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    .line 113
    :cond_1a
    :goto_a
    iget-object v0, v6, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    return-object v0
.end method

.method static synthetic j(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method private j(ZZ)Lcom/smartisanos/smengine/g;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 21
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/launcher/view/b/M;->log:Lcom/smartisanos/launcher/va;

    const-string v3, "updatePageCoverFromLockIcon begin"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 22
    :cond_0
    iget-object v2, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    if-nez v2, :cond_1

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/M;->jn()V

    .line 24
    :cond_1
    iget-object v2, v0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const v3, 0x3e99999a    # 0.3f

    .line 25
    iget v4, v0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    const-string v5, "TwoTextureDiffCoordModularColorClipPlaneAlphaMaskMaterial"

    const-string v6, "TwoTextureDiffCoordModularColorClipPlaneMaterial"

    const-string v7, "SimpleTextureClipPlaneMaterial"

    const/16 v8, 0xe

    const/high16 v10, -0x40800000    # -1.0f

    const/16 v11, 0xf

    const/4 v12, 0x2

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-nez v4, :cond_7

    .line 26
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    if-eqz v4, :cond_2

    .line 27
    invoke-virtual {v4}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 28
    iput-object v15, v0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    .line 29
    :cond_2
    new-instance v4, Lcom/smartisanos/smengine/g;

    invoke-direct {v4}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    .line 30
    new-instance v4, Lcom/smartisanos/smengine/oa;

    iget-object v9, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-direct {v4, v9}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 31
    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 32
    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 33
    iget-object v3, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 34
    invoke-static {v7, v12, v15}, Lcom/smartisanos/smengine/mymaterial/g;->a(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v7

    .line 35
    sget-boolean v8, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v8, :cond_3

    .line 36
    invoke-static {v6, v12, v15}, Lcom/smartisanos/smengine/mymaterial/g;->a(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v7

    .line 37
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v6, :cond_3

    .line 38
    invoke-static {v5, v12, v15}, Lcom/smartisanos/smengine/mymaterial/g;->a(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v7

    .line 39
    :cond_3
    iget-object v5, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 40
    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->sBGColorInLargeScreen:Lcom/smartisanos/smengine/a/k;

    if-eqz v5, :cond_4

    .line 41
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    iget v8, v5, Lcom/smartisanos/smengine/a/k;->x:F

    iget v9, v5, Lcom/smartisanos/smengine/a/k;->y:F

    iget v12, v5, Lcom/smartisanos/smengine/a/k;->z:F

    iget v5, v5, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v6, v8, v9, v12, v5}, Lcom/smartisanos/smengine/SceneNode;->setBlendColor(FFFF)V

    .line 42
    :cond_4
    new-instance v5, Lcom/smartisanos/smengine/a/k;

    div-float v6, v2, v13

    invoke-direct {v5, v14, v10, v14, v6}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-virtual {v7, v11, v5}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 43
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v7, v6, v5}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 44
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v5, :cond_5

    .line 45
    iget-object v5, v0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v5

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    .line 46
    new-instance v6, Lcom/smartisanos/smengine/a/k;

    iget v8, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float/2addr v8, v13

    iget v9, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    add-float/2addr v8, v9

    invoke-direct {v6, v14, v10, v14, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-virtual {v7, v11, v6}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 47
    iget v6, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float/2addr v6, v13

    iget v8, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_bottom:F

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    add-float/2addr v8, v5

    div-float/2addr v8, v13

    add-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v7, v6, v5}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    :cond_5
    const/16 v17, 0x0

    .line 48
    iget v5, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v3, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float v2, v6, v2

    sub-float v22, v2, v13

    move-object/from16 v16, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v5

    move/from16 v23, v7

    invoke-virtual/range {v16 .. v23}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 49
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_6

    .line 50
    iget-object v2, v0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 51
    iget v5, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    iget v6, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_bottom:F

    add-float/2addr v5, v6

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    add-float/2addr v5, v2

    const/16 v17, 0x0

    .line 52
    iget v2, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float v22, v6, v5

    move-object/from16 v16, v4

    move/from16 v18, v2

    move/from16 v19, v6

    move/from16 v20, v3

    move/from16 v21, v2

    move/from16 v23, v3

    invoke-virtual/range {v16 .. v23}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 53
    :cond_6
    iget-object v2, v0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v14, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 54
    iget-object v2, v0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    new-instance v3, Lcom/smartisanos/launcher/view/b/w;

    invoke-direct {v3, v0, v1}, Lcom/smartisanos/launcher/view/b/w;-><init>(Lcom/smartisanos/launcher/view/b/M;Z)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 55
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    if-eqz p2, :cond_d

    .line 56
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 57
    iput-object v15, v0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    goto/16 :goto_0

    .line 58
    :cond_7
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    if-eqz v4, :cond_8

    .line 59
    invoke-virtual {v4}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 60
    iput-object v15, v0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    .line 61
    :cond_8
    new-instance v4, Lcom/smartisanos/smengine/g;

    invoke-direct {v4}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    .line 62
    new-instance v4, Lcom/smartisanos/smengine/oa;

    iget-object v9, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-direct {v4, v9}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 63
    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 64
    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 65
    iget-object v3, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 66
    invoke-static {v7, v12, v15}, Lcom/smartisanos/smengine/mymaterial/g;->a(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v7

    .line 67
    sget-boolean v8, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v8, :cond_9

    .line 68
    invoke-static {v6, v12, v15}, Lcom/smartisanos/smengine/mymaterial/g;->a(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v7

    .line 69
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v6, :cond_9

    .line 70
    invoke-static {v5, v12, v15}, Lcom/smartisanos/smengine/mymaterial/g;->a(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v7

    .line 71
    :cond_9
    iget-object v5, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 72
    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->sBGColorInLargeScreen:Lcom/smartisanos/smengine/a/k;

    if-eqz v5, :cond_a

    .line 73
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    iget v8, v5, Lcom/smartisanos/smengine/a/k;->x:F

    iget v9, v5, Lcom/smartisanos/smengine/a/k;->y:F

    iget v12, v5, Lcom/smartisanos/smengine/a/k;->z:F

    iget v5, v5, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v6, v8, v9, v12, v5}, Lcom/smartisanos/smengine/SceneNode;->setBlendColor(FFFF)V

    .line 74
    :cond_a
    new-instance v5, Lcom/smartisanos/smengine/a/k;

    div-float v6, v2, v13

    invoke-direct {v5, v14, v10, v14, v6}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-virtual {v7, v11, v5}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 75
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v7, v6, v5}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 76
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v5, :cond_b

    .line 77
    iget-object v5, v0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v5

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    .line 78
    new-instance v6, Lcom/smartisanos/smengine/a/k;

    iget v8, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float/2addr v8, v13

    iget v9, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    add-float/2addr v8, v9

    invoke-direct {v6, v14, v10, v14, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-virtual {v7, v11, v6}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 79
    iget v6, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float/2addr v6, v13

    iget v8, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_bottom:F

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    add-float/2addr v8, v5

    div-float/2addr v8, v13

    add-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v7, v6, v5}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    :cond_b
    const/16 v18, 0x0

    .line 80
    iget v5, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v3, Lcom/smartisanos/smengine/a/j;->z:F

    add-float/2addr v2, v6

    add-float v23, v2, v13

    move-object/from16 v17, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v5

    move/from16 v24, v7

    invoke-virtual/range {v17 .. v24}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 81
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_c

    .line 82
    iget-object v2, v0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 83
    iget v5, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    iget v6, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_bottom:F

    add-float/2addr v5, v6

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    add-float/2addr v5, v2

    const/16 v18, 0x0

    .line 84
    iget v2, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->z:F

    add-float v23, v6, v5

    move-object/from16 v17, v4

    move/from16 v19, v2

    move/from16 v20, v6

    move/from16 v21, v3

    move/from16 v22, v2

    move/from16 v24, v3

    invoke-virtual/range {v17 .. v24}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 85
    :cond_c
    iget-object v2, v0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v14, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 86
    iget-object v2, v0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    new-instance v3, Lcom/smartisanos/launcher/view/b/x;

    invoke-direct {v3, v0, v1}, Lcom/smartisanos/launcher/view/b/x;-><init>(Lcom/smartisanos/launcher/view/b/M;Z)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 87
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    if-eqz p2, :cond_d

    .line 88
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 89
    iput-object v15, v0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    .line 90
    :cond_d
    :goto_0
    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    return-object v0
.end method

.method static synthetic k(Lcom/smartisanos/launcher/view/b/M;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    return p0
.end method

.method private k(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->TI:Lcom/smartisanos/smengine/a/k;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->TI:Lcom/smartisanos/smengine/a/k;

    iget v1, p0, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v1, v1

    iget v2, p0, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v2, v2

    iget v3, p0, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v3, v3

    iget p0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int p0, p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/smartisanos/smengine/L;->d(IIII)V

    .line 91
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    :cond_0
    return-void
.end method

.method private oc(Z)Lcom/smartisanos/smengine/a/j;
    .locals 4

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 2
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 3
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->getSize(Lcom/smartisanos/smengine/a/j;)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/SceneNode;->getSize(Lcom/smartisanos/smengine/a/j;)V

    .line 8
    :cond_0
    iget p0, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget p1, v2, Lcom/smartisanos/smengine/a/j;->x:F

    div-float/2addr p0, p1

    iput p0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 9
    iget p0, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, v3, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr p0, p1

    iget p1, v2, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr p0, p1

    iput p0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 10
    iget p0, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, v2, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    iput p0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    return-object v0
.end method

.method public static sb(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/b/fa;->sb(I)I

    move-result p0

    return p0
.end method

.method public static tb(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/b/fa;->tb(I)I

    move-result p0

    return p0
.end method

.method public static w(II)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->w(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wb(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "VISIBLE"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "INVISIBLE"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "LOCKED"

    return-object p0

    :cond_2
    const-string p0, "unknown status"

    return-object p0
.end method

.method public static x(II)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->x(II)I

    move-result p0

    return p0
.end method

.method public static y(II)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->x(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public A(II)Lcom/smartisanos/launcher/view/a/g;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v2

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public Ab(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/b/M;->zI:I

    return-void
.end method

.method public An()Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->GI:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method public Bi()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/M;->mb(Z)V

    .line 2
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_1

    const-string v1, "TwoTexDifferentTexColorMaterial"

    .line 4
    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    const-string v2, "lock_cover.png"

    invoke-static {v2, v0}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    const-string v2, "t_blur_background"

    invoke-virtual {v1, v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v1

    instance-of v1, v1, Lcom/smartisanos/smengine/mymaterial/H;

    if-eqz v1, :cond_1

    const-string v1, "TextureModularColorMaterial"

    .line 10
    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/smengine/y;->c(I[F)V

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 15
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_2

    .line 16
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 17
    :cond_2
    instance-of v1, p0, Lcom/smartisanos/launcher/view/b/ka;

    if-eqz v1, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    .line 19
    move-object v1, p0

    check-cast v1, Lcom/smartisanos/launcher/view/b/ka;

    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/b/ka;->rb(Z)V

    .line 20
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    if-eqz v0, :cond_4

    .line 22
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/tc;->Bi()V

    .line 23
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_5

    .line 25
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Bi()V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public Bn()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->DI:Ljava/lang/String;

    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object p0, v0

    :cond_1
    const-string v1, " "

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p0, v0

    :cond_2
    return-object p0
.end method

.method public Cn()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->DI:Ljava/lang/String;

    const-string v1, " "

    if-nez v0, :cond_0

    .line 2
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->DI:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->DI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->DI:Ljava/lang/String;

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->DI:Ljava/lang/String;

    return-object p0
.end method

.method public Di()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/ga;->Di()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Dn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->aJ:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->aJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->bJ:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->bJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->aJ:Lcom/smartisanos/smengine/F;

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->bJ:Lcom/smartisanos/smengine/F;

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Fn()V

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public En()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 8
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/z;->b(Lcom/smartisanos/smengine/y;)V

    .line 9
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    .line 10
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->KI:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public Fn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->_I:Lcom/smartisanos/launcher/view/Mc;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->_I:Lcom/smartisanos/launcher/view/Mc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Mc;->clear(Z)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->_I:Lcom/smartisanos/launcher/view/Mc;

    return-void
.end method

.method public Gn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->GI:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->GI:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->GI:Lcom/smartisanos/smengine/F;

    .line 5
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->En()V

    :cond_1
    return-void
.end method

.method public Hn()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/M;->vI:Z

    if-nez v0, :cond_f

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->create()V

    .line 3
    iget v0, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_8

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->do()V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 6
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->XI:Lcom/smartisanos/smengine/a/j;

    iget v6, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v5, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v7, v0

    sub-float/2addr v7, v1

    iget v0, v5, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v4, v6, v7, v0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 7
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 9
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_bottom:F

    add-float/2addr v1, v4

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    add-float/2addr v1, v0

    .line 10
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->XI:Lcom/smartisanos/smengine/a/j;

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v0, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v6, v1

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v4, v5, v6, v0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    iget v1, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v1, v5, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 13
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_b

    const v0, 0x3dcccccd    # 0.1f

    .line 14
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v4, :cond_1

    const/16 v5, 0xa

    .line 16
    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 17
    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-virtual {v5, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 18
    :cond_2
    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 19
    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-virtual {v5, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_3
    const/16 v5, 0x1b

    .line 20
    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 21
    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-virtual {v5, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 22
    :cond_4
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v5, :cond_1

    .line 23
    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 24
    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-virtual {v5, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_5
    const/4 v5, 0x3

    .line 25
    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 26
    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-virtual {v5, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_6
    const/4 v5, 0x5

    .line 27
    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 28
    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-virtual {v4, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_0

    .line 29
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_1

    :cond_8
    const/4 v4, 0x2

    if-ne v0, v4, :cond_a

    .line 30
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->eo()V

    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 32
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->ZI:Lcom/smartisanos/smengine/a/j;

    iget v6, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v5, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v7, v0

    sub-float/2addr v7, v1

    iget v0, v5, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v4, v6, v7, v0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 33
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_9

    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 35
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_bottom:F

    add-float/2addr v1, v4

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    add-float/2addr v1, v0

    .line 36
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->ZI:Lcom/smartisanos/smengine/a/j;

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v0, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v6, v1

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v4, v5, v6, v0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 37
    :cond_9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    iget v1, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v1, v5, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 38
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_1

    .line 39
    :cond_a
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Rn()V

    .line 40
    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 41
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/b/M;->gb(Z)V

    .line 42
    :cond_c
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->In()V

    .line 43
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_d

    .line 44
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/b/M;->mb(I)V

    .line 45
    :cond_d
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_e

    .line 46
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/b/M;->ib(Z)V

    .line 47
    :cond_e
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/b/M;->vI:Z

    :cond_f
    return-void
.end method

.method public Ih()Lcom/smartisanos/launcher/view/b/fa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    return-object p0
.end method

.method protected In()V
    .locals 0

    return-void
.end method

.method public Jn()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/b/M;->BI:Z

    return p0
.end method

.method public Kn()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->tn()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Lm()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Lm()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Ln()Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/L;->Ok()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->TI:Lcom/smartisanos/smengine/a/k;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->fJ:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    .line 5
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_left:F

    add-float/2addr v1, v2

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_right:F

    add-float/2addr v1, v0

    goto :goto_0

    .line 6
    :cond_0
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->fJ:Lcom/smartisanos/smengine/a/j;

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v2, v0, v1

    add-float/2addr v0, v1

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->TI:Lcom/smartisanos/smengine/a/k;

    iget v1, p0, Lcom/smartisanos/smengine/a/k;->x:F

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 9
    iget p0, p0, Lcom/smartisanos/smengine/a/k;->z:F

    add-float/2addr p0, v1

    cmpl-float p0, v2, p0

    if-gtz p0, :cond_1

    cmpg-float p0, v0, v1

    if-gez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public Mn()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/b/M;->vI:Z

    return p0
.end method

.method public Na(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 5
    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/a/g;->Na(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Nn()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Oa(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const-string v2, ""

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 6
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    if-nez v3, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_5

    return-object v1

    :cond_5
    return-object v0

    :cond_6
    :goto_2
    return-object v1
.end method

.method public Om()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Om()V

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public On()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Pa(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/M;->DI:Ljava/lang/String;

    return-void
.end method

.method public Pn()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Qa(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/M;->Pa(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->DI:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/tc;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Qn()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v1, v0, v0, v2}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/M;->lb(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/tc;->Cb(Z)V

    return-void
.end method

.method public Rn()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    return-void
.end method

.method public Sn()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 4
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->um()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public Tl()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/M;->jH:I

    return p0
.end method

.method public Tn()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Rh()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/smartisanos/launcher/a/I;->w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/tc;->Wp()V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/tc;->Yp()V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    new-instance v0, Lcom/smartisanos/smengine/A;

    invoke-direct {v0}, Lcom/smartisanos/smengine/A;-><init>()V

    .line 9
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object p0

    const-string v1, "CoverPageClicked"

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/smengine/C;->b(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public Un()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/M;->vI:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/tc;->clear(Z)V

    .line 5
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    .line 6
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 10
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    :cond_1
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/b/M;->vI:Z

    :cond_2
    return-void
.end method

.method public Vn()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    .line 4
    invoke-static {v3}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 6
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 8
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v3, v1}, Lcom/smartisanos/launcher/view/b/M;->g(Lcom/smartisanos/smengine/SceneNode;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public Wn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/tc;->clear(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    return-void
.end method

.method public Xn()Lcom/smartisanos/smengine/g;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/k;->Wj()Lcom/smartisanos/smengine/Camera;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/b/M;->cull(Lcom/smartisanos/smengine/Camera;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/ga;->Mi()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Lcom/smartisanos/smengine/g;

    invoke-direct {p0}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 7
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/ga;->Ji()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/ga;->Mi()V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/X;->mi()Lcom/smartisanos/smengine/g;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v2, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method public Ya(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 4
    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/a/g;->Ya(I)V

    .line 5
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v2

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v3

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/view/b/M;->w(II)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2, p1}, Lcom/smartisanos/launcher/view/a/g;->o(Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Yn()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/ga;->Mi()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Zm()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Zm()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Zn()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/b/L;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/b/L;-><init>(Lcom/smartisanos/launcher/view/b/M;)V

    invoke-super {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->resortChildren(Ljava/util/Comparator;)V

    return-void
.end method

.method public _n()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x80

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(IILcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    if-nez p3, :cond_0

    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cell_empty"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 139
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cell "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(IILcom/smartisanos/smengine/N;Ljava/lang/String;)Lcom/smartisanos/launcher/view/a/g;
    .locals 8

    .line 45
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/smartisanos/launcher/view/b/M;->a(IILcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    .line 46
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/b/M;->BI:Z

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->bb(Z)V

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/b/M;->getIndex(II)I

    move-result v2

    .line 48
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 49
    aget-object v2, v3, v2

    .line 50
    iget v3, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-static {p0, p1, p2, v2}, Lcom/smartisanos/launcher/data/FolderCellPositionAdapter;->adjustY(Ljava/lang/Object;IIF)F

    move-result v2

    iget v4, p0, Lcom/smartisanos/launcher/view/b/M;->WG:F

    invoke-virtual {v0, v3, v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 51
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 52
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 53
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 54
    iget v3, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 55
    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 56
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 57
    iget v7, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float/2addr v6, v3

    div-float/2addr v7, v4

    .line 58
    iget v3, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    mul-float/2addr v3, v6

    .line 59
    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float/2addr v2, v7

    .line 60
    iget v4, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 61
    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float/2addr v3, v4

    div-float/2addr v2, v5

    const/high16 v4, 0x3f800000    # 1.0f

    .line 62
    invoke-virtual {v0, v3, v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 63
    :cond_0
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 64
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 65
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Ec;->_p()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Ec;->_p()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    :cond_2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/smartisanos/launcher/view/a/X;->f(Lcom/smartisanos/smengine/g;F)V

    .line 68
    :cond_3
    invoke-virtual {v0, p3}, Lcom/smartisanos/launcher/view/a/g;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 69
    invoke-virtual {v0, p4}, Lcom/smartisanos/launcher/view/a/g;->Ma(Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/a/g;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 71
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/g;->ob(I)V

    .line 72
    invoke-virtual {v0, p2}, Lcom/smartisanos/launcher/view/a/g;->nb(I)V

    .line 73
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-object v0
.end method

.method public a(IIZFLcom/smartisanos/smengine/a;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/launcher/view/a/g;
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p6

    .line 4
    iget-object v3, v0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    const/4 v4, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual {v0, v5, v6, v4, v3}, Lcom/smartisanos/launcher/view/b/M;->a(IILcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    .line 5
    iget-boolean v7, v0, Lcom/smartisanos/launcher/view/b/M;->BI:Z

    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/view/a/g;->bb(Z)V

    .line 6
    invoke-virtual/range {p0 .. p2}, Lcom/smartisanos/launcher/view/b/M;->getIndex(II)I

    move-result v5

    move v8, v5

    .line 7
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    .line 8
    aget-object v5, v6, v5

    .line 9
    iget v6, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-static {v0, v8, v5}, Lcom/smartisanos/launcher/data/FolderCellPositionAdapter;->adjustYByIndex(Ljava/lang/Object;IF)F

    move-result v5

    iget v7, v0, Lcom/smartisanos/launcher/view/b/M;->WG:F

    invoke-virtual {v3, v6, v5, v7}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 10
    iget-object v5, v0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v5

    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 11
    iget-object v5, v0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v5

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    .line 12
    iget v6, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 13
    iget v7, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 14
    iget-object v8, v0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v9, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 15
    iget v10, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float/2addr v9, v6

    div-float/2addr v10, v7

    .line 16
    iget v6, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    mul-float/2addr v6, v9

    .line 17
    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float/2addr v5, v10

    .line 18
    iget v7, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 19
    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float/2addr v6, v7

    div-float/2addr v5, v8

    const/high16 v7, 0x3f800000    # 1.0f

    .line 20
    invoke-virtual {v3, v6, v5, v7}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 21
    :cond_0
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 22
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 23
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Ec;->_p()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 24
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Ec;->_p()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 25
    :cond_2
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/smartisanos/launcher/view/a/X;->f(Lcom/smartisanos/smengine/g;F)V

    :cond_3
    if-eqz p3, :cond_5

    const/4 v4, 0x0

    .line 26
    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 27
    new-instance v13, Lcom/smartisanos/smengine/oa;

    invoke-direct {v13, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 28
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    const v14, 0x3e4ccccd    # 0.2f

    .line 29
    invoke-virtual {v13, v14}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v15, 0xe

    .line 30
    invoke-virtual {v13, v15}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 31
    invoke-virtual {v13, v4}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const/4 v6, 0x1

    .line 32
    iget v10, v5, Lcom/smartisanos/smengine/a/j;->x:F

    const v4, 0x3ecccccd    # 0.4f

    mul-float v7, v10, v4

    iget v11, v5, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float v8, v11, v4

    const/high16 v9, 0x3f800000    # 1.0f

    iget v12, v5, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v5, v13

    invoke-virtual/range {v5 .. v12}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 33
    new-instance v4, Lcom/smartisanos/launcher/view/b/D;

    invoke-direct {v4, v0, v3}, Lcom/smartisanos/launcher/view/b/D;-><init>(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {v13, v4}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 34
    invoke-virtual {v2, v1, v13}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    const/16 v4, 0xa

    .line 35
    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 36
    new-instance v5, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 37
    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 38
    new-instance v4, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/k;-><init>()V

    .line 39
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 40
    invoke-virtual {v5, v14}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 41
    invoke-virtual {v5, v15}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 42
    iget v6, v4, Lcom/smartisanos/smengine/a/k;->x:F

    iget v7, v4, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v4, Lcom/smartisanos/smengine/a/k;->z:F

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v16, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v4

    invoke-virtual/range {v16 .. v25}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 43
    invoke-virtual {v2, v1, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 44
    :cond_4
    new-instance v1, Lcom/smartisanos/launcher/view/b/E;

    move-object/from16 v4, p5

    invoke-direct {v1, v0, v4, v3}, Lcom/smartisanos/launcher/view/b/E;-><init>(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/smengine/a;Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    :cond_5
    return-object v3
.end method

.method public a(IIZLcom/smartisanos/smengine/a;)Lcom/smartisanos/launcher/view/a/g;
    .locals 26

    move-object/from16 v0, p0

    .line 74
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    const/4 v2, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/smartisanos/launcher/view/b/M;->a(IILcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    .line 75
    iget-boolean v5, v0, Lcom/smartisanos/launcher/view/b/M;->BI:Z

    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/view/a/g;->bb(Z)V

    .line 76
    invoke-virtual/range {p0 .. p2}, Lcom/smartisanos/launcher/view/b/M;->getIndex(II)I

    move-result v3

    move v6, v3

    .line 77
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    .line 78
    aget-object v3, v4, v3

    .line 79
    iget v4, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-static {v0, v6, v3}, Lcom/smartisanos/launcher/data/FolderCellPositionAdapter;->adjustYByIndex(Ljava/lang/Object;IF)F

    move-result v3

    iget v5, v0, Lcom/smartisanos/launcher/view/b/M;->WG:F

    invoke-virtual {v1, v4, v3, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 80
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 81
    iget-object v3, v0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v3

    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v3, v4, :cond_0

    .line 82
    iget-object v3, v0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 83
    iget v4, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 84
    iget v6, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 85
    iget-object v7, v0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 86
    iget v9, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float/2addr v8, v4

    div-float/2addr v9, v6

    .line 87
    iget v4, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    mul-float/2addr v4, v8

    .line 88
    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float/2addr v3, v9

    .line 89
    iget v6, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 90
    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float/2addr v4, v6

    div-float/2addr v3, v7

    .line 91
    invoke-virtual {v1, v4, v3, v5}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 92
    :cond_0
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 93
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 94
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Ec;->_p()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Ec;->_p()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 96
    :cond_2
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lcom/smartisanos/launcher/view/a/X;->f(Lcom/smartisanos/smengine/g;F)V

    :cond_3
    if-eqz p3, :cond_6

    const/4 v2, 0x0

    .line 97
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 98
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 99
    invoke-virtual {v1, v4, v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 100
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 101
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 102
    new-instance v5, Lcom/smartisanos/smengine/g;

    invoke-direct {v5}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 103
    new-instance v14, Lcom/smartisanos/smengine/oa;

    invoke-direct {v14, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v15, 0x3dcccccd    # 0.1f

    .line 104
    invoke-virtual {v14, v15}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v13, 0xf

    .line 105
    invoke-virtual {v14, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 106
    invoke-virtual {v14, v2}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const/4 v7, 0x1

    .line 107
    iget v11, v3, Lcom/smartisanos/smengine/a/j;->x:F

    const v2, 0x3ecccccd    # 0.4f

    mul-float v8, v11, v2

    iget v12, v3, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float v9, v12, v2

    const/high16 v10, 0x3f800000    # 1.0f

    iget v2, v3, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v6, v14

    move v3, v13

    move v13, v2

    invoke-virtual/range {v6 .. v13}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 108
    new-instance v2, Lcom/smartisanos/launcher/view/b/F;

    invoke-direct {v2, v0, v1}, Lcom/smartisanos/launcher/view/b/F;-><init>(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {v14, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 109
    invoke-virtual {v5, v4, v14}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    const/16 v2, 0xa

    .line 110
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 111
    new-instance v6, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 112
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 113
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v2}, Lcom/smartisanos/smengine/a/k;-><init>()V

    .line 114
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 115
    sget-boolean v8, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v8

    iget-object v9, v0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v9

    if-ne v8, v9, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v8

    if-ne v8, v7, :cond_4

    .line 116
    invoke-virtual {v2, v15, v15, v15, v15}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 117
    :cond_4
    invoke-virtual {v6, v15}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 118
    invoke-virtual {v6, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 119
    iget v3, v2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v7, v2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v8, v2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v2, v2, Lcom/smartisanos/smengine/a/k;->w:F

    move-object/from16 v16, v6

    move/from16 v22, v3

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v2

    invoke-virtual/range {v16 .. v25}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 120
    invoke-virtual {v5, v4, v6}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 121
    :cond_5
    new-instance v2, Lcom/smartisanos/launcher/view/b/G;

    move-object/from16 v3, p4

    invoke-direct {v2, v0, v3, v1}, Lcom/smartisanos/launcher/view/b/G;-><init>(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/smengine/a;Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {v5, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 122
    invoke-virtual {v5}, Lcom/smartisanos/smengine/g;->start()V

    :cond_6
    return-object v1
.end method

.method public a(IZZZ)V
    .locals 0

    .line 145
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/b/M;->b(IZZZ)Lcom/smartisanos/smengine/g;

    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/a/g;I)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0, p2}, Lcom/smartisanos/launcher/view/b/fa;->Vb(I)Lcom/smartisanos/smengine/a/i;

    move-result-object v0

    .line 124
    iget v1, v0, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int v1, v1

    iget v0, v0, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int v0, v0

    invoke-virtual {p1, v1, v0}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 125
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 126
    aget-object v1, v1, p2

    .line 127
    iget v0, v1, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-static {p0, p2, v0}, Lcom/smartisanos/launcher/data/FolderCellPositionAdapter;->adjustYByIndex(Ljava/lang/Object;IF)F

    move-result v0

    iget p2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget p0, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p1, p2, v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 128
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/a/g;Z)Z
    .locals 8

    move-object v7, p0

    .line 129
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->nn()Ljava/util/ArrayList;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v3, v2

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    .line 132
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 133
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/b/fa;->Vb(I)Lcom/smartisanos/smengine/a/i;

    move-result-object p0

    .line 134
    iget v0, p0, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int v0, v0

    iget p0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int p0, p0

    invoke-virtual {p1, v0, p0}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    if-eqz p2, :cond_0

    .line 135
    aget-object v5, v1, v4

    .line 136
    iget v0, v5, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-static {v7, v4, v0}, Lcom/smartisanos/launcher/data/FolderCellPositionAdapter;->adjustYByIndex(Ljava/lang/Object;IF)F

    move-result v0

    iget p2, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget p0, v5, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p1, p2, v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 137
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public ah()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/v;->ah()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ao()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, ""

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/tc;->setText(Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/tc;->yb(Z)V

    return-void
.end method

.method public b(IZZZ)Lcom/smartisanos/smengine/g;
    .locals 6

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    iget v3, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v2, :cond_2

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/smartisanos/launcher/view/b/M;->j(ZZ)Lcom/smartisanos/smengine/g;

    move-result-object p3

    if-eqz p4, :cond_6

    if-eqz p3, :cond_6

    .line 5
    invoke-virtual {p3}, Lcom/smartisanos/smengine/g;->Ij()V

    goto :goto_2

    .line 6
    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/smartisanos/launcher/view/b/M;->i(ZZ)Lcom/smartisanos/smengine/g;

    move-result-object p3

    if-eqz p4, :cond_6

    if-eqz p3, :cond_6

    .line 7
    invoke-virtual {p3}, Lcom/smartisanos/smengine/g;->Ij()V

    goto :goto_2

    :cond_3
    if-ne v2, p1, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Di()V

    .line 9
    invoke-direct {p0, p3, p4}, Lcom/smartisanos/launcher/view/b/M;->i(ZZ)Lcom/smartisanos/smengine/g;

    move-result-object p3

    if-eqz p4, :cond_6

    if-eqz p3, :cond_6

    .line 10
    invoke-virtual {p3}, Lcom/smartisanos/smengine/g;->Ij()V

    goto :goto_2

    :cond_4
    if-ne v4, p1, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Di()V

    .line 12
    invoke-direct {p0, p3, p4}, Lcom/smartisanos/launcher/view/b/M;->j(ZZ)Lcom/smartisanos/smengine/g;

    move-result-object p3

    if-eqz p4, :cond_6

    if-eqz p3, :cond_6

    .line 13
    invoke-virtual {p3}, Lcom/smartisanos/smengine/g;->Ij()V

    goto :goto_2

    :cond_5
    :goto_1
    move-object p3, v5

    .line 14
    :cond_6
    :goto_2
    iget v3, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    if-eq v3, v2, :cond_7

    if-ne p1, v2, :cond_8

    :cond_7
    move v1, v2

    .line 15
    :cond_8
    iput p1, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    if-eqz p2, :cond_c

    .line 16
    iget p2, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    iput p2, p0, Lcom/smartisanos/launcher/view/b/M;->zI:I

    if-eqz v0, :cond_9

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->v()V

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Gg()V

    :cond_9
    if-eqz v1, :cond_a

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Jg()V

    .line 20
    :cond_a
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 22
    iget v1, p0, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pageIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/smartisanos/launcher/view/b/M;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update page ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] status to ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 26
    :cond_b
    sget-object p0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->XZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {p0, p2}, Lcom/smartisanos/launcher/data/F;->a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V

    :cond_c
    if-eqz p4, :cond_d

    if-eqz p3, :cond_d

    return-object v5

    :cond_d
    return-object p3
.end method

.method public b(ZF)Lcom/smartisanos/smengine/oa;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_5

    .line 28
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    .line 29
    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 30
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 31
    iput-object v3, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    .line 32
    :cond_0
    invoke-direct {v0, v7}, Lcom/smartisanos/launcher/view/b/M;->oc(Z)Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    .line 33
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_longGaussianAlpha"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v6, Lcom/smartisanos/smengine/a/j;->y:F

    .line 35
    invoke-static {v8, v9, v10, v5, v7}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v8

    iput-object v8, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    const-string v8, "TextureMaskModularMaterial"

    .line 36
    invoke-static {v8}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v8

    .line 37
    iget-object v9, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9, v8}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 38
    iget-object v8, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 39
    iget-object v8, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, -0x40000000    # -2.0f

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 40
    iget-object v8, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v8, v7}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 41
    iget-object v8, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 42
    iget-object v8, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 43
    iget-object v8, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 44
    iget-object v8, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 45
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v8

    .line 46
    iget-object v10, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    iget v8, v8, Lcom/smartisanos/launcher/view/lb;->yw:I

    add-int/2addr v8, v7

    invoke-virtual {v10, v8}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 47
    iget-object v8, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    const-string v10, "t_blur_background"

    invoke-virtual {v8, v4, v10}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 48
    iget-object v8, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    const-string v10, "page_mask.png"

    invoke-static {v10, v7}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v10}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 49
    iget-object v8, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    iget v6, v6, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v8, v5, v6, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 50
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 51
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 52
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->KI:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pageAlphaMask_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "long.press.blur"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->KI:Ljava/lang/String;

    .line 54
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v6

    iget-object v8, v0, Lcom/smartisanos/launcher/view/b/M;->KI:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v6

    const/4 v8, 0x3

    if-nez v6, :cond_2

    .line 55
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v6

    const/16 v10, 0x8

    new-array v10, v10, [F

    .line 56
    fill-array-data v10, :array_0

    invoke-virtual {v6, v8, v10}, Lcom/smartisanos/smengine/y;->c(I[F)V

    .line 57
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v10

    iget-object v11, v0, Lcom/smartisanos/launcher/view/b/M;->KI:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    .line 58
    :cond_2
    iget-object v10, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v10, v6}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/a/g;

    const/16 v11, 0xc

    .line 60
    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 61
    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 62
    iget v11, v0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    if-ne v9, v11, :cond_3

    iget-object v11, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    if-eqz v11, :cond_3

    .line 63
    invoke-virtual {v10, v5, v5, v5, v5}, Lcom/smartisanos/launcher/view/a/g;->setColor(FFFF)V

    .line 64
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    goto :goto_0

    .line 65
    :cond_4
    iget v6, v0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    if-ne v9, v6, :cond_5

    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    if-eqz v6, :cond_5

    const-string v6, "TextureModularColorMaterial"

    .line 66
    invoke-static {v6}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v6

    .line 67
    iget-object v10, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v10, v6}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 68
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    const-string v10, "lock_cover.png"

    invoke-static {v10, v7}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v4, v10}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 69
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6, v7, v3}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 70
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v6

    invoke-virtual {v6, v8, v3}, Lcom/smartisanos/smengine/y;->c(I[F)V

    .line 71
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 72
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 73
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 74
    :cond_5
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    if-nez v6, :cond_6

    return-object v3

    .line 75
    :cond_6
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v3, :cond_7

    .line 76
    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_7
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_8

    move v15, v3

    move v11, v5

    goto :goto_1

    :cond_8
    move v11, v3

    move v15, v5

    .line 77
    :goto_1
    new-instance v3, Lcom/smartisanos/smengine/oa;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/4 v7, 0x3

    move-object v6, v3

    move v8, v11

    move v9, v11

    move v10, v11

    move v12, v15

    move v13, v15

    move v14, v15

    .line 78
    invoke-virtual/range {v6 .. v15}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    move/from16 v4, p2

    .line 79
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 80
    new-instance v4, Lcom/smartisanos/launcher/view/b/B;

    invoke-direct {v4, v0, v1, v2}, Lcom/smartisanos/launcher/view/b/B;-><init>(Lcom/smartisanos/launcher/view/b/M;ZLjava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    return-object v3

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public b(Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    return-void
.end method

.method protected bn()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->AI:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public bo()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->aJ:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/b/M;->oc(Z)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 4
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_green_cover_image_width:F

    iget v5, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_green_cover_image_content_width:F

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    iput v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 5
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_green_cover_image_height:F

    iget v5, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_green_cover_image_content_height:F

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    iput v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 6
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_1

    .line 7
    invoke-static {v2}, Lcom/smartisanos/launcher/view/b/N;->l(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v3

    .line 8
    iget v4, v3, Lcom/smartisanos/smengine/a/i;->x:F

    iput v4, v1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 9
    iget v3, v3, Lcom/smartisanos/smengine/a/i;->y:F

    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    add-float/2addr v3, v4

    iput v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 10
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->z:F

    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_bottom:F

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    sub-float/2addr v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    iput v3, v1, Lcom/smartisanos/smengine/a/j;->z:F

    .line 11
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_CanDropCell"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v0}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v2

    const-string v3, "TextureModularColorMaterial"

    .line 13
    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    .line 14
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 15
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 16
    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 17
    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    const/4 v4, 0x2

    .line 18
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 19
    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v6, -0x40000000    # -2.0f

    .line 20
    invoke-virtual {v3, v4, v6}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 21
    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    const-string v3, "green_overlay.png"

    .line 22
    invoke-static {v3, v0}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 24
    iput-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->aJ:Lcom/smartisanos/smengine/F;

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->aJ:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->Lw:I

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 27
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->aJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->aJ:Lcom/smartisanos/smengine/F;

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v5, v1, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->aJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 30
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public clear(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->wI:Lcom/smartisanos/smengine/a/j;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->lH:Lcom/smartisanos/smengine/Camera;

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->AI:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/tc;->clear(Z)V

    .line 7
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    .line 8
    :cond_0
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    .line 9
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->GI:Lcom/smartisanos/smengine/F;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 12
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->GI:Lcom/smartisanos/smengine/F;

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 15
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 18
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    .line 19
    :cond_3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->MI:Lcom/smartisanos/smengine/a/j;

    .line 20
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->OI:Lcom/smartisanos/smengine/a/j;

    .line 21
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->QI:[Lcom/smartisanos/smengine/a/j;

    .line 22
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->RI:[F

    .line 23
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_4

    .line 24
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 25
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    .line 26
    :cond_4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->WI:[F

    .line 27
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_5

    .line 28
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v1

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->LI:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/z;->Ha(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    .line 29
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 30
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    .line 31
    :cond_5
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->XI:Lcom/smartisanos/smengine/a/j;

    .line 32
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->ZI:Lcom/smartisanos/smengine/a/j;

    .line 33
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->animation:Lcom/smartisanos/launcher/animations/Ja;

    if-eqz v1, :cond_6

    .line 34
    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/Ja;->clear()V

    .line 35
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->animation:Lcom/smartisanos/launcher/animations/Ja;

    .line 36
    :cond_6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->_I:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v1, :cond_7

    .line 37
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Mc;->clear(Z)V

    .line 38
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->_I:Lcom/smartisanos/launcher/view/Mc;

    .line 39
    :cond_7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->aJ:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_8

    .line 40
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 41
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->aJ:Lcom/smartisanos/smengine/F;

    .line 42
    :cond_8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->bJ:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_9

    .line 43
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 44
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->bJ:Lcom/smartisanos/smengine/F;

    .line 45
    :cond_9
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 46
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    if-eqz v1, :cond_a

    .line 47
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/c;->clear(Z)V

    .line 48
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    .line 49
    :cond_a
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    if-eqz v1, :cond_b

    .line 50
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/b;->clear(Z)V

    .line 51
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    .line 52
    :cond_b
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->xI:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_c

    .line 53
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 54
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->xI:Lcom/smartisanos/smengine/F;

    .line 55
    :cond_c
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->TI:Lcom/smartisanos/smengine/a/k;

    .line 56
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/a;->clear(Z)V

    return-void
.end method

.method public cn()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Vn()V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/b/fa;->Vb(I)Lcom/smartisanos/smengine/a/i;

    move-result-object v1

    .line 7
    iget v4, v1, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int v4, v4

    iget v1, v1, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int v1, v1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v2, v5}, Lcom/smartisanos/launcher/view/b/M;->a(IIZLcom/smartisanos/smengine/a;)Lcom/smartisanos/launcher/view/a/g;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    const/4 p0, 0x1

    return p0
.end method

.method public co()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->bJ:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/b/M;->oc(Z)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 4
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_green_cover_image_width:F

    iget v5, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_green_cover_image_content_width:F

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    iput v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 5
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_green_cover_image_height:F

    iget v5, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_green_cover_image_content_height:F

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    iput v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 6
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_1

    .line 7
    invoke-static {v2}, Lcom/smartisanos/launcher/view/b/N;->l(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v3

    .line 8
    iget v4, v3, Lcom/smartisanos/smengine/a/i;->x:F

    iput v4, v1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 9
    iget v3, v3, Lcom/smartisanos/smengine/a/i;->y:F

    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    add-float/2addr v3, v4

    iput v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 10
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->z:F

    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_bottom:F

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    sub-float/2addr v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    iput v3, v1, Lcom/smartisanos/smengine/a/j;->z:F

    .line 11
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_CanNotDropCell"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v0}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v2

    const-string v3, "TextureModularColorMaterial"

    .line 13
    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    .line 14
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 15
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 16
    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 17
    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    const/4 v4, 0x2

    .line 18
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 19
    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v6, -0x40000000    # -2.0f

    .line 20
    invoke-virtual {v3, v4, v6}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 21
    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    const-string v3, "red_overlay.png"

    .line 22
    invoke-static {v3, v0}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 24
    iput-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->bJ:Lcom/smartisanos/smengine/F;

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->bJ:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->Mw:I

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 27
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->bJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->bJ:Lcom/smartisanos/smengine/F;

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v5, v1, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->bJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 30
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public create()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->gn()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->bn()V

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/smartisanos/launcher/view/b/a;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->dn()V

    :cond_0
    return-void
.end method

.method public cull(Lcom/smartisanos/smengine/Camera;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->cullWithCameraRect(Lcom/smartisanos/smengine/Camera;)Z

    move-result p0

    return p0
.end method

.method public d(ZZ)Lcom/smartisanos/smengine/g;
    .locals 3

    .line 17
    iget v0, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-object v1

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/b/M;->j(ZZ)Lcom/smartisanos/smengine/g;

    move-result-object p1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_1
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    .line 21
    iput v0, p0, Lcom/smartisanos/launcher/view/b/M;->zI:I

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    return-object p1
.end method

.method public d(Laurelienribon/tweenengine/h;)V
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/X;->d(Laurelienribon/tweenengine/h;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dn()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_mBackCoverForTransLargeScreen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/N;->l(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v2

    .line 5
    iget v3, v2, Lcom/smartisanos/smengine/a/i;->x:F

    iget v2, v2, Lcom/smartisanos/smengine/a/i;->y:F

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v3, v2, v4, v5}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    const-string v2, "TextureModularColorMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 8
    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/N;->k(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    const-string v1, "page_bg.png"

    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 20
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->yw:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->in()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    :cond_0
    return-void
.end method

.method protected en()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->lH:Lcom/smartisanos/smengine/Camera;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v0

    const-string v1, "cellCamera"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/k;->Da(Ljava/lang/String;)Lcom/smartisanos/smengine/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/Camera;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    float-to-int v3, v3

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    float-to-int v2, v2

    invoke-direct {v0, v3, v2}, Lcom/smartisanos/smengine/Camera;-><init>(II)V

    const/high16 v2, 0x41a00000    # 20.0f

    const v3, 0x42652ee0

    .line 4
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v4, v2}, Lcom/smartisanos/smengine/a/a;->atan2(FF)F

    move-result v4

    mul-float/2addr v4, v3

    mul-float/2addr v4, v5

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42480000    # 50.0f

    invoke-virtual {v0, v4, v3, v5, v6}, Lcom/smartisanos/smengine/Camera;->d(FFFF)V

    .line 6
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/Camera;->g(Lcom/smartisanos/smengine/a/j;)V

    .line 7
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v2, v4, v4, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    sget-object v3, Lcom/smartisanos/smengine/a/j;->QV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/Camera;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V

    .line 8
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/smartisanos/smengine/k;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Camera;)V

    .line 9
    :cond_0
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->lH:Lcom/smartisanos/smengine/Camera;

    :cond_1
    return-void
.end method

.method public eo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->jn()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    .line 5
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    :cond_0
    return-void
.end method

.method public f(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->AI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->AI:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected fn()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 2
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-ge v9, v0, :cond_4

    move v10, v2

    :goto_1
    if-ge v10, v1, :cond_3

    .line 3
    invoke-virtual {p0, v9, v10}, Lcom/smartisanos/launcher/view/b/M;->getIndex(II)I

    move-result v11

    .line 4
    invoke-virtual {p0, v9, v10}, Lcom/smartisanos/launcher/view/b/M;->z(II)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/Aa;->qc()Ljava/util/HashMap;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 9
    :cond_0
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 12
    iget v7, v5, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    int-to-long v7, v7

    iget-wide v12, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v7, v7, v12

    if-nez v7, :cond_0

    .line 13
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_1
    iget-object v7, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    const/4 v8, 0x0

    move v4, v9

    move v5, v10

    invoke-static/range {v3 .. v8}, Lcom/smartisanos/launcher/view/a/aa;->a(Lcom/smartisanos/launcher/data/ItemInfo;IILjava/util/ArrayList;Lcom/smartisanos/launcher/data/LayoutProperty;Z)Lcom/smartisanos/launcher/view/a/ka;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/ka;->create()V

    .line 16
    invoke-static {v9, v10}, Lcom/smartisanos/launcher/view/b/M;->w(II)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/a/g;->Ka(Ljava/lang/String;)V

    goto :goto_3

    .line 18
    :cond_2
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-virtual {p0, v9, v10, v3, v4}, Lcom/smartisanos/launcher/view/b/M;->a(IILcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    .line 19
    :goto_3
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    .line 20
    aget-object v4, v4, v11

    .line 21
    iget v5, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-static {p0, v9, v10, v4}, Lcom/smartisanos/launcher/data/FolderCellPositionAdapter;->adjustY(Ljava/lang/Object;IIF)F

    move-result v4

    iget v6, p0, Lcom/smartisanos/launcher/view/b/M;->WG:F

    invoke-virtual {v3, v5, v4, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 22
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 23
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/M;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/a/g;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 24
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 25
    :cond_4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->AI:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public fo()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->_I:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lcom/smartisanos/launcher/ob;->insufficient_space:I

    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    float-to-int v6, v0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    float-to-int v7, v0

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/view/Mc;

    const/4 v4, 0x0

    sget-object v5, Lcom/smartisanos/launcher/view/Mc;->DO:Landroid/graphics/Paint;

    const-string v2, "Multi-SelectMode-NoSpace"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/smartisanos/launcher/view/Mc;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->_I:Lcom/smartisanos/launcher/view/Mc;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 8
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr v1, v2

    .line 10
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_9_3X3_MODE(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_4_3X3_MODE()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_9_3X3_MODE()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 13
    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 14
    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 15
    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 16
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 17
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->_I:Lcom/smartisanos/launcher/view/Mc;

    div-float/2addr v4, v3

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v5, v4, v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->_I:Lcom/smartisanos/launcher/view/Mc;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->_I:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->updateGeometricState()V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->_I:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->_I:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->updateGeometricState()V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->_I:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(IZ)V

    .line 23
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 24
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->_I:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object p0

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->Nw:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method public g(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-wide v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Ze()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8
    iget-object v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 12
    check-cast v1, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 13
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/FolderInfo;->lf()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 14
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/data/FolderInfo;->ia(I)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    .line 15
    iget-object v5, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    .line 16
    :cond_6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 17
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    return-object v0
.end method

.method public g(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 25

    move-object/from16 v0, p1

    if-eqz p2, :cond_2

    .line 18
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/view/b/M;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "cgh"

    const-string v3, "animation remove page cell!!!!!!!!!!!!!"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 20
    move-object v2, v0

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 21
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/a/h;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 22
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 23
    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 24
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v5

    .line 25
    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v5

    .line 26
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 27
    invoke-virtual {v5, v4, v6}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    .line 28
    iget v6, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v4, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v2, v6, v7, v8}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 29
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 30
    invoke-virtual {v5, v3, v4}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 31
    iget v4, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v2, v4, v5, v3}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 32
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 33
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    const/4 v3, 0x0

    .line 34
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 35
    new-instance v12, Lcom/smartisanos/smengine/oa;

    invoke-direct {v12, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    const v13, 0x3e4ccccd    # 0.2f

    .line 37
    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v14, 0xf

    .line 38
    invoke-virtual {v12, v14}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v5, 0x1

    .line 39
    iget v6, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v4, Lcom/smartisanos/smengine/a/j;->z:F

    const v4, 0x3ecccccd    # 0.4f

    mul-float v9, v6, v4

    mul-float v10, v7, v4

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v4, v12

    invoke-virtual/range {v4 .. v11}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 40
    invoke-virtual {v12, v3}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const/4 v3, 0x0

    .line 41
    invoke-virtual {v1, v3, v12}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    const/16 v4, 0xa

    .line 42
    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 43
    new-instance v5, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 44
    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 45
    invoke-virtual {v5, v13}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 46
    new-instance v4, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/k;-><init>()V

    .line 47
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 48
    invoke-virtual {v5, v14}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v16, 0x3

    .line 49
    iget v6, v4, Lcom/smartisanos/smengine/a/k;->x:F

    iget v7, v4, Lcom/smartisanos/smengine/a/k;->y:F

    iget v8, v4, Lcom/smartisanos/smengine/a/k;->z:F

    iget v4, v4, Lcom/smartisanos/smengine/a/k;->w:F

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v15, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v4

    invoke-virtual/range {v15 .. v24}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 50
    invoke-virtual {v1, v3, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 51
    :cond_1
    new-instance v3, Lcom/smartisanos/launcher/view/b/C;

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v2, v0}, Lcom/smartisanos/launcher/view/b/C;-><init>(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/SceneNode;)V

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 52
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    goto :goto_0

    :cond_2
    move-object/from16 v4, p0

    .line 53
    invoke-super/range {p0 .. p1}, Lcom/smartisanos/smengine/SceneNode;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    :goto_0
    return-void
.end method

.method public gb(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_width:F

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    invoke-direct {p0, v1, v0, p1}, Lcom/smartisanos/launcher/view/b/M;->d(FFZ)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->no()V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    new-instance v1, Lcom/smartisanos/smengine/a/k;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/tc;->onUpdateModulateColor(Lcom/smartisanos/smengine/a/k;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 9
    invoke-static {v0, v1, p1}, Lcom/smartisanos/launcher/view/b/N;->a(Lcom/smartisanos/launcher/data/LayoutProperty;Lcom/smartisanos/launcher/data/LayoutProperty;Z)Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v1, v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :goto_0
    return-void
.end method

.method public getAnimation()Lcom/smartisanos/launcher/animations/Ja;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->animation:Lcom/smartisanos/launcher/animations/Ja;

    return-object p0
.end method

.method public getIndex(II)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    .line 3
    :cond_0
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr p1, p0

    add-int/2addr p1, p2

    return p1
.end method

.method protected gn()V
    .locals 0

    return-void
.end method

.method public h(Lcom/smartisanos/smengine/g;FF)V
    .locals 3

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 6
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/smartisanos/launcher/view/a/X;->b(Lcom/smartisanos/smengine/g;FF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hb(Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->ln()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v2, v1

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 4
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/b/fa;->Vb(I)Lcom/smartisanos/smengine/a/i;

    move-result-object v4

    .line 5
    iget v5, v4, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int v5, v5

    iget v4, v4, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int v4, v4

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v4, v1, v6}, Lcom/smartisanos/launcher/view/b/M;->a(IIZLcom/smartisanos/smengine/a;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v4

    .line 6
    invoke-virtual {v4, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Jn()Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x8000

    .line 8
    invoke-virtual {v4, v5, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    const/high16 v5, 0x10000

    .line 9
    invoke-virtual {v4, v5, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    return-void
.end method

.method protected hn()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 3
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    neg-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    neg-float v4, v0

    div-float/2addr v4, v3

    div-float/2addr v1, v3

    div-float/2addr v0, v3

    .line 4
    invoke-virtual {p0, v2, v4, v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    return-void
.end method

.method public ho()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/M;->fy()V

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v1}, Lcom/smartisanos/launcher/view/b/M;->k(Lcom/smartisanos/smengine/g;FF)V

    :cond_0
    return-void
.end method

.method public i(Lcom/smartisanos/smengine/g;FF)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 114
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->GI:Lcom/smartisanos/smengine/F;

    if-eqz v4, :cond_0

    .line 115
    new-instance v15, Lcom/smartisanos/smengine/oa;

    invoke-direct {v15, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 116
    invoke-virtual {v15, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v7, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    move-object v6, v15

    move-object v5, v15

    move v15, v4

    .line 117
    invoke-virtual/range {v6 .. v15}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    const/16 v4, 0xe

    .line 118
    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 119
    invoke-virtual {v1, v3, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 120
    :cond_0
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v4, :cond_4

    .line 121
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 122
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez v6, :cond_1

    .line 123
    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 124
    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 125
    :goto_0
    new-instance v4, Lcom/smartisanos/smengine/oa;

    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-direct {v4, v6}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 126
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v6, 0xe

    .line 127
    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v16, v4

    .line 128
    invoke-virtual/range {v16 .. v25}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 129
    invoke-virtual {v1, v3, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 130
    new-instance v6, Lcom/smartisanos/launcher/view/b/y;

    invoke-direct {v6, v0}, Lcom/smartisanos/launcher/view/b/y;-><init>(Lcom/smartisanos/launcher/view/b/M;)V

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 131
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v4

    if-eq v5, v4, :cond_4

    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    .line 132
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 133
    new-instance v4, Lcom/smartisanos/smengine/oa;

    iget-object v5, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 134
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v2, 0xe

    .line 135
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v5, v4

    .line 136
    invoke-virtual/range {v5 .. v14}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 137
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_3

    const/4 v6, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v5, v4

    .line 138
    invoke-virtual/range {v5 .. v14}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 139
    :cond_3
    new-instance v2, Lcom/smartisanos/launcher/view/b/z;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/b/z;-><init>(Lcom/smartisanos/launcher/view/b/M;)V

    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 140
    invoke-virtual {v1, v3, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_4
    return-void
.end method

.method public ib(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->TI:Lcom/smartisanos/smengine/a/k;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p0, p1}, Lcom/smartisanos/launcher/view/b/M;->k(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->TI:Lcom/smartisanos/smengine/a/k;

    iget v4, v2, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v4, v4

    iget v5, v2, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v5, v5

    iget v6, v2, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v6, v6

    iget v2, v2, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int v7, v2

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/smartisanos/launcher/view/a/g;->a(IIIIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    if-eqz v2, :cond_2

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->TI:Lcom/smartisanos/smengine/a/k;

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v3, v1

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v4, v1

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v5, v1

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int v6, v0

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/smartisanos/launcher/view/tc;->a(IIIIZ)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/launcher/view/b/M;->k(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/launcher/view/b/M;->k(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/launcher/view/b/M;->k(Lcom/smartisanos/smengine/SceneNode;Z)V

    return-void
.end method

.method public in()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    add-float/2addr v2, v1

    .line 4
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 5
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_0

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/N;->l(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v1

    .line 7
    iget v2, v1, Lcom/smartisanos/smengine/a/i;->x:F

    .line 8
    iget v1, v1, Lcom/smartisanos/smengine/a/i;->y:F

    :cond_0
    const-string v3, "eye_cover.png"

    const/4 v4, 0x1

    .line 9
    invoke-static {v3, v4}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 10
    invoke-static {v5, v2, v1, v6, v4}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    const-string v1, "TextureModularColorMaterial"

    .line 12
    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    sget v2, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 15
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 16
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 18
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 19
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 20
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 21
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 22
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_1

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/high16 v3, 0x3f000000    # 0.5f

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_bottom:F

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    const/high16 v3, 0x3fc00000    # 1.5f

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    invoke-virtual {v1, v6, v2, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_0

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    invoke-virtual {v1, v6, v0, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->Jw:I

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->XI:Lcom/smartisanos/smengine/a/j;

    .line 30
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0, v4}, Lcom/smartisanos/launcher/view/b/M;->k(Lcom/smartisanos/smengine/SceneNode;Z)V

    :cond_2
    return-void
.end method

.method public io()Lcom/smartisanos/launcher/data/Q;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/data/Q;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/Q;-><init>()V

    .line 2
    iget v1, p0, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    iput v1, v0, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Bn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/data/Q;->P(Ljava/lang/String;)V

    .line 4
    iget p0, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    iput p0, v0, Lcom/smartisanos/launcher/data/Q;->status:I

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/M;->uI:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Sn()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/M;->vI:Z

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->AI:Ljava/util/ArrayList;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    :goto_0
    return v2
.end method

.method public isTransformedTouchPointInView(FF)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/smartisanos/smengine/SceneNode;->isTransformedTouchPointInView(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/SceneNode;->isTransformedTouchPointInView(FF)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public j(Lcom/smartisanos/smengine/Fa;)Lcom/smartisanos/launcher/view/a/g;
    .locals 4

    .line 14
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Ns()F

    move-result v0

    .line 15
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Os()F

    move-result p1

    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 17
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, v0, p1, v3}, Lcom/smartisanos/smengine/SceneNode;->isPointInBoundingVolume(FFF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    invoke-static {v2}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public j(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 2
    iget p2, p0, Lcom/smartisanos/launcher/view/b/M;->gJ:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/smartisanos/launcher/view/b/M;->gJ:I

    goto :goto_0

    .line 3
    :cond_0
    iget p2, p0, Lcom/smartisanos/launcher/view/b/M;->gJ:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/smartisanos/launcher/view/b/M;->gJ:I

    .line 4
    :goto_0
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    if-eqz p2, :cond_2

    .line 5
    iget v0, p0, Lcom/smartisanos/launcher/view/b/M;->gJ:I

    if-lez v0, :cond_1

    .line 6
    invoke-virtual {p2, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object p1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object p1

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    iget p1, p1, Lcom/smartisanos/launcher/view/lb;->yw:I

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public j(Lcom/smartisanos/smengine/g;FF)V
    .locals 3

    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 13
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/smartisanos/launcher/view/a/X;->f(Lcom/smartisanos/smengine/g;FF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public jb(Z)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-wide v3, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget-object v1, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->Ze()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 13
    check-cast v2, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 14
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/FolderInfo;->lf()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 15
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/data/FolderInfo;->ia(I)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    .line 16
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 17
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 18
    :cond_7
    :goto_2
    sget-object v1, Lcom/smartisanos/launcher/view/b/M;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCellItemInfoLockStatus cell package name is empty ! by id ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    :goto_3
    return-object v0
.end method

.method public jn()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    add-float/2addr v2, v1

    .line 4
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 5
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_0

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/N;->l(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v1

    .line 7
    iget v2, v1, Lcom/smartisanos/smengine/a/i;->x:F

    .line 8
    iget v1, v1, Lcom/smartisanos/smengine/a/i;->y:F

    :cond_0
    const-string v3, "lock_cover.png"

    const/4 v4, 0x1

    .line 9
    invoke-static {v3, v4}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 10
    invoke-static {v5, v2, v1, v6, v4}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v5

    iput-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    .line 11
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 12
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v7, 0x2

    if-eqz v5, :cond_3

    const-string v5, "TwoTexDifferentTexColorMaterial"

    .line 13
    invoke-static {v5}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v5

    .line 14
    sget-boolean v8, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v8, :cond_1

    const-string v5, "TwoTexDifferentTexColorAlphaMaskMaterial"

    .line 15
    invoke-static {v5}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v5

    .line 16
    iget-object v8, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    const-string v9, "lock_mask.png"

    invoke-static {v9, v4}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 17
    :cond_1
    iget-object v8, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v8, v5}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 18
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 19
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v5, :cond_2

    .line 20
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    const-string v8, "background.png"

    invoke-static {v8}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_2
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    const-string v8, "t_blur_background"

    invoke-virtual {v5, v4, v8}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 22
    :goto_0
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    goto :goto_1

    .line 23
    :cond_3
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 24
    :goto_1
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 25
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 26
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x40000000    # -2.0f

    invoke-virtual {v5, v8, v9}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 27
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 28
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 29
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 30
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v5, :cond_4

    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 32
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/high16 v8, 0x3f000000    # 0.5f

    iget v9, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_bottom:F

    mul-float/2addr v9, v8

    add-float/2addr v7, v9

    const/high16 v8, 0x3fc00000    # 1.5f

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    mul-float/2addr v0, v8

    add-float/2addr v7, v0

    invoke-virtual {v5, v6, v7, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_2

    .line 33
    :cond_4
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    invoke-virtual {v5, v6, v0, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 34
    :goto_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;Ljava/lang/String;FF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->WI:[F

    .line 35
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->Kw:I

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 37
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->ZI:Lcom/smartisanos/smengine/a/j;

    .line 38
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_5

    .line 39
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0, v4}, Lcom/smartisanos/launcher/view/b/M;->k(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 40
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sBGColorInLargeScreen:Lcom/smartisanos/smengine/a/k;

    if-eqz v0, :cond_5

    .line 41
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setBlendColor(FFFF)V

    .line 42
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_6
    return-void
.end method

.method public jo()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0, v0, v1}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/b/M;->lb(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/tc;->Cb(Z)V

    return-void
.end method

.method public k(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    iget p1, p0, Lcom/smartisanos/launcher/view/b/M;->hJ:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/smartisanos/launcher/view/b/M;->hJ:I

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/smartisanos/launcher/view/b/M;->hJ:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/smartisanos/launcher/view/b/M;->hJ:I

    :goto_0
    return-void
.end method

.method public k(Lcom/smartisanos/smengine/g;FF)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 4
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    if-eqz v4, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_longPressGaussian"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v5, v0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v5

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    const/4 v6, 0x1

    .line 7
    invoke-direct {v0, v6}, Lcom/smartisanos/launcher/view/b/M;->oc(Z)Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    .line 8
    iget v8, v7, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v7, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v10, 0x0

    invoke-static {v4, v8, v9, v10, v6}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v4

    iput-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    .line 9
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 10
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 11
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 12
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 13
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    const/high16 v11, -0x40000000    # -2.0f

    const/high16 v12, -0x40800000    # -1.0f

    invoke-virtual {v4, v12, v11}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 14
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 15
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v4, v13, v13, v13, v13}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 16
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    const-string v13, "page_mask.png"

    invoke-static {v13, v6}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v6, v14}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v4

    if-nez v1, :cond_1

    .line 18
    iget-object v14, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v14, v8}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v14, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    iget v15, v4, Lcom/smartisanos/launcher/view/lb;->ww:I

    invoke-virtual {v14, v15}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 20
    :goto_0
    iget-object v14, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    iget v15, v7, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v14, v10, v15, v10}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    const/16 v14, 0xf

    .line 21
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "GaussianBlurEffectMaterial"

    .line 23
    invoke-static {v9, v14, v15}, Lcom/smartisanos/smengine/mymaterial/g;->a(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/smengine/mymaterial/b;

    const-string v14, "TextureMaskModularMaterial"

    .line 24
    invoke-static {v14}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v15

    .line 25
    invoke-virtual {v9, v15}, Lcom/smartisanos/smengine/mymaterial/b;->b(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 26
    iget v15, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    const/high16 v16, 0x40900000    # 4.5f

    div-float v15, v15, v16

    float-to-int v15, v15

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float v5, v5, v16

    float-to-int v5, v5

    invoke-virtual {v9, v15, v5}, Lcom/smartisanos/smengine/mymaterial/C;->setSize(II)V

    .line 27
    iget-object v5, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v9}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const-string v5, "pageBackMask_long.press.blur"

    .line 28
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v9

    const/16 v15, 0x8

    if-nez v9, :cond_2

    .line 29
    iget-object v9, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v9

    new-array v11, v15, [F

    .line 30
    fill-array-data v11, :array_0

    invoke-virtual {v9, v8, v11}, Lcom/smartisanos/smengine/y;->c(I[F)V

    .line 31
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v11

    invoke-virtual {v11, v5, v9}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    .line 32
    :cond_2
    iget-object v11, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11, v9}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 33
    iget-object v9, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 34
    iget-object v9, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    if-eqz v1, :cond_7

    .line 35
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_longGaussianAlpha"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v15, v7, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v7, Lcom/smartisanos/smengine/a/j;->y:F

    .line 37
    invoke-static {v11, v15, v9, v10, v6}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v9

    iput-object v9, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    .line 38
    invoke-static {v14}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v9

    .line 39
    iget-object v11, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11, v9}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 40
    iget-object v9, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 41
    iget-object v9, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v9

    const/high16 v11, -0x40000000    # -2.0f

    invoke-virtual {v9, v12, v11}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 42
    iget-object v9, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9, v8}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 43
    iget-object v9, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 44
    iget-object v9, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 45
    iget-object v9, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 46
    iget-object v9, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 47
    iget-object v9, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    iget v4, v4, Lcom/smartisanos/launcher/view/lb;->vw:I

    invoke-virtual {v9, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 48
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    const-string v9, "t_blur_background"

    invoke-virtual {v4, v11, v9}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 49
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-static {v13, v6}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 50
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    iget v7, v7, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v4, v10, v7, v10}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 51
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 52
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 53
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->KI:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pageAlphaMask_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "long.press.blur"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->KI:Ljava/lang/String;

    .line 55
    :cond_3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v4

    if-nez v4, :cond_4

    .line 56
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v4

    const/16 v7, 0x8

    new-array v7, v7, [F

    .line 57
    fill-array-data v7, :array_1

    invoke-virtual {v4, v8, v7}, Lcom/smartisanos/smengine/y;->c(I[F)V

    .line 58
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v7

    invoke-virtual {v7, v5, v4}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    .line 59
    :cond_4
    iget-object v5, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 60
    new-instance v4, Lcom/smartisanos/smengine/oa;

    iget-object v5, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 61
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v5, 0xe

    .line 62
    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v18, 0x3

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v17, v4

    .line 63
    invoke-virtual/range {v17 .. v26}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 64
    new-instance v7, Lcom/smartisanos/launcher/view/b/A;

    invoke-direct {v7, v0}, Lcom/smartisanos/launcher/view/b/A;-><init>(Lcom/smartisanos/launcher/view/b/M;)V

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 65
    invoke-virtual {v1, v3, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v4

    if-eq v6, v4, :cond_7

    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    .line 67
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 68
    new-instance v4, Lcom/smartisanos/smengine/oa;

    iget-object v7, v0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-direct {v4, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 69
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 70
    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v18, 0x3

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v17, v4

    .line 71
    invoke-virtual/range {v17 .. v26}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 72
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_5

    const/16 v18, 0x3

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    const/high16 v26, 0x3f800000    # 1.0f

    move-object/from16 v17, v4

    .line 73
    invoke-virtual/range {v17 .. v26}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 74
    :cond_5
    invoke-virtual {v1, v3, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v2, :cond_6

    .line 77
    invoke-virtual {v2, v10, v10, v10, v10}, Lcom/smartisanos/launcher/view/a/g;->setColor(FFFF)V

    goto :goto_1

    .line 78
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/M;->lo()V

    .line 80
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v1, :cond_9

    .line 81
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 82
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 83
    :cond_8
    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_b

    .line 84
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_2

    .line 85
    :cond_9
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_a

    .line 86
    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 87
    :cond_a
    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_b

    .line 88
    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_b
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public kb(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->xI:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method public kn()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/X;->za(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ko()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 3
    invoke-virtual {p0, v2, v1, v1, v2}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/tc;->Bb(Z)V

    :cond_0
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 7
    invoke-virtual {p0, v2, v1, v1, v2}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 8
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/b/M;->lb(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/tc;->Cb(Z)V

    :cond_1
    return-void
.end method

.method public l(Lcom/smartisanos/smengine/g;FF)V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/M;->fy()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->GI:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 3
    new-instance v11, Lcom/smartisanos/smengine/oa;

    invoke-direct {v11, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 4
    invoke-virtual {v11, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v1, v11

    .line 5
    invoke-virtual/range {v1 .. v10}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    const/16 v0, 0xe

    .line 6
    invoke-virtual {v11, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 7
    invoke-virtual {p1, p3, v11}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 8
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/view/b/M;->k(Lcom/smartisanos/smengine/g;FF)V

    :cond_1
    return-void
.end method

.method public lb(Z)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0xa

    if-ge v4, v0, :cond_5

    .line 5
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/a/g;

    .line 6
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    .line 7
    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 8
    check-cast v7, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {v7, p1}, Lcom/smartisanos/launcher/data/FolderInfo;->M(Z)V

    goto :goto_1

    .line 9
    :cond_0
    iget-byte v8, v7, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-eqz v8, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget v7, v7, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    if-ne v7, v5, :cond_2

    .line 11
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 12
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    const/4 v5, -0x1

    if-ne v7, v5, :cond_4

    .line 13
    :cond_3
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 14
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-lez v0, :cond_7

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    .line 16
    invoke-static {p1, v1, v5}, Lcom/smartisanos/launcher/e/s;->a(ZLjava/util/List;I)V

    .line 17
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_7

    .line 18
    invoke-static {p1, v2, v3}, Lcom/smartisanos/launcher/e/s;->a(ZLjava/util/List;I)V

    :cond_7
    return-void
.end method

.method public ln()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 4
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v3

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/smartisanos/launcher/view/b/M;->getIndex(II)I

    move-result v2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public lo()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/mymaterial/b;

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->JI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/C;->Wt()Lcom/smartisanos/smengine/y;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v2

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/M;->JI:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    .line 7
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/M;->MI:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 8
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/M;->OI:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/F;->getSize(Lcom/smartisanos/smengine/a/j;)V

    .line 9
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->MI:Lcom/smartisanos/smengine/a/j;

    iget v4, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v6, v3, Lcom/smartisanos/smengine/a/j;->z:F

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->OI:Lcom/smartisanos/smengine/a/j;

    iget v8, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v10, p0, Lcom/smartisanos/launcher/view/b/M;->RI:[F

    invoke-static/range {v4 .. v10}, Lcom/smartisanos/launcher/e/s;->a(FFFZFF[F)V

    .line 10
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/y;->Ua(I)[F

    move-result-object v3

    if-nez v3, :cond_1

    .line 11
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->RI:[F

    invoke-virtual {v2, v1, v3}, Lcom/smartisanos/smengine/y;->c(I[F)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->RI:[F

    invoke-virtual {v2, v1, v3}, Lcom/smartisanos/smengine/y;->d(I[F)V

    .line 13
    :goto_0
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/mymaterial/C;->d(Lcom/smartisanos/smengine/y;)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    .line 15
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->KI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v0

    if-nez v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->KI:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    .line 19
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 20
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->MI:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 21
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->OI:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/F;->getSize(Lcom/smartisanos/smengine/a/j;)V

    .line 22
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->MI:Lcom/smartisanos/smengine/a/j;

    iget v3, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v5, v2, Lcom/smartisanos/smengine/a/j;->z:F

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->OI:Lcom/smartisanos/smengine/a/j;

    iget v7, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v9, p0, Lcom/smartisanos/launcher/view/b/M;->RI:[F

    invoke-static/range {v3 .. v9}, Lcom/smartisanos/launcher/e/s;->a(FFFZFF[F)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/y;->Ua(I)[F

    move-result-object v2

    if-nez v2, :cond_4

    .line 24
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->RI:[F

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/y;->c(I[F)V

    goto :goto_1

    .line 25
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->RI:[F

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/y;->d(I[F)V

    .line 26
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->II:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->updateMesh(Lcom/smartisanos/smengine/y;)V

    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v2

    if-eq v0, v2, :cond_b

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    .line 28
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/H;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    .line 29
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/E;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    .line 30
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/G;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    .line 31
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/F;

    if-eqz v0, :cond_b

    .line 32
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->LI:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pageLockcover_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "long.press.blur"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->LI:Ljava/lang/String;

    .line 34
    :cond_7
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->LI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v0

    if-nez v0, :cond_9

    .line 35
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->LI:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    .line 38
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->WI:[F

    if-eqz v2, :cond_8

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/y;->c(I[F)V

    .line 40
    :cond_8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 41
    :cond_9
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->MI:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 42
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->OI:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/F;->getSize(Lcom/smartisanos/smengine/a/j;)V

    .line 43
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->MI:Lcom/smartisanos/smengine/a/j;

    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v4, v1, Lcom/smartisanos/smengine/a/j;->z:F

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->OI:Lcom/smartisanos/smengine/a/j;

    iget v6, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v8, p0, Lcom/smartisanos/launcher/view/b/M;->RI:[F

    invoke-static/range {v2 .. v8}, Lcom/smartisanos/launcher/e/s;->a(FFFZFF[F)V

    const/4 v1, 0x3

    .line 44
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/y;->Ua(I)[F

    move-result-object v2

    if-nez v2, :cond_a

    .line 45
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->RI:[F

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/y;->c(I[F)V

    goto :goto_2

    .line 46
    :cond_a
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->RI:[F

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/y;->d(I[F)V

    .line 47
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->updateMesh(Lcom/smartisanos/smengine/y;)V

    .line 48
    :goto_2
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sBGColorInLargeScreen:Lcom/smartisanos/smengine/a/k;

    if-eqz v0, :cond_b

    .line 49
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setBlendColor(FFFF)V

    :cond_b
    return-void
.end method

.method public mb(I)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/view/b/M;->jH:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/smartisanos/launcher/view/b/M;->kH:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/view/b/M;->kH:I

    .line 4
    iput p1, p0, Lcom/smartisanos/launcher/view/b/M;->jH:I

    .line 5
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/M;->updateLayer(I)V

    :cond_1
    return-void
.end method

.method public mb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/M;->BI:Z

    return-void
.end method

.method public mn()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 6
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public mo()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    iput v3, v2, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public nb(Z)V
    .locals 0

    return-void
.end method

.method public nn()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 4
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v3

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/smartisanos/launcher/view/b/M;->getIndex(II)I

    move-result v2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public no()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/view/b/M;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "page is already clear"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    .line 4
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/M;->Pa(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Cn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/M;->Qa(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/tc;->Ob(I)V

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/tc;->yb(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    :cond_3
    return-void
.end method

.method public o(FF)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 3
    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    .line 4
    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 5
    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    mul-float/2addr v3, p1

    mul-float/2addr v4, p2

    .line 6
    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_spacing_h:F

    .line 7
    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_spacing_v:F

    .line 8
    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    add-int/lit8 v8, v7, -0x1

    int-to-float v8, v8

    mul-float/2addr v8, v5

    sub-float/2addr v3, v8

    int-to-float v5, v7

    div-float/2addr v3, v5

    .line 9
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    int-to-float v0, v0

    div-float/2addr v4, v0

    div-float/2addr v3, p1

    div-float/2addr v4, p2

    div-float/2addr v3, v1

    div-float/2addr v4, v2

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/smartisanos/launcher/data/Constants;->pageCellAdjustScaleForSpacing(FFI)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result p1

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->getFloatPageMode(I)I

    move-result p1

    .line 12
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p2, p1}, Lcom/smartisanos/launcher/view/b/fa;->_b(I)[Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/M;->QI:[Lcom/smartisanos/smengine/a/j;

    .line 13
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    .line 14
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 15
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    invoke-virtual {v0, v3, v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 17
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->QI:[Lcom/smartisanos/smengine/a/j;

    aget-object v2, v1, p2

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v5, v1, p2

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v1, v1, p2

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v2, v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 18
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public on()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public onInterceptTouchEvent(Lcom/smartisanos/smengine/va;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/smartisanos/smengine/SceneNode;->isTransformedTouchPointInView(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Ns()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Os()F

    move-result v1

    move v5, v3

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 5
    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    .line 6
    invoke-virtual {v6, v0, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->isPointInBoundingVolume(FFF)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 7
    invoke-static {v6}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v1

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Tn()V

    return v4

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0, v3, v4, v4, v3}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 13
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/tc;->Bb(Z)V

    return v4

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Rh()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {p0, v3, v4, v4, v3}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 17
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/tc;->Cb(Z)V

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/tc;->Zp()V

    :goto_2
    return v4

    .line 19
    :cond_5
    invoke-virtual {v6, p1}, Lcom/smartisanos/smengine/SceneNode;->onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z

    return v4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 20
    :cond_7
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Ns()F

    move-result v0

    .line 21
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Os()F

    move-result v1

    move v5, v3

    .line 22
    :goto_3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 23
    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    .line 24
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7, v0, v1, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/SceneNode;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 25
    invoke-static {v6}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    return v4

    .line 27
    :cond_9
    invoke-virtual {v6, p1}, Lcom/smartisanos/smengine/SceneNode;->onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z

    return v4

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    return v3
.end method

.method public pn()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public qn()Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method public rb(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr v0, p0

    if-lt v0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public render(Lcom/smartisanos/smengine/Ga;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/L;->Kk()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->xI:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/Ga;Z)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/Ga;Z)V

    return-void
.end method

.method public rn()Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public s(J)Lcom/smartisanos/launcher/view/a/g;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    if-nez v2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    move-object v1, v2

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v1
.end method

.method public setSceneNodeForceRender(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setSceneNodeForceRender(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 5
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setSceneNodeForceRender(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setZ(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/b/M;->WG:F

    return-void
.end method

.method public sn()Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public t(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/b/M;->jH:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/smartisanos/launcher/view/b/M;->kH:I

    if-eq v0, p2, :cond_1

    .line 2
    :cond_0
    iput p2, p0, Lcom/smartisanos/launcher/view/b/M;->kH:I

    .line 3
    iput p1, p0, Lcom/smartisanos/launcher/view/b/M;->jH:I

    .line 4
    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/view/b/M;->updateLayer(I)V

    :cond_1
    return-void
.end method

.method public tn()Lcom/smartisanos/launcher/view/a/g;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public ub(I)Lcom/smartisanos/launcher/view/a/g;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v2

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v3

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public ui()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/tc;->ui()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/Z;->ui()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public un()Lcom/smartisanos/launcher/view/a/g;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public updateLayer(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->updateLayer(I)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    if-eqz v1, :cond_0

    .line 4
    iget v2, v0, Lcom/smartisanos/launcher/view/lb;->yw:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    const/4 v2, 0x3

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->HI:Lcom/smartisanos/smengine/F;

    iget v3, v0, Lcom/smartisanos/launcher/view/lb;->ww:I

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 9
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    if-eqz v1, :cond_3

    .line 10
    iget v3, v0, Lcom/smartisanos/launcher/view/lb;->Aw:I

    add-int/2addr v3, p1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/tc;->updateLayer(I)V

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->GI:Lcom/smartisanos/smengine/F;

    const/4 v3, 0x2

    if-eqz v1, :cond_6

    .line 14
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 15
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->GI:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    goto :goto_1

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->GI:Lcom/smartisanos/smengine/F;

    iget v4, v0, Lcom/smartisanos/launcher/view/lb;->xw:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 17
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->_I:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v1, :cond_7

    .line 18
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v1

    iget v4, v0, Lcom/smartisanos/launcher/view/lb;->Nw:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 19
    :cond_7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->aJ:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_8

    .line 20
    iget v4, v0, Lcom/smartisanos/launcher/view/lb;->Lw:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 21
    :cond_8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->bJ:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_9

    .line 22
    iget v4, v0, Lcom/smartisanos/launcher/view/lb;->Mw:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 23
    :cond_9
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_a

    .line 24
    iget v4, v0, Lcom/smartisanos/launcher/view/lb;->Kw:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 25
    :cond_a
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_b

    .line 26
    iget v4, v0, Lcom/smartisanos/launcher/view/lb;->Jw:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 27
    :cond_b
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->eJ:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_c

    .line 28
    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->yw:I

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 29
    :cond_c
    iget v0, p0, Lcom/smartisanos/launcher/view/b/M;->jH:I

    if-ne v0, v2, :cond_d

    .line 30
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 32
    invoke-virtual {v0, v3, p1}, Lcom/smartisanos/launcher/view/a/g;->t(II)V

    goto :goto_2

    :cond_d
    const/4 v1, 0x1

    if-ne v0, v3, :cond_e

    .line 33
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 35
    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/launcher/view/a/g;->t(II)V

    goto :goto_3

    :cond_e
    if-ne v0, v1, :cond_f

    .line 36
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x5

    .line 38
    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/launcher/view/a/g;->t(II)V

    goto :goto_4

    :cond_f
    if-nez v0, :cond_10

    .line 39
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/launcher/view/a/g;->t(II)V

    goto :goto_5

    :cond_10
    return-void
.end method

.method public updateWorldBoundingVolume()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateSelfWorldBoundingVolume()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_9_3X3_MODE(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x3f8ccccd    # 1.1f

    .line 5
    :cond_1
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/smartisanos/smengine/SceneNode;->isInWindow(FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 7
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateWorldBoundingVolume()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateWorldTransforms()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateSelfWorldTranform()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_9_3X3_MODE(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x3f8ccccd    # 1.1f

    .line 5
    :cond_1
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/smartisanos/smengine/SceneNode;->isInWindow(FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 7
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateWorldTransforms()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public vb(I)Lcom/smartisanos/smengine/F;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public vn()Lcom/smartisanos/smengine/F;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public wn()Lcom/smartisanos/smengine/a/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->TI:Lcom/smartisanos/smengine/a/k;

    return-object p0
.end method

.method public writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 5

    const-string v0, "Page"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/b/M;->uI:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "readOnlyPage"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mPageStatus"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/smartisanos/launcher/view/b/M;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pagIndex"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mCellCamera"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/smartisanos/launcher/view/b/M;->WG:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mZ"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->AI:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mItemInfoListSize"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/b/M;->BI:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mDrawWithBatch"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mPageTitleView"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->DI:Ljava/lang/String;

    const-string v3, "mTitleName"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->EI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mTimeLineForEye"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->FI:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mTileLineForLock"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->GI:Lcom/smartisanos/smengine/F;

    const-string v4, "null"

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mLongPressPageShadowRect"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->UI:Lcom/smartisanos/smengine/F;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mEyePageCoverImage"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->VI:Lcom/smartisanos/smengine/F;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mLockPageCoverImage"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->animation:Lcom/smartisanos/launcher/animations/Ja;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "animation"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->_I:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mCurrentPageNoSpaceRect"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->aJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mMultiSelectedPageCanDropCoverRect"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->bJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mMultiSelectedPageCanNotDropCoverRect"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mBachShadowRect"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-super {p0, v0, p2}, Lcom/smartisanos/smengine/SceneNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 23
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public xb(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->xb(I)Z

    move-result p0

    return p0
.end method

.method public xn()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    return p0
.end method

.method public yb(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->yb(I)Z

    move-result p0

    return p0
.end method

.method public yl()Lcom/smartisanos/smengine/Camera;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->lH:Lcom/smartisanos/smengine/Camera;

    return-object p0
.end method

.method public yn()Lcom/smartisanos/launcher/view/tc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->CI:Lcom/smartisanos/launcher/view/tc;

    return-object p0
.end method

.method public z(II)Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/b/M;->getIndex(II)I

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/M;->AI:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p1, p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->AI:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/data/ItemInfo;

    return-object p0
.end method

.method public zb(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/b/M;->yI:I

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/view/b/M;->zI:I

    return-void
.end method

.method public zn()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/M;->zI:I

    return p0
.end method
