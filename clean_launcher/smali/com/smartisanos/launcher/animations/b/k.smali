.class public Lcom/smartisanos/launcher/animations/b/k;
.super Ljava/lang/Object;
.source "SwipeAnimController.java"


# instance fields
.field private Bp:Lcom/smartisanos/smengine/n;

.field private Cp:Z

.field private Dp:Z

.field private Ep:Z

.field private Fp:F

.field private Gp:F

.field private Hp:Z

.field private Ip:Z

.field private Jp:Z

.field private Kp:Lcom/smartisanos/launcher/animations/b/a;

.field private Lp:Lcom/smartisanos/launcher/view/a/g;

.field private Mp:F

.field private Np:Lcom/smartisanos/smengine/a/k;

.field private Op:Lcom/smartisanos/smengine/a/k;

.field private Pp:I

.field private Qp:I

.field private Rp:Lcom/smartisanos/smengine/g;

.field private final Sp:I

.field private final Tp:I

.field private final Up:I

.field private Vp:Lcom/smartisanos/smengine/a/j;

.field private Wp:Lcom/smartisanos/smengine/a/j;

.field private Xp:Lcom/smartisanos/smengine/a/j;

.field private Yp:Z

.field private Zp:Lcom/smartisanos/smengine/a/j;

.field private volatile _p:Z

.field private log:Lcom/smartisanos/launcher/va;

.field private mLastY:F


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-class v0, Lcom/smartisanos/launcher/animations/b/k;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Bp:Lcom/smartisanos/smengine/n;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/smartisanos/launcher/animations/b/k;->Cp:Z

    .line 6
    iput-boolean v1, p0, Lcom/smartisanos/launcher/animations/b/k;->Dp:Z

    .line 7
    iput-boolean v1, p0, Lcom/smartisanos/launcher/animations/b/k;->Ep:Z

    const/4 v2, 0x0

    .line 8
    iput v2, p0, Lcom/smartisanos/launcher/animations/b/k;->Fp:F

    .line 9
    iput v2, p0, Lcom/smartisanos/launcher/animations/b/k;->mLastY:F

    .line 10
    iput v2, p0, Lcom/smartisanos/launcher/animations/b/k;->Gp:F

    .line 11
    iput-boolean v1, p0, Lcom/smartisanos/launcher/animations/b/k;->Jp:Z

    .line 12
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Kp:Lcom/smartisanos/launcher/animations/b/a;

    .line 13
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Lp:Lcom/smartisanos/launcher/view/a/g;

    .line 14
    iput v2, p0, Lcom/smartisanos/launcher/animations/b/k;->Mp:F

    .line 15
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Np:Lcom/smartisanos/smengine/a/k;

    .line 16
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Op:Lcom/smartisanos/smengine/a/k;

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Pp:I

    .line 18
    iput v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Qp:I

    .line 19
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Rp:Lcom/smartisanos/smengine/g;

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Sp:I

    const/4 v0, 0x2

    .line 21
    iput v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Tp:I

    const/4 v0, 0x3

    .line 22
    iput v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Up:I

    .line 23
    iput-boolean v1, p0, Lcom/smartisanos/launcher/animations/b/k;->Yp:Z

    .line 24
    iput-boolean v1, p0, Lcom/smartisanos/launcher/animations/b/k;->_p:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/launcher/animations/b/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/b/k;-><init>()V

    return-void
.end method

.method private E(Lcom/smartisanos/launcher/view/a/g;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "SWIPE_ANIM"

    const-string v1, "show cell false, cell is null"

    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, v0, v0}, Lcom/smartisanos/launcher/animations/b/k;->a(Lcom/smartisanos/launcher/view/a/g;ZZ)V

    return v0
.end method

