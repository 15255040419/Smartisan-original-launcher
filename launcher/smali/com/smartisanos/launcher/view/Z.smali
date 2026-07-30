.class public Lcom/smartisanos/launcher/view/Z;
.super Lcom/smartisanos/smengine/SceneNode;
.source "DotView.java"


# static fields
.field private static kL:I

.field public static final lL:Lcom/smartisanos/smengine/a/k;

.field private static final log:Lcom/smartisanos/launcher/va;

.field public static final mL:Lcom/smartisanos/smengine/a/k;


# instance fields
.field private HK:Lcom/smartisanos/smengine/F;

.field private JK:Lcom/smartisanos/smengine/SceneNode;

.field private KK:Lcom/smartisanos/smengine/y;

.field private LK:I

.field private MK:Lcom/smartisanos/smengine/n;

.field private NK:Ljava/util/ArrayList;

.field private PK:Lcom/smartisanos/smengine/SceneNode;

.field private QK:Lcom/smartisanos/smengine/SceneNode;

.field private RK:F

.field private SK:F

.field private TK:F

.field private final VK:Ljava/lang/String;

.field private final WK:Ljava/lang/String;

.field private XK:F

.field private Xu:Lcom/smartisanos/launcher/view/V;

.field private YK:F

.field private ZK:F

.field private _K:F

.field private aL:F

.field private bL:Lcom/smartisanos/smengine/oa;

.field private cL:Lcom/smartisanos/smengine/g;

.field private dL:Lcom/smartisanos/smengine/g;

.field private eL:Lcom/smartisanos/smengine/g;

.field private fL:Lcom/smartisanos/smengine/g;

.field private gL:Lcom/smartisanos/smengine/a/k;

.field private hL:Lcom/smartisanos/smengine/a/k;

.field private iL:F

.field private jL:Lcom/smartisanos/smengine/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/Z;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/Z;->log:Lcom/smartisanos/launcher/va;

    const/16 v0, 0x48

    .line 2
    sput v0, Lcom/smartisanos/launcher/view/Z;->kL:I

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/launcher/view/Z;->lL:Lcom/smartisanos/smengine/a/k;

    .line 4
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/launcher/view/Z;->mL:Lcom/smartisanos/smengine/a/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFFLcom/smartisanos/launcher/view/V;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/view/Z;->LK:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Z;->NK:Ljava/util/ArrayList;

    const/high16 p1, 0x41100000    # 9.0f

    .line 4
    iput p1, p0, Lcom/smartisanos/launcher/view/Z;->RK:F

    const-string p1, "dotview.stencil.mesh"

    .line 5
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Z;->VK:Ljava/lang/String;

    const-string p1, "dotview.dots.mesh"

    .line 6
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Z;->WK:Ljava/lang/String;

    const p1, 0x3f666666    # 0.9f

    .line 7
    iput p1, p0, Lcom/smartisanos/launcher/view/Z;->aL:F

    .line 8
    new-instance p1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {p1}, Lcom/smartisanos/smengine/a/k;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Z;->gL:Lcom/smartisanos/smengine/a/k;

    .line 9
    new-instance p1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {p1}, Lcom/smartisanos/smengine/a/k;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Z;->hL:Lcom/smartisanos/smengine/a/k;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/smartisanos/launcher/view/Z;->iL:F

    .line 11
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Z;->jL:Lcom/smartisanos/smengine/a/j;

    .line 12
    iput p2, p0, Lcom/smartisanos/launcher/view/Z;->XK:F

    .line 13
    iput p3, p0, Lcom/smartisanos/launcher/view/Z;->ZK:F

    .line 14
    iput p4, p0, Lcom/smartisanos/launcher/view/Z;->SK:F

    .line 15
    iput p5, p0, Lcom/smartisanos/launcher/view/Z;->TK:F

    .line 16
    iput-object p6, p0, Lcom/smartisanos/launcher/view/Z;->Xu:Lcom/smartisanos/launcher/view/V;

    .line 17
    new-instance p2, Lcom/smartisanos/launcher/view/Y;

    const/16 p3, 0x64

    invoke-direct {p2, p0, p3}, Lcom/smartisanos/launcher/view/Y;-><init>(Lcom/smartisanos/launcher/view/Z;I)V

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Z;->MK:Lcom/smartisanos/smengine/n;

    .line 18
    new-instance p2, Lcom/smartisanos/smengine/a/i;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/i;-><init>()V

    .line 19
    sget-boolean p3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p3, :cond_0

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result p3

    invoke-static {p3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p3

    move-object p4, p3

    iget p3, p4, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_dot_view_location_y:I

    int-to-float p3, p3

    invoke-static {p4, p3}, Lcom/smartisanos/launcher/data/FolderVisualGeometry;->resolveIndicatorScreenY(Ljava/lang/Object;F)F

    move-result p3

    sget p4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float p4, p4

    sget p5, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float p5, p5

    .line 21
    invoke-static {p1, p3, p4, p5, p2}, Lcom/smartisanos/smengine/d/a;->a(FFFFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result p1

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_bottom:F

    iput p1, p2, Lcom/smartisanos/smengine/a/i;->y:F

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result p3

    invoke-static {p3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p3

    move-object p4, p3

    iget p3, p4, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_dot_view_location_y:I

    int-to-float p3, p3

    invoke-static {p4, p3}, Lcom/smartisanos/launcher/data/FolderVisualGeometry;->resolveIndicatorScreenY(Ljava/lang/Object;F)F

    move-result p3

    sget p4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float p4, p4

    sget p5, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float p5, p5

    .line 24
    invoke-static {p1, p3, p4, p5, p2}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 25
    :goto_0
    iget p1, p2, Lcom/smartisanos/smengine/a/i;->y:F

    iput p1, p0, Lcom/smartisanos/launcher/view/Z;->iL:F

    .line 26
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result p1

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    .line 27
    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iput p1, p0, Lcom/smartisanos/launcher/view/Z;->_K:F

    return-void
.end method

.method private A(FF)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->reset()V

    :goto_0
    const v0, 0x3ecccccd    # 0.4f

    .line 4
    new-instance v9, Lcom/smartisanos/smengine/oa;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v9, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 5
    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v0, 0xe

    .line 6
    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v2, 0x0

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    iget v4, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->z:F

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    iget v7, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    .line 10
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    iget v8, v0, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v1, v9

    move v3, p1

    move v6, p2

    .line 11
    invoke-virtual/range {v1 .. v8}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 12
    new-instance p1, Lcom/smartisanos/launcher/view/X;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/smartisanos/launcher/view/X;-><init>(Lcom/smartisanos/launcher/view/Z;Lcom/smartisanos/launcher/view/W;)V

    .line 13
    sget-object p2, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Naa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    iput-object p2, p1, Lcom/smartisanos/launcher/view/X;->kB:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 14
    invoke-virtual {v9, p1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v9}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 16
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/g;->b(B)V

    return-void
.end method

.method private A(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 18
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 19
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/L;->Ia(Z)V

    .line 20
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v0, v1, v1}, Lcom/smartisanos/smengine/L;->d(III)V

    .line 21
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v0, v0}, Lcom/smartisanos/smengine/L;->c(III)V

    .line 22
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 23
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/L;->Ga(Z)V

    .line 24
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method private Ay()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Z;->NK:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Z;->NK:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/SceneNode;

    .line 4
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    cmpl-float v3, v3, v0

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Z;)Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    return-object p0
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/Z;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/Z;)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->MK:Lcom/smartisanos/smengine/n;

    return-object p0
