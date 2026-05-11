.class public Lcom/smartisanos/launcher/view/activeicon/H;
.super Lcom/smartisanos/launcher/view/activeicon/a;
.source "WeatherView.java"


# static fields
.field public static final PACKAGE_NAME:Ljava/lang/String;

.field private static final kQ:I

.field private static final log:Lcom/smartisanos/launcher/va;

.field private static mk:Lcom/smartisanos/smengine/n;


# instance fields
.field private CJ:Lcom/smartisanos/smengine/F;

.field private LP:Ljava/util/HashMap;

.field private MP:Ljava/util/HashMap;

.field private NP:Ljava/lang/String;

.field private Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private PP:I

.field private QP:I

.field private RP:[Lcom/smartisanos/smengine/SceneNode;

.field private TP:[Ljava/lang/String;

.field private VP:[Ljava/lang/String;

.field private WP:[I

.field private XP:I

.field private YP:I

.field private ZP:I

.field private _P:I

.field private aQ:Lcom/smartisanos/smengine/F;

.field private bQ:Lcom/smartisanos/smengine/F;

.field private cQ:Lcom/smartisanos/smengine/SceneNode;

.field private dQ:Lcom/smartisanos/smengine/a/i;

.field private eQ:Lcom/smartisanos/smengine/a/i;

.field private fQ:Lcom/smartisanos/smengine/a/i;

.field private gQ:Lcom/smartisanos/smengine/a/i;

.field private hQ:Lcom/smartisanos/smengine/a/i;

.field private iQ:I

.field private jQ:Z

.field private mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

.field private mIsAnimating:Z

.field private mRunnable:Ljava/lang/Runnable;

.field private vC:Lcom/smartisanos/smengine/g;

.field private xP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/activeicon/H;->log:Lcom/smartisanos/launcher/va;

    .line 2
    sget v0, Lcom/smartisanos/launcher/data/M;->TEMPERATURE_UNIT_CELSIUS:I

    sput v0, Lcom/smartisanos/launcher/view/activeicon/H;->kQ:I

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/data/T;->WEATHER:Lcom/smartisanos/launcher/data/S;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    sput-object v0, Lcom/smartisanos/launcher/view/activeicon/H;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/smartisanos/launcher/view/activeicon/H;->mk:Lcom/smartisanos/smengine/n;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/activeicon/a;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/g;)V

    const/16 p1, -0x12c

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->PP:I

    .line 3
    iput p1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->QP:I

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/smartisanos/smengine/SceneNode;

    .line 4
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x6

    .line 5
    filled-new-array {v0, v1}, [I

    move-result-object v1

    const-class v2, Lcom/smartisanos/smengine/SceneNode;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/smartisanos/smengine/SceneNode;

    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    new-array v1, v0, [Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->TP:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->VP:[Ljava/lang/String;

    new-array v1, v0, [I

    .line 8
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mIsAnimating:Z

    .line 10
    sget v2, Lcom/smartisanos/launcher/view/activeicon/H;->kQ:I

    iput v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->iQ:I

    const/4 v2, 0x1

    .line 11
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->jQ:Z

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v3

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Tl()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v3

    .line 13
    iget v3, v3, Lcom/smartisanos/launcher/view/jb;->Pv:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->xP:I

    .line 14
    iget v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->xP:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->XP:I

    .line 15
    iget v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->XP:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->YP:I

    .line 16
    iget v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->YP:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->ZP:I

    .line 17
    iget v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->ZP:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->_P:I

    .line 18
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->getSinglePageMode()I

    move-result p2

    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p2

    iput-object p2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 19
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :goto_0
    if-ge v1, v0, :cond_0

    .line 20
    iget-object p2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->TP:[Ljava/lang/String;

    const-string v2, "cloudy"

    aput-object v2, p2, v1

    .line 21
    iget-object p2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->VP:[Ljava/lang/String;

    aput-object v2, p2, v1

    .line 22
    iget-object p2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aput p1, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->Mz()V

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->h(Landroid/content/Intent;)V

    return-void
.end method

.method private B(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->cQ:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/i;

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v1

    .line 5
    iget-object v2, v1, Lcom/smartisanos/smengine/d/f;->tY:Lcom/smartisanos/smengine/a/i;

    .line 6
    iget v3, v0, Lcom/smartisanos/smengine/a/i;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/i;->y:F

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v4, v4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v5, v5

    invoke-static {v3, v0, v4, v5, v2}, Lcom/smartisanos/smengine/d/a;->c(FFFFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 7
    iget-object v0, v1, Lcom/smartisanos/smengine/d/f;->uY:Lcom/smartisanos/smengine/a/i;

    .line 8
    iget v3, p0, Lcom/smartisanos/smengine/a/i;->x:F

    iget p0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v4, v4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v5, v5

    invoke-static {v3, p0, v4, v5, v0}, Lcom/smartisanos/smengine/d/a;->c(FFFFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    .line 13
    invoke-virtual {p0, v3, v4}, Lcom/smartisanos/smengine/L;->n(FF)V

    const/4 v3, 0x2

    .line 14
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 15
    iget v3, v2, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int v3, v3

    iget v2, v2, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int v2, v2

    iget v4, v0, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int v4, v4

    iget v0, v0, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int v0, v0

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/smartisanos/smengine/L;->d(IIII)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    .line 17
    invoke-virtual {v1}, Lcom/smartisanos/smengine/d/f;->release()V

    return-void
.end method

.method private Bd(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    new-instance v1, Lcom/smartisanos/smengine/SceneNode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, v0, p1

    iget p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->xP:I

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method private Bz()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    neg-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    neg-float v3, v0

    div-float v4, v0, v2

    div-float/2addr v0, v2

    invoke-virtual {p0, v1, v3, v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method private Cd(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/view/activeicon/H;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Weather number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/16 p0, 0x78

    if-ge p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move p0, p1

    :goto_0
    const/16 p1, -0x63

    if-le p1, p0, :cond_2

    move p0, p1

    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "weather/num_%s.png"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/smartisanos/launcher/view/activeicon/H;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Weather image name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method

.method private Dd(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->MP:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Ed(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_minus"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_w:F

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_h:F

    invoke-static {v0, v5, v4, v2, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const-string v4, "TextureModularColorMaterial"

    .line 3
    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v4

    .line 4
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const-string v4, "weather/num_minus.png"

    .line 5
    invoke-static {v4}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 7
    iget v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->YP:I

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 8
    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 9
    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    aput-object v0, v4, v1

    :cond_0
    const/16 v0, -0x12c

    .line 10
    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v4, v4, p1

    const/4 v5, 0x0

    if-ne v0, v4, :cond_1

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, p1

    aget-object p0, p0, v1

    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v4, v0, p1

    if-gez v4, :cond_3

    .line 14
    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    neg-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    div-float/2addr v4, v6

    const/16 v7, 0x9

    .line 15
    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 16
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    iget-object v7, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus00_offsetx:F

    add-float/2addr v5, v8

    iget v8, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_w:F

    div-float/2addr v8, v6

    add-float/2addr v5, v8

    iget v8, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus00_offsety:F

    sub-float/2addr v4, v8

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_h:F

    div-float/2addr v7, v6

    sub-float/2addr v4, v7

    invoke-direct {v0, v5, v4}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->hQ:Lcom/smartisanos/smengine/a/i;

    goto :goto_0

    .line 17
    :cond_2
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    iget-object v7, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus0_offsetx:F

    add-float/2addr v5, v8

    iget v8, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_w:F

    div-float/2addr v8, v6

    add-float/2addr v5, v8

    iget v8, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus0_offsety:F

    sub-float/2addr v4, v8

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_h:F

    div-float/2addr v7, v6

    sub-float/2addr v4, v7

    invoke-direct {v0, v5, v4}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->hQ:Lcom/smartisanos/smengine/a/i;

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->hQ:Lcom/smartisanos/smengine/a/i;

    iget v5, v4, Lcom/smartisanos/smengine/a/i;->x:F

    iget v4, v4, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v0, v5, v4, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_1

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 21
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, v0, p1

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->B(Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method

.method private Fd(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v0, v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/16 v3, -0x12c

    if-ne v3, v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, p0, p1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 3
    aget-object p0, p0, p1

    aget-object p0, p0, v2

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v0, p1

    aget-object v3, v3, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 5
    aget-object v0, v0, p1

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v3, v0, p1

    const/16 v5, -0x63

    if-ge v3, v5, :cond_3

    .line 7
    aput v5, v0, p1

    goto :goto_0

    .line 8
    :cond_3
    aget v3, v0, p1

    const/16 v5, 0x78

    if-le v3, v5, :cond_4

    .line 9
    aput v5, v0, p1

    .line 10
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v2

    const/4 v3, 0x0

    if-nez v0, :cond_5

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_number000"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number000_w:F

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    invoke-static {v0, v6, v5, v3, v4}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const-string v5, "TextureModularColorMaterial"

    .line 12
    invoke-static {v5}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v5

    .line 13
    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 14
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 15
    iget v5, p0, Lcom/smartisanos/launcher/view/activeicon/H;->YP:I

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 16
    iget-object v5, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 17
    iget-object v5, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aput-object v0, v5, v2

    :cond_5
    const/16 v0, 0x64

    .line 18
    iget-object v5, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v5, v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v0, v5, :cond_6

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/activeicon/H;->Cd(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    neg-float v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    div-float/2addr v1, v6

    .line 21
    new-instance v7, Lcom/smartisanos/smengine/a/i;

    iget v8, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number000_offsetx:F

    add-float/2addr v5, v8

    iget v8, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number000_w:F

    div-float/2addr v8, v6

    add-float/2addr v5, v8

    iget v8, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number000_offsety:F

    sub-float/2addr v1, v8

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    div-float/2addr v0, v6

    sub-float/2addr v1, v0

    invoke-direct {v7, v5, v1}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v2

    iget v1, v7, Lcom/smartisanos/smengine/a/i;->x:F

    iget v5, v7, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v0, v1, v5, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_1

    .line 24
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 25
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 26
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, v0, p1

    aget-object p1, p1, v2

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->B(Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method

.method private Gd(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_number00"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_w:F

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    invoke-static {v0, v5, v4, v2, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const-string v4, "TextureModularColorMaterial"

    .line 3
    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v4

    .line 4
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 6
    iget v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->YP:I

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 7
    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 8
    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    aput-object v0, v4, v1

    :cond_0
    const/16 v0, 0x64

    .line 9
    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v4, v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, -0x12c

    if-gt v0, v4, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v0, v0, p1

    if-eq v5, v0, :cond_1

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, p1

    aget-object p0, p0, v1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_w:F

    .line 13
    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v6, v4, p1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_2

    .line 14
    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_w:F

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    const-string v4, "weather/num_minus.png"

    invoke-static {v4}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_w:F

    div-float/2addr v5, v8

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_h:F

    div-float/2addr v4, v8

    invoke-virtual {v0, v5, v4, v7}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    aget v4, v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-direct {p0, v4}, Lcom/smartisanos/launcher/view/activeicon/H;->Cd(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_w:F

    div-float/2addr v5, v8

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    div-float/2addr v4, v8

    invoke-virtual {v0, v5, v4, v7}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    neg-float v4, v0

    div-float/2addr v4, v8

    div-float/2addr v0, v8

    const/16 v5, 0x9

    .line 20
    iget-object v6, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 21
    new-instance v5, Lcom/smartisanos/smengine/a/i;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number00_offsetx:F

    add-float/2addr v4, v7

    div-float/2addr v3, v8

    add-float/2addr v4, v3

    iget v3, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number00_offsety:F

    sub-float/2addr v0, v3

    iget v3, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    div-float/2addr v3, v8

    sub-float/2addr v0, v3

    invoke-direct {v5, v4, v0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    iput-object v5, p0, Lcom/smartisanos/launcher/view/activeicon/H;->fQ:Lcom/smartisanos/smengine/a/i;

    goto :goto_1

    .line 22
    :cond_3
    new-instance v3, Lcom/smartisanos/smengine/a/i;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number0_offsetx:F

    add-float/2addr v4, v6

    iget v6, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_w:F

    div-float/2addr v6, v8

    add-float/2addr v4, v6

    iget v6, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number0_offsety:F

    sub-float/2addr v0, v6

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    div-float/2addr v5, v8

    sub-float/2addr v0, v5

    invoke-direct {v3, v4, v0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    iput-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->fQ:Lcom/smartisanos/smengine/a/i;

    .line 23
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->fQ:Lcom/smartisanos/smengine/a/i;

    iget v4, v3, Lcom/smartisanos/smengine/a/i;->x:F

    iget v3, v3, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v0, v4, v3, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 24
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 25
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, v0, p1

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->B(Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method

.method private Hd(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_number10"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_w:F

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    invoke-static {v0, v5, v4, v2, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const-string v4, "TextureModularColorMaterial"

    .line 3
    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v4

    .line 4
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 6
    iget v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->YP:I

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 7
    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 8
    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    aput-object v0, v4, v1

    :cond_0
    const/16 v0, 0x64

    .line 9
    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v4, v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, -0x12c

    if-gt v0, v4, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v0, v0, p1

    if-eq v6, v0, :cond_1

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, p1

    aget-object p0, p0, v1

    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v4, 0xa

    if-gt v4, v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_w:F

    .line 14
    iget-object v7, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v8, v7, p1

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v6, v8, :cond_2

    .line 15
    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_w:F

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    const-string v4, "weather/num_minus.png"

    invoke-static {v4}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_w:F

    div-float/2addr v6, v10

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_h:F

    div-float/2addr v4, v10

    invoke-virtual {v0, v6, v4, v9}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    goto :goto_0

    .line 18
    :cond_2
    aget v0, v7, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/2addr v0, v4

    .line 19
    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    aget-object v4, v4, v1

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/activeicon/H;->Cd(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_w:F

    div-float/2addr v6, v10

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    div-float/2addr v4, v10

    invoke-virtual {v0, v6, v4, v9}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    neg-float v6, v4

    div-float/2addr v6, v10

    div-float/2addr v4, v10

    .line 22
    new-instance v7, Lcom/smartisanos/smengine/a/i;

    iget v8, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number10_offsetx:F

    add-float/2addr v6, v8

    div-float/2addr v5, v10

    add-float/2addr v6, v5

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number10_offsety:F

    sub-float/2addr v4, v5

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    div-float/2addr v0, v10

    sub-float/2addr v4, v0

    invoke-direct {v7, v6, v4}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    iput-object v7, p0, Lcom/smartisanos/launcher/view/activeicon/H;->gQ:Lcom/smartisanos/smengine/a/i;

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->gQ:Lcom/smartisanos/smengine/a/i;

    iget v5, v4, Lcom/smartisanos/smengine/a/i;->x:F

    iget v4, v4, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v0, v5, v4, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_1

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 26
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 27
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, v0, p1

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->B(Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method

.method private Hz()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    const/4 v3, 0x1

    aget-object v4, v2, v3

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 3
    aget-object v2, v2, v3

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->bQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    move v1, v0

    .line 9
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v4, v0

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 10
    aget-object v4, v4, v3

    aget-object v4, v4, v1

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {v4, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v0

    .line 12
    :goto_2
    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v4, v3

    array-length v5, v5

    if-ge v1, v5, :cond_6

    .line 13
    aget-object v4, v4, v3

    aget-object v4, v4, v1

    if-eqz v4, :cond_5

    .line 14
    invoke-virtual {v4, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15
    :cond_6
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mIsAnimating:Z

    .line 16
    aget-object v1, v4, v3

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 17
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v3

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 18
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v3

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->dQ:Lcom/smartisanos/smengine/a/i;

    iget v4, v2, Lcom/smartisanos/smengine/a/i;->x:F

    iget v2, v2, Lcom/smartisanos/smengine/a/i;->y:F

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 19
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 20
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 21
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v1, v0

    .line 22
    aget-object v4, v1, v3

    aput-object v4, v1, v0

    .line 23
    aput-object v2, v1, v3

    .line 24
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v1, v0

    .line 25
    aget-object v4, v1, v3

    aput-object v4, v1, v0

    .line 26
    aput-object v2, v1, v3

    .line 27
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->TP:[Ljava/lang/String;

    aget-object v2, v1, v3

    aput-object v2, v1, v0

    .line 28
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->VP:[Ljava/lang/String;

    aget-object v2, v1, v3

    aput-object v2, v1, v0

    .line 29
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v2, v1, v3

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->vC:Lcom/smartisanos/smengine/g;

    return-void
.end method

.method private Id(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_temperIcon"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_w:F

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_h:F

    invoke-static {v0, v4, v3, v2, v1}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const-string v3, "TextureModularColorMaterial"

    .line 3
    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 6
    iget v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->YP:I

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 7
    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, p1

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 8
    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, p1

    aput-object v0, v3, v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    const-string v3, "weather/weather_temp.png"

    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    neg-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float/2addr v0, v4

    const/16 v5, 0x63

    .line 11
    iget-object v6, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, -0x12c

    if-ge v5, v6, :cond_1

    iget-object v5, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v5, v5, p1

    if-eq v7, v5, :cond_1

    .line 12
    new-instance v5, Lcom/smartisanos/smengine/a/i;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp000_offsetx:F

    add-float/2addr v3, v7

    iget v7, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_w:F

    div-float/2addr v7, v4

    add-float/2addr v3, v7

    iget v7, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp000_offsety:F

    sub-float/2addr v0, v7

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_h:F

    div-float/2addr v6, v4

    sub-float/2addr v0, v6

    invoke-direct {v5, v3, v0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    iput-object v5, p0, Lcom/smartisanos/launcher/view/activeicon/H;->eQ:Lcom/smartisanos/smengine/a/i;

    goto :goto_0

    :cond_1
    const/16 v5, 0x9

    .line 13
    iget-object v6, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v5, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v5, v5, p1

    if-eq v7, v5, :cond_2

    .line 14
    new-instance v5, Lcom/smartisanos/smengine/a/i;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp00_offsetx:F

    add-float/2addr v3, v7

    iget v7, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_w:F

    div-float/2addr v7, v4

    add-float/2addr v3, v7

    iget v7, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp00_offsety:F

    sub-float/2addr v0, v7

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_h:F

    div-float/2addr v6, v4

    sub-float/2addr v0, v6

    invoke-direct {v5, v3, v0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    iput-object v5, p0, Lcom/smartisanos/launcher/view/activeicon/H;->eQ:Lcom/smartisanos/smengine/a/i;

    goto :goto_0

    .line 15
    :cond_2
    new-instance v5, Lcom/smartisanos/smengine/a/i;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp0_offsetx:F

    add-float/2addr v3, v7

    iget v7, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_w:F

    div-float/2addr v7, v4

    add-float/2addr v3, v7

    iget v7, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp0_offsety:F

    sub-float/2addr v0, v7

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_h:F

    div-float/2addr v6, v4

    sub-float/2addr v0, v6

    invoke-direct {v5, v3, v0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    iput-object v5, p0, Lcom/smartisanos/launcher/view/activeicon/H;->eQ:Lcom/smartisanos/smengine/a/i;

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->eQ:Lcom/smartisanos/smengine/a/i;

    iget v4, v3, Lcom/smartisanos/smengine/a/i;->x:F

    iget v3, v3, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v0, v4, v3, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 17
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, v0, p1

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->B(Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method

.method private Iz()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/Sa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/view/activeicon/s;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/activeicon/s;-><init>(Lcom/smartisanos/launcher/view/activeicon/H;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private Jd(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->Kd(I)V

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->Id(I)V

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->Gd(I)V

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->Hd(I)V

    .line 5
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->Fd(I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->Ed(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->Nz()V

    :cond_0
    return-void
.end method

.method private Jz()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_cover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_cover_size:F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v1, v3, v2}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->bQ:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 2
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->bQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->bQ:Lcom/smartisanos/smengine/F;

    const-string v1, "weather/weather_cover.png"

    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->bQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->bQ:Lcom/smartisanos/smengine/F;

    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->ZP:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->bQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->bQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->bQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->bQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->bQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    return-void
.end method

.method private Kd(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_weather"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_size:F

    const/4 v4, 0x0

    invoke-static {v0, v3, v3, v4, v2}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const-string v3, "TextureModularColorMaterial"

    .line 3
    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 6
    iget v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->YP:I

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 7
    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, p1

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 8
    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    neg-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 9
    new-instance v7, Lcom/smartisanos/smengine/a/i;

    iget v8, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_offset:F

    add-float/2addr v5, v8

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_size:F

    div-float/2addr v3, v6

    add-float/2addr v5, v3

    invoke-direct {v7, v5, v4}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    iput-object v7, p0, Lcom/smartisanos/launcher/view/activeicon/H;->dQ:Lcom/smartisanos/smengine/a/i;

    .line 10
    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->dQ:Lcom/smartisanos/smengine/a/i;

    iget v5, v3, Lcom/smartisanos/smengine/a/i;->x:F

    iget v3, v3, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v0, v5, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 11
    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, p1

    aput-object v0, v3, v1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->TP:[Ljava/lang/String;

    aget-object v3, v3, p1

    aput-object v3, v2, v1

    const-string v3, "weather/%s.png"

    .line 13
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, v0, p1

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->B(Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method

.method private Kz()V
    .locals 6

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/SceneNode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_stencilNode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->cQ:Lcom/smartisanos/smengine/SceneNode;

    const-string v0, "GlobalColorMaterial"

    .line 2
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->cQ:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->cQ:Lcom/smartisanos/smengine/SceneNode;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->cQ:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->cQ:Lcom/smartisanos/smengine/SceneNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    neg-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    neg-float v4, v1

    div-float/2addr v4, v3

    div-float v5, v1, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->cQ:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setDisableCollideDetect()V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->cQ:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    return-void
.end method

.method private Lz()I
    .locals 2

    .line 1
    sget p0, Lcom/smartisanos/launcher/view/activeicon/H;->kQ:I

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lcom/smartisanos/launcher/data/M;->TEMPERATURE_UNIT:Ljava/lang/String;

    sget v1, Lcom/smartisanos/launcher/view/activeicon/H;->kQ:I

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    .line 4
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/view/activeicon/H;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "WeatherIcon: Get content resolver fail."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return p0
.end method

.method private Mb(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private Mz()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->MP:Ljava/util/HashMap;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->MP:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sunny_night"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->MP:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cloudy_night"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->MP:Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "shower_night"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->MP:Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "thundershower_night"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->MP:Ljava/util/HashMap;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "thundershowerhail_night"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->MP:Ljava/util/HashMap;

    const/16 v6, 0xd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "snow_night"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const-string v7, "sunny"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const-string v1, "cloudy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "overcast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const-string v1, "shower"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const-string v1, "thundershower"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const-string v1, "thundershowerhail"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "icerain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lightrain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "moderaterain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "heavyrain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "storm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const-string v1, "snow"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lightsnow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "moderatesnow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "heavysnow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "foggy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sandstorm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "haze"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private Nb(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->MP:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->MP:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private Nz()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->jz()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->VP:[Ljava/lang/String;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "weather/weather_bg_%s.png"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_back_anim"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    const/4 v5, 0x0

    invoke-static {v0, v2, v2, v5, v1}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 6
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/activeicon/H;->VP:[Ljava/lang/String;

    aget-object v5, v5, v4

    aput-object v5, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    iget v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->XP:I

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v5, -0x40000000    # -2.0f

    invoke-virtual {v0, v2, v5}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->VP:[Ljava/lang/String;

    aget-object p0, p0, v4

    aput-object p0, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    return-void
.end method

.method private Ob(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    const/4 v0, 0x6

    if-eqz p0, :cond_3

    if-eq p1, v0, :cond_2

    const/16 p0, 0x31

    if-eq p1, p0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x35

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x14

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x10

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xf

    goto :goto_0

    :pswitch_4
    const/16 p1, 0xa

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x9

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    :pswitch_7
    const/16 p1, 0x12

    goto :goto_0

    :cond_2
    :pswitch_8
    move p1, v0

    :cond_3
    :goto_0
    return p1

    .line 4
    :catch_0
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/smartisanos/launcher/view/activeicon/H;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherView: Weather code is error, weather code:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x13
        :pswitch_8
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x36
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private Zd()V
    .locals 40

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/smartisanos/launcher/view/activeicon/H;->mIsAnimating:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/activeicon/H;->mIsAnimating:Z

    .line 3
    iget-object v2, v0, Lcom/smartisanos/launcher/view/activeicon/H;->vC:Lcom/smartisanos/smengine/g;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 5
    iput-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/H;->vC:Lcom/smartisanos/smengine/g;

    :cond_1
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 7
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/smartisanos/launcher/view/activeicon/a;->qP:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v4

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    const v5, 0x3eb851ec    # 0.36f

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 9
    new-instance v3, Lcom/smartisanos/smengine/g;

    invoke-direct {v3}, Lcom/smartisanos/smengine/g;-><init>()V

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v15, 0xe

    .line 10
    new-instance v7, Lcom/smartisanos/smengine/oa;

    iget-object v8, v0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    invoke-direct {v7, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/16 v20, 0x3

    const/16 v24, 0x0

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v19, v7

    move/from16 v21, v24

    move/from16 v22, v24

    move/from16 v23, v24

    move/from16 v25, v28

    move/from16 v26, v28

    move/from16 v27, v28

    .line 11
    invoke-virtual/range {v19 .. v28}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 12
    invoke-virtual {v7, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 13
    invoke-virtual {v7, v15}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 14
    invoke-virtual {v3, v6, v7}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 15
    new-instance v7, Lcom/smartisanos/smengine/oa;

    iget-object v8, v0, Lcom/smartisanos/launcher/view/activeicon/H;->bQ:Lcom/smartisanos/smengine/F;

    invoke-direct {v7, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/16 v30, 0x3

    const/16 v34, 0x0

    const/high16 v38, 0x3f800000    # 1.0f

    move-object/from16 v29, v7

    move/from16 v31, v34

    move/from16 v32, v34

    move/from16 v33, v34

    move/from16 v35, v38

    move/from16 v36, v38

    move/from16 v37, v38

    .line 16
    invoke-virtual/range {v29 .. v38}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 17
    invoke-virtual {v7, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 18
    invoke-virtual {v7, v15}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 19
    invoke-virtual {v3, v6, v7}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 20
    iget-object v7, v0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v14

    move v13, v2

    :goto_1
    if-ge v13, v14, :cond_3

    .line 21
    iget-object v7, v0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v7, v7, v2

    invoke-virtual {v7, v13}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    .line 22
    new-instance v12, Lcom/smartisanos/smengine/oa;

    invoke-direct {v12, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 23
    invoke-virtual {v12, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 24
    invoke-virtual {v12, v15}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v8, 0x3

    move-object v7, v12

    move/from16 v9, v17

    move/from16 v10, v17

    move/from16 v11, v17

    move-object v2, v12

    move/from16 v12, v17

    move/from16 v20, v13

    move/from16 v13, v18

    move/from16 v21, v14

    move/from16 v14, v18

    move/from16 v22, v15

    move/from16 v15, v18

    move/from16 v16, v18

    .line 25
    invoke-virtual/range {v7 .. v16}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 26
    invoke-virtual {v3, v6, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v13, v20, 0x1

    move/from16 v14, v21

    move/from16 v15, v22

    const/4 v2, 0x0

    goto :goto_1

    .line 27
    :cond_3
    new-instance v2, Lcom/smartisanos/launcher/view/activeicon/x;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/activeicon/x;-><init>(Lcom/smartisanos/launcher/view/activeicon/H;)V

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 28
    new-instance v2, Lcom/smartisanos/smengine/g;

    invoke-direct {v2}, Lcom/smartisanos/smengine/g;-><init>()V

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v15, 0xd

    .line 29
    new-instance v7, Lcom/smartisanos/smengine/oa;

    iget-object v8, v0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    invoke-direct {v7, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/16 v21, 0x3

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v29, 0x0

    move-object/from16 v20, v7

    move/from16 v22, v25

    move/from16 v23, v25

    move/from16 v24, v25

    move/from16 v26, v29

    move/from16 v27, v29

    move/from16 v28, v29

    .line 30
    invoke-virtual/range {v20 .. v29}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 31
    invoke-virtual {v7, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 32
    invoke-virtual {v7, v15}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 33
    invoke-virtual {v2, v6, v7}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 34
    new-instance v7, Lcom/smartisanos/smengine/oa;

    iget-object v8, v0, Lcom/smartisanos/launcher/view/activeicon/H;->bQ:Lcom/smartisanos/smengine/F;

    invoke-direct {v7, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/16 v31, 0x3

    const/high16 v35, 0x3f800000    # 1.0f

    const/16 v39, 0x0

    move-object/from16 v30, v7

    move/from16 v32, v35

    move/from16 v33, v35

    move/from16 v34, v35

    move/from16 v36, v39

    move/from16 v37, v39

    move/from16 v38, v39

    .line 35
    invoke-virtual/range {v30 .. v39}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 36
    invoke-virtual {v7, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 37
    invoke-virtual {v7, v15}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 38
    invoke-virtual {v2, v6, v7}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 39
    iget-object v7, v0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v14

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_5

    .line 40
    iget-object v7, v0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v7, v7, v1

    invoke-virtual {v7, v13}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    .line 41
    new-instance v12, Lcom/smartisanos/smengine/oa;

    invoke-direct {v12, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 42
    invoke-virtual {v12, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 43
    invoke-virtual {v12, v15}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v8, 0x3

    move-object v7, v12

    move/from16 v9, v17

    move/from16 v10, v17

    move/from16 v11, v17

    move-object v1, v12

    move/from16 v12, v17

    move/from16 v21, v13

    move/from16 v13, v18

    move/from16 v22, v14

    move/from16 v14, v18

    move/from16 v23, v15

    move/from16 v15, v18

    move/from16 v16, v18

    .line 44
    invoke-virtual/range {v7 .. v16}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 45
    invoke-virtual {v2, v6, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v13, v21, 0x1

    move/from16 v14, v22

    move/from16 v15, v23

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    move-object v2, v3

    .line 46
    :cond_5
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v1, v0, Lcom/smartisanos/launcher/view/activeicon/H;->vC:Lcom/smartisanos/smengine/g;

    if-eqz v4, :cond_8

    if-eqz v3, :cond_6

    .line 47
    iget-object v1, v0, Lcom/smartisanos/launcher/view/activeicon/H;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v6, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_6
    if-eqz v2, :cond_7

    .line 48
    iget-object v1, v0, Lcom/smartisanos/launcher/view/activeicon/H;->vC:Lcom/smartisanos/smengine/g;

    const v3, 0x3f90a3d7    # 1.13f

    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_7
    const/4 v1, 0x0

    .line 49
    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/activeicon/H;->zc(Z)Lcom/smartisanos/smengine/g;

    move-result-object v1

    .line 50
    iget-object v2, v0, Lcom/smartisanos/launcher/view/activeicon/H;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v5, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 51
    iget-object v1, v0, Lcom/smartisanos/launcher/view/activeicon/H;->vC:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/view/activeicon/y;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/activeicon/y;-><init>(Lcom/smartisanos/launcher/view/activeicon/H;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 52
    iget-object v1, v0, Lcom/smartisanos/launcher/view/activeicon/H;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    goto :goto_3

    :cond_8
    const/4 v1, 0x1

    .line 53
    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/activeicon/H;->zc(Z)Lcom/smartisanos/smengine/g;

    move-result-object v1

    .line 54
    iget-object v2, v0, Lcom/smartisanos/launcher/view/activeicon/H;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v6, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 55
    iget-object v1, v0, Lcom/smartisanos/launcher/view/activeicon/H;->vC:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/view/activeicon/z;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/activeicon/z;-><init>(Lcom/smartisanos/launcher/view/activeicon/H;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 56
    iget-object v1, v0, Lcom/smartisanos/launcher/view/activeicon/H;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    .line 57
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/activeicon/H;->Iz()V

    .line 58
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_9

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/activeicon/H;->rq()V

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/activeicon/H;Ljava/lang/String;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->getTime(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/activeicon/H;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->vC:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method private a(JIZ)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/Sa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/view/activeicon/G;

    invoke-direct {v0, p0, p4, p3}, Lcom/smartisanos/launcher/view/activeicon/G;-><init>(Lcom/smartisanos/launcher/view/activeicon/H;ZI)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mRunnable:Ljava/lang/Runnable;

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/Sa;->getHandler()Landroid/os/Handler;

    move-result-object p3

    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/activeicon/H;ILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/activeicon/H;->h(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/activeicon/H;I)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->Dd(I)Z

    move-result p0

    return p0
.end method

.method static synthetic ae()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/activeicon/H;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/activeicon/H;Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->Mb(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/activeicon/H;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/activeicon/H;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->Jd(I)V

    return-void
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/activeicon/H;Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->Nb(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/activeicon/H;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->Hz()V

    return-void
.end method

.method static synthetic d(Lcom/smartisanos/launcher/view/activeicon/H;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->getCurrentTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic e(Lcom/smartisanos/launcher/view/activeicon/H;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->MP:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic f(Lcom/smartisanos/launcher/view/activeicon/H;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    return-object p0
.end method

.method private g(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    if-ltz p1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->Dd(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "\\|"

    .line 5
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 6
    array-length v1, p2

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    aget-object v0, p2, v0

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/activeicon/H;->getTime(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    .line 8
    aget-object p2, p2, v2

    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/view/activeicon/H;->getTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 9
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->getCurrentTime()J

    move-result-wide v4

    cmp-long p2, v4, v0

    if-lez p2, :cond_2

    cmp-long p2, v4, v2

    if-gtz p2, :cond_2

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->MP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    const-string v0, "unknown"

    :cond_5
    :goto_1
    return-object v0
.end method

.method public static g(Landroid/content/Intent;)V
    .locals 2

    .line 56
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/view/activeicon/H;->mk:Lcom/smartisanos/smengine/n;

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/activeicon/H;->mk:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/smartisanos/launcher/view/activeicon/H;->mk:Lcom/smartisanos/smengine/n;

    .line 60
    :cond_1
    new-instance v0, Lcom/smartisanos/launcher/view/activeicon/w;

    const/16 v1, 0x64

    invoke-direct {v0, v1, p0}, Lcom/smartisanos/launcher/view/activeicon/w;-><init>(ILandroid/content/Intent;)V

    sput-object v0, Lcom/smartisanos/launcher/view/activeicon/H;->mk:Lcom/smartisanos/smengine/n;

    .line 61
    sget-object p0, Lcom/smartisanos/launcher/view/activeicon/H;->mk:Lcom/smartisanos/smengine/n;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/smartisanos/launcher/view/activeicon/H;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->TP:[Ljava/lang/String;

    return-object p0
.end method

.method private getCurrentTime()J
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v0, 0xb

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xd

    .line 5
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xe

    .line 6
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v3, v0

    const-wide/32 v5, 0x36ee80

    mul-long/2addr v3, v5

    int-to-long v0, v1

    const-wide/32 v5, 0xea60

    mul-long/2addr v0, v5

    add-long/2addr v3, v0

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    add-long/2addr v3, v0

    int-to-long v0, p0

    add-long/2addr v3, v0

    return-wide v3
.end method

.method private getTime(Ljava/lang/String;)J
    .locals 8

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/view/activeicon/H;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeatherView getTime strTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, -0x1

    const-string p0, ":"

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/smartisanos/launcher/view/activeicon/H;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WeatherView getTime timeArray:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    move v2, p1

    .line 4
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 5
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/smartisanos/launcher/view/activeicon/H;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WeatherView getTime timeArray["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_4

    .line 6
    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    aget-object v2, p0, p1

    if-eqz v2, :cond_4

    aget-object v2, p0, v3

    if-eqz v2, :cond_4

    .line 7
    :try_start_0
    aget-object p1, p0, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v4, p1

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    .line 8
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long p0, p0

    const-wide/32 v0, 0xea60

    mul-long/2addr p0, v0

    add-long v0, v4, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-wide v0
.end method

.method private h(ILjava/lang/String;)V
    .locals 8

    .line 55
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\\|"

    .line 56
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 57
    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    goto :goto_1

    .line 58
    :cond_1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->Dd(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 59
    aget-object v1, p2, v0

    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/activeicon/H;->getTime(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 60
    aget-object p2, p2, v3

    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/view/activeicon/H;->getTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 61
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->getCurrentTime()J

    move-result-wide v6

    cmp-long p2, v6, v1

    if-lez p2, :cond_2

    cmp-long p2, v6, v4

    if-gtz p2, :cond_2

    sub-long/2addr v4, v6

    move v0, v3

    goto :goto_0

    :cond_2
    cmp-long p2, v6, v4

    if-lez p2, :cond_3

    const-wide/32 v3, 0x5265c00

    sub-long/2addr v3, v6

    add-long v4, v3, v1

    goto :goto_0

    :cond_3
    sub-long v4, v1, v6

    .line 62
    :goto_0
    invoke-direct {p0, v4, v5, p1, v0}, Lcom/smartisanos/launcher/view/activeicon/H;->a(JIZ)V

    goto :goto_1

    .line 63
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    .line 64
    invoke-static {p1}, Lcom/smartisanos/launcher/Sa;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mRunnable:Ljava/lang/Runnable;

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic h(Lcom/smartisanos/launcher/view/activeicon/H;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    return-object p0
.end method

.method private i(ZI)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p0, 0xf8

    const/16 p1, -0xd2

    goto :goto_0

    :cond_0
    const/16 p0, 0x78

    const/16 p1, -0x63

    :goto_0
    if-le p2, p0, :cond_1

    goto :goto_1

    :cond_1
    if-ge p2, p1, :cond_2

    const/16 p0, -0x12c

    if-eq p2, p0, :cond_2

    move p0, p1

    goto :goto_1

    :cond_2
    move p0, p2

    :goto_1
    return p0
.end method

.method static synthetic i(Lcom/smartisanos/launcher/view/activeicon/H;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->NP:Ljava/lang/String;

    return-object p0
.end method

.method private jz()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_back"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v1, v3, v2}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 2
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->VP:[Ljava/lang/String;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "weather/weather_bg_%s.png"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->xP:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    return-void
.end method

.method private zc(Z)Lcom/smartisanos/smengine/g;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 2
    new-instance v10, Lcom/smartisanos/smengine/oa;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v11, 0x0

    aget-object v2, v2, v11

    invoke-direct {v10, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v12, 0x3e4ccccd    # 0.2f

    .line 3
    invoke-virtual {v10, v12}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v13, 0xe

    .line 4
    invoke-virtual {v10, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 5
    iget-object v2, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_cover_size:F

    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_size:F

    sub-float/2addr v3, v4

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_cover_margin_top:F

    sub-float/2addr v3, v2

    const/high16 v14, 0x40000000    # 2.0f

    div-float v8, v3, v14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2, v10}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 7
    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v3

    move v4, v11

    :goto_0
    if-ge v4, v3, :cond_0

    .line 8
    iget-object v5, v0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, v11

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    .line 9
    new-instance v6, Lcom/smartisanos/smengine/oa;

    invoke-direct {v6, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 10
    invoke-virtual {v6, v12}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 11
    invoke-virtual {v6, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v16, 0x3

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v15, v6

    .line 12
    invoke-virtual/range {v15 .. v24}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 13
    invoke-virtual {v1, v2, v6}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 14
    new-instance v3, Lcom/smartisanos/smengine/oa;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 15
    invoke-virtual {v3, v12}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 16
    invoke-virtual {v3, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v16, 0x3

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v15, v3

    .line 17
    invoke-virtual/range {v15 .. v24}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 18
    invoke-virtual {v1, v12, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 19
    :cond_1
    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_cover_size:F

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_size:F

    add-float/2addr v4, v3

    div-float/2addr v4, v14

    .line 20
    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    .line 21
    iget-object v6, v0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, v5

    iget-object v7, v0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v7, v7, v5

    aget-object v7, v7, v11

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/SceneNode;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 22
    iget-object v6, v0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, v5

    aget-object v6, v6, v11

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 23
    iget-object v6, v0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, v5

    aget-object v6, v6, v11

    neg-float v4, v4

    invoke-virtual {v6, v3, v4, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 25
    new-instance v6, Lcom/smartisanos/smengine/oa;

    iget-object v7, v0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v7, v7, v5

    aget-object v7, v7, v11

    invoke-direct {v6, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v7, 0x3eb33333    # 0.35f

    .line 26
    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 27
    invoke-virtual {v6, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v15, 0x0

    const/16 v18, 0x0

    .line 28
    iget-object v7, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_animation_back:F

    const/16 v21, 0x0

    move-object v14, v6

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v19, v3

    move/from16 v20, v7

    invoke-virtual/range {v14 .. v21}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 29
    invoke-virtual {v1, v12, v6}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 30
    new-instance v6, Lcom/smartisanos/smengine/oa;

    iget-object v7, v0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v7, v7, v5

    aget-object v7, v7, v11

    invoke-direct {v6, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v7, 0x3ecccccd    # 0.4f

    .line 31
    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 32
    invoke-virtual {v6, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 33
    iget-object v8, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_animation_back:F

    const/16 v20, 0x0

    move-object v14, v6

    move/from16 v17, v8

    invoke-virtual/range {v14 .. v21}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const v3, 0x3f0ccccd    # 0.55f

    .line 34
    invoke-virtual {v1, v3, v6}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 35
    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2, v4, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 36
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v5

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v3, 0x3ebd70a4    # 0.37f

    .line 37
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 38
    invoke-virtual {v2, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v16, 0x0

    const/16 v19, 0x0

    .line 39
    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_animation_back:F

    move-object v14, v2

    move/from16 v17, v4

    move/from16 v20, v3

    invoke-virtual/range {v14 .. v21}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const v3, 0x3e851eb8    # 0.26f

    .line 40
    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 41
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v5

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 42
    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 43
    invoke-virtual {v2, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 44
    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_animation_back:F

    const/16 v20, 0x0

    move-object v14, v2

    move/from16 v17, v3

    invoke-virtual/range {v14 .. v21}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const v3, 0x3f2147ae    # 0.63f

    .line 45
    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 46
    :goto_1
    iget-object v2, v0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v2, v5

    array-length v3, v3

    if-ge v11, v3, :cond_3

    .line 47
    aget-object v2, v2, v5

    aget-object v2, v2, v11

    if-eqz v2, :cond_2

    .line 48
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 49
    new-instance v3, Lcom/smartisanos/smengine/oa;

    invoke-direct {v3, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/high16 v2, 0x3f400000    # 0.75f

    .line 50
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 51
    invoke-virtual {v3, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    move-object v14, v3

    .line 52
    invoke-virtual/range {v14 .. v23}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 53
    invoke-virtual {v1, v12, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 54
    :cond_3
    new-instance v2, Lcom/smartisanos/launcher/view/activeicon/A;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/activeicon/A;-><init>(Lcom/smartisanos/launcher/view/activeicon/H;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    return-object v1
.end method

.method public static zq()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/activeicon/H;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "### weather requestSync."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/view/activeicon/v;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/activeicon/v;-><init>()V

    invoke-static {v0}, Lcom/smartisanos/launcher/wb;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public Da(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/a;->Da(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->bQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 6
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v1

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 8
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 9
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v1

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 10
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v1

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 11
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v1

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clear(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/activeicon/H;->g(ZZ)V

    return-void
.end method

.method public create()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->Bz()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->Kz()V

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->jz()V

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->Jz()V

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 6
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/activeicon/H;->Bd(I)V

    .line 7
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/activeicon/H;->Jd(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/a;->qP:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->useSmallActiveIcon(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    sget v0, Lcom/smartisanos/launcher/data/Constants;->icon_scale:F

    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->active_icon_scale:F

    mul-float v2, v0, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_cover_size:F

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_size:F

    add-float/2addr v2, v1

    neg-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public createComposedBitmap()Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 1
    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/H;->VP:[Ljava/lang/String;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "weather/weather_bg_%s.png"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/smengine/s;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2
    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    float-to-int v5, v3

    float-to-int v3, v3

    .line 3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 4
    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 5
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 7
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 9
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v4, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/RectF;

    iget-object v9, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    const/4 v10, 0x0

    invoke-direct {v8, v10, v10, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v2, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-array v7, v1, [Ljava/lang/Object;

    .line 10
    iget-object v8, v0, Lcom/smartisanos/launcher/view/activeicon/H;->TP:[Ljava/lang/String;

    aget-object v8, v8, v1

    aput-object v8, v7, v4

    const-string v8, "weather/%s.png"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-static {v7}, Lcom/smartisanos/smengine/s;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 12
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v4, v4, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/RectF;

    iget-object v10, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_offset:F

    iget v12, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    iget v10, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_size:F

    sub-float v13, v12, v10

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float v15, v11, v10

    sub-float/2addr v12, v10

    div-float/2addr v12, v14

    add-float/2addr v12, v10

    invoke-direct {v9, v11, v13, v15, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v7, v8, v9, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const-string v8, "weather/weather_temp.png"

    .line 13
    invoke-static {v8}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisanos/smengine/s;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 14
    iget-object v9, v0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v9, v9, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/16 v10, 0x9

    const/16 v11, -0x12c

    const/16 v12, 0x63

    if-ge v12, v9, :cond_0

    iget-object v9, v0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v9, v9, v1

    if-eq v11, v9, :cond_0

    .line 15
    iget-object v9, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp000_offsetx:F

    float-to-int v12, v12

    .line 16
    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp000_offsety:F

    goto :goto_0

    .line 17
    :cond_0
    iget-object v9, v0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v9, v9, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ge v10, v9, :cond_1

    iget-object v9, v0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v9, v9, v1

    if-eq v11, v9, :cond_1

    .line 18
    iget-object v9, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp00_offsetx:F

    float-to-int v12, v12

    .line 19
    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp00_offsety:F

    goto :goto_0

    .line 20
    :cond_1
    iget-object v9, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp0_offsetx:F

    float-to-int v12, v12

    .line 21
    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp0_offsety:F

    :goto_0
    float-to-int v9, v9

    .line 22
    new-instance v13, Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-direct {v13, v4, v4, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/RectF;

    int-to-float v12, v12

    int-to-float v9, v9

    iget-object v15, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_w:F

    add-float/2addr v10, v12

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_h:F

    add-float/2addr v15, v9

    invoke-direct {v14, v12, v9, v10, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v8, v13, v14, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 23
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 24
    iget-object v8, v0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v8, v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/16 v9, 0x64

    const-string v10, "weather/num_minus.png"

    if-lt v8, v9, :cond_4

    iget-object v8, v0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v9, v8, v1

    if-ne v11, v9, :cond_2

    goto :goto_1

    .line 25
    :cond_2
    aget v9, v8, v1

    const/16 v12, 0x78

    if-le v9, v12, :cond_3

    .line 26
    aput v12, v8, v1

    .line 27
    :cond_3
    iget-object v8, v0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v8, v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-direct {v0, v8}, Lcom/smartisanos/launcher/view/activeicon/H;->Cd(I)Ljava/lang/String;

    move-result-object v8

    .line 28
    invoke-static {v8}, Lcom/smartisanos/smengine/s;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 29
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v9, v4, v4, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/RectF;

    iget-object v13, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v13, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number000_offsetx:F

    iget v15, v13, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number000_offsety:F

    iget v4, v13, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number000_w:F

    add-float/2addr v4, v14

    iget v13, v13, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    add-float/2addr v13, v15

    invoke-direct {v12, v14, v15, v4, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v8, v9, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 30
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    move v8, v1

    goto/16 :goto_6

    .line 31
    :cond_4
    :goto_1
    iget-object v4, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_w:F

    .line 32
    iget-object v8, v0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v9, v8, v1

    if-ne v11, v9, :cond_5

    .line 33
    invoke-static {v10}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/smengine/s;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 34
    iget-object v8, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_w:F

    goto :goto_2

    .line 35
    :cond_5
    aget v8, v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    invoke-direct {v0, v8}, Lcom/smartisanos/launcher/view/activeicon/H;->Cd(I)Ljava/lang/String;

    move-result-object v8

    .line 36
    invoke-static {v8}, Lcom/smartisanos/smengine/s;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v16, v8

    move v8, v4

    move-object/from16 v4, v16

    .line 37
    :goto_2
    iget-object v9, v0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v9, v9, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/16 v12, 0x9

    if-ge v12, v9, :cond_6

    .line 38
    iget-object v9, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number00_offsetx:F

    float-to-int v12, v12

    .line 39
    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number00_offsety:F

    goto :goto_3

    .line 40
    :cond_6
    iget-object v9, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number0_offsetx:F

    float-to-int v12, v12

    .line 41
    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number0_offsety:F

    :goto_3
    float-to-int v9, v9

    .line 42
    new-instance v13, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/4 v11, 0x0

    invoke-direct {v13, v11, v11, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/RectF;

    int-to-float v12, v12

    int-to-float v9, v9

    add-float v14, v12, v8

    iget-object v15, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    add-float/2addr v15, v9

    invoke-direct {v11, v12, v9, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v4, v13, v11, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 43
    iget-object v9, v0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v9, v9, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/16 v11, 0x9

    if-ge v11, v9, :cond_8

    .line 44
    iget-object v9, v0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v11, v9, v1

    const/16 v12, -0x12c

    if-ne v12, v11, :cond_7

    move-object v9, v4

    goto :goto_4

    .line 45
    :cond_7
    aget v9, v9, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    div-int/lit8 v9, v9, 0xa

    invoke-direct {v0, v9}, Lcom/smartisanos/launcher/view/activeicon/H;->Cd(I)Ljava/lang/String;

    move-result-object v9

    .line 46
    invoke-static {v9}, Lcom/smartisanos/smengine/s;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 47
    :goto_4
    iget-object v11, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v12, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number10_offsetx:F

    float-to-int v12, v12

    .line 48
    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number10_offsety:F

    float-to-int v11, v11

    .line 49
    new-instance v13, Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/4 v1, 0x0

    invoke-direct {v13, v1, v1, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v12, v12

    int-to-float v11, v11

    add-float/2addr v8, v12

    iget-object v14, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    add-float/2addr v14, v11

    invoke-direct {v1, v12, v11, v8, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v9, v13, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 50
    iget-object v1, v0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    const/4 v8, 0x1

    aget v1, v1, v8

    const/16 v11, -0x12c

    if-eq v11, v1, :cond_9

    .line 51
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    :cond_8
    move v8, v1

    const/16 v11, -0x12c

    .line 52
    :cond_9
    :goto_5
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 53
    :goto_6
    iget-object v1, v0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v4, v1, v8

    if-gez v4, :cond_b

    aget v1, v1, v8

    if-eq v11, v1, :cond_b

    .line 54
    invoke-static {v10}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/smengine/s;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 55
    iget-object v4, v0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v4, v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v8, 0x9

    if-ge v8, v4, :cond_a

    .line 56
    iget-object v4, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus00_offsetx:F

    float-to-int v8, v8

    .line 57
    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus00_offsety:F

    goto :goto_7

    .line 58
    :cond_a
    iget-object v4, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus0_offsetx:F

    float-to-int v8, v8

    .line 59
    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus0_offsety:F

    :goto_7
    float-to-int v4, v4

    .line 60
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/RectF;

    int-to-float v8, v8

    int-to-float v4, v4

    iget-object v0, v0, Lcom/smartisanos/launcher/view/activeicon/H;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_w:F

    add-float/2addr v11, v8

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_h:F

    add-float/2addr v0, v4

    invoke-direct {v10, v8, v4, v11, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v1, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 61
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 62
    :cond_b
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 63
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    return-object v3
.end method

.method public g(ZZ)V
    .locals 10

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->vC:Lcom/smartisanos/smengine/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 14
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->vC:Lcom/smartisanos/smengine/g;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/Sa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mRunnable:Ljava/lang/Runnable;

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 20
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->LP:Ljava/util/HashMap;

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->MP:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 23
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->MP:Ljava/util/HashMap;

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 25
    array-length v4, v0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v0, v5

    if-eqz v6, :cond_4

    .line 26
    invoke-virtual {v6, v3}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 27
    :cond_5
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    .line 28
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_a

    .line 29
    array-length v4, v0

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_9

    aget-object v6, v0, v5

    if-eqz v6, :cond_8

    .line 30
    array-length v7, v6

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_8

    aget-object v9, v6, v8

    if-eqz v9, :cond_7

    .line 31
    invoke-virtual {v9, v3}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 32
    :cond_9
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    .line 33
    :cond_a
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->TP:[Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    .line 35
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_b

    .line 36
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 37
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    .line 38
    :cond_b
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->bQ:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_c

    .line 39
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 40
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->bQ:Lcom/smartisanos/smengine/F;

    .line 41
    :cond_c
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->cQ:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_d

    .line 42
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 43
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->cQ:Lcom/smartisanos/smengine/SceneNode;

    .line 44
    :cond_d
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->dQ:Lcom/smartisanos/smengine/a/i;

    .line 45
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->eQ:Lcom/smartisanos/smengine/a/i;

    .line 46
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->fQ:Lcom/smartisanos/smengine/a/i;

    .line 47
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->gQ:Lcom/smartisanos/smengine/a/i;

    .line 48
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->hQ:Lcom/smartisanos/smengine/a/i;

    .line 49
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 50
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->ci()V

    :cond_e
    if-eqz p2, :cond_f

    .line 51
    iget-object p2, p0, Lcom/smartisanos/launcher/view/activeicon/a;->rP:Lcom/smartisanos/launcher/view/a/ka;

    if-eqz p2, :cond_f

    .line 52
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/ka;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 53
    iget-object p2, p0, Lcom/smartisanos/launcher/view/activeicon/a;->rP:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/ka;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/smartisanos/launcher/view/a/la;->a(Lcom/smartisanos/launcher/view/activeicon/H;)V

    .line 54
    iput-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/a;->rP:Lcom/smartisanos/launcher/view/a/ka;

    .line 55
    :cond_f
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/a;->clear(Z)V

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lcom/smartisanos/launcher/view/activeicon/H;->PACKAGE_NAME:Ljava/lang/String;

    return-object p0
.end method

.method public h(Landroid/content/Intent;)V
    .locals 10

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v0, "weatherCode"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "temp"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fahrenheitTemp"

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_1sunRiseAndSet"

    .line 6
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 7
    :goto_0
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_2

    .line 8
    sget-object v4, Lcom/smartisanos/launcher/view/activeicon/H;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "weatherCode ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], celsiusTemperature ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], fahrenheitTemperature ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], sunRiseAndSetTime ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 9
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/Ra;->eb(Ljava/lang/String;)V

    .line 10
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    const/4 p1, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_5

    if-nez v1, :cond_5

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    move v5, v4

    goto :goto_1

    :cond_5
    move v5, p1

    :goto_1
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/16 v8, 0x64

    if-nez v5, :cond_e

    .line 11
    iput-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->NP:Ljava/lang/String;

    .line 12
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_6

    .line 13
    sget-object v3, Lcom/smartisanos/launcher/view/activeicon/H;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getWeatherData weatherCode:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", celsiusTemperature:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", fahrenheitTemperature:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mSunRiseAndSetTime:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/smartisanos/launcher/view/activeicon/H;->NP:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 14
    :cond_6
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/activeicon/H;->Ob(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_d

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto/16 :goto_5

    .line 17
    :cond_7
    iget-object v5, p0, Lcom/smartisanos/launcher/view/activeicon/H;->NP:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/smartisanos/launcher/view/activeicon/H;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/n;->ua(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/smartisanos/launcher/view/activeicon/H;->i(ZI)I

    move-result v1

    iput v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->PP:I

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/smartisanos/launcher/view/activeicon/H;->i(ZI)I

    move-result v1

    iput v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->QP:I

    .line 21
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->Lz()I

    move-result v1

    .line 22
    sget v2, Lcom/smartisanos/launcher/view/activeicon/H;->kQ:I

    if-ne v1, v2, :cond_8

    .line 23
    iget v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->PP:I

    goto :goto_2

    .line 24
    :cond_8
    iget v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->QP:I

    .line 25
    :goto_2
    iput v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->iQ:I

    .line 26
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->jQ:Z

    if-eqz v1, :cond_a

    .line 27
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->jQ:Z

    :goto_3
    if-ge p1, v6, :cond_9

    .line 28
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->TP:[Ljava/lang/String;

    aput-object v5, v1, p1

    .line 29
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->VP:[Ljava/lang/String;

    aput-object v0, v1, p1

    .line 30
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 31
    :cond_9
    new-instance p1, Lcom/smartisanos/launcher/view/activeicon/B;

    invoke-direct {p1, p0, v8}, Lcom/smartisanos/launcher/view/activeicon/B;-><init>(Lcom/smartisanos/launcher/view/activeicon/H;I)V

    .line 32
    invoke-virtual {p1, v7}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_4

    .line 33
    :cond_a
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->TP:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v1, v1, p1

    if-ne v2, v1, :cond_b

    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->VP:[Ljava/lang/String;

    aget-object p1, v1, p1

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 35
    :cond_b
    iget-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->TP:[Ljava/lang/String;

    aput-object v5, p1, v4

    .line 36
    iget-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->VP:[Ljava/lang/String;

    aput-object v0, p1, v4

    .line 37
    iget-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aput v2, p1, v4

    .line 38
    new-instance p1, Lcom/smartisanos/launcher/view/activeicon/C;

    invoke-direct {p1, p0, v8}, Lcom/smartisanos/launcher/view/activeicon/C;-><init>(Lcom/smartisanos/launcher/view/activeicon/H;I)V

    .line 39
    invoke-virtual {p1, v7}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 40
    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->NP:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->h(ILjava/lang/String;)V

    goto :goto_8

    :cond_d
    :goto_5
    return-void

    .line 41
    :cond_e
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aget v1, v0, p1

    const/16 v2, -0x12c

    if-ne v2, v1, :cond_f

    return-void

    .line 42
    :cond_f
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->jQ:Z

    const-string v3, "cloudy"

    if-eqz v1, :cond_11

    .line 43
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->jQ:Z

    :goto_6
    if-ge p1, v6, :cond_10

    .line 44
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->TP:[Ljava/lang/String;

    aput-object v3, v0, p1

    .line 45
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->VP:[Ljava/lang/String;

    aput-object v3, v0, p1

    .line 46
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    aput v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 47
    :cond_10
    new-instance p1, Lcom/smartisanos/launcher/view/activeicon/D;

    invoke-direct {p1, p0, v8}, Lcom/smartisanos/launcher/view/activeicon/D;-><init>(Lcom/smartisanos/launcher/view/activeicon/H;I)V

    .line 48
    invoke-virtual {p1, v7}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_7

    .line 49
    :cond_11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->TP:[Ljava/lang/String;

    aput-object v3, p1, v4

    .line 50
    iget-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->VP:[Ljava/lang/String;

    aput-object v3, p1, v4

    .line 51
    aput v2, v0, v4

    .line 52
    new-instance p1, Lcom/smartisanos/launcher/view/activeicon/E;

    invoke-direct {p1, p0, v8}, Lcom/smartisanos/launcher/view/activeicon/E;-><init>(Lcom/smartisanos/launcher/view/activeicon/H;I)V

    .line 53
    invoke-virtual {p1, v7}, Lcom/smartisanos/smengine/n;->q(F)V

    :goto_7
    const-string p1, "1"

    .line 54
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/H;->Ob(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->NP:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/view/activeicon/H;->h(ILjava/lang/String;)V

    :goto_8
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/launcher/view/activeicon/a;->onResume()V

    return-void
.end method

.method public rq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->vC:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->vC:Lcom/smartisanos/smengine/g;

    :cond_0
    return-void
.end method

.method public setLayer(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->xP:I

    .line 3
    iget p1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->xP:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->XP:I

    .line 4
    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->XP:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->YP:I

    .line 5
    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->YP:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->ZP:I

    .line 6
    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->ZP:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->_P:I

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    if-eqz p1, :cond_1

    .line 10
    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->XP:I

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->bQ:Lcom/smartisanos/smengine/F;

    if-eqz p1, :cond_2

    .line 12
    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->ZP:I

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    move v1, p1

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 15
    aget-object v3, v3, v1

    iget v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->xP:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 16
    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v1

    aget-object v3, v3, p1

    iget v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->YP:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 17
    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v1

    aget-object v3, v3, v0

    iget v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->YP:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 18
    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    iget v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->YP:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 19
    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v1

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->YP:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 20
    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v1

    const/4 v4, 0x5

    aget-object v3, v3, v4

    iget v4, p0, Lcom/smartisanos/launcher/view/activeicon/H;->YP:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setRenderQueue(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/a;->setRenderQueue(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->aQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->bQ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->RP:[Lcom/smartisanos/smengine/SceneNode;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 6
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v1

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 8
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 9
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v1

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 10
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v1

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 11
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v1

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public vq()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/activeicon/q;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/activeicon/q;-><init>(Lcom/smartisanos/launcher/view/activeicon/H;)V

    invoke-static {v0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public xq()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->Zd()V

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/a;->qP:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/activeicon/a;->uq()V

    :goto_0
    return-void
.end method

.method public yq()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/view/activeicon/H;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "WeatherView onTemperatureTypeChange"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_1
    iget v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->PP:I

    const/4 v1, 0x1

    const/16 v2, -0x12c

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->QP:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    const/4 v3, 0x0

    aget v3, v0, v3

    if-ne v3, v2, :cond_2

    aget v0, v0, v1

    if-ne v0, v2, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->Lz()I

    move-result v0

    .line 5
    iget v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->iQ:I

    if-eq v0, v2, :cond_3

    .line 6
    iput v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->iQ:I

    .line 7
    :cond_3
    sget v2, Lcom/smartisanos/launcher/view/activeicon/H;->kQ:I

    if-ne v0, v2, :cond_4

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    iget v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->PP:I

    aput v2, v0, v1

    goto :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/H;->WP:[I

    iget v2, p0, Lcom/smartisanos/launcher/view/activeicon/H;->QP:I

    aput v2, v0, v1

    .line 10
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/Sa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/view/activeicon/u;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/activeicon/u;-><init>(Lcom/smartisanos/launcher/view/activeicon/H;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    return-void
.end method
