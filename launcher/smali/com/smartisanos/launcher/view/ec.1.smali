.class public Lcom/smartisanos/launcher/view/ec;
.super Lcom/smartisanos/smengine/SceneNode;
.source "MultiSelectNode.java"

# interfaces
.implements Lcom/smartisanos/smengine/B;


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private AN:Lcom/smartisanos/smengine/a/j;

.field private BN:Z

.field private DN:Lcom/smartisanos/smengine/g;

.field private EN:Lcom/smartisanos/smengine/a/j;

.field private FN:Lcom/smartisanos/smengine/oa;

.field private GN:Z

.field private HN:F

.field private JN:F

.field private KN:Lcom/smartisanos/launcher/view/dc;

.field private Mn:Lcom/smartisanos/smengine/g;

.field private PH:I

.field public Rn:Ljava/util/ArrayList;

.field private Wo:Lcom/smartisanos/launcher/view/b/M;

.field private Xo:Lcom/smartisanos/launcher/view/b/M;

.field dl:Lcom/smartisanos/launcher/view/b/fa;

.field private mNotificationManager:Lcom/smartisanos/smengine/C;

.field public nN:Ljava/util/ArrayList;

.field private oN:Lcom/smartisanos/launcher/view/a/g;

.field private pN:Lcom/smartisanos/launcher/animations/ya;

.field private qN:Lcom/smartisanos/launcher/animations/Ha;

.field private rN:Lcom/smartisanos/launcher/animations/va;

.field private sN:Lcom/smartisanos/launcher/animations/Ea;

.field private tN:Lcom/smartisanos/launcher/view/b/M;

.field private uN:Lcom/smartisanos/smengine/F;

.field private vN:Z

.field private wN:Z

.field private xN:Ljava/lang/String;

.field private yN:I

.field private zN:Lcom/smartisanos/smengine/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/ec;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/ec;->nN:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/ec;->vN:Z

    .line 5
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/ec;->wN:Z

    const/16 v0, 0x8

    .line 6
    iput v0, p0, Lcom/smartisanos/launcher/view/ec;->yN:I

    .line 7
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/ec;->BN:Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    .line 9
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/ec;->GN:Z

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/smartisanos/launcher/view/ec;->HN:F

    .line 11
    iput p1, p0, Lcom/smartisanos/launcher/view/ec;->JN:F

    .line 12
    new-instance p1, Lcom/smartisanos/launcher/view/cc;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/view/cc;-><init>(Lcom/smartisanos/launcher/view/ec;)V

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setTouchListener(Lcom/smartisanos/smengine/ha;)V

    .line 13
    new-instance p1, Lcom/smartisanos/launcher/view/bc;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/view/bc;-><init>(Lcom/smartisanos/launcher/view/ec;)V

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setSingleTapListener(Lcom/smartisanos/smengine/fa;)V

    return-void
.end method

