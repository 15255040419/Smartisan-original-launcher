.class public Lcom/smartisanos/launcher/view/Ua;
.super Lcom/smartisanos/smengine/SceneNode;
.source "FlagDismissAnimationNode.java"


# static fields
.field private static DURATION:F

.field public static final IM:[[Lcom/smartisanos/smengine/a/k;

.field public static final JM:[[Lcom/smartisanos/smengine/a/k;

.field private static KM:I

.field private static LM:I


# instance fields
.field public CM:F

.field public DM:F

.field private EM:F

.field private FM:F

.field private GM:F

.field private HM:Ljava/util/ArrayList;

.field private Qj:Lcom/smartisanos/launcher/view/a/g;

.field private Vo:Laurelienribon/tweenengine/k;

.field private mFlag:Lcom/smartisanos/smengine/SceneNode;

.field private mFlagType:I

.field private mProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Sa;->reset()V

    const/4 v0, 0x2

    new-array v1, v0, [[Lcom/smartisanos/smengine/a/k;

    const/4 v2, 0x3

    new-array v3, v2, [Lcom/smartisanos/smengine/a/k;

    .line 2
    new-instance v4, Lcom/smartisanos/smengine/a/k;

    const v5, 0x3db8b8b9

    const v6, 0x3dc8c8c9

    const v7, 0x3e68e8e9

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v6, v5, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const/4 v9, 0x0

    aput-object v4, v3, v9

    new-instance v4, Lcom/smartisanos/smengine/a/k;

    const v10, 0x3d008081

    const v11, 0x3ce0e0e1

    const v12, 0x3e008081

    invoke-direct {v4, v12, v11, v10, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const/4 v13, 0x1

    aput-object v4, v3, v13

    new-instance v4, Lcom/smartisanos/smengine/a/k;

    const v14, 0x3eacacad

    const v15, 0x3df8f8f9

    invoke-direct {v4, v14, v15, v15, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    aput-object v4, v3, v0

    aput-object v3, v1, v9

    new-array v3, v2, [Lcom/smartisanos/smengine/a/k;

    new-instance v4, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v4, v6, v5, v7, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v4, v11, v10, v12, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    aput-object v4, v3, v13

    new-instance v4, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v4, v15, v15, v14, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    aput-object v4, v3, v0

    aput-object v3, v1, v13

    sput-object v1, Lcom/smartisanos/launcher/view/Ua;->IM:[[Lcom/smartisanos/smengine/a/k;

    new-array v1, v0, [[Lcom/smartisanos/smengine/a/k;

    new-array v3, v2, [Lcom/smartisanos/smengine/a/k;

    .line 3
    new-instance v4, Lcom/smartisanos/smengine/a/k;

    const/4 v8, 0x0

    invoke-direct {v4, v7, v6, v5, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v4, v12, v11, v10, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    aput-object v4, v3, v13

    new-instance v4, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v4, v14, v15, v15, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    aput-object v4, v3, v0

    aput-object v3, v1, v9

    new-array v2, v2, [Lcom/smartisanos/smengine/a/k;

    new-instance v3, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v3, v6, v5, v7, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    aput-object v3, v2, v9

    new-instance v3, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v3, v11, v10, v12, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    aput-object v3, v2, v13

    new-instance v3, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v3, v15, v15, v14, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    aput-object v3, v2, v0

    aput-object v2, v1, v13

    sput-object v1, Lcom/smartisanos/launcher/view/Ua;->JM:[[Lcom/smartisanos/smengine/a/k;

    const/16 v0, 0x190

    .line 4
    sput v0, Lcom/smartisanos/launcher/view/Ua;->KM:I

    const/16 v0, 0x640

    .line 5
    sput v0, Lcom/smartisanos/launcher/view/Ua;->LM:I

    const/high16 v0, 0x40400000    # 3.0f

    .line 6
    sput v0, Lcom/smartisanos/launcher/view/Ua;->DURATION:F

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/smartisanos/launcher/view/a/g;FF)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x41500000    # 13.0f

    .line 2
    iput p2, p0, Lcom/smartisanos/launcher/view/Ua;->CM:F

    .line 3
    iget p2, p0, Lcom/smartisanos/launcher/view/Ua;->CM:F

    iput p2, p0, Lcom/smartisanos/launcher/view/Ua;->DM:F

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/smartisanos/launcher/view/Ua;->mFlagType:I

    const/high16 p2, 0x42a00000    # 80.0f

    .line 5
    iput p2, p0, Lcom/smartisanos/launcher/view/Ua;->EM:F

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/smartisanos/launcher/view/Ua;->FM:F

    .line 7
    iput p2, p0, Lcom/smartisanos/launcher/view/Ua;->GM:F

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Ua;->HM:Ljava/util/ArrayList;

    .line 9
    iput v0, p0, Lcom/smartisanos/launcher/view/Ua;->mProgress:F

    const/4 p2, 0x0

    .line 10
    iput-object p2, p0, Lcom/smartisanos/launcher/view/Ua;->Vo:Laurelienribon/tweenengine/k;

    .line 11
    const-class p2, Lcom/smartisanos/launcher/view/Ua;

    invoke-static {p2}, Laurelienribon/tweenengine/k;->d(Ljava/lang/Class;)Laurelienribon/tweenengine/l;

    move-result-object p2

    if-nez p2, :cond_0

    .line 12
    const-class p2, Lcom/smartisanos/launcher/view/Ua;

    new-instance v0, Lcom/smartisanos/launcher/view/Ta;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/Ta;-><init>(Lcom/smartisanos/launcher/view/Ua;)V

    invoke-static {p2, v0}, Laurelienribon/tweenengine/k;->a(Ljava/lang/Class;Laurelienribon/tweenengine/l;)V

    .line 13
    :cond_0
    iput p1, p0, Lcom/smartisanos/launcher/view/Ua;->mFlagType:I

    .line 14
    iput-object p3, p0, Lcom/smartisanos/launcher/view/Ua;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 15
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Ua;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p2, p1}, Lcom/smartisanos/launcher/view/a/g;->fb(I)Lcom/smartisanos/smengine/F;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ua;->mFlag:Lcom/smartisanos/smengine/SceneNode;

    const p1, 0x3e19999a    # 0.15f

    mul-float/2addr p1, p5

    .line 16
    iput p1, p0, Lcom/smartisanos/launcher/view/Ua;->FM:F

    .line 17
    iget p1, p0, Lcom/smartisanos/launcher/view/Ua;->FM:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    sub-float/2addr p4, p1

    iput p4, p0, Lcom/smartisanos/launcher/view/Ua;->EM:F

    const p1, 0x3f19999a    # 0.6f

    mul-float/2addr p5, p1

    .line 18
    iput p5, p0, Lcom/smartisanos/launcher/view/Ua;->GM:F

    return-void
.end method

.method private Qy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ua;->HM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/b/g;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/b/g;->Q(F)V

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v2

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/z;->b(Lcom/smartisanos/smengine/y;)V

    .line 5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->ht()Lcom/smartisanos/smengine/b/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/b/i;->b(Lcom/smartisanos/smengine/b/g;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ua;->HM:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private Ry()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/Ua;->yd(I)Lcom/smartisanos/smengine/b/g;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ua;->HM:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->ht()Lcom/smartisanos/smengine/b/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/b/i;->a(Lcom/smartisanos/smengine/b/g;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Sy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ua;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v1, p0, Lcom/smartisanos/launcher/view/Ua;->mFlagType:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->_a(I)V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ua;->Qy()V

    return-void
.end method

.method private Ty()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ua;->HM:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/b/g;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/b/g;->setEnabled(Z)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/b/g;->Ob(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Ua;Laurelienribon/tweenengine/k;)Laurelienribon/tweenengine/k;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ua;->Vo:Laurelienribon/tweenengine/k;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Ua;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ua;->Ty()V

    return-void
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/Ua;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ua;->Sy()V

    return-void
.end method

.method private yd(I)Lcom/smartisanos/smengine/b/g;
    .locals 7

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/b/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "particle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/smartisanos/launcher/view/Ua;->mFlagType:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/smartisanos/launcher/view/Ua;->KM:I

    const/4 v2, 0x2

    invoke-direct {v0, p1, v2, v1}, Lcom/smartisanos/smengine/b/g;-><init>(Ljava/lang/String;II)V

    .line 2
    new-instance p1, Lcom/smartisanos/smengine/b/e;

    invoke-direct {p1}, Lcom/smartisanos/smengine/b/e;-><init>()V

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/b/g;->a(Lcom/smartisanos/smengine/b/h;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/b/g;->Pb(Z)V

    .line 4
    new-instance v1, Lcom/smartisanos/smengine/b/a;

    iget v2, p0, Lcom/smartisanos/launcher/view/Ua;->EM:F

    iget v3, p0, Lcom/smartisanos/launcher/view/Ua;->GM:F

    invoke-direct {v1, v2, v3}, Lcom/smartisanos/smengine/b/a;-><init>(FF)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/b/g;->a(Lcom/smartisanos/smengine/b/d;)V

    .line 6
    sget-object v1, Lcom/smartisanos/launcher/view/Ua;->IM:[[Lcom/smartisanos/smengine/a/k;

    iget v2, p0, Lcom/smartisanos/launcher/view/Ua;->mFlagType:I

    aget-object v1, v1, v2

    .line 7
    sget-object v3, Lcom/smartisanos/launcher/view/Ua;->JM:[[Lcom/smartisanos/smengine/a/k;

    aget-object v2, v3, v2

    const/4 v3, 0x0

    .line 8
    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/b/g;->d(Lcom/smartisanos/smengine/a/k;)V

    .line 9
    aget-object v1, v2, v3

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/b/g;->c(Lcom/smartisanos/smengine/a/k;)V

    .line 10
    sget v1, Lcom/smartisanos/launcher/view/Sa;->pv:F

    sget v2, Lcom/smartisanos/launcher/view/Sa;->qv:F

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Lcom/smartisanos/smengine/b/g;->d(FFF)V

    .line 11
    sget v1, Lcom/smartisanos/launcher/view/Sa;->uv:F

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/b/g;->P(F)V

    .line 12
    sget v1, Lcom/smartisanos/launcher/view/Sa;->vv:F

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/b/g;->O(F)V

    .line 13
    invoke-virtual {v0}, Lcom/smartisanos/smengine/b/g;->ms()Lcom/smartisanos/smengine/b/h;

    move-result-object v1

    sget v2, Lcom/smartisanos/launcher/view/Sa;->tv:F

    invoke-interface {v1, v2}, Lcom/smartisanos/smengine/b/h;->a(F)V

    .line 14
    invoke-virtual {v0}, Lcom/smartisanos/smengine/b/g;->ms()Lcom/smartisanos/smengine/b/h;

    move-result-object v1

    new-instance v2, Lcom/smartisanos/smengine/a/j;

    sget v5, Lcom/smartisanos/launcher/view/Sa;->rv:F

    sget v6, Lcom/smartisanos/launcher/view/Sa;->sv:F

    invoke-direct {v2, v5, v6, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-interface {v1, v2}, Lcom/smartisanos/smengine/b/h;->b(Lcom/smartisanos/smengine/a/j;)V

    .line 15
    sget v1, Lcom/smartisanos/launcher/view/Ua;->LM:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/b/g;->Q(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/b/g;->R(F)V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 17
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/b/g;->N(F)V

    .line 18
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/b/g;->fc(I)V

    .line 19
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/b/g;->gc(I)V

    const-string v1, "spark.png"

    .line 20
    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/b/g;->setEnabled(Z)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 23
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    .line 24
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 25
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 26
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 27
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 28
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ua;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Tl()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object p0

    .line 29
    iget p0, p0, Lcom/smartisanos/launcher/view/jb;->Rv:I

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 30
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    return-object v0
.end method


# virtual methods
.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Laurelienribon/tweenengine/h;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/Ua;->EM:F

    sget v1, Lcom/smartisanos/launcher/view/Sa;->xv:F

    mul-float/2addr v1, v0

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v1, v2

    sget v3, Lcom/smartisanos/launcher/view/Sa;->vv:F

    add-float/2addr v1, v3

    sput v1, Lcom/smartisanos/launcher/view/Ua;->DURATION:F

    .line 2
    sget v1, Lcom/smartisanos/launcher/view/Sa;->wv:I

    int-to-float v1, v1

    const v3, 0x3c8b4396    # 0.017f

    div-float/2addr v1, v3

    float-to-int v1, v1

    sput v1, Lcom/smartisanos/launcher/view/Ua;->LM:I

    .line 3
    sget v1, Lcom/smartisanos/launcher/view/Sa;->xv:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 4
    sget v1, Lcom/smartisanos/launcher/view/Sa;->uv:F

    sget v2, Lcom/smartisanos/launcher/view/Sa;->vv:F

    add-float/2addr v1, v2

    const v2, 0x3d0b4396    # 0.034f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 5
    :goto_0
    sget v1, Lcom/smartisanos/launcher/view/Sa;->wv:I

    mul-int/2addr v0, v1

    sput v0, Lcom/smartisanos/launcher/view/Ua;->KM:I

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ua;->Qy()V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ua;->Ry()V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Ua;->setProgress(F)V

    const/4 v0, 0x0

    .line 9
    sget v1, Lcom/smartisanos/launcher/view/Ua;->DURATION:F

    invoke-static {p0, v0, v1}, Laurelienribon/tweenengine/k;->a(Ljava/lang/Object;IF)Laurelienribon/tweenengine/k;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/k;->h(F)Laurelienribon/tweenengine/k;

    sget-object v1, Laurelienribon/tweenengine/a/v;->Lf:Laurelienribon/tweenengine/a/v;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/k;->a(Laurelienribon/tweenengine/n;)Laurelienribon/tweenengine/k;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->F(I)Ljava/lang/Object;

    check-cast v0, Laurelienribon/tweenengine/k;

    new-instance v1, Lcom/smartisanos/launcher/view/Ra;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/Ra;-><init>(Lcom/smartisanos/launcher/view/Ua;)V

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->a(Laurelienribon/tweenengine/m;)Ljava/lang/Object;

    check-cast v0, Laurelienribon/tweenengine/k;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ua;->Vo:Laurelienribon/tweenengine/k;

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ua;->Vo:Laurelienribon/tweenengine/k;

    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/h;->a(Laurelienribon/tweenengine/k;)Laurelienribon/tweenengine/h;

    return-void
.end method

.method public getProgress()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/Ua;->mProgress:F

    return p0
.end method

.method public setProgress(F)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/Ua;->mProgress:F

    .line 2
    sget v0, Lcom/smartisanos/launcher/view/Ua;->DURATION:F

    mul-float/2addr p1, v0

    sget v1, Lcom/smartisanos/launcher/view/Sa;->vv:F

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ua;->Vo:Laurelienribon/tweenengine/k;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lcom/smartisanos/launcher/view/Ua;->FM:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v0, v2

    iget v4, p0, Lcom/smartisanos/launcher/view/Ua;->EM:F

    add-float/2addr v3, v4

    div-float/2addr v0, v3

    mul-float/2addr v2, v0

    sub-float v2, v1, v2

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    move v0, v1

    .line 5
    :cond_0
    new-instance v2, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v2, v0, v0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ua;->mFlag:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x6

    .line 7
    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ua;->HM:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/b/g;

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/smengine/b/g;->getShape()Lcom/smartisanos/smengine/b/d;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/b/a;

    cmpl-float v3, p1, v1

    if-lez v3, :cond_2

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/b/g;->Q(F)V

    move v0, v1

    goto :goto_1

    .line 11
    :cond_2
    sget v3, Lcom/smartisanos/launcher/view/Ua;->LM:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/b/g;->Q(F)V

    move v0, p1

    .line 12
    :goto_1
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/b/a;->da(F)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public wp()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ua;->Vo:Laurelienribon/tweenengine/k;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