.method private Lw()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    const-string v1, "SWIPE_ANIM"

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "mainView is null, show cell fail"

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 6
    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/animations/b/k;->E(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show cell if needed, by foreach dock cell = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-nez v0, :cond_3

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "no page, show cell fail"

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v2

    .line 11
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/b/fa;->Yb(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 13
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 15
    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/animations/b/k;->E(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 16
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show cell if needed, by foreach page cell = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private Mw()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Cp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Dp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Ep:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/b/k;->_p:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Ep:Z

    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Dp:Z

    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Cp:Z

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Jp:Z

    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Ip:Z

    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Hp:Z

    .line 5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/b/k;->Bp:Lcom/smartisanos/smengine/n;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/b/k;->Bp:Lcom/smartisanos/smengine/n;

    .line 7
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/animations/b/k;->jc(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/b/k;Lcom/smartisanos/launcher/animations/b/a;)Lcom/smartisanos/launcher/animations/b/a;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/b/k;->Kp:Lcom/smartisanos/launcher/animations/b/a;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/b/k;Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/b/k;->Lp:Lcom/smartisanos/launcher/view/a/g;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcom/smartisanos/launcher/view/b/fa;)Lcom/smartisanos/launcher/view/a/g;
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p4, v1}, Lcom/smartisanos/launcher/view/b/fa;->Ib(Z)I

    move-result v1

    .line 69
    invoke-virtual {p4, v1}, Lcom/smartisanos/launcher/view/b/fa;->Yb(I)Ljava/util/ArrayList;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 70
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 71
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/smartisanos/launcher/animations/b/k;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "return cell  = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SWIPE_ANIM"

    invoke-virtual {p0, p2, p1}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Lcom/smartisanos/launcher/view/a/g;
    .locals 5

    const/4 p0, 0x0

    if-eqz p1, :cond_9

    .line 117
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 118
    :cond_0
    invoke-static {p2}, Lcom/smartisanos/launcher/Aa;->A(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 119
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 120
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 122
    invoke-virtual {v4, p4}, Lcom/smartisanos/launcher/data/ItemInfo;->ga(I)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-ne v1, v3, :cond_4

    move v2, v3

    .line 123
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    if-nez v0, :cond_6

    goto :goto_1

    .line 124
    :cond_6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    .line 125
    :cond_7
    iget-object v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, p4}, Lcom/smartisanos/launcher/data/ItemInfo;->ga(I)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_8

    .line 126
    iget-object v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_8
    return-object v0

    :cond_9
    :goto_2
    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/b/k;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/b/k;->Bp:Lcom/smartisanos/smengine/n;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/b/k;Lcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/launcher/animations/b/k;->b(Lcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/b/k;Lcom/smartisanos/launcher/view/a/g;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/animations/b/k;->b(Lcom/smartisanos/launcher/view/a/g;Z)V

    return-void
.end method

.method private a(Lcom/smartisanos/launcher/view/a/g;ZZ)V
    .locals 9

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1, p2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "why cell IconNode is null? isClear "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x5

    .line 95
    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    const/4 v1, 0x1

    if-eqz v4, :cond_2

    if-eqz p2, :cond_1

    .line 96
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 97
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/b/k;->Rp:Lcom/smartisanos/smengine/g;

    iget-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Op:Lcom/smartisanos/smengine/a/k;

    const v6, 0x3e19999a    # 0.15f

    move-object v2, p0

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/smartisanos/launcher/animations/b/k;->a(Lcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/a/k;FZ)V

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_2
    :goto_1
    const/16 v2, 0x1b

    .line 99
    invoke-virtual {p1, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 100
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->SHOW_ICON_SHADOW_LIST:Z

    if-eqz v2, :cond_5

    if-eqz p2, :cond_3

    .line 101
    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 102
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/Ra;->lt()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float v7, p2, v0

    .line 103
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/b/k;->Rp:Lcom/smartisanos/smengine/g;

    iget-object v6, p0, Lcom/smartisanos/launcher/animations/b/k;->Np:Lcom/smartisanos/smengine/a/k;

    move-object v3, p0

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/smartisanos/launcher/animations/b/k;->a(Lcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/a/k;FZ)V

    goto :goto_2

    .line 104
    :cond_3
    new-instance p2, Lcom/smartisanos/smengine/a/k;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/k;-><init>()V

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/b/k;->Np:Lcom/smartisanos/smengine/a/k;

    .line 105
    iget-object p2, p0, Lcom/smartisanos/launcher/animations/b/k;->Np:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v5, p2}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 106
    sget-boolean p2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOriShadowColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/b/k;->Np:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SWIPE_ANIM"

    invoke-virtual {p2, v2, v1}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_4
    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 108
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/smartisanos/launcher/animations/b/k;->Rp:Lcom/smartisanos/smengine/g;

    if-eqz p2, :cond_6

    .line 109
    invoke-virtual {p2}, Lcom/smartisanos/smengine/g;->start()V

    if-eqz p3, :cond_6

    .line 110
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->Rp:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 111
    :cond_6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method private a(Lcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/a/k;FZ)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance p0, Lcom/smartisanos/smengine/oa;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 113
    invoke-virtual {p0, p4}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 p2, 0xe

    .line 114
    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 115
    iget v6, p3, Lcom/smartisanos/smengine/a/k;->x:F

    iget v7, p3, Lcom/smartisanos/smengine/a/k;->y:F

    iget v8, p3, Lcom/smartisanos/smengine/a/k;->z:F

    iget v9, p3, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    const/4 p2, 0x0

    .line 116
    invoke-virtual {p1, p2, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/b/k;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/smartisanos/launcher/animations/b/k;->_p:Z

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/b/k;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/b/k;->Dp:Z

    return p1
.end method

.method static synthetic b(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->Lp:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method private b(Lcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;)V
    .locals 3

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4
    iget-boolean v2, p0, Lcom/smartisanos/launcher/animations/b/k;->Cp:Z

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/smartisanos/launcher/animations/db;->doAnimationFrame(J)Z

    .line 6
    :cond_0
    iget-boolean v2, p0, Lcom/smartisanos/launcher/animations/b/k;->Dp:Z

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {p2, v0, v1}, Lcom/smartisanos/launcher/animations/db;->doAnimationFrame(J)Z

    .line 8
    :cond_1
    iget-boolean v2, p0, Lcom/smartisanos/launcher/animations/b/k;->Ep:Z

    if-nez v2, :cond_2

    .line 9
    invoke-virtual {p3, v0, v1}, Lcom/smartisanos/launcher/animations/db;->doAnimationFrame(J)Z

    .line 10
    :cond_2
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/b/k;->_p:Z

    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/animations/b/k;->a(Lcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;)V

    :cond_3
    return-void
.end method

.method private b(Lcom/smartisanos/launcher/view/a/g;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/launcher/animations/b/k;->a(Lcom/smartisanos/launcher/view/a/g;ZZ)V

    return-void
.end method

.method static synthetic b(Lcom/smartisanos/launcher/animations/b/k;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/b/k;->Ep:Z

    return p1
.end method

.method static synthetic c(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/launcher/va;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    return-object p0
.end method

.method static synthetic c(Lcom/smartisanos/launcher/animations/b/k;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/b/k;->Yp:Z

    return p1
.end method

.method static synthetic d(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/launcher/animations/b/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->Kp:Lcom/smartisanos/launcher/animations/b/a;

    return-object p0
.end method

.method static synthetic d(Lcom/smartisanos/launcher/animations/b/k;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/b/k;->_p:Z

    return p1
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;I)Lcom/smartisanos/launcher/view/a/g;
    .locals 7

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SWIPE_ANIM"

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "return by pkg is empty"

    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "return by no MainView"

    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    if-nez v3, :cond_2

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "return by noDock"

    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 9
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "return by has floatPage"

    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 11
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v5

    const/high16 v6, 0x1000000

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 13
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/smartisanos/launcher/animations/b/k;->a(Ljava/lang/String;Ljava/lang/String;ILcom/smartisanos/launcher/view/b/fa;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    return-object p0

    .line 14
    :cond_4
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/smartisanos/launcher/animations/b/k;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    if-eqz v3, :cond_5

    return-object v3

    .line 15
    :cond_5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-nez v0, :cond_6

    .line 16
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "return by no page"

    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 17
    :cond_6
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/smartisanos/launcher/animations/b/k;->a(Ljava/lang/String;Ljava/lang/String;ILcom/smartisanos/launcher/view/b/fa;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->Bp:Lcom/smartisanos/smengine/n;

    return-object p0
.end method

.method static synthetic e(Lcom/smartisanos/launcher/animations/b/k;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/b/k;->jc(Z)V

    return-void
.end method

.method static synthetic f(Lcom/smartisanos/launcher/animations/b/k;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/b/k;->Mw()V

    return-void
.end method

.method static synthetic f(Lcom/smartisanos/launcher/animations/b/k;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/b/k;->Cp:Z

    return p1
.end method

.method public static getInstance()Lcom/smartisanos/launcher/animations/b/k;
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/animations/b/j;->access$000()Lcom/smartisanos/launcher/animations/b/k;

    move-result-object v0

    return-object v0
.end method

.method private jc(Z)V
    .locals 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/b/k;->_p:Z

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/b/k;->Kp:Lcom/smartisanos/launcher/animations/b/a;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {v1, v4, v0}, Lcom/smartisanos/launcher/animations/b/a;->b(FZ)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/b/k;->Kp:Lcom/smartisanos/launcher/animations/b/a;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/animations/b/a;->setVisibility(Z)V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/b/k;->Kp:Lcom/smartisanos/launcher/animations/b/a;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/b/a;->Zk()Lcom/smartisanos/smengine/F;

    move-result-object v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    shr-int/2addr v2, v0

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    shr-int/2addr v4, v0

    add-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 7
    iput-object v3, p0, Lcom/smartisanos/launcher/animations/b/k;->Zp:Lcom/smartisanos/smengine/a/j;

    .line 8
    :cond_0
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v2, "SWIPE_ANIM"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNeedShowCell = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Lp:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/b/k;->Lp:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v1, :cond_3

    .line 10
    invoke-direct {p0, v1, v0, p1}, Lcom/smartisanos/launcher/animations/b/k;->a(Lcom/smartisanos/launcher/view/a/g;ZZ)V

    .line 11
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set mNeedShowCell null mNeedShowCell = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/b/k;->Lp:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_2
    iput-object v3, p0, Lcom/smartisanos/launcher/animations/b/k;->Lp:Lcom/smartisanos/launcher/view/a/g;

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNeedShowCell = null mDoAnimCell = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/b/k;->Kp:Lcom/smartisanos/launcher/animations/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-nez p1, :cond_5

    .line 16
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/b/k;->Lw()V

    .line 17
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    if-nez p1, :cond_4

    .line 18
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "mainView is null, unlock fail"

    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    return-void

    .line 21
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "needShowCell should not be null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 12

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_ICON_SHADOW_LIST:Z

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/smartisanos/launcher/animations/b/b;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/animations/b/b;-><init>(Lcom/smartisanos/launcher/animations/b/k;)V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/launcher/animations/b/k;->e(Ljava/lang/String;Ljava/lang/String;I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "SWIPE_ANIM"

    if-nez p1, :cond_1

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "getAppInfoForToHomeAnim return by cell is null"

    invoke-virtual {p0, p3, p1}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result v3

    .line 15
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 16
    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->pageSizeScale:[Lcom/smartisanos/smengine/a/i;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Dl()I

    move-result v6

    aget-object v5, v5, v6

    iget v5, v5, Lcom/smartisanos/smengine/a/i;->x:F

    .line 17
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->getSinglePageMode()I

    move-result v6

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    mul-float/2addr v6, v5

    .line 18
    iput v6, v4, Lcom/smartisanos/smengine/a/j;->x:F

    .line 19
    iput v6, v4, Lcom/smartisanos/smengine/a/j;->y:F

    .line 20
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Vp:Lcom/smartisanos/smengine/a/j;

    if-nez v5, :cond_2

    .line 21
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v5}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Vp:Lcom/smartisanos/smengine/a/j;

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->Gt()Lcom/smartisanos/smengine/a/j;

    .line 23
    :goto_0
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Vp:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 24
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Wp:Lcom/smartisanos/smengine/a/j;

    if-nez v5, :cond_3

    .line 25
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v5}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Wp:Lcom/smartisanos/smengine/a/j;

    goto :goto_1

    .line 26
    :cond_3
    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->Gt()Lcom/smartisanos/smengine/a/j;

    .line 27
    :goto_1
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Wp:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 28
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Xp:Lcom/smartisanos/smengine/a/j;

    if-nez v5, :cond_4

    .line 29
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v5}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Xp:Lcom/smartisanos/smengine/a/j;

    goto :goto_2

    .line 30
    :cond_4
    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->Gt()Lcom/smartisanos/smengine/a/j;

    :goto_2
    if-nez v3, :cond_5

    .line 31
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Xp:Lcom/smartisanos/smengine/a/j;

    iget-object v6, p0, Lcom/smartisanos/launcher/animations/b/k;->Vp:Lcom/smartisanos/smengine/a/j;

    iget v7, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v8, p0, Lcom/smartisanos/launcher/animations/b/k;->Wp:Lcom/smartisanos/smengine/a/j;

    iget v9, v8, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v7, v9

    iput v7, v5, Lcom/smartisanos/smengine/a/j;->x:F

    .line 32
    iget v6, v6, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v8, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v6, v7

    iput v6, v5, Lcom/smartisanos/smengine/a/j;->y:F

    goto :goto_3

    .line 33
    :cond_5
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Xp:Lcom/smartisanos/smengine/a/j;

    iget-object v6, p0, Lcom/smartisanos/launcher/animations/b/k;->Vp:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 34
    :goto_3
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    if-nez v3, :cond_6

    .line 35
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Xp:Lcom/smartisanos/smengine/a/j;

    iget v7, v5, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, p0, Lcom/smartisanos/launcher/animations/b/k;->Qp:I

    shr-int/2addr v8, v6

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v5, Lcom/smartisanos/smengine/a/j;->y:F

    .line 36
    :cond_6
    sget-boolean v5, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " getWorldTranslate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/smartisanos/launcher/animations/b/k;->Xp:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", cell loc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/smartisanos/launcher/animations/b/k;->Wp:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, p3, v7}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_7
    iget v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Pp:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_8

    .line 38
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->getSinglePageMode()I

    move-result v5

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y:I

    iput v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Pp:I

    .line 39
    :cond_8
    iget v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Qp:I

    if-ne v5, v7, :cond_9

    .line 40
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->getMultiPageMode()I

    move-result v5

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y:I

    iput v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Qp:I

    .line 41
    :cond_9
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Wp:Lcom/smartisanos/smengine/a/j;

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v7, p0, Lcom/smartisanos/launcher/animations/b/k;->Xp:Lcom/smartisanos/smengine/a/j;

    iget v7, v7, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Lcom/smartisanos/launcher/animations/b/k;->Pp:I

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    const-string v7, " cell parent = "

    const-string v8, " cell Loc = "

    if-lez v5, :cond_f

    .line 42
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " getLocY is error mIconLocTmp = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/smartisanos/launcher/animations/b/k;->Vp:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/smartisanos/launcher/animations/b/k;->Wp:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, p3, v9}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " getLocY is error icon node parent = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, p3, v9}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    const/high16 v9, 0x3f400000    # 0.75f

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v5, :cond_c

    .line 45
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v5

    if-eqz v5, :cond_b

    if-eqz v3, :cond_a

    .line 46
    iget v3, p0, Lcom/smartisanos/launcher/animations/b/k;->Pp:I

    goto :goto_4

    :cond_a
    iget v3, p0, Lcom/smartisanos/launcher/animations/b/k;->Pp:I

    goto :goto_5

    .line 47
    :cond_b
    iget v3, p0, Lcom/smartisanos/launcher/animations/b/k;->Pp:I

    goto :goto_7

    .line 48
    :cond_c
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v5

    if-eqz v5, :cond_e

    if-eqz v3, :cond_d

    .line 49
    iget v3, p0, Lcom/smartisanos/launcher/animations/b/k;->Pp:I

    :goto_4
    int-to-float v3, v3

    mul-float/2addr v3, v9

    sub-float/2addr v3, v11

    goto :goto_6

    :cond_d
    iget v3, p0, Lcom/smartisanos/launcher/animations/b/k;->Pp:I

    :goto_5
    int-to-float v3, v3

    mul-float/2addr v3, v10

    add-float/2addr v3, v11

    :goto_6
    float-to-int v3, v3

    neg-int v3, v3

    goto :goto_7

    :cond_e
    move v3, v0

    .line 50
    :goto_7
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Xp:Lcom/smartisanos/smengine/a/j;

    iget-object v9, p0, Lcom/smartisanos/launcher/animations/b/k;->Wp:Lcom/smartisanos/smengine/a/j;

    iget v9, v9, Lcom/smartisanos/smengine/a/j;->y:F

    int-to-float v3, v3

    add-float/2addr v9, v3

    iput v9, v5, Lcom/smartisanos/smengine/a/j;->y:F

    .line 51
    :cond_f
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/b/k;->Wp:Lcom/smartisanos/smengine/a/j;

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Xp:Lcom/smartisanos/smengine/a/j;

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_10

    .line 52
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " getLocX is error mIconLocTmp = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/smartisanos/launcher/animations/b/k;->Vp:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/smartisanos/launcher/animations/b/k;->Wp:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, p3, v8}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " getLocX is error icon node parent = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p3, v1}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/b/k;->Xp:Lcom/smartisanos/smengine/a/j;

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/b/k;->Wp:Lcom/smartisanos/smengine/a/j;

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iput v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 55
    :cond_10
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/b/k;->Xp:Lcom/smartisanos/smengine/a/j;

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v1, Lcom/smartisanos/smengine/a/j;->y:F

    sget v8, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v8, v8

    sget v9, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v9, v9

    invoke-static {v3, v7, v8, v9, v1}, Lcom/smartisanos/smengine/d/a;->c(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 57
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v1

    if-nez v1, :cond_11

    .line 58
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "return by not have icon data"

    invoke-virtual {p0, p3, p1}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 59
    :cond_11
    sget-boolean p2, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v2, "]"

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get icon spend time ["

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_12
    sget-boolean p2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppInfoForToHomeAnim cell loc ["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/smartisanos/launcher/animations/b/k;->Xp:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "], size ["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_13
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "icon"

    .line 62
    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 p3, 0x2

    new-array v1, p3, [F

    .line 63
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/b/k;->Xp:Lcom/smartisanos/smengine/a/j;

    iget v3, v2, Lcom/smartisanos/smengine/a/j;->x:F

    aput v3, v1, v0

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    aput v2, v1, v6

    const-string v2, "loc"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    new-array p3, p3, [F

    .line 64
    iget v1, v4, Lcom/smartisanos/smengine/a/j;->x:F

    aput v1, p3, v0

    aput v1, p3, v6

    const-string v0, "size"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 65
    new-instance p3, Lcom/smartisanos/launcher/animations/b/d;

    const/16 v0, 0x64

    invoke-direct {p3, p0, v0, p1, v4}, Lcom/smartisanos/launcher/animations/b/d;-><init>(Lcom/smartisanos/launcher/animations/b/k;ILcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/a/j;)V

    .line 66
    invoke-virtual {p3, v5}, Lcom/smartisanos/smengine/n;->q(F)V

    return-object p2
.end method

.method public a(Lcom/smartisanos/launcher/animations/b/a;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Zp:Lcom/smartisanos/smengine/a/j;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Zp:Lcom/smartisanos/smengine/a/j;

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/animations/b/a;->setVisibility(Z)V

    .line 80
    :cond_1
    iget v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Fp:F

    iget v2, p0, Lcom/smartisanos/launcher/animations/b/k;->mLastY:F

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/b/k;->Zp:Lcom/smartisanos/smengine/a/j;

    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/d/a;->a(FFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 81
    iget v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Gp:F

    iget v2, p0, Lcom/smartisanos/launcher/animations/b/k;->Mp:F

    cmpl-float v3, v0, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sub-float v0, v2, v0

    sub-float/2addr v2, v4

    div-float/2addr v0, v2

    .line 82
    :goto_0
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nowAlpha = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " mHalfScale = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Mp:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " mLastScale = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Gp:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " mSaveIconLoc = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/smartisanos/launcher/animations/b/k;->Zp:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SWIPE_ANIM"

    invoke-virtual {v2, v5, v3}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    cmpg-float v2, v0, v1

    if-gez v2, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    cmpl-float v1, v0, v4

    if-lez v1, :cond_5

    move v0, v4

    :cond_5
    :goto_1
    mul-float v1, v0, v4

    .line 83
    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/smartisanos/launcher/animations/b/a;->setColor(FFFF)V

    .line 84
    iget v1, p0, Lcom/smartisanos/launcher/animations/b/k;->Gp:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    .line 85
    iput v4, p0, Lcom/smartisanos/launcher/animations/b/k;->Gp:F

    .line 86
    :cond_6
    iget v1, p0, Lcom/smartisanos/launcher/animations/b/k;->Gp:F

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/smartisanos/launcher/animations/b/a;->b(FZ)V

    .line 87
    invoke-virtual {p1}, Lcom/smartisanos/launcher/animations/b/a;->Zk()Lcom/smartisanos/smengine/F;

    move-result-object p1

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/b/k;->Zp:Lcom/smartisanos/smengine/a/j;

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p1, v3, v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    const p1, 0x3f7ae148    # 0.98f

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_7

    .line 88
    iget-boolean p1, p0, Lcom/smartisanos/launcher/animations/b/k;->Yp:Z

    if-eqz p1, :cond_7

    .line 89
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 90
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 91
    iput-boolean v2, p0, Lcom/smartisanos/launcher/animations/b/k;->Yp:Z

    :cond_7
    return-void
.end method

.method public a(Lcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;)V
    .locals 9

    .line 74
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "SWIPE_ANIM"

    const-string v2, "sendUpdateEvent send"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/smartisanos/launcher/animations/b/i;

    const/16 v5, 0x64

    move-object v3, v0

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/smartisanos/launcher/animations/b/i;-><init>(Lcom/smartisanos/launcher/animations/b/k;ILcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;)V

    const/4 p0, 0x0

    .line 76
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v1, Lcom/smartisanos/launcher/animations/b/k;->Cp:Z

    .line 4
    iput-boolean v2, v1, Lcom/smartisanos/launcher/animations/b/k;->Dp:Z

    .line 5
    iput-boolean v2, v1, Lcom/smartisanos/launcher/animations/b/k;->Ep:Z

    const-string v2, "anim_start_time"

    .line 6
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "trans_x_from"

    .line 7
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    const-string v5, "trans_x_to"

    .line 8
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    const-string v6, "trans_x_start_velocity"

    .line 9
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    const-string v7, "trans_x_stiffness"

    .line 10
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    const-string v8, "trans_x_damping"

    .line 11
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    const-string v9, "trans_x_min_vis_change"

    .line 12
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 13
    sget-boolean v10, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v11, " MinVisChange = "

    const-string v12, " Damping = "

    const-string v13, " Stiffness = "

    const-string v14, "\n StartVelocity = "

    const-string v15, " nowTime = "

    const-string v0, "StartTime = "

    move/from16 v16, v9

    const-string v9, "SWIPE_ANIM"

    if-eqz v10, :cond_1

    iget-object v10, v1, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v17, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " transXFrom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " transXTo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v9, v1}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-wide/from16 v17, v2

    move/from16 v2, v16

    :goto_0
    const-string v1, "trans_y_from"

    move-object v3, v0

    move-object/from16 v0, p1

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    const-string v1, "trans_y_to"

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    move/from16 v16, v2

    const-string v2, "trans_y_start_velocity"

    .line 16
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    move/from16 v19, v8

    const-string v8, "trans_y_stiffness"

    .line 17
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    move/from16 v20, v7

    const-string v7, "trans_y_damping"

    .line 18
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    move/from16 v21, v6

    const-string v6, "trans_y_min_vis_change"

    .line 19
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    .line 20
    sget-boolean v22, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v22, :cond_2

    move/from16 v23, v4

    move/from16 v22, v5

    move-object/from16 v5, p0

    iget-object v4, v5, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-wide/from16 v3, v17

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " transYFrom = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " transYTo = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v25

    invoke-virtual {v4, v9, v3}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object/from16 v24, v3

    move/from16 v23, v4

    move/from16 v22, v5

    :goto_1
    const-string v3, "scale_from"

    .line 21
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    const-string v3, "scale_start_velocity"

    .line 22
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    const-string v4, "scale_stiffness"

    .line 23
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    move/from16 v25, v6

    const-string v6, "scale_damping"

    .line 24
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    move/from16 v26, v7

    const-string v7, "scale_min_vis_change"

    .line 25
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    move/from16 v27, v8

    const/high16 v8, 0x3f800000    # 1.0f

    add-float v28, v5, v8

    const/high16 v29, 0x40000000    # 2.0f

    div-float v8, v28, v29

    move/from16 v28, v2

    move-object/from16 v2, p0

    .line 26
    iput v8, v2, Lcom/smartisanos/launcher/animations/b/k;->Mp:F

    const-string v8, "pkg"

    .line 27
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "uid"

    .line 28
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 29
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v1

    move-object/from16 v1, v24

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v17

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " scaleFrom = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " scaleTo = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move/from16 v29, v1

    .line 30
    :goto_2
    new-instance v8, Lcom/smartisanos/launcher/animations/db;

    invoke-direct {v8}, Lcom/smartisanos/launcher/animations/db;-><init>()V

    move-wide/from16 v0, v17

    .line 31
    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/animations/db;->l(J)Lcom/smartisanos/launcher/animations/db;

    .line 32
    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/animations/db;->m(J)Lcom/smartisanos/launcher/animations/db;

    move/from16 v9, v23

    .line 33
    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/animations/db;->setStartValue(F)Lcom/smartisanos/launcher/animations/db;

    move/from16 v2, v22

    .line 34
    invoke-virtual {v8, v2}, Lcom/smartisanos/launcher/animations/db;->setFinalPosition(F)Lcom/smartisanos/launcher/animations/db;

    move/from16 v2, v21

    .line 35
    invoke-virtual {v8, v2}, Lcom/smartisanos/launcher/animations/db;->setStartVelocity(F)Lcom/smartisanos/launcher/animations/db;

    move/from16 v2, v20

    .line 36
    invoke-virtual {v8, v2}, Lcom/smartisanos/launcher/animations/db;->setStiffness(F)Lcom/smartisanos/launcher/animations/db;

    move/from16 v2, v19

    .line 37
    invoke-virtual {v8, v2}, Lcom/smartisanos/launcher/animations/db;->setDampingRatio(F)Lcom/smartisanos/launcher/animations/db;

    move/from16 v2, v16

    .line 38
    invoke-virtual {v8, v2}, Lcom/smartisanos/launcher/animations/db;->setMinimumVisibleChange(F)Lcom/smartisanos/launcher/animations/db;

    .line 39
    new-instance v2, Lcom/smartisanos/launcher/animations/b/e;

    move-wide v11, v0

    move-object/from16 v1, p0

    invoke-direct {v2, v1}, Lcom/smartisanos/launcher/animations/b/e;-><init>(Lcom/smartisanos/launcher/animations/b/k;)V

    invoke-virtual {v8, v2}, Lcom/smartisanos/launcher/animations/db;->a(Lcom/smartisanos/launcher/animations/cb;)V

    .line 40
    new-instance v13, Lcom/smartisanos/launcher/animations/db;

    invoke-direct {v13}, Lcom/smartisanos/launcher/animations/db;-><init>()V

    .line 41
    invoke-virtual {v13, v11, v12}, Lcom/smartisanos/launcher/animations/db;->l(J)Lcom/smartisanos/launcher/animations/db;

    .line 42
    invoke-virtual {v13, v11, v12}, Lcom/smartisanos/launcher/animations/db;->m(J)Lcom/smartisanos/launcher/animations/db;

    .line 43
    invoke-virtual {v13, v10}, Lcom/smartisanos/launcher/animations/db;->setStartValue(F)Lcom/smartisanos/launcher/animations/db;

    move/from16 v0, v29

    .line 44
    invoke-virtual {v13, v0}, Lcom/smartisanos/launcher/animations/db;->setFinalPosition(F)Lcom/smartisanos/launcher/animations/db;

    move/from16 v0, v28

    .line 45
    invoke-virtual {v13, v0}, Lcom/smartisanos/launcher/animations/db;->setStartVelocity(F)Lcom/smartisanos/launcher/animations/db;

    move/from16 v0, v27

    .line 46
    invoke-virtual {v13, v0}, Lcom/smartisanos/launcher/animations/db;->setStiffness(F)Lcom/smartisanos/launcher/animations/db;

    move/from16 v0, v26

    .line 47
    invoke-virtual {v13, v0}, Lcom/smartisanos/launcher/animations/db;->setDampingRatio(F)Lcom/smartisanos/launcher/animations/db;

    move/from16 v0, v25

    .line 48
    invoke-virtual {v13, v0}, Lcom/smartisanos/launcher/animations/db;->setMinimumVisibleChange(F)Lcom/smartisanos/launcher/animations/db;

    .line 49
    new-instance v0, Lcom/smartisanos/launcher/animations/b/f;

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/b/f;-><init>(Lcom/smartisanos/launcher/animations/b/k;)V

    invoke-virtual {v13, v0}, Lcom/smartisanos/launcher/animations/db;->a(Lcom/smartisanos/launcher/animations/cb;)V

    .line 50
    new-instance v14, Lcom/smartisanos/launcher/animations/db;

    invoke-direct {v14}, Lcom/smartisanos/launcher/animations/db;-><init>()V

    .line 51
    invoke-virtual {v14, v11, v12}, Lcom/smartisanos/launcher/animations/db;->l(J)Lcom/smartisanos/launcher/animations/db;

    .line 52
    invoke-virtual {v14, v11, v12}, Lcom/smartisanos/launcher/animations/db;->m(J)Lcom/smartisanos/launcher/animations/db;

    .line 53
    invoke-virtual {v14, v5}, Lcom/smartisanos/launcher/animations/db;->setStartValue(F)Lcom/smartisanos/launcher/animations/db;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 54
    invoke-virtual {v14, v0}, Lcom/smartisanos/launcher/animations/db;->setFinalPosition(F)Lcom/smartisanos/launcher/animations/db;

    .line 55
    invoke-virtual {v14, v3}, Lcom/smartisanos/launcher/animations/db;->setStartVelocity(F)Lcom/smartisanos/launcher/animations/db;

    .line 56
    invoke-virtual {v14, v4}, Lcom/smartisanos/launcher/animations/db;->setStiffness(F)Lcom/smartisanos/launcher/animations/db;

    .line 57
    invoke-virtual {v14, v6}, Lcom/smartisanos/launcher/animations/db;->setDampingRatio(F)Lcom/smartisanos/launcher/animations/db;

    .line 58
    invoke-virtual {v14, v7}, Lcom/smartisanos/launcher/animations/db;->setMinimumVisibleChange(F)Lcom/smartisanos/launcher/animations/db;

    .line 59
    new-instance v0, Lcom/smartisanos/launcher/animations/b/g;

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/b/g;-><init>(Lcom/smartisanos/launcher/animations/b/k;)V

    invoke-virtual {v14, v0}, Lcom/smartisanos/launcher/animations/db;->a(Lcom/smartisanos/launcher/animations/cb;)V

    .line 60
    new-instance v11, Lcom/smartisanos/launcher/animations/b/h;

    const/16 v2, 0x64

    move-object v0, v11

    move v3, v9

    move v4, v10

    move-object v6, v8

    move-object v7, v13

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/smartisanos/launcher/animations/b/h;-><init>(Lcom/smartisanos/launcher/animations/b/k;IFFFLcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;)V

    const/4 v0, 0x0

    .line 61
    invoke-virtual {v11, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method public e(IF)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iget-boolean p1, p0, Lcom/smartisanos/launcher/animations/b/k;->Jp:Z

    if-nez p1, :cond_1

    .line 19
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Jp:Z

    .line 20
    :cond_1
    iput p2, p0, Lcom/smartisanos/launcher/animations/b/k;->Gp:F

    goto :goto_0

    .line 21
    :cond_2
    iget-boolean p1, p0, Lcom/smartisanos/launcher/animations/b/k;->Ip:Z

    if-nez p1, :cond_3

    .line 22
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Ip:Z

    .line 23
    :cond_3
    iput p2, p0, Lcom/smartisanos/launcher/animations/b/k;->mLastY:F

    goto :goto_0

    .line 24
    :cond_4
    iget-boolean p1, p0, Lcom/smartisanos/launcher/animations/b/k;->Hp:Z

    if-nez p1, :cond_5

    .line 25
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Hp:Z

    .line 26
    :cond_5
    iput p2, p0, Lcom/smartisanos/launcher/animations/b/k;->Fp:F

    .line 27
    :goto_0
    iget-boolean p1, p0, Lcom/smartisanos/launcher/animations/b/k;->Hp:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/smartisanos/launcher/animations/b/k;->Ip:Z

    if-eqz p1, :cond_6

    iget-boolean p0, p0, Lcom/smartisanos/launcher/animations/b/k;->Jp:Z

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public ye()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/k;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "SWIPE_ANIM"

    const-string v2, "forceFinishSwipeAnim"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/b/k;->Bp:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/b/k;->Bp:Lcom/smartisanos/smengine/n;

    .line 5
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/b/k;->_p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/animations/b/k;->jc(Z)V

    :cond_0
    return-void
.end method