.method private B(FF)V
    .locals 5

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 10
    invoke-static {v1}, Lcom/smartisanos/launcher/ua;->n(Z)V

    .line 11
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lcom/smartisanos/launcher/a/t;->a(Ljava/util/List;FF)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-static {v0, p1, p2}, Lcom/smartisanos/launcher/a/w;->b(Lcom/smartisanos/launcher/view/a/g;FF)Z

    .line 15
    :cond_1
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object p1

    iget-object p2, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/Da;->N(I)V

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Kq()Z

    move-result p1

    if-nez p1, :cond_2

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Iq()V

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ec;->zN:Lcom/smartisanos/smengine/a/j;

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Eb;->ji()V

    .line 20
    iget-object p2, p0, Lcom/smartisanos/launcher/view/ec;->nN:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 21
    iget-object p2, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object p2

    .line 23
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 24
    invoke-virtual {p2, p1, v0}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 25
    iget p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p0, p2, v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 26
    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object p2

    iput-object p2, p0, Lcom/smartisanos/launcher/view/ec;->AN:Lcom/smartisanos/smengine/a/j;

    .line 27
    sget-boolean p2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p2, :cond_3

    .line 28
    sget-object p2, Lcom/smartisanos/launcher/view/ec;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multiselectNode result .x = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "result.y ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    move p1, v2

    .line 30
    :goto_1
    iget-object p2, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 31
    iget-object p2, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/launcher/view/a/g;

    .line 32
    invoke-virtual {p2, p0}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    move p1, v2

    .line 33
    :goto_2
    iget-object p2, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const v0, 0x3e4ccccd    # 0.2f

    if-ge p1, p2, :cond_a

    .line 34
    iget-object p2, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/launcher/view/a/g;

    .line 35
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    const/16 v3, 0x8

    .line 36
    invoke-virtual {p2, v3, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    const/16 v3, 0x10

    .line 37
    invoke-virtual {p2, v3}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 38
    invoke-virtual {p2, v2}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    if-nez p1, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v3, p1, 0x1

    mul-int/lit8 v3, v3, -0x7

    :goto_3
    const/4 v4, 0x5

    .line 39
    invoke-virtual {p2, v4, v3}, Lcom/smartisanos/launcher/view/a/g;->t(II)V

    .line 40
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 41
    iget-object v4, p0, Lcom/smartisanos/launcher/view/ec;->nN:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 42
    iget-object v4, p0, Lcom/smartisanos/launcher/view/ec;->nN:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_6
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_9

    if-nez p1, :cond_8

    .line 44
    iget-object v3, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 45
    iget-object v3, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v3

    if-nez v3, :cond_7

    .line 46
    iget-object v3, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->vl()V

    .line 47
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p1}, Lcom/smartisanos/launcher/view/a/ga;->a(ZII)V

    .line 48
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/a/Z;->ha(Z)V

    .line 49
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object p2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/ec;->Mn:Lcom/smartisanos/smengine/g;

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {p2, v3, v4, v0, v1}, Lcom/smartisanos/launcher/view/a/Z;->a(Lcom/smartisanos/smengine/g;FFZ)V

    .line 50
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/ec;->BN:Z

    goto :goto_4

    .line 51
    :cond_7
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    invoke-virtual {v0, v1, v2, p1}, Lcom/smartisanos/launcher/view/a/ga;->a(ZII)V

    .line 52
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/smartisanos/launcher/view/a/Z;->ha(Z)V

    goto :goto_4

    .line 53
    :cond_8
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    invoke-virtual {v0, v1, v2, p1}, Lcom/smartisanos/launcher/view/a/ga;->a(ZII)V

    .line 54
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/smartisanos/launcher/view/a/Z;->ha(Z)V

    :cond_9
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2

    .line 55
    :cond_a
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz p1, :cond_c

    .line 56
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne v1, p1, :cond_b

    .line 57
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/view/a/Z;->ea(Z)V

    .line 58
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    .line 59
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/ec;->BN:Z

    goto :goto_5

    .line 60
    :cond_b
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->isMeetingMode()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 61
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Eh()Lcom/smartisanos/smengine/F;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 62
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result p1

    .line 63
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Eb;->Eh()Lcom/smartisanos/smengine/F;

    move-result-object p2

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 64
    :cond_c
    :goto_5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Mn:Lcom/smartisanos/smengine/g;

    if-eqz p1, :cond_d

    .line 65
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 66
    :cond_d
    new-instance p1, Lcom/smartisanos/smengine/g;

    invoke-direct {p1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Mn:Lcom/smartisanos/smengine/g;

    .line 67
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Mn:Lcom/smartisanos/smengine/g;

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/view/ec;->i(Lcom/smartisanos/smengine/g;F)V

    .line 68
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Mn:Lcom/smartisanos/smengine/g;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/ec;->g(Lcom/smartisanos/smengine/g;)V

    .line 69
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object p2

    .line 72
    iget-object v3, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_e

    .line 73
    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/view/V;->vb(Z)Lcom/smartisanos/smengine/g;

    move-result-object v3

    .line 74
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v4

    invoke-virtual {p2, v4, v1}, Lcom/smartisanos/launcher/view/Sc;->n(IZ)V

    goto :goto_6

    .line 75
    :cond_e
    invoke-virtual {p1, v2}, Lcom/smartisanos/launcher/view/V;->vb(Z)Lcom/smartisanos/smengine/g;

    move-result-object v3

    .line 76
    :goto_6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->Mn:Lcom/smartisanos/smengine/g;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 77
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/ua;->a(Landroid/content/Context;I)V

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v2, p0, Lcom/smartisanos/launcher/view/ec;->Mn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->lZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {p1, v2, v0, v1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 81
    sget-object v2, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->KZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {p2, v2, v0, v1}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 82
    iget-object p2, p0, Lcom/smartisanos/launcher/view/ec;->Mn:Lcom/smartisanos/smengine/g;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/g;->start()V

    .line 83
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/ec;->bz()V

    .line 84
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 85
    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 86
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v1, v0, 0x4

    int-to-float v1, v1

    int-to-float v0, v0

    .line 87
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/ec;->EN:Lcom/smartisanos/smengine/a/j;

    .line 88
    iget-object v2, p0, Lcom/smartisanos/launcher/view/ec;->EN:Lcom/smartisanos/smengine/a/j;

    iget p2, p2, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result p1

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p1, v3

    add-float/2addr p2, p1

    iput p2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    .line 89
    sget-object p1, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object p2, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne p1, p2, :cond_f

    .line 90
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->EN:Lcom/smartisanos/smengine/a/j;

    neg-float p1, v0

    div-float/2addr p1, v3

    add-float/2addr p1, v1

    iput p1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    goto :goto_7

    .line 91
    :cond_f
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->EN:Lcom/smartisanos/smengine/a/j;

    div-float/2addr v0, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    :goto_7
    return-void
.end method

.method private L(Ljava/util/List;)Lcom/smartisanos/smengine/g;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/smartisanos/launcher/view/ec;->a(Ljava/util/List;Lcom/smartisanos/smengine/g;Z)V

    return-object v0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/ec;I)I
    .locals 0

    .line 7
    iput p1, p0, Lcom/smartisanos/launcher/view/ec;->PH:I

    return p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/launcher/animations/Ha;)Lcom/smartisanos/launcher/animations/Ha;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ec;->qN:Lcom/smartisanos/launcher/animations/Ha;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Wo:Lcom/smartisanos/launcher/view/b/M;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method private a(Ljava/util/List;Lcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;
    .locals 7

    .line 119
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->rN:Lcom/smartisanos/launcher/animations/va;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/smartisanos/launcher/animations/va;->Dn:Z

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/va;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Mn:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 123
    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Mn:Lcom/smartisanos/smengine/g;

    const/4 v0, 0x0

    move v1, v0

    .line 124
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 125
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 126
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/ec;->Mn:Lcom/smartisanos/smengine/g;

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {v3, v4, v6, v5}, Lcom/smartisanos/launcher/view/a/X;->g(Lcom/smartisanos/smengine/g;FF)V

    const v3, 0x8000

    const/4 v4, 0x1

    .line 127
    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    const/16 v3, 0x1a

    .line 128
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 129
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/ec;->Mn:Lcom/smartisanos/smengine/g;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v6, v4, v0}, Lcom/smartisanos/launcher/view/a/Z;->a(Lcom/smartisanos/smengine/g;FFZ)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_3
    new-instance v0, Lcom/smartisanos/launcher/animations/va;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/ec;->Mn:Lcom/smartisanos/smengine/g;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/smartisanos/launcher/animations/va;-><init>(Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/smengine/g;Ljava/util/List;Lcom/smartisanos/smengine/a;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->rN:Lcom/smartisanos/launcher/animations/va;

    .line 131
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->Mn:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/smengine/oa;)Lcom/smartisanos/smengine/oa;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ec;->FN:Lcom/smartisanos/smengine/oa;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/smengine/Fa;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/ec;->a(Lcom/smartisanos/smengine/Fa;I)V

    return-void
.end method