.end method

.method private getIndex()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/Z;->SK:F

    iget v1, p0, Lcom/smartisanos/launcher/view/Z;->RK:F

    add-float/2addr v0, v1

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    div-float/2addr p0, v0

    .line 3
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private ma(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v1, v1, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v1, v1, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    return-void
.end method

.method private rc(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->reset()V

    :goto_0
    const v0, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->gL:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->gL:Lcom/smartisanos/smengine/a/k;

    sget-object v1, Lcom/smartisanos/launcher/view/Z;->mL:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/a/k;->f(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    .line 6
    :goto_1
    new-instance p1, Lcom/smartisanos/smengine/oa;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-direct {p1, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v1, 0xe

    .line 8
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v3, 0x3

    .line 9
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Z;->gL:Lcom/smartisanos/smengine/a/k;

    iget v4, v2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v5, v2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v6, v2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v7, v2, Lcom/smartisanos/smengine/a/k;->w:F

    sget-object v2, Lcom/smartisanos/launcher/view/Z;->lL:Lcom/smartisanos/smengine/a/k;

    iget v8, v2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v9, v2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v10, v2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v11, v2, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 10
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 11
    new-instance p1, Lcom/smartisanos/smengine/oa;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {p1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 12
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 13
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v5, 0x3

    .line 14
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Z;->gL:Lcom/smartisanos/smengine/a/k;

    iget v6, v2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v7, v2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v8, v2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v9, v2, Lcom/smartisanos/smengine/a/k;->w:F

    sget-object v2, Lcom/smartisanos/launcher/view/Z;->lL:Lcom/smartisanos/smengine/a/k;

    iget v10, v2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v11, v2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v12, v2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v13, v2, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v4, p1

    invoke-virtual/range {v4 .. v13}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 15
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v3, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 16
    new-instance p1, Lcom/smartisanos/smengine/oa;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {p1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 17
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 18
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->gL:Lcom/smartisanos/smengine/a/k;

    iget v6, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v7, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v8, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v9, v0, Lcom/smartisanos/smengine/a/k;->w:F

    sget-object v0, Lcom/smartisanos/launcher/view/Z;->lL:Lcom/smartisanos/smengine/a/k;

    iget v10, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v11, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v12, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v13, v0, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v4, p1

    invoke-virtual/range {v4 .. v13}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0, v3, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 21
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/g;->b(B)V

    .line 22
    new-instance p1, Lcom/smartisanos/launcher/view/X;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/smartisanos/launcher/view/X;-><init>(Lcom/smartisanos/launcher/view/Z;Lcom/smartisanos/launcher/view/W;)V

    .line 23
    sget-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Jaa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    iput-object v0, p1, Lcom/smartisanos/launcher/view/X;->kB:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 24
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    return-void
.end method

.method private ry()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->bL:Lcom/smartisanos/smengine/oa;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/oa;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Z;->bL:Lcom/smartisanos/smengine/oa;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/smengine/oa;->reset()V

    :goto_0
    const v0, 0x3dcccccd    # 0.1f

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->bL:Lcom/smartisanos/smengine/oa;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->bL:Lcom/smartisanos/smengine/oa;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Z;->bL:Lcom/smartisanos/smengine/oa;

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    iget v8, p0, Lcom/smartisanos/launcher/view/Z;->aL:F

    const/high16 v9, 0x3f800000    # 1.0f

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->bL:Lcom/smartisanos/smengine/oa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 8
    new-instance v0, Lcom/smartisanos/launcher/view/X;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/X;-><init>(Lcom/smartisanos/launcher/view/Z;Lcom/smartisanos/launcher/view/W;)V

    .line 9
    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Kaa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    iput-object v1, v0, Lcom/smartisanos/launcher/view/X;->kB:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->bL:Lcom/smartisanos/smengine/oa;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->bL:Lcom/smartisanos/smengine/oa;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/oa;->b(B)V

    return-void
.end method

.method private sc(Z)V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v1, v0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->reset()V

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/Z;->gL:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Z;->gL:Lcom/smartisanos/smengine/a/k;

    sget-object v2, Lcom/smartisanos/launcher/view/Z;->lL:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/a/k;->f(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    .line 6
    :goto_1
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/smartisanos/launcher/view/Z;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "## dot disappear animation color = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Z;->gL:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ###"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    new-instance v12, Lcom/smartisanos/smengine/oa;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-direct {v12, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 8
    invoke-virtual {v12, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v13, 0xe

    .line 9
    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v3, 0x3

    .line 10
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Z;->gL:Lcom/smartisanos/smengine/a/k;

    iget v4, v2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v5, v2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v6, v2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v7, v2, Lcom/smartisanos/smengine/a/k;->w:F

    sget-object v2, Lcom/smartisanos/launcher/view/Z;->mL:Lcom/smartisanos/smengine/a/k;

    iget v8, v2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v9, v2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v10, v2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v11, v2, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v2, v12

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 11
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 12
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v2, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 13
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 14
    invoke-virtual {v2, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v15, 0x3

    .line 15
    iget-object v4, v0, Lcom/smartisanos/launcher/view/Z;->gL:Lcom/smartisanos/smengine/a/k;

    iget v5, v4, Lcom/smartisanos/smengine/a/k;->x:F

    iget v6, v4, Lcom/smartisanos/smengine/a/k;->y:F

    iget v7, v4, Lcom/smartisanos/smengine/a/k;->z:F

    iget v4, v4, Lcom/smartisanos/smengine/a/k;->w:F

    sget-object v8, Lcom/smartisanos/launcher/view/Z;->mL:Lcom/smartisanos/smengine/a/k;

    iget v9, v8, Lcom/smartisanos/smengine/a/k;->x:F

    iget v10, v8, Lcom/smartisanos/smengine/a/k;->y:F

    iget v11, v8, Lcom/smartisanos/smengine/a/k;->z:F

    iget v8, v8, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v14, v2

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v4

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v8

    invoke-virtual/range {v14 .. v23}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 16
    iget-object v4, v0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4, v3, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 17
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Z;->hL:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 18
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Z;->hL:Lcom/smartisanos/smengine/a/k;

    iget v2, v2, Lcom/smartisanos/smengine/a/k;->w:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 19
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v2, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 20
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 21
    invoke-virtual {v2, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v15, 0x3

    .line 22
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Z;->hL:Lcom/smartisanos/smengine/a/k;

    iget v4, v1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v5, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v6, v1, Lcom/smartisanos/smengine/a/k;->z:F

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    sget-object v7, Lcom/smartisanos/launcher/view/Z;->mL:Lcom/smartisanos/smengine/a/k;

    iget v8, v7, Lcom/smartisanos/smengine/a/k;->x:F

    iget v9, v7, Lcom/smartisanos/smengine/a/k;->y:F

    iget v10, v7, Lcom/smartisanos/smengine/a/k;->z:F

    iget v7, v7, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v14, v2

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v1

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v7

    invoke-virtual/range {v14 .. v23}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 23
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 24
    :cond_3
    new-instance v1, Lcom/smartisanos/launcher/view/X;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/smartisanos/launcher/view/X;-><init>(Lcom/smartisanos/launcher/view/Z;Lcom/smartisanos/launcher/view/W;)V

    .line 25
    sget-object v2, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Maa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    iput-object v2, v1, Lcom/smartisanos/launcher/view/X;->kB:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 26
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 27
    iget-object v0, v0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/g;->b(B)V

    return-void
.end method

.method private sy()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Z;->cL:Lcom/smartisanos/smengine/g;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v1, v0, Lcom/smartisanos/launcher/view/Z;->cL:Lcom/smartisanos/smengine/g;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->reset()V

    .line 4
    :goto_0
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v10, 0x3dcccccd    # 0.1f

    .line 5
    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v11, 0xe

    .line 6
    invoke-virtual {v1, v11}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 7
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    const/4 v3, 0x1

    .line 8
    iget v4, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v6, v2, Lcom/smartisanos/smengine/a/j;->z:F

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 10
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Z;->cL:Lcom/smartisanos/smengine/g;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 11
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/Z;->hL:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 12
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Z;->hL:Lcom/smartisanos/smengine/a/k;

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 13
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 14
    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 15
    invoke-virtual {v1, v11}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v13, 0x3

    .line 16
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Z;->hL:Lcom/smartisanos/smengine/a/k;

    iget v14, v2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v15, v2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v2, v2, Lcom/smartisanos/smengine/a/k;->w:F

    sget-object v5, Lcom/smartisanos/launcher/view/Z;->mL:Lcom/smartisanos/smengine/a/k;

    iget v6, v5, Lcom/smartisanos/smengine/a/k;->x:F

    iget v7, v5, Lcom/smartisanos/smengine/a/k;->y:F

    iget v8, v5, Lcom/smartisanos/smengine/a/k;->z:F

    iget v5, v5, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v12, v1

    move/from16 v16, v4

    move/from16 v17, v2

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v5

    invoke-virtual/range {v12 .. v21}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 17
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Z;->cL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 18
    :cond_1
    new-instance v1, Lcom/smartisanos/launcher/view/X;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/smartisanos/launcher/view/X;-><init>(Lcom/smartisanos/launcher/view/Z;Lcom/smartisanos/launcher/view/W;)V

    .line 19
    sget-object v2, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Laa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    iput-object v2, v1, Lcom/smartisanos/launcher/view/X;->kB:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 20
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Z;->cL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 21
    iget-object v0, v0, Lcom/smartisanos/launcher/view/Z;->cL:Lcom/smartisanos/smengine/g;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/g;->b(B)V

    return-void
.end method

.method private ty()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->KK:Lcom/smartisanos/smengine/y;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->KK:Lcom/smartisanos/smengine/y;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/z;->b(Lcom/smartisanos/smengine/y;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Z;->KK:Lcom/smartisanos/smengine/y;

    .line 4
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/Z;->LK:I

    mul-int/lit8 v1, v0, 0x4

    mul-int/lit8 v1, v1, 0x3

    new-array v3, v1, [F

    mul-int/lit8 v1, v0, 0x4

    mul-int/lit8 v1, v1, 0x2

    .line 5
    new-array v4, v1, [F

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x3

    .line 6
    new-array v5, v0, [S

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v6, v2

    move v7, v1

    .line 7
    :goto_0
    iget v8, p0, Lcom/smartisanos/launcher/view/Z;->LK:I

    if-ge v2, v8, :cond_1

    .line 8
    iget v8, p0, Lcom/smartisanos/launcher/view/Z;->SK:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float v10, v8, v9

    sub-float v10, v7, v10

    .line 9
    iget v11, p0, Lcom/smartisanos/launcher/view/Z;->TK:F

    div-float v12, v11, v9

    sub-float v12, v1, v12

    div-float v13, v8, v9

    add-float/2addr v13, v7

    div-float/2addr v11, v9

    add-float/2addr v11, v1

    add-int/lit8 v9, v6, 0x1

    .line 10
    aput v10, v3, v6

    add-int/lit8 v6, v9, 0x1

    .line 11
    aput v12, v3, v9

    add-int/lit8 v9, v6, 0x1

    .line 12
    aput v1, v3, v6

    add-int/lit8 v6, v9, 0x1

    .line 13
    aput v13, v3, v9

    add-int/lit8 v9, v6, 0x1

    .line 14
    aput v12, v3, v6

    add-int/lit8 v6, v9, 0x1

    .line 15
    aput v1, v3, v9

    add-int/lit8 v9, v6, 0x1

    .line 16
    aput v13, v3, v6

    add-int/lit8 v6, v9, 0x1

    .line 17
    aput v11, v3, v9

    add-int/lit8 v9, v6, 0x1

    .line 18
    aput v1, v3, v6

    add-int/lit8 v6, v9, 0x1

    .line 19
    aput v10, v3, v9

    add-int/lit8 v9, v6, 0x1

    .line 20
    aput v11, v3, v6

    add-int/lit8 v6, v9, 0x1

    .line 21
    aput v1, v3, v9

    .line 22
    iget v9, p0, Lcom/smartisanos/launcher/view/Z;->RK:F

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_1
    array-length v2, v3

    if-ne v6, v2, :cond_6

    move v2, v0

    move v6, v2

    .line 24
    :goto_1
    iget v7, p0, Lcom/smartisanos/launcher/view/Z;->LK:I

    if-ge v2, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    .line 25
    aput v1, v4, v6

    add-int/lit8 v6, v7, 0x1

    .line 26
    aput v1, v4, v7

    add-int/lit8 v7, v6, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    .line 27
    aput v8, v4, v6

    add-int/lit8 v6, v7, 0x1

    .line 28
    aput v1, v4, v7

    add-int/lit8 v7, v6, 0x1

    .line 29
    aput v8, v4, v6

    add-int/lit8 v6, v7, 0x1

    .line 30
    aput v8, v4, v7

    add-int/lit8 v7, v6, 0x1

    .line 31
    aput v1, v4, v6

    add-int/lit8 v6, v7, 0x1

    .line 32
    aput v8, v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 33
    :cond_2
    array-length v1, v4

    if-ne v6, v1, :cond_5

    move v1, v0

    .line 34
    :goto_2
    iget v2, p0, Lcom/smartisanos/launcher/view/Z;->LK:I

    if-ge v0, v2, :cond_3

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v6, v1, 0x1

    int-to-short v7, v2

    .line 35
    aput-short v7, v5, v1

    add-int/lit8 v1, v6, 0x1

    add-int/lit8 v8, v2, 0x1

    int-to-short v8, v8

    .line 36
    aput-short v8, v5, v6

    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v8, v2, 0x2

    int-to-short v8, v8

    .line 37
    aput-short v8, v5, v1

    add-int/lit8 v1, v6, 0x1

    .line 38
    aput-short v7, v5, v6

    add-int/lit8 v6, v1, 0x1

    .line 39
    aput-short v8, v5, v1

    add-int/lit8 v1, v6, 0x1

    add-int/lit8 v2, v2, 0x3

    int-to-short v2, v2

    .line 40
    aput-short v2, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 41
    :cond_3
    array-length v0, v5

    if-ne v1, v0, :cond_4

    .line 42
    new-instance v0, Lcom/smartisanos/smengine/y;

    invoke-direct {v0}, Lcom/smartisanos/smengine/y;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Z;->KK:Lcom/smartisanos/smengine/y;

    .line 43
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Z;->KK:Lcom/smartisanos/smengine/y;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/smartisanos/smengine/y;->a([F[F[S[FZ)V

    .line 44
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->KK:Lcom/smartisanos/smengine/y;

    const-string v1, "dotview.dots.mesh"

    invoke-virtual {v0, v1, p0}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    return-void

    .line 45
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create dot mesh face num error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create dot mesh tex points num error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create dot mesh points num error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private ud(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/Z;->SK:F

    iget v1, p0, Lcom/smartisanos/launcher/view/Z;->RK:F

    add-float/2addr v0, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/4 v1, 0x0

    add-float/2addr p1, v1

    .line 2
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, p1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const/4 p1, 0x0

    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Z;->NK:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Z;->NK:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/SceneNode;

    .line 6
    invoke-virtual {v3, v2, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 7
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    add-float/2addr v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private uy()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/Z;->LK:I

    mul-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->KK:Lcom/smartisanos/smengine/y;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/y;->Ta(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x4

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v3, -0x40800000    # -1.0f

    const-string v4, "TextureModularColorMaterial"

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 4
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Z;->KK:Lcom/smartisanos/smengine/y;

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    goto/16 :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/SceneNode;

    const-string v6, "dotBackgroundNode"

    invoke-direct {v0, v6}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/Z;->KK:Lcom/smartisanos/smengine/y;

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 7
    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 8
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v6, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    sget-object v6, Lcom/smartisanos/launcher/view/Z;->lL:Lcom/smartisanos/smengine/a/k;

    iget v7, v6, Lcom/smartisanos/smengine/a/k;->x:F

    iget v8, v6, Lcom/smartisanos/smengine/a/k;->y:F

    iget v9, v6, Lcom/smartisanos/smengine/a/k;->z:F

    iget v6, v6, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v0, v7, v8, v9, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    const-string v6, "dot_fix.png"

    invoke-static {v6}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Tl()I

    move-result v0

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/smartisanos/launcher/view/nb;->ua(I)Lcom/smartisanos/launcher/view/kb;

    move-result-object v0

    .line 14
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    iget v0, v0, Lcom/smartisanos/launcher/view/kb;->qw:I

    invoke-virtual {v6, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 22
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iget-object v6, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    .line 25
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_2

    .line 26
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->KK:Lcom/smartisanos/smengine/y;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    goto/16 :goto_1

    .line 27
    :cond_2
    new-instance v0, Lcom/smartisanos/smengine/SceneNode;

    const-string v6, "dotShadowNode"

    invoke-direct {v0, v6}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    .line 28
    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 29
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/Z;->KK:Lcom/smartisanos/smengine/y;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    sget-object v4, Lcom/smartisanos/launcher/view/Z;->lL:Lcom/smartisanos/smengine/a/k;

    iget v6, v4, Lcom/smartisanos/smengine/a/k;->x:F

    iget v7, v4, Lcom/smartisanos/smengine/a/k;->y:F

    iget v8, v4, Lcom/smartisanos/smengine/a/k;->z:F

    iget v4, v4, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v0, v6, v7, v8, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 32
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    const-string v4, "dot_shadow.png"

    invoke-static {v4}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 35
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 36
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 37
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Tl()I

    move-result v0

    .line 38
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/nb;->ua(I)Lcom/smartisanos/launcher/view/kb;

    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    iget v0, v0, Lcom/smartisanos/launcher/view/kb;->sw:I

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 40
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 41
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 42
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 43
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 44
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_3

    .line 45
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 46
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    .line 47
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    if-nez v0, :cond_4

    .line 48
    new-instance v0, Lcom/smartisanos/smengine/SceneNode;

    const-string v1, "movedDotNode"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    .line 49
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 50
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 51
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_4

    .line 52
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    :cond_4
    return-void
.end method

.method private vd(I)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/Z;->SK:F

    iget p0, p0, Lcom/smartisanos/launcher/view/Z;->RK:F

    add-float/2addr v0, p0

    int-to-float p0, p1

    mul-float/2addr p0, v0

    return p0
.end method

.method private vy()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/view/Z;->SK:F

    iget v1, p0, Lcom/smartisanos/launcher/view/Z;->TK:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "moveDot"

    invoke-static {v4, v0, v1, v2, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    sget-object v1, Lcom/smartisanos/launcher/view/Z;->lL:Lcom/smartisanos/smengine/a/k;

    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v5, v1, Lcom/smartisanos/smengine/a/k;->z:F

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    const-string v1, "dot_move.png"

    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ia(Z)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3}, Lcom/smartisanos/smengine/L;->d(III)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/smartisanos/smengine/L;->c(III)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ca(Z)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Tl()I

    move-result v0

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/nb;->ua(I)Lcom/smartisanos/launcher/view/kb;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/view/kb;->rw:I

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 19
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    :cond_0
    return-void
.end method

.method private wy()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/Z;->XK:F

    iget v1, p0, Lcom/smartisanos/launcher/view/Z;->LK:I

    int-to-float v2, v1

    iget v3, p0, Lcom/smartisanos/launcher/view/Z;->SK:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x41100000    # 9.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41c00000    # 24.0f

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :cond_1
    :goto_0
    iput v0, p0, Lcom/smartisanos/launcher/view/Z;->RK:F

    return-void
.end method

.method private xy()Lcom/smartisanos/smengine/y;
    .locals 13

    const-string v0, "dot_mask.png"

    .line 1
    invoke-static {v0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/smengine/s;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/smartisanos/launcher/view/Z;->SK:F

    float-to-int v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget p0, p0, Lcom/smartisanos/launcher/view/Z;->TK:F

    float-to-int p0, p0

    sub-int/2addr p0, v2

    invoke-static {v0, v1, p0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    mul-int/2addr v3, v2

    .line 6
    new-array v11, v3, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v11

    move v6, v1

    move v9, v1

    move v10, v2

    .line 7
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v4, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/i;-><init>()V

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_2

    move v7, v5

    :goto_1
    if-ge v7, v1, :cond_1

    mul-int v8, v6, v1

    add-int/2addr v8, v7

    .line 10
    aget v8, v11, v8

    .line 11
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    const/16 v9, 0x50

    if-le v8, v9, :cond_0

    int-to-float v8, v7

    add-int/lit8 v9, v2, -0x1

    sub-int/2addr v9, v6

    int-to-float v9, v9

    int-to-float v10, v1

    int-to-float v12, v2

    .line 12
    invoke-static {v8, v9, v10, v12, v4}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 13
    new-instance v8, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v8}, Lcom/smartisanos/smengine/a/i;-><init>()V

    .line 14
    iget v9, v4, Lcom/smartisanos/smengine/a/i;->x:F

    const v10, 0x3ee66666    # 0.45f

    add-float/2addr v9, v10

    iput v9, v8, Lcom/smartisanos/smengine/a/i;->x:F

    .line 15
    iget v9, v4, Lcom/smartisanos/smengine/a/i;->y:F

    const v10, 0x3f0a3d71    # 0.54f

    sub-float/2addr v9, v10

    iput v9, v8, Lcom/smartisanos/smengine/a/i;->y:F

    .line 16
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 18
    sget-object v1, Lcom/smartisanos/launcher/view/Z;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "can not create stencil mesh : dot image error"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 19
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    new-array v7, v1, [F

    move v1, v5

    .line 20
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_4

    .line 21
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/a/i;

    add-int/lit8 v4, v1, 0x1

    .line 22
    iget v6, v2, Lcom/smartisanos/smengine/a/i;->x:F

    aput v6, v7, v1

    add-int/lit8 v1, v4, 0x1

    .line 23
    iget v2, v2, Lcom/smartisanos/smengine/a/i;->y:F

    aput v2, v7, v4

    add-int/lit8 v2, v1, 0x1

    const/4 v4, 0x0

    .line 24
    aput v4, v7, v1

    add-int/lit8 v5, v5, 0x1

    move v1, v2

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_5

    .line 26
    new-instance v1, Lcom/smartisanos/smengine/y;

    invoke-direct {v1}, Lcom/smartisanos/smengine/y;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v1

    .line 27
    invoke-virtual/range {v6 .. v11}, Lcom/smartisanos/smengine/y;->a([F[F[S[FZ)V

    .line 28
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 29
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1

    .line 30
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "create dots error"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private yy()Lcom/smartisanos/smengine/SceneNode;
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v0

    const-string v1, "dotview.stencil.mesh"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Z;->xy()Lcom/smartisanos/smengine/y;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    .line 4
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/SceneNode;

    const-string v2, "dotNotStencilNode"

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    const-string v0, "GlobalColorMaterial"

    .line 6
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 9
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/Z;->A(Lcom/smartisanos/smengine/SceneNode;)V

    .line 10
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    .line 12
    iget v0, p0, Lcom/smartisanos/launcher/view/Z;->SK:F

    iget p0, p0, Lcom/smartisanos/launcher/view/Z;->RK:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p0, v2

    add-float/2addr v0, p0

    neg-float p0, v0

    div-float/2addr p0, v2

    div-float/2addr v0, v2

    .line 13
    invoke-virtual {v1, p0, p0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 14
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_1
    return-object v1
.end method

.method private zy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->NK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 2
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->NK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 4
    :goto_1
    iget v1, p0, Lcom/smartisanos/launcher/view/Z;->LK:I

    if-ge v0, v1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Z;->yy()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 6
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Z;->NK:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public Bi()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v0

    const-string v1, "dotview.stencil.mesh"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/z;->Ha(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Z;->xy()Lcom/smartisanos/smengine/y;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Z;->NK:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Z;->NK:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/SceneNode;

    .line 6
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public D(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/Z;->create(II)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Z;->kp()V

    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;)V
    .locals 4

    .line 79
    sget-object v0, Lcom/smartisanos/launcher/view/W;->jv:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_8

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v3, 0x5

    if-eq p1, v0, :cond_2

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->getUserData()B

    move-result p1

    if-ne v1, p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->kill()V

    .line 83
    :cond_1
    iput-object v2, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    goto :goto_0

    .line 84
    :cond_2
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez p1, :cond_a

    .line 85
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->MK:Lcom/smartisanos/smengine/n;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    .line 86
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    if-eqz p1, :cond_3

    .line 87
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->getUserData()B

    move-result p1

    if-ne v3, p1, :cond_3

    .line 88
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_3
    const/4 p1, 0x0

    .line 89
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Z;->ma(F)V

    .line 90
    iput-object v2, p0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    goto :goto_0

    .line 91
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->cL:Lcom/smartisanos/smengine/g;

    if-eqz p1, :cond_5

    .line 92
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->getUserData()B

    move-result p1

    if-ne v3, p1, :cond_5

    .line 93
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->cL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->kill()V

    .line 94
    :cond_5
    iput-object v2, p0, Lcom/smartisanos/launcher/view/Z;->cL:Lcom/smartisanos/smengine/g;

    goto :goto_0

    .line 95
    :cond_6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->bL:Lcom/smartisanos/smengine/oa;

    if-eqz p1, :cond_7

    .line 96
    invoke-virtual {p1}, Lcom/smartisanos/smengine/oa;->getUserData()B

    move-result p1

    if-ne v1, p1, :cond_7

    .line 97
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->bL:Lcom/smartisanos/smengine/oa;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/oa;->kill()V

    .line 98
    :cond_7
    iput-object v2, p0, Lcom/smartisanos/launcher/view/Z;->bL:Lcom/smartisanos/smengine/oa;

    goto :goto_0

    .line 99
    :cond_8
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez p1, :cond_a

    .line 100
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    if-eqz p1, :cond_9

    .line 101
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->getUserData()B

    move-result p1

    if-ne v0, p1, :cond_9

    .line 102
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 103
    :cond_9
    iput-object v2, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    :cond_a
    :goto_0
    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V
    .locals 6

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/view/W;->jv:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eq p1, v5, :cond_f

    if-eq p1, v1, :cond_c

    if-eq p1, v3, :cond_b

    if-eq p1, v0, :cond_8

    if-eq p1, v4, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->MK:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->getUserData()B

    move-result v0

    if-ne v4, v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->kill()V

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v2

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    .line 12
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->getUserData()B

    move-result v1

    if-ne v3, v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->kill()V

    .line 14
    :cond_3
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/view/Z;->vd(I)F

    move-result p2

    .line 15
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 16
    invoke-direct {p0, v1, p2}, Lcom/smartisanos/launcher/view/Z;->A(FF)V

    .line 17
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/g;->start()V

    if-nez p1, :cond_6

    .line 18
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 19
    :cond_4
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_5

    sget-object p1, Lcom/smartisanos/launcher/view/Z;->log:Lcom/smartisanos/launcher/va;

    const-string p2, "### create Dot appear animation #####"

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 20
    :cond_5
    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/view/Z;->rc(Z)V

    .line 21
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    goto/16 :goto_1

    :cond_6
    if-eqz v0, :cond_16

    .line 22
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_7

    sget-object p1, Lcom/smartisanos/launcher/view/Z;->log:Lcom/smartisanos/launcher/va;

    const-string p2, "## create dot appear animation when disappear ###"

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 23
    :cond_7
    invoke-direct {p0, v5}, Lcom/smartisanos/launcher/view/Z;->rc(Z)V

    .line 24
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    goto/16 :goto_1

    .line 25
    :cond_8
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object p1

    iget-object p2, p0, Lcom/smartisanos/launcher/view/Z;->MK:Lcom/smartisanos/smengine/n;

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    .line 26
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez p1, :cond_16

    .line 27
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    if-eqz p1, :cond_9

    .line 28
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    .line 29
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->getUserData()B

    move-result p1

    if-ne v4, p1, :cond_9

    return-void

    .line 30
    :cond_9
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_a

    sget-object p1, Lcom/smartisanos/launcher/view/Z;->log:Lcom/smartisanos/launcher/va;

    const-string p2, "## create DOT_DISAPPEAR ###"

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 31
    :cond_a
    invoke-direct {p0, v5}, Lcom/smartisanos/launcher/view/Z;->sc(Z)V

    .line 32
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    goto/16 :goto_1

    .line 33
    :cond_b
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object p1

    iget-object p2, p0, Lcom/smartisanos/launcher/view/Z;->MK:Lcom/smartisanos/smengine/n;

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    .line 34
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Z;->sy()V

    .line 35
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->cL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    goto/16 :goto_1

    .line 36
    :cond_c
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    if-eqz p1, :cond_d

    .line 37
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    .line 38
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->getUserData()B

    move-result p1

    if-ne v3, p1, :cond_d

    .line 39
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->kill()V

    .line 40
    :cond_d
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object p1

    iget-object p2, p0, Lcom/smartisanos/launcher/view/Z;->MK:Lcom/smartisanos/smengine/n;

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    .line 41
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    if-eqz p1, :cond_e

    .line 42
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    .line 43
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->getUserData()B

    move-result p1

    if-ne v4, p1, :cond_e

    .line 44
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->kill()V

    .line 45
    :cond_e
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 46
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Z;->ry()V

    .line 47
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->bL:Lcom/smartisanos/smengine/oa;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/oa;->start()V

    goto/16 :goto_1

    .line 48
    :cond_f
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez p1, :cond_15

    .line 49
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    if-eqz p1, :cond_10

    .line 50
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    .line 51
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->getUserData()B

    move-result p1

    if-ne v3, p1, :cond_10

    .line 52
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->kill()V

    .line 53
    :cond_10
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object p1

    iget-object p2, p0, Lcom/smartisanos/launcher/view/Z;->MK:Lcom/smartisanos/smengine/n;

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    .line 54
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->cL:Lcom/smartisanos/smengine/g;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->cL:Lcom/smartisanos/smengine/g;

    .line 55
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->getUserData()B

    move-result p1

    if-ne v1, p1, :cond_11

    .line 56
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->cL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->kill()V

    .line 57
    :cond_11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    if-eqz p1, :cond_13

    .line 58
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    .line 59
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->getUserData()B

    move-result p1

    if-ne v4, p1, :cond_13

    .line 60
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->kill()V

    .line 61
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    if-eqz p1, :cond_12

    .line 62
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    .line 63
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->getUserData()B

    move-result p1

    if-ne v0, p1, :cond_12

    .line 64
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->kill()V

    .line 65
    :cond_12
    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 66
    invoke-direct {p0, v5}, Lcom/smartisanos/launcher/view/Z;->rc(Z)V

    .line 67
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    return-void

    .line 68
    :cond_13
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object p1

    .line 69
    iget-object p2, p1, Lcom/smartisanos/smengine/d/f;->qY:Lcom/smartisanos/smengine/a/k;

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p2, v0, v0, v0, v0}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 71
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, p2}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 72
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_14

    iget p2, p2, Lcom/smartisanos/smengine/a/k;->w:F

    cmpg-float p2, v0, p2

    if-gez p2, :cond_14

    .line 73
    invoke-virtual {p1}, Lcom/smartisanos/smengine/d/f;->release()V

    return-void

    .line 74
    :cond_14
    invoke-virtual {p1}, Lcom/smartisanos/smengine/d/f;->release()V

    .line 75
    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 76
    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/view/Z;->rc(Z)V

    .line 77
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    goto :goto_1

    .line 78
    :cond_15
    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_16
    :goto_1
    return-void
.end method

.method public create(II)V
    .locals 3

    if-lez p1, :cond_3

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/Z;->LK:I

    if-ne v0, p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Z;->getIndex()I

    move-result p1

    if-eq p2, p1, :cond_0

    .line 3
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/view/Z;->ud(I)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iput p1, p0, Lcom/smartisanos/launcher/view/Z;->LK:I

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Z;->wy()V

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Z;->ty()V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Z;->vy()V

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Z;->zy()V

    .line 9
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Z;->uy()V

    .line 10
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/view/Z;->ud(I)V

    .line 11
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 13
    iget p2, p0, Lcom/smartisanos/launcher/view/Z;->LK:I

    int-to-float v0, p2

    iget v1, p0, Lcom/smartisanos/launcher/view/Z;->SK:F

    mul-float/2addr v0, v1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    iget p2, p0, Lcom/smartisanos/launcher/view/Z;->RK:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    neg-float p1, v0

    neg-float p2, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    div-float/2addr v1, v2

    .line 14
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Z;->updateGeometricState()V

    :cond_2
    return-void

    .line 16
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Dots number must >= 1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Z;->NK:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Z;->NK:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/SceneNode;

    .line 4
    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Z;->Ay()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/L;->Ia(Z)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ca(Z)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/L;->Lk()Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->Ia(Z)V

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/L;->Ca(Z)V

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2}, Lcom/smartisanos/smengine/L;->d(III)V

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0}, Lcom/smartisanos/smengine/L;->c(III)V

    .line 14
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 15
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    return-void
.end method

.method public jp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->MK:Lcom/smartisanos/smengine/n;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->MK:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->bL:Lcom/smartisanos/smengine/oa;

    if-eqz v0, :cond_2

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/view/Z;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "### mDotSinkAnimation != null, kill"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->bL:Lcom/smartisanos/smengine/oa;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/oa;->kill()V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->cL:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_4

    .line 7
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/smartisanos/launcher/view/Z;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "### mDotUpAnimation != null, kill"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->cL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->kill()V

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_6

    .line 10
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/smartisanos/launcher/view/Z;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "### mDotSlideAnimation != null, kill"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->dL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->kill()V

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_8

    .line 13
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/smartisanos/launcher/view/Z;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "### mDotsAppearAnimation != null, kill"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 14
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->eL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->kill()V

    .line 15
    :cond_8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_a

    .line 16
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/smartisanos/launcher/view/Z;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "### mDotsDisappearAnimation != null, kill"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 17
    :cond_9
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->fL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->kill()V

    :cond_a
    return-void
.end method

.method public kp()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/Z;->LK:I

    add-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/smartisanos/launcher/view/Z;->SK:F

    mul-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v2, p0, Lcom/smartisanos/launcher/view/Z;->RK:F

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const v2, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    const/high16 v4, 0x1000000

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/smartisanos/launcher/view/Z;->iL:F

    sget v3, Lcom/smartisanos/launcher/data/Constants;->LAUNCHPAD_DOCK_HEIGHT:I

    int-to-float v4, v3

    sub-float/2addr v0, v4

    div-float/2addr v0, v5

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 5
    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v0, p0, Lcom/smartisanos/launcher/view/Z;->SK:F

    div-float/2addr v0, v5

    sub-float/2addr v3, v0

    neg-float v0, v1

    div-float/2addr v0, v5

    .line 6
    invoke-virtual {p0, v0, v3, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_0

    :cond_0
    neg-float v0, v1

    div-float/2addr v0, v5

    .line 7
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/smartisanos/launcher/view/Z;->YK:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/launcher/view/Z;->SK:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->Xu:Lcom/smartisanos/launcher/view/V;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Z;->jL:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    neg-float v0, v1

    div-float/2addr v0, v5

    .line 10
    iget v1, p0, Lcom/smartisanos/launcher/view/Z;->iL:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Z;->jL:Lcom/smartisanos/smengine/a/j;

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    div-float/2addr v0, v5

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    neg-float v1, v1

    div-float/2addr v1, v5

    .line 13
    invoke-virtual {p0, v1, v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Z;->updateGeometricState()V

    return-void
.end method

.method public onInterceptTouchEvent(Lcom/smartisanos/smengine/va;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setColor(FFFF)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_0
    return-void
.end method

.method public updateGeometricState()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->NK:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->NK:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public updateLayer()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/SceneNode;->updateLayer()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Tl()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/nb;->ua(I)Lcom/smartisanos/launcher/view/kb;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x55

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Z;->HK:Lcom/smartisanos/smengine/F;

    if-eqz v2, :cond_1

    .line 6
    iget v3, v0, Lcom/smartisanos/launcher/view/kb;->rw:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Z;->PK:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v2, :cond_2

    .line 8
    iget v3, v0, Lcom/smartisanos/launcher/view/kb;->qw:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->QK:Lcom/smartisanos/smengine/SceneNode;

    if-eqz p0, :cond_3

    .line 10
    iget v0, v0, Lcom/smartisanos/launcher/view/kb;->sw:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    :cond_3
    return-void
.end method

.method public v(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/Z;->YK:F

    return-void
.end method

.method public w(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/Z;->SK:F

    iget v1, p0, Lcom/smartisanos/launcher/view/Z;->RK:F

    add-float/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/smartisanos/launcher/view/Z;->XK:F

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v2

    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget v1, p0, Lcom/smartisanos/launcher/view/Z;->_K:F

    :cond_1
    neg-float p1, p1

    div-float/2addr p1, v1

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    add-float/2addr p1, v0

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, p1, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Z;->JK:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method
