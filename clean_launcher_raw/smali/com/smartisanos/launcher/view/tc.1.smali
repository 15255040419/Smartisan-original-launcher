.class public Lcom/smartisanos/launcher/view/tc;
.super Lcom/smartisanos/smengine/SceneNode;
.source "PageTitleView.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private MN:Lcom/smartisanos/smengine/F;

.field private NN:Lcom/smartisanos/smengine/F;

.field private PN:Lcom/smartisanos/smengine/F;

.field private QN:Lcom/smartisanos/smengine/F;

.field private RN:Lcom/smartisanos/smengine/F;

.field private SN:Lcom/smartisanos/smengine/F;

.field private TN:Lcom/smartisanos/smengine/Camera;

.field private UN:F

.field private VN:F

.field private WG:F

.field private WN:Z

.field private XN:Z

.field private YN:Z

.field private ZN:Z

.field private _N:[F

.field private aO:Ljava/lang/String;

.field private bO:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private cO:I

.field private dO:Z

.field private fJ:Lcom/smartisanos/smengine/a/j;

.field private hN:Lcom/smartisanos/launcher/view/Mc;

.field private mIsAnimating:Z

.field private mMode:I

.field private mPage:Lcom/smartisanos/launcher/view/b/M;

.field private mPos:Lcom/smartisanos/smengine/a/j;

.field private mRenderTarget:Lcom/smartisanos/smengine/N;

.field private pH:Ljava/lang/String;

.field private rL:Lcom/smartisanos/smengine/F;

.field private yG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/tc;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/tc;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FFFLcom/smartisanos/launcher/view/b/M;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/tc;->mIsAnimating:Z

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/tc;->WN:Z

    .line 4
    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/tc;->XN:Z

    .line 5
    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/tc;->YN:Z

    .line 6
    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/tc;->ZN:Z

    const/16 p3, 0x8

    new-array p3, p3, [F

    .line 7
    iput-object p3, p0, Lcom/smartisanos/launcher/view/tc;->_N:[F

    .line 8
    new-instance p3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object p3, p0, Lcom/smartisanos/launcher/view/tc;->mPos:Lcom/smartisanos/smengine/a/j;

    .line 9
    iput p2, p0, Lcom/smartisanos/launcher/view/tc;->mMode:I

    .line 10
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object p2, p0, Lcom/smartisanos/launcher/view/tc;->fJ:Lcom/smartisanos/smengine/a/j;

    .line 11
    iput p1, p0, Lcom/smartisanos/launcher/view/tc;->cO:I

    .line 12
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/tc;->dO:Z

    .line 13
    invoke-virtual {p6}, Lcom/smartisanos/launcher/view/b/M;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result p1

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 14
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/b/N;->z(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/view/tc;->UN:F

    .line 15
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/b/N;->x(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/view/tc;->VN:F

    .line 16
    iput p5, p0, Lcom/smartisanos/launcher/view/tc;->WG:F

    .line 17
    iput-object p6, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "title"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    iget p2, p2, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "long.press.blur"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/tc;->aO:Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->Ug()V

    return-void
.end method

.method private Sg()V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/A;

    invoke-direct {v0}, Lcom/smartisanos/smengine/A;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object p0

    const-string v1, "titleViewLongPress"

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/smengine/C;->b(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V

    return-void
.end method

.method private Ug()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/ic;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/ic;-><init>(Lcom/smartisanos/launcher/view/tc;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setOnClickListener(Lcom/smartisanos/smengine/aa;)V

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/view/jc;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/jc;-><init>(Lcom/smartisanos/launcher/view/tc;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setOnLongClickListener(Lcom/smartisanos/smengine/ba;)V

    return-void
.end method

.method private Vg()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 2
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/tc;->XN:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->updateGeometricState()V

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/tc;->YN:Z

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->tz()V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0, v2, v2, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/N;->m(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 12
    iget-object v3, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    iget v4, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v3, v4, v5, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0, v2, v2, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/N;->o(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 17
    iget-object v3, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    iget v4, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v3, v4, v5, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {v0, v2, v2, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/N;->s(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 23
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/tc;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/tc;->mMode:I

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/tc;Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/j;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/j;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/j;
    .locals 1

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLocalBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/h;->clone()Lcom/smartisanos/smengine/a/h;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/a/h;->a(Lcom/smartisanos/smengine/a/h;)Lcom/smartisanos/smengine/a/h;

    .line 7
    new-instance p0, Lcom/smartisanos/smengine/i;

    invoke-direct {p0}, Lcom/smartisanos/smengine/i;-><init>()V

    .line 8
    invoke-virtual {v0, p1, p0}, Lcom/smartisanos/smengine/j;->a(Lcom/smartisanos/smengine/a/h;Lcom/smartisanos/smengine/j;)V

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/tc;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/tc;->dO:Z

    return p1
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/tc;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/tc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->hz()V

    return-void
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/tc;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/tc;->vc(Z)V

    return-void
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/tc;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/tc;->mIsAnimating:Z

    return p1
.end method

.method static synthetic d(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method static synthetic e(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    return-object p0
.end method

.method private ep()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sEditIconColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v1, Lcom/smartisanos/smengine/a/k;->z:F

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sEditIconColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->x:F

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_1

    .line 6
    iget-object v4, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    iget v5, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->z:F

    invoke-virtual {v4, v3, v5, v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->sEditIconColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v4, v3, Lcom/smartisanos/smengine/a/k;->x:F

    iget v5, v3, Lcom/smartisanos/smengine/a/k;->y:F

    iget v6, v3, Lcom/smartisanos/smengine/a/k;->z:F

    iget v3, v3, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v0, v4, v5, v6, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 10
    iget-object v3, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v3

    if-ne v0, v3, :cond_5

    .line 11
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sEditIconColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->x:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_4

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->z:F

    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_1

    .line 14
    :cond_5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sEditIconColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic f(Lcom/smartisanos/launcher/view/tc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->uz()V

    return-void
.end method

.method static synthetic g(Lcom/smartisanos/launcher/view/tc;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/tc;->mIsAnimating:Z

    return p0
.end method

.method private gz()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/tc;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "clickOnEditModeHideIconLogic begin !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget v0, Lcom/smartisanos/launcher/ob;->launcher_not_available_for_change_settings:I

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/Qa;->c(ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 6
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/tc;->Bb(Z)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v0

    if-ne v1, v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v2, v1, v1, v2}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 9
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/tc;->Bb(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic h(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method private hz()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/tc;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "clickOnEditModeLockIconLogic begin !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget v0, Lcom/smartisanos/launcher/ob;->launcher_not_available_for_change_settings:I

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/Qa;->c(ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v0

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcom/smartisanos/launcher/a/I;->w(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    if-nez v0, :cond_5

    .line 7
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/smartisanos/launcher/view/tc;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "Page.VISIBLE !!!!!!!!!"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v4, v1, v1, v5}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/M;->lb(Z)V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Rh()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Kg()V

    .line 12
    :cond_4
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/tc;->Cb(Z)V

    goto :goto_0

    :cond_5
    if-ne v4, v0, :cond_b

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Rh()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v5, v1, v1, v5}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/b/M;->lb(Z)V

    .line 16
    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/tc;->Cb(Z)V

    goto :goto_0

    .line 17
    :cond_6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/tc;->Zp()V

    goto :goto_0

    .line 18
    :cond_7
    invoke-static {v2}, Lcom/smartisanos/launcher/a/I;->v(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v0, :cond_8

    .line 19
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/tc;->Yp()V

    goto :goto_0

    :cond_8
    if-ne v4, v0, :cond_b

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Rh()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v5, v1, v1, v5}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/b/M;->lb(Z)V

    .line 23
    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/tc;->Cb(Z)V

    goto :goto_0

    .line 24
    :cond_9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/tc;->Zp()V

    goto :goto_0

    :cond_a
    if-nez v0, :cond_b

    .line 25
    invoke-direct {p0, v5}, Lcom/smartisanos/launcher/view/tc;->vc(Z)V

    .line 26
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/b/fa;->v(Lcom/smartisanos/launcher/view/b/M;)V

    :cond_b
    :goto_0
    return-void
.end method

.method static synthetic i(Lcom/smartisanos/launcher/view/tc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->gz()V

    return-void
.end method

.method private iz()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_bgshadow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/view/tc;->UN:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/smartisanos/launcher/view/tc;->VN:F

    float-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 2
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    const-string v1, "title_shadow.png"

    invoke-static {v1, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 9
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/tc;->YN:Z

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0, v1, v1}, Lcom/smartisanos/smengine/N;->q(II)Lcom/smartisanos/smengine/Ga;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v4

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v0

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->Cw:I

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 23
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/L;->Va(I)V

    return-void
.end method

.method static synthetic j(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method private jz()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_bg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 2
    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/N;->y(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 3
    invoke-static {v2}, Lcom/smartisanos/launcher/view/b/N;->w(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4
    invoke-static {v0, v1, v2, v4, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    .line 5
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/tc;->YN:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0, v1, v1}, Lcom/smartisanos/smengine/N;->q(II)Lcom/smartisanos/smengine/Ga;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v4

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v5

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v0

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    const-string v0, "TextureModularColorMaterial"

    .line 21
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 23
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    const-string v1, "title_for_ls.png"

    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    const-string v1, "title.png"

    invoke-static {v1, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 27
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v0

    .line 28
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 29
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->Fw:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method private kz()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/N;->n(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_editIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/smartisanos/smengine/a/i;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/i;->y:F

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    const-string v1, "edit_icon.png"

    invoke-static {v1, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v0

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->Gw:I

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sEditIconColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v5, v1, Lcom/smartisanos/smengine/a/k;->z:F

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 16
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/tc;->YN:Z

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0, v1, v1}, Lcom/smartisanos/smengine/N;->q(II)Lcom/smartisanos/smengine/Ga;

    move-result-object v0

    .line 20
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    :goto_0
    return-void
.end method

.method private ll()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/N;->y(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/N;->w(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    neg-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    neg-float v4, v1

    div-float/2addr v4, v3

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    .line 3
    invoke-virtual {p0, v2, v4, v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateWorldBoundingVolume()V

    return-void
.end method

.method private lz()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/N;->p(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_editIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/smartisanos/smengine/a/i;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/i;->y:F

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v0

    if-ne v3, v0, :cond_0

    const-string v0, "eye-anim/eye_icon_0016.png"

    goto :goto_0

    :cond_0
    const-string v0, "eye-anim/eye_icon_0001.png"

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 13
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/tc;->YN:Z

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0, v2, v2}, Lcom/smartisanos/smengine/N;->q(II)Lcom/smartisanos/smengine/Ga;

    move-result-object v0

    .line 17
    iget-object v2, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v4

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v5

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    goto :goto_1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 22
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v0

    if-ne v1, v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sEditIconColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    cmpl-float v0, v0, v2

    const v3, 0x3e4ccccd    # 0.2f

    if-eqz v0, :cond_2

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    iget v4, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->z:F

    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_2

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_2

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sEditIconColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v1, Lcom/smartisanos/smengine/a/k;->z:F

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 27
    :goto_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v0

    .line 28
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 29
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->Hw:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method private mz()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_gaussian"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 3
    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/N;->y(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 4
    invoke-static {v2}, Lcom/smartisanos/launcher/view/b/N;->w(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 5
    invoke-static {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureMaskModularMaterial"

    .line 6
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    const-string v1, "t_blur_background"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    const-string v1, "title_mask.png"

    invoke-static {v1, v4}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v0

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->Bw:I

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 21
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->aO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v0

    .line 23
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/tc;->aO:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    .line 24
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 25
    fill-array-data v1, :array_0

    const/4 v2, 0x3

    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/y;->c(I[F)V

    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 28
    :goto_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_1
    return-void

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

.method private nz()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/N;->t(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_lockIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/smartisanos/smengine/a/i;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/i;->y:F

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "lock-anim/lock_icon_0016.png"

    goto :goto_0

    :cond_0
    const-string v0, "lock-anim/lock_icon_0001.png"

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {v0, v2, v4}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 13
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/tc;->YN:Z

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0, v1, v1}, Lcom/smartisanos/smengine/N;->q(II)Lcom/smartisanos/smengine/Ga;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v4

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v5

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v0

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    goto :goto_1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 22
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v0

    if-ne v3, v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sEditIconColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    cmpl-float v0, v0, v2

    const v3, 0x3e4ccccd    # 0.2f

    if-eqz v0, :cond_2

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    iget v4, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->z:F

    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_2

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_2

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sEditIconColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v1, Lcom/smartisanos/smengine/a/k;->z:F

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 27
    :goto_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v0

    .line 28
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 29
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->Iw:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method private oz()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_render"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/view/tc;->UN:F

    iget v2, p0, Lcom/smartisanos/launcher/view/tc;->VN:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 5
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setDepthTestFunc(I)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->pH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v0

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->Dw:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method private pz()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->vt()J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_TitleViewRenderTarget"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/tc;->pH:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->pH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/smartisanos/smengine/N;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/tc;->pH:Ljava/lang/String;

    iget v3, p0, Lcom/smartisanos/launcher/view/tc;->UN:F

    float-to-int v3, v3

    iget v4, p0, Lcom/smartisanos/launcher/view/tc;->VN:F

    float-to-int v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/smartisanos/smengine/N;-><init>(Ljava/lang/String;II)V

    .line 6
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/tc;->yG:Z

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/N;->Ma(Z)V

    .line 7
    new-instance v2, Lcom/smartisanos/smengine/Da;

    invoke-direct {v2, v1}, Lcom/smartisanos/smengine/Da;-><init>(Lcom/smartisanos/smengine/N;)V

    .line 8
    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/tc;->yG:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    .line 9
    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/smartisanos/smengine/Da;->e(IIII)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/smartisanos/smengine/Da;->e(IIII)V

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/tc;->pH:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 12
    iput-object v1, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    return-void
.end method

.method private qz()V
    .locals 6

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/Camera;

    iget v1, p0, Lcom/smartisanos/launcher/view/tc;->UN:F

    float-to-int v1, v1

    iget v2, p0, Lcom/smartisanos/launcher/view/tc;->VN:F

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/smengine/Camera;-><init>(II)V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 3
    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/N;->x(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v1, v3}, Lcom/smartisanos/smengine/a/a;->atan2(FF)F

    move-result v1

    const v4, 0x42652ee0

    mul-float/2addr v1, v4

    mul-float/2addr v1, v2

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x42480000    # 50.0f

    .line 5
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/smartisanos/smengine/Camera;->d(FFFF)V

    .line 6
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Camera;->g(Lcom/smartisanos/smengine/a/j;)V

    .line 7
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1, v2, v2, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    sget-object v2, Lcom/smartisanos/smengine/a/j;->QV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/Camera;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/view/tc;->TN:Lcom/smartisanos/smengine/Camera;

    .line 9
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object p0

    const-string v1, "TitleViewCamera"

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/smengine/k;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Camera;)V

    return-void
.end method

.method private rz()V
    .locals 8

    .line 1
    sget-object v4, Lcom/smartisanos/launcher/view/Mc;->yO:Landroid/graphics/Paint;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Cn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/smartisanos/smengine/Da;->a(Ljava/lang/String;Landroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->max_title_name_length:F

    .line 6
    iget v1, p0, Lcom/smartisanos/launcher/view/tc;->VN:F

    .line 7
    new-instance v7, Lcom/smartisanos/launcher/view/Mc;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Cn()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    float-to-int v5, v0

    float-to-int v6, v1

    const-string v1, "title-name"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/launcher/view/Mc;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V

    iput-object v7, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    .line 8
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/tc;->XN:Z

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Mc;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/N;->getViewPort()Lcom/smartisanos/smengine/Ga;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v4

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/smartisanos/launcher/view/Mc;->setViewPort(IIII)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_9_3X3_MODE(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f266666    # 0.65f

    invoke-virtual {v0, v2, v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v0

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object p0

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->Gw:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method private sz()V
    .locals 2

    .line 1
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.ChooseLockPasswordFake"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 p0, 0x1

    const-string v1, "from_smartisanos_launcher"

    .line 4
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "launcher_applications_lock"

    .line 5
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p0, :cond_0

    const/high16 p0, 0x8000000

    .line 7
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/J;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private tz()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/view/b/N;->a(Lcom/smartisanos/launcher/data/LayoutProperty;Lcom/smartisanos/launcher/view/Mc;)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Mc;->updateGeometricState()V

    :cond_0
    return-void
.end method

.method private uz()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sget v1, Lcom/smartisanos/launcher/ob;->launcher_not_available_for_change_settings:I

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/Qa;->c(ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/Eb;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private vc(Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->sz()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    .line 4
    :goto_0
    sget v1, Lcom/smartisanos/launcher/ob;->enter_page_title:I

    invoke-static {p0, v0, v1}, Lcom/smartisanos/launcher/a/I;->a(Landroid/content/Context;II)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "change_plate_lock_password"

    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_2

    const/high16 p1, 0x10000000

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v0, "USE_START_ACTIVITY"

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "from_smartisanos_launchpad"

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p1

    const/16 v0, 0x14

    invoke-virtual {p1, p0, v0}, Lcom/smartisanos/launcher/J;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private vz()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/tc;->cO:I

    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_7

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v0

    .line 4
    iget-object v2, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    .line 5
    iget v3, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    iget v4, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v5, v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v6, v6

    invoke-static {v3, v4, v5, v6, v2}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 6
    iget v3, p0, Lcom/smartisanos/launcher/view/tc;->mMode:I

    const/4 v4, 0x1

    const v5, 0x3f4ccccd    # 0.8f

    if-ne v4, v3, :cond_0

    .line 7
    iget-object v3, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/j;

    move-result-object v3

    .line 8
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v5, v5, v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 12
    iput v4, p0, Lcom/smartisanos/launcher/view/tc;->cO:I

    return-void

    :cond_0
    const/4 v6, 0x2

    if-ne v6, v3, :cond_6

    .line 13
    iget-object v3, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/j;

    move-result-object v3

    .line 14
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v3

    .line 15
    iget-object v7, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v7}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/j;

    move-result-object v7

    .line 16
    invoke-virtual {v7, v2}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v2

    .line 17
    iget-object v7, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v7

    if-eq v4, v7, :cond_1

    iget-object v4, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v3, :cond_2

    .line 18
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v5, v5, v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 20
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 21
    iput v6, p0, Lcom/smartisanos/launcher/view/tc;->cO:I

    return-void

    .line 22
    :cond_2
    iget-object v4, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v4

    if-eq v6, v4, :cond_3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    if-eqz v2, :cond_4

    .line 23
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v5, v5, v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 25
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    const/4 v0, 0x3

    .line 26
    iput v0, p0, Lcom/smartisanos/launcher/view/tc;->cO:I

    return-void

    :cond_4
    if-nez v3, :cond_5

    if-eqz v2, :cond_6

    .line 27
    :cond_5
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    return-void

    .line 28
    :cond_6
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    :cond_7
    const/4 v0, 0x4

    .line 29
    iput v0, p0, Lcom/smartisanos/launcher/view/tc;->cO:I

    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    const v2, 0x3f65e5e6

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 31
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    :cond_8
    return-void
.end method


# virtual methods
.method public Ab(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/tc;->XN:Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/Mc;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Mc;->updateGeometricState()V

    .line 11
    :goto_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->tz()V

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/tc;->updateGeometricState()V

    .line 13
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    :cond_1
    return-void
.end method

.method public Bb(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/tc;->e(ZZ)V

    return-void
.end method

.method public Bi()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Mc;->clear(Z)V

    .line 4
    iput-object v1, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->rz()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->tz()V

    .line 7
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->mz()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 12
    :cond_2
    iput-object v1, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    .line 13
    :goto_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->ep()V

    .line 14
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public Cb(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/tc;->f(ZZ)V

    return-void
.end method

.method public Ob(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "long.press.blur"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/tc;->aO:Ljava/lang/String;

    return-void
.end method

.method public Sa(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/N;->q(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/k;

    move-result-object v1

    .line 3
    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v2, v2

    iget v3, v1, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v3, v3

    iget v4, v1, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v4, v4

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/smartisanos/smengine/L;->d(IIII)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/N;->u(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/k;

    move-result-object v0

    .line 8
    iget v2, v0, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v2, v2

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v3, v3

    iget v4, v0, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v4, v4

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int v0, v0

    invoke-virtual {p1, v2, v3, v4, v0}, Lcom/smartisanos/smengine/L;->d(IIII)V

    .line 9
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setDisplayUpdate()V

    return-void
.end method

.method public Sp()Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method public Ta(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/N;->u(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/k;

    move-result-object v1

    .line 3
    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v2, v2

    iget v3, v1, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v3, v3

    iget v4, v1, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v4, v4

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/smartisanos/smengine/L;->d(IIII)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/N;->q(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/k;

    move-result-object v0

    .line 8
    iget v2, v0, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v2, v2

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v3, v3

    iget v4, v0, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v4, v4

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int v0, v0

    invoke-virtual {p1, v2, v3, v4, v0}, Lcom/smartisanos/smengine/L;->d(IIII)V

    .line 9
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setDisplayUpdate()V

    return-void
.end method

.method public Tp()Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method public Up()Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method public Vp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public Wp()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Sh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Lcom/smartisanos/launcher/view/tc;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "don\'t show password activity by isVerifyPasswordRunning is true"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->ca(Z)V

    const/16 v2, 0x16

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/b/fa;->t(Lcom/smartisanos/launcher/view/b/M;)V

    .line 7
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-gt v4, v5, :cond_1

    .line 8
    invoke-static {v3, v2}, Lcom/smartisanos/launcher/a/x;->b(Landroid/content/Context;I)Z

    move-result v4

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/b/fa;->t(Lcom/smartisanos/launcher/view/b/M;)V

    if-eqz v4, :cond_1

    return-void

    .line 10
    :cond_1
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 11
    const-class v0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-virtual {p0, v3, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 12
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_2

    const v0, 0x10008000

    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const v0, 0x8000

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    const-string v0, "FROM_LAUNCHER"

    .line 15
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/smartisanos/launcher/J;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public Xp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public Yp()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/rc;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/rc;-><init>(Lcom/smartisanos/launcher/view/tc;)V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Zp()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Sh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Lcom/smartisanos/launcher/view/tc;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "don\'t show password activity by isVerifyPasswordRunning is true"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->ca(Z)V

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/b/fa;->t(Lcom/smartisanos/launcher/view/b/M;)V

    const/16 v2, 0x15

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 7
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-gt v4, v5, :cond_1

    .line 8
    invoke-static {v3, v2}, Lcom/smartisanos/launcher/a/x;->b(Landroid/content/Context;I)Z

    move-result v4

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/b/fa;->t(Lcom/smartisanos/launcher/view/b/M;)V

    if-eqz v4, :cond_1

    return-void

    .line 10
    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 11
    const-class v5, Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 12
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_2

    const v3, 0x10008000

    .line 13
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const v3, 0x8000

    .line 14
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    const-string v3, "FROM_LAUNCHER"

    .line 15
    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Lcom/smartisanos/launcher/J;->startActivityForResult(Landroid/content/Intent;I)V

    .line 17
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/b/fa;->t(Lcom/smartisanos/launcher/view/b/M;)V

    return-void
.end method

.method public a(IIIIZ)V
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/tc;->dO:Z

    if-eqz v0, :cond_1

    .line 63
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/view/tc;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "isTitleUpAnim is true."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/L;->d(IIII)V

    .line 65
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    .line 66
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/L;->d(IIII)V

    .line 68
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/L;->d(IIII)V

    .line 71
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    :cond_3
    return-void
.end method

.method public a(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;Lcom/smartisanos/smengine/g;F)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 9
    sget-object v3, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->CZ:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    sget-object v3, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->DZ:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    if-ne v3, v1, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v5

    .line 11
    :goto_2
    sget-boolean v7, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->ce()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move v3, v6

    :goto_3
    if-eqz v3, :cond_8

    if-ne v4, v1, :cond_4

    move v1, v4

    goto :goto_4

    :cond_4
    move v1, v5

    .line 12
    :goto_4
    iget-object v3, v0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 13
    iget-object v6, v0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    .line 14
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 16
    new-instance v8, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v8}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 17
    iget-object v9, v0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9, v8}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 18
    iget v9, v7, Lcom/smartisanos/smengine/a/j;->y:F

    iget v10, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v7, Lcom/smartisanos/smengine/a/j;->y:F

    .line 19
    iget v9, v8, Lcom/smartisanos/smengine/a/j;->y:F

    iget v10, v0, Lcom/smartisanos/launcher/view/tc;->VN:F

    div-float v12, v10, v11

    add-float/2addr v9, v12

    iput v9, v8, Lcom/smartisanos/smengine/a/j;->y:F

    .line 20
    iget v8, v8, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v7, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v8, v7

    .line 21
    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    sub-float/2addr v10, v3

    div-float/2addr v10, v11

    sub-float/2addr v8, v10

    .line 22
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    iget v7, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v6, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v9, v8

    iget v8, v6, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v3, v7, v9, v8}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 23
    new-instance v7, Lcom/smartisanos/smengine/oa;

    iget-object v8, v0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-direct {v7, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 24
    iget-object v8, v0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/M;->wn()Lcom/smartisanos/smengine/a/k;

    move-result-object v8

    if-nez v8, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    .line 25
    :cond_5
    new-instance v9, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v9}, Lcom/smartisanos/smengine/a/k;-><init>()V

    :goto_5
    if-eqz v9, :cond_6

    .line 26
    iget-object v10, v0, Lcom/smartisanos/launcher/view/tc;->bO:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {v10}, Lcom/smartisanos/launcher/view/b/N;->x(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v10

    float-to-int v10, v10

    .line 27
    iget-object v12, v0, Lcom/smartisanos/launcher/view/tc;->fJ:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v12}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 28
    iget v12, v8, Lcom/smartisanos/smengine/a/k;->x:F

    iput v12, v9, Lcom/smartisanos/smengine/a/k;->x:F

    .line 29
    iget-object v12, v0, Lcom/smartisanos/launcher/view/tc;->fJ:Lcom/smartisanos/smengine/a/j;

    iget v12, v12, Lcom/smartisanos/smengine/a/j;->y:F

    div-int/2addr v10, v4

    int-to-float v10, v10

    sub-float/2addr v12, v10

    sget v10, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    div-int/2addr v10, v4

    int-to-float v4, v10

    add-float/2addr v12, v4

    float-to-int v4, v12

    int-to-float v4, v4

    iput v4, v9, Lcom/smartisanos/smengine/a/k;->y:F

    .line 30
    iget v4, v8, Lcom/smartisanos/smengine/a/k;->z:F

    iput v4, v9, Lcom/smartisanos/smengine/a/k;->z:F

    .line 31
    iget v4, v8, Lcom/smartisanos/smengine/a/k;->w:F

    iput v4, v9, Lcom/smartisanos/smengine/a/k;->w:F

    .line 32
    :cond_6
    invoke-virtual {v7, v5}, Lcom/smartisanos/smengine/oa;->va(Z)V

    div-float v4, p3, v11

    .line 33
    invoke-virtual {v7, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v8, 0xf

    .line 34
    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v13, 0x0

    .line 35
    iget v14, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v15, v6, Lcom/smartisanos/smengine/a/j;->y:F

    iget v10, v6, Lcom/smartisanos/smengine/a/j;->z:F

    iget v11, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v12, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v3, Lcom/smartisanos/smengine/a/j;->z:F

    move/from16 v18, v12

    move-object v12, v7

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v19, v8

    invoke-virtual/range {v12 .. v19}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 36
    new-instance v8, Lcom/smartisanos/launcher/view/kc;

    invoke-direct {v8, v0, v9, v1}, Lcom/smartisanos/launcher/view/kc;-><init>(Lcom/smartisanos/launcher/view/tc;Lcom/smartisanos/smengine/a/k;I)V

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v2, v1, v7}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 38
    sget-boolean v7, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v7, :cond_7

    .line 39
    new-instance v7, Lcom/smartisanos/smengine/oa;

    iget-object v8, v0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-direct {v7, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 40
    invoke-virtual {v7, v5}, Lcom/smartisanos/smengine/oa;->va(Z)V

    .line 41
    invoke-virtual {v7, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v8, 0xf

    .line 42
    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v11, 0x0

    .line 43
    iget v12, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v13, v6, Lcom/smartisanos/smengine/a/j;->y:F

    iget v14, v6, Lcom/smartisanos/smengine/a/j;->z:F

    iget v15, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v10, v3, Lcom/smartisanos/smengine/a/j;->z:F

    move/from16 v17, v10

    move-object v10, v7

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v17}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 44
    new-instance v8, Lcom/smartisanos/launcher/view/lc;

    invoke-direct {v8, v0}, Lcom/smartisanos/launcher/view/lc;-><init>(Lcom/smartisanos/launcher/view/tc;)V

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 45
    invoke-virtual {v2, v1, v7}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 46
    :cond_7
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v7, v0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-direct {v1, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 47
    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/oa;->va(Z)V

    .line 48
    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v7, 0xf

    .line 49
    invoke-virtual {v1, v7}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v11, 0x0

    .line 50
    iget v12, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v13, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v14, v3, Lcom/smartisanos/smengine/a/j;->z:F

    iget v15, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v6, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v6, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v10, v1

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v10 .. v17}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 51
    new-instance v7, Lcom/smartisanos/launcher/view/mc;

    invoke-direct {v7, v0, v9}, Lcom/smartisanos/launcher/view/mc;-><init>(Lcom/smartisanos/launcher/view/tc;Lcom/smartisanos/smengine/a/k;)V

    invoke-virtual {v1, v7}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 52
    invoke-virtual {v2, v4, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 53
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_9

    .line 54
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v7, v0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-direct {v1, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 55
    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/oa;->va(Z)V

    .line 56
    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v5, 0xf

    .line 57
    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v8, 0x0

    .line 58
    iget v9, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v11, v3, Lcom/smartisanos/smengine/a/j;->z:F

    iget v12, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v13, v6, Lcom/smartisanos/smengine/a/j;->y:F

    iget v14, v6, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v7, v1

    invoke-virtual/range {v7 .. v14}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 59
    new-instance v3, Lcom/smartisanos/launcher/view/nc;

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/view/nc;-><init>(Lcom/smartisanos/launcher/view/tc;)V

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 60
    invoke-virtual {v2, v4, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_6

    .line 61
    :cond_8
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/tc;->setMode(I)V

    :cond_9
    :goto_6
    return-void
.end method

.method public clear(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/N;->Ka(Z)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->pH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    return-void
.end method

.method public create()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->ll()V

    .line 2
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/tc;->YN:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/tc;->XN:Z

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->qz()V

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->pz()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->iz()V

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->jz()V

    .line 7
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->mz()V

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->rz()V

    .line 10
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->kz()V

    .line 11
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->lz()V

    .line 12
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->nz()V

    .line 13
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->oz()V

    .line 14
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->Vg()V

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->cullWithCameraRect(Lcom/smartisanos/smengine/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isNeedDisplay()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    if-eqz v0, :cond_8

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/N;->Qk()V

    .line 5
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/tc;->YN:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_2

    .line 7
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->TN:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_3

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->TN:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    :cond_3
    const/4 v0, 0x1

    .line 11
    iget v1, p0, Lcom/smartisanos/launcher/view/tc;->mMode:I

    if-ne v0, v1, :cond_5

    .line 12
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/tc;->XN:Z

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/tc;->WN:Z

    if-eqz v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->TN:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Mc;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/tc;->WN:Z

    if-eqz v1, :cond_7

    .line 16
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->TN:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    if-ne v0, v1, :cond_7

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/tc;->WN:Z

    if-eqz v1, :cond_6

    .line 18
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->TN:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/tc;->WN:Z

    if-eqz v1, :cond_7

    .line 20
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->TN:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 21
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->disableDisplayUpdate()V

    .line 22
    :cond_8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    if-eqz v0, :cond_9

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 24
    :cond_9
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/tc;->XN:Z

    if-nez v0, :cond_a

    .line 25
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v0, :cond_a

    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/tc;->WN:Z

    if-eqz v1, :cond_a

    .line 26
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Mc;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 27
    :cond_a
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/tc;->YN:Z

    if-nez v0, :cond_b

    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_b

    .line 29
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v1, :cond_b

    .line 30
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 31
    :cond_b
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/tc;->ZN:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez v0, :cond_c

    .line 32
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_c

    .line 33
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/tc;->ip()V

    .line 34
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    :cond_c
    return-void
.end method

.method public e(ZZ)V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/tc;->mIsAnimating:Z

    .line 3
    new-instance v2, Lcom/smartisanos/launcher/view/sc;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-direct {v2, v0, v3}, Lcom/smartisanos/launcher/view/sc;-><init>(Lcom/smartisanos/launcher/view/tc;Lcom/smartisanos/smengine/SceneNode;)V

    const-string v3, "eye-anim"

    .line 4
    invoke-static {v3, v1}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "0"

    const/16 v6, 0xa

    const/16 v7, 0x10

    const-string v8, "eye_icon_00"

    const-string v9, ".png"

    if-eqz p1, :cond_1

    :goto_0
    if-gt v1, v7, :cond_3

    if-ge v1, v6, :cond_0

    .line 6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-lez v7, :cond_3

    if-ge v7, v6, :cond_2

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 9
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/q;->Ca(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/q;->e(Ljava/util/ArrayList;)V

    .line 12
    invoke-virtual {v2}, Lcom/smartisanos/smengine/q;->Mj()V

    .line 13
    new-instance v1, Lcom/smartisanos/launcher/view/oc;

    invoke-direct {v1, v0}, Lcom/smartisanos/launcher/view/oc;-><init>(Lcom/smartisanos/launcher/view/tc;)V

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 14
    invoke-virtual {v2}, Lcom/smartisanos/smengine/q;->start()V

    .line 15
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    const v3, 0x3e99999a    # 0.3f

    .line 16
    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->sEditIconColorForLight:Lcom/smartisanos/smengine/a/k;

    .line 17
    new-instance v5, Lcom/smartisanos/smengine/a/k;

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v5, v6, v6, v6, v6}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const/high16 v7, 0x3f800000    # 1.0f

    .line 18
    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->sEditIconColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v9, v8, Lcom/smartisanos/smengine/a/k;->x:F

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_4

    .line 19
    iget v7, v8, Lcom/smartisanos/smengine/a/k;->y:F

    iget v8, v8, Lcom/smartisanos/smengine/a/k;->z:F

    invoke-virtual {v5, v9, v7, v8, v6}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 20
    :cond_4
    new-instance v6, Lcom/smartisanos/smengine/oa;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-direct {v6, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 21
    invoke-virtual {v6, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v0, 0xe

    .line 22
    invoke-virtual {v6, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    if-eqz p1, :cond_5

    const/4 v11, 0x3

    .line 23
    iget v12, v4, Lcom/smartisanos/smengine/a/k;->x:F

    iget v13, v4, Lcom/smartisanos/smengine/a/k;->y:F

    iget v14, v4, Lcom/smartisanos/smengine/a/k;->z:F

    iget v15, v4, Lcom/smartisanos/smengine/a/k;->w:F

    iget v0, v5, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, v5, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v5, Lcom/smartisanos/smengine/a/k;->z:F

    iget v5, v5, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v10, v6

    move/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-virtual/range {v10 .. v19}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    goto :goto_4

    :cond_5
    const/4 v11, 0x3

    .line 24
    iget v12, v5, Lcom/smartisanos/smengine/a/k;->x:F

    iget v13, v5, Lcom/smartisanos/smengine/a/k;->y:F

    iget v14, v5, Lcom/smartisanos/smengine/a/k;->z:F

    iget v15, v5, Lcom/smartisanos/smengine/a/k;->w:F

    iget v0, v4, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, v4, Lcom/smartisanos/smengine/a/k;->y:F

    iget v5, v4, Lcom/smartisanos/smengine/a/k;->z:F

    iget v4, v4, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v10, v6

    move/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v4

    invoke-virtual/range {v10 .. v19}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    :goto_4
    const/4 v0, 0x0

    .line 25
    invoke-virtual {v1, v0, v6}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 26
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    if-eqz p2, :cond_6

    .line 27
    invoke-virtual {v2}, Lcom/smartisanos/smengine/c;->Ij()V

    .line 28
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_6
    return-void
.end method

.method public ea(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 2
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/tc;->XN:Z

    if-nez p0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Mc;->setRenderQueue(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/tc;->XN:Z

    if-nez p0, :cond_1

    .line 9
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Mc;->setRenderQueue(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(ZZ)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/tc;->mIsAnimating:Z

    .line 3
    new-instance v2, Lcom/smartisanos/launcher/view/sc;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-direct {v2, v0, v3}, Lcom/smartisanos/launcher/view/sc;-><init>(Lcom/smartisanos/launcher/view/tc;Lcom/smartisanos/smengine/SceneNode;)V

    const-string v3, "lock-anim"

    .line 4
    invoke-static {v3, v1}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "0"

    const/16 v6, 0xa

    const/16 v7, 0x10

    const-string v8, "lock_icon_00"

    const-string v9, ".png"

    if-eqz p1, :cond_1

    :goto_0
    if-gt v1, v7, :cond_3

    if-ge v1, v6, :cond_0

    .line 6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-lez v7, :cond_3

    if-ge v7, v6, :cond_2

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 9
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/q;->Ca(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/q;->e(Ljava/util/ArrayList;)V

    .line 12
    invoke-virtual {v2}, Lcom/smartisanos/smengine/q;->Mj()V

    .line 13
    new-instance v1, Lcom/smartisanos/launcher/view/pc;

    invoke-direct {v1, v0}, Lcom/smartisanos/launcher/view/pc;-><init>(Lcom/smartisanos/launcher/view/tc;)V

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 14
    invoke-virtual {v2}, Lcom/smartisanos/smengine/q;->start()V

    const v1, 0x3e99999a    # 0.3f

    .line 15
    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->sEditIconColorForLight:Lcom/smartisanos/smengine/a/k;

    .line 16
    new-instance v4, Lcom/smartisanos/smengine/a/k;

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v4, v5, v5, v5, v5}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 17
    sget-object v7, Lcom/smartisanos/launcher/data/Constants;->sEditIconColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v8, v7, Lcom/smartisanos/smengine/a/k;->x:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_4

    .line 18
    iget v6, v7, Lcom/smartisanos/smengine/a/k;->y:F

    iget v7, v7, Lcom/smartisanos/smengine/a/k;->z:F

    invoke-virtual {v4, v8, v6, v7, v5}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 19
    :cond_4
    new-instance v5, Lcom/smartisanos/smengine/oa;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-direct {v5, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 20
    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v0, 0xe

    .line 21
    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    if-eqz p1, :cond_5

    const/4 v10, 0x3

    .line 22
    iget v11, v3, Lcom/smartisanos/smengine/a/k;->x:F

    iget v12, v3, Lcom/smartisanos/smengine/a/k;->y:F

    iget v13, v3, Lcom/smartisanos/smengine/a/k;->z:F

    iget v14, v3, Lcom/smartisanos/smengine/a/k;->w:F

    iget v15, v4, Lcom/smartisanos/smengine/a/k;->x:F

    iget v0, v4, Lcom/smartisanos/smengine/a/k;->y:F

    iget v1, v4, Lcom/smartisanos/smengine/a/k;->z:F

    iget v3, v4, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v9, v5

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v3

    invoke-virtual/range {v9 .. v18}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    goto :goto_4

    :cond_5
    const/4 v10, 0x3

    .line 23
    iget v11, v4, Lcom/smartisanos/smengine/a/k;->x:F

    iget v12, v4, Lcom/smartisanos/smengine/a/k;->y:F

    iget v13, v4, Lcom/smartisanos/smengine/a/k;->z:F

    iget v14, v4, Lcom/smartisanos/smengine/a/k;->w:F

    iget v15, v3, Lcom/smartisanos/smengine/a/k;->x:F

    iget v0, v3, Lcom/smartisanos/smengine/a/k;->y:F

    iget v1, v3, Lcom/smartisanos/smengine/a/k;->z:F

    iget v3, v3, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v9, v5

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v3

    invoke-virtual/range {v9 .. v18}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 24
    :goto_4
    invoke-virtual {v5}, Lcom/smartisanos/smengine/oa;->start()V

    if-eqz p2, :cond_6

    .line 25
    invoke-virtual {v2}, Lcom/smartisanos/smengine/c;->Ij()V

    .line 26
    invoke-virtual {v5}, Lcom/smartisanos/smengine/oa;->Ij()V

    :cond_6
    return-void
.end method

.method public ip()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->mPos:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPos:Lcom/smartisanos/smengine/a/j;

    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->z:F

    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/F;->getWidth()F

    move-result v5

    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/F;->getHeight()F

    move-result v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/tc;->_N:[F

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/smartisanos/launcher/e/s;->a(FFFZFF[F)V

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->aO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/tc;->aO:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/y;->Ua(I)[F

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    const/16 p0, 0x8

    new-array p0, p0, [F

    .line 8
    fill-array-data p0, :array_0

    .line 9
    invoke-virtual {v0, v2, p0}, Lcom/smartisanos/smengine/y;->c(I[F)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->updateMesh(Lcom/smartisanos/smengine/y;)V

    const/4 v1, 0x0

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->_N:[F

    invoke-virtual {v0, v1, p0}, Lcom/smartisanos/smengine/y;->d(I[F)V

    :goto_0
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
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Ns()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Os()F

    move-result p1

    .line 4
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    const/4 v4, 0x0

    invoke-direct {v1, v0, p1, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 5
    iget p1, p0, Lcom/smartisanos/launcher/view/tc;->mMode:I

    if-ne v3, p1, :cond_9

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/j;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->uz()V

    goto/16 :goto_1

    .line 10
    :cond_2
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/smartisanos/launcher/view/tc;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "click page title !"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 11
    :cond_3
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/smartisanos/launcher/view/tc;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "Constants.ClickAction.SWITCH_PAGE begin !"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result p1

    if-nez p1, :cond_6

    .line 14
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Tn()V

    goto :goto_1

    .line 15
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/b/fa;->w(Lcom/smartisanos/launcher/view/b/M;)Z

    goto :goto_1

    .line 16
    :cond_7
    :goto_0
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_8

    sget-object p0, Lcom/smartisanos/launcher/view/tc;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "current page is null or empty !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_8
    return v3

    :cond_9
    if-ne v2, p1, :cond_e

    .line 17
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/tc;->mIsAnimating:Z

    if-eqz p1, :cond_a

    return v3

    .line 18
    :cond_a
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/j;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 20
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->gz()V

    return v3

    .line 21
    :cond_b
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/j;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 23
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->hz()V

    goto :goto_1

    .line 24
    :cond_c
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_d

    sget-object p1, Lcom/smartisanos/launcher/view/tc;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "PageTitleView GESTURE_LONG_PRESSED mSomethingIsFloat set true"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 25
    :cond_d
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 26
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->Sg()V

    :cond_e
    :goto_1
    return v3
.end method

.method public onUpdateModulateColor(Lcom/smartisanos/smengine/a/k;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget v2, p1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, p1, Lcom/smartisanos/smengine/a/k;->z:F

    invoke-virtual {v0, v2, v3, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_1

    .line 5
    iget v2, p1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/a/k;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/k;->z:F

    invoke-virtual {v0, v2, v3, p1, p1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    :cond_1
    return-void
.end method

.method public rb(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/tc;->ZN:Z

    xor-int/lit8 v0, p1, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/tc;->ea(Z)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/tc;->zb(Z)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    iget p1, v0, Lcom/smartisanos/launcher/view/lb;->Cw:I

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    iget p1, v0, Lcom/smartisanos/launcher/view/lb;->tw:I

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :goto_0
    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/tc;->mMode:I

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setDisplayUpdate()V

    return-void
.end method

.method public setPressed(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->vz()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/tc;->setUp()V

    .line 7
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setPressed(Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/b/M;->Pa(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Mc;->getText()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/smartisanos/smengine/Da;->a(Ljava/lang/String;Landroid/graphics/Paint;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->rz()V

    .line 9
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/tc;->XN:Z

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->tz()V

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setDisplayUpdate()V

    return-void
.end method

.method public setUp()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/tc;->cO:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sEditIconColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v3, v1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v5, v1, Lcom/smartisanos/smengine/a/k;->z:F

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/tc;->cO:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_1

    .line 5
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sEditIconColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v3, v1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v5, v1, Lcom/smartisanos/smengine/a/k;->z:F

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/smartisanos/launcher/view/tc;->cO:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_2

    .line 7
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sEditIconColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v3, v1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v5, v1, Lcom/smartisanos/smengine/a/k;->z:F

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_0

    .line 8
    :cond_2
    iget v0, p0, Lcom/smartisanos/launcher/view/tc;->cO:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 10
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/smartisanos/launcher/view/tc;->cO:I

    :cond_4
    return-void
.end method

.method public ui()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Mc;->clear(Z)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->rz()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->tz()V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/tc;->ep()V

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public updateGeometricState()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->updateGeometricState()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 16
    :cond_6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_7

    .line 17
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_7
    return-void
.end method

.method public updateLayer(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->updateLayer(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    .line 5
    iget v2, v0, Lcom/smartisanos/launcher/view/lb;->Cw:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->PN:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_1

    .line 7
    iget v2, v0, Lcom/smartisanos/launcher/view/lb;->Bw:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_2

    .line 9
    iget v2, v0, Lcom/smartisanos/launcher/view/lb;->Fw:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_3

    .line 11
    iget v2, v0, Lcom/smartisanos/launcher/view/lb;->Dw:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v1

    iget v2, v0, Lcom/smartisanos/launcher/view/lb;->Gw:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_5

    .line 15
    iget v2, v0, Lcom/smartisanos/launcher/view/lb;->Gw:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_6

    .line 17
    iget v2, v0, Lcom/smartisanos/launcher/view/lb;->Hw:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 18
    :cond_6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_7

    .line 19
    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->Iw:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    :cond_7
    return-void
.end method

.method public writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 11

    const-string v0, "PageTitleView"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mRenderRect"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "mBackShadowRect"

    invoke-interface {v0, v4, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "mBackgroundRect"

    invoke-interface {v0, v5, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "mTextRect"

    invoke-interface {v0, v6, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "mEditIconRect"

    invoke-interface {v0, v7, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "mEyeIconRect"

    invoke-interface {v0, v8, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "mLockIconRect"

    invoke-interface {v0, v9, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "mRenderTarget"

    invoke-interface {v0, v10, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/tc;->pH:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "mRenderTargetTextureName"

    invoke-interface {v0, v10, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/smartisanos/launcher/view/tc;->UN:F

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "mWidthWithShadow"

    invoke-interface {v0, v10, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/smartisanos/launcher/view/tc;->VN:F

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "mHeightWithShadow"

    invoke-interface {v0, v10, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/smartisanos/launcher/view/tc;->mIsAnimating:Z

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "mIsAnimating"

    invoke-interface {v0, v10, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/smartisanos/launcher/view/tc;->WN:Z

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "mIsDisplayIcon"

    invoke-interface {v0, v10, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/smartisanos/launcher/view/tc;->XN:Z

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "mIsDrawTextWithBatch"

    invoke-interface {v0, v10, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/tc;->YN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mIsDrawShadowWithBatch"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-super {p0, v0, p2}, Lcom/smartisanos/smengine/SceneNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 18
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    .line 19
    invoke-interface {p2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/smartisanos/launcher/view/tc;->MN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1, p2}, Lcom/smartisanos/smengine/SceneNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 21
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_1

    .line 23
    invoke-interface {p2, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/smartisanos/launcher/view/tc;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1, p2}, Lcom/smartisanos/smengine/SceneNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 25
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_2

    .line 27
    invoke-interface {p2, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1, p2}, Lcom/smartisanos/smengine/SceneNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 29
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 30
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v1, :cond_3

    .line 31
    invoke-interface {p2, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/smartisanos/launcher/view/tc;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v2, v1, p2}, Lcom/smartisanos/smengine/SceneNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 33
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 34
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_4

    .line 35
    invoke-interface {p2, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/smartisanos/launcher/view/tc;->QN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1, p2}, Lcom/smartisanos/smengine/SceneNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 37
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 38
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_5

    .line 39
    invoke-interface {p2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/smartisanos/launcher/view/tc;->RN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1, p2}, Lcom/smartisanos/smengine/SceneNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 41
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 42
    :cond_5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_6

    .line 43
    invoke-interface {p2, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 44
    iget-object p0, p0, Lcom/smartisanos/launcher/view/tc;->SN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v1, p2}, Lcom/smartisanos/smengine/SceneNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 45
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 46
    :cond_6
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public yb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/tc;->WN:Z

    return-void
.end method

.method public zb(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/tc;->YN:Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {p1, v0, v0}, Lcom/smartisanos/smengine/N;->q(II)Lcom/smartisanos/smengine/Ga;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v3

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 12
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/tc;->NN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 16
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/tc;->updateGeometricState()V

    .line 17
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    :cond_1
    return-void
.end method