.method private a(Lcom/smartisanos/smengine/Fa;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 18
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_1

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->yh()Lcom/smartisanos/smengine/F;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/Fa;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/Fa;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->isTransformedTouchPointInView(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iget-object v3, v0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/a/g;

    .line 23
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/Fa;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/Fa;->getY()F

    move-result v5

    .line 26
    invoke-static {v3, v2, v4, v5}, Lcom/smartisanos/launcher/Qa;->a(Landroid/content/Context;Ljava/util/ArrayList;FF)V

    .line 27
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateGeometricState()V

    .line 28
    iget-object v2, v0, Lcom/smartisanos/launcher/view/ec;->pN:Lcom/smartisanos/launcher/animations/ya;

    iget-boolean v3, v2, Lcom/smartisanos/launcher/animations/ya;->Dn:Z

    if-eqz v3, :cond_2

    .line 29
    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/ya;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_2
    const/4 v2, 0x0

    .line 30
    invoke-static {v2}, Lcom/smartisanos/launcher/ua;->n(Z)V

    .line 31
    iget-object v3, v0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 32
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 33
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/ec;->cz()V

    .line 34
    new-instance v3, Lcom/smartisanos/smengine/g;

    invoke-direct {v3}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v3, v0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    .line 35
    iget-object v3, v0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    new-instance v4, Lcom/smartisanos/launcher/view/Tb;

    invoke-direct {v4, v0}, Lcom/smartisanos/launcher/view/Tb;-><init>(Lcom/smartisanos/launcher/view/ec;)V

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 36
    new-instance v3, Lcom/smartisanos/smengine/g;

    invoke-direct {v3}, Lcom/smartisanos/smengine/g;-><init>()V

    const v4, 0x3e99999a    # 0.3f

    .line 37
    invoke-direct {v0, v3, v4}, Lcom/smartisanos/launcher/view/ec;->d(Lcom/smartisanos/smengine/g;F)V

    .line 38
    new-instance v5, Lcom/smartisanos/smengine/A;

    invoke-direct {v5}, Lcom/smartisanos/smengine/A;-><init>()V

    .line 39
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/ec;->mx()Lcom/smartisanos/smengine/C;

    move-result-object v6

    const-string v7, "multiSelectCellUp"

    invoke-virtual {v6, v7, v5}, Lcom/smartisanos/smengine/C;->b(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V

    .line 40
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v5}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 41
    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 42
    iget v6, v5, Lcom/smartisanos/smengine/a/j;->x:F

    .line 43
    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    .line 44
    iget-object v7, v0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v5, v8}, Lcom/smartisanos/launcher/view/b/fa;->a(FFZ)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v5

    iput-object v5, v0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    const/4 v5, 0x0

    .line 45
    iput-object v5, v0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    .line 46
    :cond_3
    iget-object v5, v0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    iput-object v5, v0, Lcom/smartisanos/launcher/view/ec;->tN:Lcom/smartisanos/launcher/view/b/M;

    .line 47
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iget-object v10, v0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/a/g;

    .line 52
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v12

    if-nez v12, :cond_4

    goto :goto_1

    .line 53
    :cond_4
    invoke-virtual {v12}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v13

    if-nez v13, :cond_6

    iget-boolean v13, v12, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v13, :cond_5

    goto :goto_2

    .line 54
    :cond_5
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 55
    :cond_6
    :goto_2
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :goto_3
    invoke-static {v12}, Lcom/smartisanos/launcher/e/s;->j(Lcom/smartisanos/launcher/data/ItemInfo;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 57
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_7
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 59
    :cond_8
    new-instance v10, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v10}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 60
    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 61
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v11

    .line 62
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v11

    .line 63
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v12

    .line 64
    sget-boolean v13, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v13, :cond_9

    sget-object v13, Lcom/smartisanos/launcher/view/ec;->log:Lcom/smartisanos/launcher/va;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "commonAppCells size "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 65
    :cond_9
    sget-boolean v13, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v13, :cond_a

    sget-object v13, Lcom/smartisanos/launcher/view/ec;->log:Lcom/smartisanos/launcher/va;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "systemAppCells size "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 66
    :cond_a
    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object v13

    .line 67
    invoke-virtual {v13, v10}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v13

    .line 68
    sget-boolean v14, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v14, :cond_d

    .line 69
    new-instance v14, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v14}, Lcom/smartisanos/smengine/a/i;-><init>()V

    .line 70
    iget v4, v10, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, v10, Lcom/smartisanos/smengine/a/j;->y:F

    sget v8, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v8, v8

    sget v15, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v15, v15

    invoke-static {v4, v2, v8, v15, v14}, Lcom/smartisanos/smengine/d/a;->d(FFFFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    const/4 v2, 0x2

    new-array v4, v2, [F

    new-array v8, v2, [F

    .line 71
    iget v2, v14, Lcom/smartisanos/smengine/a/i;->x:F

    iget v14, v14, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-static {v2, v14, v4, v8}, Lcom/smartisanos/launcher/a/t;->a(FF[F[F)Z

    if-nez v13, :cond_c

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    goto :goto_4

    :cond_b
    const/4 v13, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v13, 0x1

    :cond_d
    :goto_5
    const/4 v2, 0x0

    if-eqz v13, :cond_14

    .line 72
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    .line 73
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_e

    const/4 v4, 0x0

    .line 74
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Wm()V

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    move v1, v4

    .line 75
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_12

    .line 76
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/a/g;

    .line 77
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 78
    sget-object v9, Lcom/smartisanos/launcher/data/T;->SMARTISAN_SCREEN_RECORDER:Lcom/smartisanos/launcher/data/S;

    iget-object v9, v9, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 79
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Wm()V

    goto :goto_7

    .line 80
    :cond_f
    sget-object v9, Lcom/smartisanos/launcher/data/T;->RECORDER:Lcom/smartisanos/launcher/data/S;

    iget-object v9, v9, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 81
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Wm()V

    goto :goto_7

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_11
    const/4 v4, 0x0

    .line 82
    :cond_12
    :goto_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1c

    .line 83
    invoke-virtual {v12, v0}, Lcom/smartisanos/launcher/view/Sc;->l(Lcom/smartisanos/launcher/view/ec;)V

    .line 84
    new-instance v1, Lcom/smartisanos/launcher/a/oa;

    invoke-direct {v1}, Lcom/smartisanos/launcher/a/oa;-><init>()V

    const v7, 0x3e4ccccd    # 0.2f

    .line 85
    invoke-virtual {v1, v6, v5, v0, v7}, Lcom/smartisanos/launcher/a/oa;->a(Ljava/util/List;Ljava/util/List;Lcom/smartisanos/launcher/view/ec;F)V

    .line 86
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 87
    invoke-direct {v0, v5}, Lcom/smartisanos/launcher/view/ec;->L(Ljava/util/List;)Lcom/smartisanos/smengine/g;

    move-result-object v1

    .line 88
    invoke-virtual {v3, v2, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 89
    :cond_13
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/V;->Yo()Lcom/smartisanos/smengine/g;

    move-result-object v1

    .line 90
    invoke-virtual {v3, v2, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto/16 :goto_c

    :cond_14
    const/4 v4, 0x0

    .line 91
    invoke-virtual {v11, v10}, Lcom/smartisanos/launcher/view/V;->h(Lcom/smartisanos/smengine/a/j;)Z

    move-result v5

    .line 92
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v6, :cond_17

    if-nez v5, :cond_16

    const/4 v5, 0x2

    if-ne v1, v5, :cond_15

    goto :goto_8

    :cond_15
    move v5, v4

    goto :goto_9

    :cond_16
    :goto_8
    const/4 v5, 0x1

    :cond_17
    :goto_9
    if-eqz v5, :cond_1c

    .line 93
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 94
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v1, v5

    const/4 v5, 0x1

    if-gt v1, v5, :cond_18

    .line 95
    invoke-static {}, Lcom/smartisanos/launcher/view/Qb;->li()V

    goto :goto_b

    .line 96
    :cond_18
    invoke-direct {v0, v7}, Lcom/smartisanos/launcher/view/ec;->L(Ljava/util/List;)Lcom/smartisanos/smengine/g;

    move-result-object v1

    .line 97
    invoke-virtual {v3, v2, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 98
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/V;->_o()Lcom/smartisanos/smengine/g;

    move-result-object v1

    .line 99
    invoke-virtual {v3, v2, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 100
    new-instance v1, Lcom/smartisanos/launcher/view/Qb;

    invoke-direct {v1, v9}, Lcom/smartisanos/launcher/view/Qb;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_19
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/a/g;

    .line 103
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    iget-boolean v7, v7, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-eqz v7, :cond_1a

    .line 104
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    sget-object v7, Lcom/smartisanos/launcher/data/K;->Wq:Ljava/util/HashMap;

    const/16 v8, 0x22

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lcom/smartisanos/launcher/data/ItemInfo;->category:I

    goto :goto_a

    .line 105
    :cond_1a
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/ItemInfo;->Re()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 106
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 107
    :cond_1b
    invoke-static {v1}, Lcom/smartisanos/launcher/data/K;->b(Ljava/util/ArrayList;)V

    goto :goto_c

    :cond_1c
    const/4 v5, 0x1

    :goto_b
    move v4, v5

    :goto_c
    if-eqz v4, :cond_1d

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/ua;->a(Landroid/content/Context;I)V

    .line 111
    sget-object v4, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->mZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    const v5, 0x3e99999a    # 0.3f

    invoke-virtual {v11, v4, v5, v1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 112
    sget-object v4, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->NZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v12, v4, v5, v1}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 113
    sget-object v4, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->LZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v12, v4, v5, v1}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 114
    invoke-direct {v0, v3}, Lcom/smartisanos/launcher/view/ec;->h(Lcom/smartisanos/smengine/g;)V

    .line 115
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/V;->Yo()Lcom/smartisanos/smengine/g;

    move-result-object v1

    .line 116
    invoke-virtual {v3, v2, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 117
    :cond_1d
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 118
    iget-object v0, v0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/smartisanos/smengine/g;Z)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 214
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 215
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 216
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 217
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->fl()V

    .line 218
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/b/M;->setSceneNodeForceRender(Z)V

    const/16 v3, 0x40

    .line 219
    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 220
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 221
    sget v3, Lcom/smartisanos/launcher/view/a/g;->qI:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->jb(I)V

    .line 222
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Eb;->ya(I)V

    .line 224
    new-instance v1, Lcom/smartisanos/launcher/view/Rb;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/Rb;-><init>(Lcom/smartisanos/launcher/view/ec;)V

    invoke-direct {p0, p1, v1}, Lcom/smartisanos/launcher/view/ec;->a(Ljava/util/List;Lcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {p2, v2, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_1
    if-eqz p3, :cond_5

    const p3, 0x3e99999a    # 0.3f

    .line 226
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->oN:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v1, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 227
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ec;->oN:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    goto :goto_1

    .line 228
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    .line 229
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/b/fa;->p(Lcom/smartisanos/launcher/view/b/M;)I

    move-result p1

    .line 230
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v1

    .line 231
    iget-object v3, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v3

    if-ne v1, p1, :cond_4

    .line 232
    iget-object v4, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->Hr()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 233
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Eq()V

    goto :goto_3

    .line 234
    :cond_4
    :goto_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/smartisanos/launcher/view/b/fa;->G(II)V

    .line 235
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    new-instance v3, Lcom/smartisanos/launcher/view/Sb;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/Sb;-><init>(Lcom/smartisanos/launcher/view/ec;)V

    invoke-virtual {v1, p1, p3, v0, v3}, Lcom/smartisanos/launcher/view/b/fa;->a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object p0

    .line 236
    invoke-virtual {p2, v2, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_5
    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/ec;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/ec;->BN:Z

    return p1
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ec;->tN:Lcom/smartisanos/launcher/view/b/M;

    return-object p1
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Mn:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/ec;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->xN:Ljava/lang/String;

    return-object p0
.end method

.method private bz()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->Wo:Lcom/smartisanos/launcher/view/b/M;

    if-eq v0, v1, :cond_1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/ec;->cz()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Wo:Lcom/smartisanos/launcher/view/b/M;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/M;->rb(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->bo()V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->fo()V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->co()V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Wo:Lcom/smartisanos/launcher/view/b/M;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    .line 10
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/ec;->wN:Z

    .line 11
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/ec;->wN:Z

    if-eqz v0, :cond_4

    .line 12
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/ec;->cz()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    :cond_4
    return-void
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/animations/va;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->rN:Lcom/smartisanos/launcher/animations/va;

    return-object p0
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    return-object p1
.end method

.method private cz()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->Wo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Dn()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->oN:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method private d(Lcom/smartisanos/smengine/g;F)V
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->FN:Lcom/smartisanos/smengine/oa;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/oa;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->FN:Lcom/smartisanos/smengine/oa;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/oa;->kill()V

    .line 5
    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/oa;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->FN:Lcom/smartisanos/smengine/oa;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->FN:Lcom/smartisanos/smengine/oa;

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 7
    iget-object p2, p0, Lcom/smartisanos/launcher/view/ec;->FN:Lcom/smartisanos/smengine/oa;

    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 8
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object p2

    .line 9
    iget-object v0, p2, Lcom/smartisanos/smengine/d/f;->qY:Lcom/smartisanos/smengine/a/k;

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 11
    iget v7, v0, Lcom/smartisanos/smengine/a/k;->w:F

    .line 12
    invoke-virtual {p2}, Lcom/smartisanos/smengine/d/f;->release()V

    .line 13
    iget-object v2, p0, Lcom/smartisanos/launcher/view/ec;->FN:Lcom/smartisanos/smengine/oa;

    const/4 v3, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v4, v7

    move v5, v7

    move v6, v7

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 14
    iget-object p2, p0, Lcom/smartisanos/launcher/view/ec;->FN:Lcom/smartisanos/smengine/oa;

    new-instance v0, Lcom/smartisanos/launcher/view/Wb;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/Wb;-><init>(Lcom/smartisanos/launcher/view/ec;)V

    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    if-nez p1, :cond_2

    .line 15
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->FN:Lcom/smartisanos/smengine/oa;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/oa;->start()V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 16
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->FN:Lcom/smartisanos/smengine/oa;

    invoke-virtual {p1, p2, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :goto_0
    return-void
.end method

.method private dz()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->AN:Lcom/smartisanos/smengine/a/j;

    iget v2, p0, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v1, v2

    .line 3
    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v0, p0

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    .line 4
    invoke-static {v1}, Lcom/smartisanos/smengine/a/a;->sqrt(F)F

    move-result p0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic e(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->tN:Lcom/smartisanos/launcher/view/b/M;

    return-object p0
.end method

.method private ez()Lcom/smartisanos/smengine/g;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->qN:Lcom/smartisanos/launcher/animations/Ha;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/smartisanos/launcher/animations/Ha;->Dn:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Lcom/smartisanos/launcher/animations/Ha;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    new-instance v4, Lcom/smartisanos/launcher/view/Ub;

    invoke-direct {v4, p0}, Lcom/smartisanos/launcher/view/Ub;-><init>(Lcom/smartisanos/launcher/view/ec;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/animations/Ha;-><init>(Lcom/smartisanos/launcher/view/b/fa;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/a;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->qN:Lcom/smartisanos/launcher/animations/Ha;

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->qN:Lcom/smartisanos/launcher/animations/Ha;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/Ha;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/smartisanos/launcher/view/ec;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/ec;->PH:I

    return p0
.end method

.method static synthetic g(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    return-object p0
.end method

.method private g(Lcom/smartisanos/smengine/g;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->pN:Lcom/smartisanos/launcher/animations/ya;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/animations/ya;->Dn:Z

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v1

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/smartisanos/launcher/view/a/X;->c(Lcom/smartisanos/smengine/g;FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/smartisanos/launcher/animations/ya;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    new-instance v3, Lcom/smartisanos/launcher/view/Vb;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/Vb;-><init>(Lcom/smartisanos/launcher/view/ec;)V

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/smartisanos/launcher/animations/ya;-><init>(Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/smengine/g;Ljava/util/ArrayList;Lcom/smartisanos/smengine/a;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->pN:Lcom/smartisanos/launcher/animations/ya;

    :cond_2
    return-void
.end method

.method static synthetic h(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/animations/Ha;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->qN:Lcom/smartisanos/launcher/animations/Ha;

    return-object p0
.end method

.method private h(Lcom/smartisanos/smengine/g;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4
    instance-of v4, v1, Lcom/smartisanos/launcher/view/b/sa;

    if-eqz v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 8
    :goto_1
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/ec;->vN:Z

    if-eqz v0, :cond_a

    .line 9
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/ec;->vN:Z

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Vn()V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->nN:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v3

    .line 12
    :goto_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 14
    iget-object v4, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v4, v1, v3}, Lcom/smartisanos/launcher/view/b/M;->a(Lcom/smartisanos/launcher/view/a/g;Z)Z

    .line 15
    iget-object v4, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 16
    iget-object v4, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    .line 17
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->fl()V

    .line 18
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/b/M;->lb(Z)V

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Rh()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Kg()V

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->cn()Z

    .line 24
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->mn()Ljava/util/ArrayList;

    move-result-object v0

    move v1, v3

    .line 26
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    const/16 v4, 0xa

    .line 28
    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 29
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->_n()V

    .line 30
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/ec;->i(Lcom/smartisanos/smengine/g;)V

    move v0, v3

    .line 31
    :goto_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const v2, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    if-ge v0, v1, :cond_6

    .line 32
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    const/16 v5, 0x1a

    .line 33
    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 34
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v1

    invoke-virtual {v1, p1, v2, v4, v3}, Lcom/smartisanos/launcher/view/a/Z;->a(Lcom/smartisanos/smengine/g;FFZ)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 35
    :cond_6
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/ec;->ez()Lcom/smartisanos/smengine/g;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 36
    invoke-virtual {p1, v4, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 37
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v0

    .line 38
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/view/b/fa;->p(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v1

    .line 39
    iget-object v5, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v5

    if-ne v0, v1, :cond_9

    .line 40
    iget-object v6, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->Hr()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_5

    .line 41
    :cond_8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Eq()V

    goto :goto_6

    .line 42
    :cond_9
    :goto_5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/smartisanos/launcher/view/b/fa;->G(II)V

    .line 43
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    new-instance v5, Lcom/smartisanos/launcher/view/Xb;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/view/Xb;-><init>(Lcom/smartisanos/launcher/view/ec;)V

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/smartisanos/launcher/view/b/fa;->a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    .line 44
    invoke-virtual {p1, v4, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 45
    :goto_6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Eb;->ya(I)V

    goto :goto_7

    .line 46
    :cond_a
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, v2}, Lcom/smartisanos/launcher/view/ec;->a(Ljava/util/List;Lcom/smartisanos/smengine/g;Z)V

    .line 47
    :goto_7
    new-instance v0, Lcom/smartisanos/launcher/view/Yb;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/Yb;-><init>(Lcom/smartisanos/launcher/view/ec;)V

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    return-void
.end method

.method private i(Lcom/smartisanos/smengine/g;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 47
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/ec;->nN:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 48
    iget-object v2, p0, Lcom/smartisanos/launcher/view/ec;->nN:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 49
    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/b/M;->hb(Z)V

    .line 50
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v3

    move v4, v0

    .line 51
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 52
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/a/g;

    .line 53
    sget v6, Lcom/smartisanos/launcher/view/a/g;->qI:I

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/a/g;->eb(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/ga;->Di()I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->mn()Ljava/util/ArrayList;

    move-result-object v2

    .line 56
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    invoke-direct {p0, v4}, Lcom/smartisanos/launcher/view/ec;->l(Ljava/util/ArrayList;)Lcom/smartisanos/smengine/g;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 60
    invoke-virtual {p1, v3, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private i(Lcom/smartisanos/smengine/g;F)V
    .locals 15

    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->Ra()Landroid/content/res/Resources;

    move-result-object v1

    .line 4
    iget-object v2, v0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 5
    sget v2, Lcom/smartisanos/launcher/ob;->has_selected_1_app_float:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/view/ec;->xN:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_1
    sget v2, Lcom/smartisanos/launcher/ob;->has_selected_app_float:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/view/ec;->xN:Ljava/lang/String;

    .line 7
    :goto_0
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->xN:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/view/ec;->xN:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v1

    iget-object v2, v0, Lcom/smartisanos/launcher/view/ec;->xN:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->xN:Ljava/lang/String;

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->ma(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 11
    new-instance v2, Lcom/smartisanos/smengine/Da;

    invoke-direct {v2, v1}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 12
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v1

    .line 13
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 14
    iget-object v4, v0, Lcom/smartisanos/launcher/view/ec;->xN:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    move-object v1, v2

    .line 15
    :cond_2
    invoke-virtual {v1}, Lcom/smartisanos/smengine/Da;->getWidth()F

    move-result v2

    float-to-int v2, v2

    .line 16
    invoke-virtual {v1}, Lcom/smartisanos/smengine/Da;->getHeight()F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v2

    int-to-float v1, v1

    const/4 v4, 0x0

    const-string v5, "App_long_press_text_rect"

    .line 17
    invoke-static {v5, v2, v1, v4, v3}, Lcom/smartisanos/smengine/F;->c(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    const-string v1, "TextureModularColorMaterial"

    .line 18
    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v1

    .line 19
    iget-object v2, v0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 20
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    .line 21
    iget-object v2, v0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5, v5, v5, v5}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 22
    iget-object v2, v0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    const/16 v5, 0xfa

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 23
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v5, -0x40000000    # -2.0f

    .line 24
    invoke-virtual {v1, v2, v5}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 25
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    const/4 v2, 0x2

    .line 26
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 27
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 28
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/ec;->xN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 29
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 30
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    goto :goto_1

    .line 31
    :cond_3
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 32
    :goto_1
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v1

    .line 33
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 34
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_MODE(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_2

    .line 35
    :cond_4
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_4_MODE(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const v1, 0x3f266666    # 0.65f

    goto :goto_2

    .line 36
    :cond_5
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_9_MODE(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const/high16 v1, 0x3f400000    # 0.75f

    .line 37
    :goto_2
    iget-object v3, v0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float/2addr v2, v1

    invoke-virtual {v3, v4, v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 38
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 39
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 40
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 41
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    invoke-direct {v1, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    move/from16 v0, p2

    .line 42
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v0, 0xe

    .line 43
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v5, v1

    .line 44
    invoke-virtual/range {v5 .. v14}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    move-object/from16 v0, p1

    .line 45
    invoke-virtual {v0, v4, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void

    .line 46
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showLongPressAppName currentPageMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic i(Lcom/smartisanos/launcher/view/ec;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/ec;->BN:Z

    return p0
.end method

.method static synthetic j(Lcom/smartisanos/launcher/view/ec;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/ec;->vN:Z

    return p0
.end method

.method static synthetic k(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/animations/ya;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->pN:Lcom/smartisanos/launcher/animations/ya;

    return-object p0
.end method

.method private l(Ljava/util/ArrayList;)Lcom/smartisanos/smengine/g;
    .locals 4

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/animations/Ea;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/ec;->nN:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/smartisanos/launcher/animations/Ea;-><init>(Lcom/smartisanos/launcher/view/b/fa;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/a;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->sN:Lcom/smartisanos/launcher/animations/Ea;

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->sN:Lcom/smartisanos/launcher/animations/Ea;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/Ea;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object p0

    return-object p0
.end method

.method private mx()Lcom/smartisanos/smengine/C;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->mNotificationManager:Lcom/smartisanos/smengine/C;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->mNotificationManager:Lcom/smartisanos/smengine/C;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->mNotificationManager:Lcom/smartisanos/smengine/C;

    return-object p0
.end method

.method private u(F)I
    .locals 1

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->l(F)I

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x42480000    # 50.0f

    cmpg-float v0, p1, p0

    if-gez v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 3
    :cond_1
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v0, v0

    sub-float/2addr v0, p0

    cmpl-float p0, p1, v0

    if-lez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public A(Lcom/smartisanos/launcher/view/a/g;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->KN:Lcom/smartisanos/launcher/view/dc;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/smartisanos/launcher/view/dc;->h(I)V

    :cond_0
    return p1
.end method

.method public B(Lcom/smartisanos/launcher/view/a/g;)I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/ec;->BN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/Z;->ea(Z)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->KN:Lcom/smartisanos/launcher/view/dc;

    if-eqz p0, :cond_1

    .line 7
    invoke-interface {p0, p1}, Lcom/smartisanos/launcher/view/dc;->h(I)V

    :cond_1
    return p1
.end method

.method public Kp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->KN:Lcom/smartisanos/launcher/view/dc;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0}, Lcom/smartisanos/launcher/view/dc;->h(I)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public Lp()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 9
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v4, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p0, v0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_5

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Qb;->li()V

    goto :goto_3

    .line 16
    :cond_5
    new-instance p0, Lcom/smartisanos/launcher/a/G;

    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/a/G;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    .line 17
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 19
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-eqz v2, :cond_7

    .line 20
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/launcher/data/K;->Wq:Ljava/util/HashMap;

    const/16 v3, 0x22

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->category:I

    goto :goto_2

    .line 21
    :cond_7
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->Re()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 22
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_8
    invoke-static {p0}, Lcom/smartisanos/launcher/data/K;->b(Ljava/util/ArrayList;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public Mp()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    return-object p0
.end method

.method public Np()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public Op()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Pp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Qp()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->qN:Lcom/smartisanos/launcher/animations/Ha;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Rp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const/4 v0, 0x0

    const v1, 0x3dcccccd    # 0.1f

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/view/ec;->d(Lcom/smartisanos/smengine/g;F)V

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 5
    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 6
    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/smartisanos/launcher/view/b/fa;->a(FFZ)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/ec;->bz()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/ec;->cz()V

    :goto_0
    return-void
.end method

.method public Yg()V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/ec;->GN:Z

    if-nez p0, :cond_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;Z)Lcom/smartisanos/smengine/g;
    .locals 17

    move-object/from16 v0, p0

    .line 176
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 178
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v1, v0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    .line 179
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/ec;->i(Lcom/smartisanos/smengine/g;)V

    .line 180
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/16 v2, 0xe

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/a/g;

    .line 182
    new-instance v7, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v7}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 183
    new-instance v8, Lcom/smartisanos/smengine/a/k;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v9, v9, v9}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    new-instance v10, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v10, v5, v5, v5, v5}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-virtual {v7, v8, v10, v2, v4}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 184
    iget-object v8, v0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    invoke-virtual {v6, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v10

    invoke-virtual {v8, v5, v10}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 185
    iget-object v8, v0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    const/16 v10, 0x13

    invoke-virtual {v6, v10}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v7

    invoke-virtual {v8, v5, v7}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 186
    new-instance v7, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v7}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 187
    new-instance v8, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v8, v9, v9, v9}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    new-instance v11, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v11, v5, v5, v9}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v7, v8, v11, v2, v4}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 188
    iget-object v8, v0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    invoke-virtual {v6, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 189
    iget-object v8, v0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    invoke-virtual {v6, v10}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_0

    .line 190
    :cond_1
    new-instance v1, Lcom/smartisanos/smengine/oa;

    invoke-direct {v1, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 191
    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 192
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 194
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    iget v7, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v2, Lcom/smartisanos/smengine/a/j;->y:F

    const/high16 v9, 0x43c80000    # 400.0f

    sub-float/2addr v8, v9

    iget v9, v2, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v6, v7, v8, v9}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/4 v10, 0x0

    .line 195
    iget v11, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v12, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v13, v2, Lcom/smartisanos/smengine/a/j;->z:F

    iget v14, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v15, v6, Lcom/smartisanos/smengine/a/j;->y:F

    iget v2, v6, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v9, v1

    move/from16 v16, v2

    invoke-virtual/range {v9 .. v16}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 196
    iget-object v2, v0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v5, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 197
    :cond_2
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v1

    .line 198
    iget-object v2, v0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v2

    if-eqz p2, :cond_7

    .line 199
    iget-object v6, v0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->Hr()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6, v1}, Lcom/smartisanos/launcher/view/b/fa;->cc(I)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 200
    :cond_3
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Eq()V

    goto :goto_4

    :cond_4
    :goto_1
    add-int/lit8 v6, v1, -0x1

    add-int/lit8 v7, v2, -0x1

    if-ne v1, v7, :cond_6

    :goto_2
    if-ltz v7, :cond_6

    .line 201
    iget-object v8, v0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v8, v7}, Lcom/smartisanos/launcher/view/b/fa;->cc(I)Z

    move-result v8

    if-nez v8, :cond_5

    move v6, v7

    goto :goto_3

    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 202
    :cond_6
    :goto_3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v7

    invoke-virtual {v7, v2, v1}, Lcom/smartisanos/launcher/view/b/fa;->G(II)V

    .line 203
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    new-instance v2, Lcom/smartisanos/launcher/view/Zb;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/Zb;-><init>(Lcom/smartisanos/launcher/view/ec;)V

    invoke-virtual {v1, v6, v4, v3, v2}, Lcom/smartisanos/launcher/view/b/fa;->a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object v1

    .line 204
    iget-object v2, v0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v5, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 205
    :cond_7
    :goto_4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Eb;->ya(I)V

    .line 206
    iget-object v1, v0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/view/_b;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3}, Lcom/smartisanos/launcher/view/_b;-><init>(Lcom/smartisanos/launcher/view/ec;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 207
    iget-object v0, v0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    return-object v0
.end method

.method public a(FFFF)V
    .locals 4

    .line 132
    iget-boolean p4, p0, Lcom/smartisanos/launcher/view/ec;->GN:Z

    if-nez p4, :cond_0

    return-void

    .line 133
    :cond_0
    iget p4, p0, Lcom/smartisanos/launcher/view/ec;->HN:F

    add-float/2addr p4, p1

    iput p4, p0, Lcom/smartisanos/launcher/view/ec;->HN:F

    .line 134
    iget p4, p0, Lcom/smartisanos/launcher/view/ec;->JN:F

    sub-float/2addr p4, p2

    iput p4, p0, Lcom/smartisanos/launcher/view/ec;->JN:F

    .line 135
    new-instance p4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 136
    invoke-virtual {p0, p4}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 137
    invoke-virtual {p4}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v0

    sub-float v1, v0, p2

    .line 138
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 139
    div-int/lit8 v2, v2, 0x2

    int-to-float p2, v2

    sub-float p2, v0, p2

    goto :goto_0

    :cond_1
    neg-int v3, v2

    .line 140
    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 141
    div-int/lit8 v2, v2, 0x2

    int-to-float p2, v2

    add-float/2addr p2, v0

    .line 142
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 144
    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->x:F

    div-float/2addr p1, v3

    add-float/2addr v2, p1

    iget p1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    iget p2, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p0, v2, p1, p2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 145
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 146
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/ec;->dz()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const p1, 0x3dcccccd    # 0.1f

    .line 147
    invoke-direct {p0, p2, p1}, Lcom/smartisanos/launcher/view/ec;->d(Lcom/smartisanos/smengine/g;F)V

    .line 148
    :cond_3
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 149
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 150
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 151
    iget p1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 152
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/smartisanos/launcher/view/b/fa;->a(FFZ)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    .line 153
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz p1, :cond_4

    .line 154
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/ec;->bz()V

    goto :goto_1

    .line 155
    :cond_4
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/ec;->cz()V

    .line 156
    :goto_1
    invoke-direct {p0, p3}, Lcom/smartisanos/launcher/view/ec;->u(F)I

    move-result p1

    .line 157
    iget-object p3, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p3, p1}, Lcom/smartisanos/launcher/view/b/fa;->Sb(I)V

    .line 158
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object p1

    .line 161
    iget p3, p4, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->EN:Lcom/smartisanos/smengine/a/j;

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    cmpg-float p3, p3, v0

    const/4 v0, 0x0

    if-gez p3, :cond_6

    .line 162
    sget-object p3, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne p3, v1, :cond_5

    .line 163
    iget p3, p4, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->EN:Lcom/smartisanos/smengine/a/j;

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_6

    goto :goto_2

    .line 164
    :cond_5
    iget p3, p4, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->EN:Lcom/smartisanos/smengine/a/j;

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    cmpl-float p3, p3, v1

    if-lez p3, :cond_6

    goto :goto_2

    :cond_6
    move v2, v0

    :goto_2
    if-eqz v2, :cond_9

    .line 165
    invoke-virtual {p1, p4}, Lcom/smartisanos/launcher/view/Sc;->i(Lcom/smartisanos/smengine/a/j;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 166
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p3

    invoke-virtual {p3}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/smartisanos/launcher/view/b/fa;->Sb(I)V

    .line 167
    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/Sc;->f(Lcom/smartisanos/smengine/l;)I

    .line 168
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Sc;->kq()Lcom/smartisanos/launcher/view/ec;

    move-result-object p2

    if-nez p2, :cond_7

    .line 169
    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/Sc;->l(Lcom/smartisanos/launcher/view/ec;)V

    goto :goto_3

    .line 170
    :cond_7
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Sc;->kq()Lcom/smartisanos/launcher/view/ec;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 171
    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/Sc;->l(Lcom/smartisanos/launcher/view/ec;)V

    goto :goto_3

    .line 172
    :cond_8
    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/Sc;->g(Lcom/smartisanos/smengine/l;)I

    .line 173
    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/Sc;->l(Lcom/smartisanos/launcher/view/ec;)V

    goto :goto_3

    .line 174
    :cond_9
    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/Sc;->g(Lcom/smartisanos/smengine/l;)I

    .line 175
    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/Sc;->l(Lcom/smartisanos/launcher/view/ec;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/dc;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ec;->KN:Lcom/smartisanos/launcher/view/dc;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V
    .locals 2

    const-string p2, "settingButtonStatus"

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/launcher/view/a/g;

    .line 13
    sget v0, Lcom/smartisanos/launcher/view/a/g;->qI:I

    invoke-virtual {p2, v0}, Lcom/smartisanos/launcher/view/a/g;->Za(I)V

    const/16 v0, 0x80

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p2, v0, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    const/16 v0, 0x40

    .line 15
    invoke-virtual {p2, v0, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 16
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->setDisplayUpdate()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/ec;->Kp()V

    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;Lcom/smartisanos/smengine/g;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 208
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    const/4 v1, 0x1

    .line 210
    invoke-direct {p0, p1, v0, v1}, Lcom/smartisanos/launcher/view/ec;->a(Ljava/util/List;Lcom/smartisanos/smengine/g;Z)V

    .line 211
    new-instance p1, Lcom/smartisanos/launcher/view/ac;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/view/ac;-><init>(Lcom/smartisanos/launcher/view/ec;)V

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    const/4 p0, 0x0

    .line 212
    invoke-virtual {p2, p0, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void

    .line 213
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "### multiSelectUninstall cancel, but para cells is null, or size = 0"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    return-void
.end method

.method public c(Lcom/smartisanos/launcher/view/a/g;FF)Z
    .locals 2

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/ec;->GN:Z

    .line 4
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/ec;->zN:Lcom/smartisanos/smengine/a/j;

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->zN:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 6
    sget v1, Lcom/smartisanos/launcher/view/a/g;->qI:I

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/view/a/g;->eb(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ec;->oN:Lcom/smartisanos/launcher/view/a/g;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/smartisanos/launcher/view/ec;->oN:Lcom/smartisanos/launcher/view/a/g;

    :goto_0
    const/16 v1, 0x16

    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 10
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    iput-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->zn()I

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/view/ec;->PH:I

    .line 13
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/view/ec;->B(FF)V

    return v0
.end method

.method public clear(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/ec;->Kp()V

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->nN:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->nN:Ljava/util/ArrayList;

    .line 8
    :cond_1
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->mNotificationManager:Lcom/smartisanos/smengine/C;

    .line 9
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->oN:Lcom/smartisanos/launcher/view/a/g;

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->pN:Lcom/smartisanos/launcher/animations/ya;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/ya;->clear()V

    .line 12
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->pN:Lcom/smartisanos/launcher/animations/ya;

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->qN:Lcom/smartisanos/launcher/animations/Ha;

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/Ha;->clear()V

    .line 15
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->qN:Lcom/smartisanos/launcher/animations/Ha;

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->rN:Lcom/smartisanos/launcher/animations/va;

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/va;->clear()V

    .line 18
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->rN:Lcom/smartisanos/launcher/animations/va;

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->sN:Lcom/smartisanos/launcher/animations/Ea;

    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/Ea;->clear()V

    .line 21
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->sN:Lcom/smartisanos/launcher/animations/Ea;

    .line 22
    :cond_5
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Xo:Lcom/smartisanos/launcher/view/b/M;

    .line 23
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->tN:Lcom/smartisanos/launcher/view/b/M;

    .line 24
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->uN:Lcom/smartisanos/smengine/F;

    .line 25
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Mn:Lcom/smartisanos/smengine/g;

    .line 26
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Wo:Lcom/smartisanos/launcher/view/b/M;

    .line 27
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->zN:Lcom/smartisanos/smengine/a/j;

    .line 28
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->AN:Lcom/smartisanos/smengine/a/j;

    .line 29
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->DN:Lcom/smartisanos/smengine/g;

    .line 30
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->EN:Lcom/smartisanos/smengine/a/j;

    .line 31
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ec;->KN:Lcom/smartisanos/launcher/view/dc;

    .line 32
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    return-void
.end method

.method public delete()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3}, Lcom/smartisanos/launcher/view/Ha;->d(Lcom/smartisanos/launcher/view/a/g;FF)Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/view/ec;->a(Lcom/smartisanos/smengine/Fa;I)V

    .line 4
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/ec;->GN:Z

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/launcher/view/Ha;->m(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public fm()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/ec;->PH:I

    return p0
.end method

.method public g(Lcom/smartisanos/smengine/va;)V
    .locals 2

    .line 7
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/ec;->GN:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/ec;->GN:Z

    .line 9
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Lcom/smartisanos/smengine/Fa;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Fa;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Fa;->setX(F)V

    .line 12
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/Fa;->setY(F)V

    .line 13
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchListener:Lcom/smartisanos/smengine/ha;

    invoke-interface {p0, v0}, Lcom/smartisanos/smengine/ha;->b(Lcom/smartisanos/smengine/Fa;)V

    :cond_1
    return-void
.end method

.method public g(Ljava/util/ArrayList;)V
    .locals 7

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Kq()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Iq()V

    .line 16
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->ji()V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ec;->nN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 18
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 20
    invoke-virtual {v2, p0}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 21
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 22
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 23
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    const/16 v3, 0x8

    const/4 v4, 0x1

    .line 24
    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    const/16 v3, 0x10

    .line 25
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 26
    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    if-nez v1, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, -0x7

    :goto_2
    const/4 v5, 0x5

    .line 27
    invoke-virtual {v2, v5, v3}, Lcom/smartisanos/launcher/view/a/g;->t(II)V

    .line 28
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 29
    iget-object v5, p0, Lcom/smartisanos/launcher/view/ec;->nN:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 30
    iget-object v5, p0, Lcom/smartisanos/launcher/view/ec;->nN:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_3
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_6

    if-nez v1, :cond_5

    .line 32
    iget-object v3, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_6

    .line 33
    iget-object v3, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v3

    if-nez v3, :cond_4

    .line 34
    iget-object v3, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->vl()V

    .line 35
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v3

    invoke-virtual {v3, v4, v0, v1}, Lcom/smartisanos/launcher/view/a/ga;->a(ZII)V

    .line 36
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/a/Z;->ha(Z)V

    .line 37
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/ec;->Mn:Lcom/smartisanos/smengine/g;

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3e4ccccd    # 0.2f

    invoke-virtual {v2, v3, v5, v6, v4}, Lcom/smartisanos/launcher/view/a/Z;->a(Lcom/smartisanos/smengine/g;FFZ)V

    .line 38
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/ec;->BN:Z

    goto :goto_3

    .line 39
    :cond_4
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v3

    invoke-virtual {v3, v4, v0, v1}, Lcom/smartisanos/launcher/view/a/ga;->a(ZII)V

    .line 40
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/a/Z;->ha(Z)V

    goto :goto_3

    .line 41
    :cond_5
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v3

    invoke-virtual {v3, v4, v0, v1}, Lcom/smartisanos/launcher/view/a/ga;->a(ZII)V

    .line 42
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/a/Z;->ha(Z)V

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isUserInteractionEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Ks()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Ls()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz p0, :cond_6

    .line 5
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ha;->d(Lcom/smartisanos/smengine/Fa;)V

    return v2

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz p0, :cond_6

    .line 7
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ha;->b(Lcom/smartisanos/smengine/Fa;)V

    return v2

    .line 8
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mSingleTapListener:Lcom/smartisanos/smengine/fa;

    if-eqz p0, :cond_6

    .line 9
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/fa;->g(Lcom/smartisanos/smengine/Fa;)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/launcher/view/ec;->B(FF)V

    goto :goto_0

    .line 11
    :cond_5
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz p0, :cond_6

    .line 12
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ha;->d(Lcom/smartisanos/smengine/Fa;)V

    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method public pb(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/ec;->PH:I

    return-void
.end method
