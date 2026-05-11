.class public Lcom/smartisanos/launcher/view/v;
.super Lcom/smartisanos/launcher/view/d;
.source "CellStatusForPage.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Ru:I

.field private Su:I

.field private Tu:Z

.field private Uu:Lcom/smartisanos/smengine/g;

.field private Vu:Lcom/smartisanos/smengine/n;

.field private mNotificationManager:Lcom/smartisanos/smengine/C;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/v;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/v;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/d;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/view/v;->Ru:I

    .line 3
    iput p1, p0, Lcom/smartisanos/launcher/view/v;->Su:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/v;->Tu:Z

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/smartisanos/launcher/view/v;->Uu:Lcom/smartisanos/smengine/g;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/v;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/smartisanos/launcher/view/v;->Ru:I

    return p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/v;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/smartisanos/launcher/view/v;->Uu:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/v;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/smartisanos/launcher/view/v;->Vu:Lcom/smartisanos/smengine/n;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/v;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/v;->Tu:Z

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/v;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/v;->Tu:Z

    return p1
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/v;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/v;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/view/v;->Su:I

    return p1
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/v;)Lcom/smartisanos/smengine/C;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/v;->mx()Lcom/smartisanos/smengine/C;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/v;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/v;->Ru:I

    return p0
.end method

.method static synthetic d(Lcom/smartisanos/launcher/view/v;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/v;->Su:I

    return p0
.end method

.method static synthetic e(Lcom/smartisanos/launcher/view/v;)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/v;->Vu:Lcom/smartisanos/smengine/n;

    return-object p0
.end method

.method private mx()Lcom/smartisanos/smengine/C;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/v;->mNotificationManager:Lcom/smartisanos/smengine/C;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/v;->mNotificationManager:Lcom/smartisanos/smengine/C;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/v;->mNotificationManager:Lcom/smartisanos/smengine/C;

    return-object p0
.end method


# virtual methods
.method public Ng()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/launcher/view/d;->Ng()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/v;->Uu:Lcom/smartisanos/smengine/g;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_0
    return-void
.end method

.method protected Sg()Z
    .locals 10

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/v;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "page cell handle longpress"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    .line 6
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    .line 7
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v5

    .line 8
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Lcom/smartisanos/launcher/ua;->n(Z)V

    .line 10
    sget-object v6, Lcom/smartisanos/launcher/view/a/X;->My:Lcom/smartisanos/smengine/g;

    const/4 v7, 0x0

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    if-nez v6, :cond_4

    .line 11
    new-instance v6, Lcom/smartisanos/smengine/g;

    invoke-direct {v6}, Lcom/smartisanos/smengine/g;-><init>()V

    sput-object v6, Lcom/smartisanos/launcher/view/a/X;->My:Lcom/smartisanos/smengine/g;

    .line 12
    iget-object v6, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Sm()V

    .line 13
    iget-object v6, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v6

    sget-object v8, Lcom/smartisanos/launcher/view/a/X;->My:Lcom/smartisanos/smengine/g;

    const v9, 0x3e4ccccd    # 0.2f

    invoke-virtual {v6, v8, v9}, Lcom/smartisanos/launcher/view/a/X;->e(Lcom/smartisanos/smengine/g;F)V

    .line 14
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->Kq()Z

    move-result v6

    if-nez v6, :cond_2

    .line 15
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->Iq()V

    .line 16
    :cond_2
    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/view/V;->y(Lcom/smartisanos/launcher/view/a/g;)V

    .line 17
    iget-object v4, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iput-boolean v1, v4, Lcom/smartisanos/launcher/view/a/g;->vH:Z

    .line 18
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setInteractionState(I)V

    .line 19
    iget-object v4, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    .line 20
    iget-object v6, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->km()Lcom/smartisanos/launcher/view/a/f;

    move-result-object v6

    new-instance v8, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v8, v4}, Lcom/smartisanos/smengine/a/j;-><init>(Lcom/smartisanos/smengine/a/j;)V

    iput-object v8, v6, Lcom/smartisanos/launcher/view/a/f;->xy:Lcom/smartisanos/smengine/a/j;

    .line 21
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->yi()V

    .line 22
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object p0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v4

    invoke-virtual {p0, v4, v2}, Lcom/smartisanos/launcher/view/Sc;->n(IZ)V

    .line 23
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    sget-object v2, Lcom/smartisanos/launcher/view/a/X;->My:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v2, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->KZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v5, v2, v9, p0}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->bZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v3, v0, v9, p0}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 28
    sget-object v0, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->gZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v3, v0, v9, p0}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 29
    sget-object p0, Lcom/smartisanos/launcher/view/a/X;->My:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    .line 30
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/smartisanos/launcher/view/Sc;->C(Lcom/smartisanos/launcher/view/a/g;)V

    .line 31
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result p0

    invoke-virtual {v3, p0, v7}, Lcom/smartisanos/launcher/view/V;->a(ILcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/i;

    move-result-object p0

    iput-object p0, v3, Lcom/smartisanos/launcher/view/V;->yK:Lcom/smartisanos/smengine/i;

    .line 32
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result p0

    .line 33
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_app_count:I

    if-ge p0, v0, :cond_3

    add-int/lit8 v0, p0, 0x1

    .line 34
    :cond_3
    iget-object p0, v3, Lcom/smartisanos/launcher/view/V;->yK:Lcom/smartisanos/smengine/i;

    invoke-virtual {v3, v0, p0}, Lcom/smartisanos/launcher/view/V;->a(ILcom/smartisanos/smengine/i;)V

    return v1

    .line 35
    :cond_4
    invoke-virtual {v4, v7}, Lcom/smartisanos/launcher/view/b/fa;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 36
    sget-object p0, Lcom/smartisanos/launcher/view/v;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "handleLongPress() return by cellLongPressAnimationTimeLine is not null !"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return v2
.end method

.method public Tg()V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/v;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellStatusForPage onUp ! cell name ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/view/v;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "page cell up error !!! pageCellUpAnimation is not null !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lcom/smartisanos/launcher/ua;->n(Z)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/a/w;->bd()V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    .line 9
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object v4

    .line 10
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateGeometricState()V

    .line 11
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Jq()V

    .line 12
    iget-object v5, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iput-boolean v0, v5, Lcom/smartisanos/launcher/view/a/g;->vH:Z

    .line 13
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/db;->jh()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 14
    iget-object v5, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->rm()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 15
    iget-object v5, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/a/g;->Va(Z)V

    .line 16
    iget-object v5, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Yl()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 17
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/d;->Ju:Z

    .line 18
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Mq()V

    .line 19
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->vd()V

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 22
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/db;->dh()V

    .line 23
    new-instance v0, Lcom/smartisanos/smengine/A;

    invoke-direct {v0}, Lcom/smartisanos/smengine/A;-><init>()V

    .line 24
    new-instance v1, Lcom/smartisanos/smengine/l;

    invoke-direct {v1}, Lcom/smartisanos/smengine/l;-><init>()V

    .line 25
    iget-object v2, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Yl()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/smengine/l;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 27
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/v;->mx()Lcom/smartisanos/smengine/C;

    move-result-object v1

    const-string v2, "cellIntoFolderArea"

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/C;->b(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V

    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->ab(Z)V

    .line 29
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0, v6}, Lcom/smartisanos/launcher/view/a/g;->u(Lcom/smartisanos/launcher/view/a/g;)V

    return-void

    .line 30
    :cond_2
    iget-object v5, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 31
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/d;->Ju:Z

    .line 32
    iget-object v1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/a/X;->da(Z)V

    .line 33
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/l;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/l;->Zg()V

    return-void

    .line 34
    :cond_3
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/animations/r;->xd()V

    .line 35
    :cond_4
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->dp()V

    .line 36
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->cp()V

    .line 37
    sget-object v5, Lcom/smartisanos/launcher/view/a/X;->My:Lcom/smartisanos/smengine/g;

    if-eqz v5, :cond_5

    .line 38
    invoke-virtual {v5}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 39
    sput-object v6, Lcom/smartisanos/launcher/view/a/X;->My:Lcom/smartisanos/smengine/g;

    .line 40
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 41
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v5

    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 42
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/bb;->xp()V

    .line 43
    :cond_6
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 44
    iget-object v5, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->om()V

    .line 45
    new-instance v5, Lcom/smartisanos/smengine/g;

    invoke-direct {v5}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v5, p0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    .line 46
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v5, :cond_8

    .line 47
    iget-object v5, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v5

    if-nez v5, :cond_8

    .line 48
    :cond_7
    iget-object v5, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v5

    iget-object v7, p0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    const v8, 0x3e8f5c29    # 0.28f

    invoke-virtual {v5, v7, v8, v8}, Lcom/smartisanos/launcher/view/a/X;->f(Lcom/smartisanos/smengine/g;FF)V

    .line 49
    :cond_8
    iget-object v5, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v5

    iget-object v7, p0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    const v8, 0x3e99999a    # 0.3f

    invoke-virtual {v5, v7, v8}, Lcom/smartisanos/launcher/view/a/X;->d(Lcom/smartisanos/smengine/g;F)V

    .line 50
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iget-object v7, p0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v7, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->aZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v2, v7, v8, v5}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 53
    sget-object v7, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->hZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v2, v7, v8, v5}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 54
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v7

    sget-object v9, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->LZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v7, v9, v8, v5}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 55
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/animations/r;->Cd()Lcom/smartisanos/smengine/g;

    move-result-object v5

    .line 56
    iget-object v7, p0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 57
    iget-object v7, p0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    new-instance v8, Lcom/smartisanos/launcher/view/s;

    invoke-direct {v8, p0, v2, v1, v4}, Lcom/smartisanos/launcher/view/s;-><init>(Lcom/smartisanos/launcher/view/v;Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/launcher/view/db;)V

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 58
    iget-object v2, p0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/g;->start()V

    .line 59
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 60
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 61
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->fi()V

    .line 62
    :cond_9
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/db;->jh()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/smartisanos/launcher/view/v;->Uu:Lcom/smartisanos/smengine/g;

    if-nez v1, :cond_a

    .line 63
    invoke-virtual {v5}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 64
    iget-object v1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 65
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/v;->Uu:Lcom/smartisanos/smengine/g;

    .line 66
    iget-object v0, p0, Lcom/smartisanos/launcher/view/v;->Uu:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4, v0}, Lcom/smartisanos/launcher/view/db;->b(Lcom/smartisanos/smengine/g;)Z

    .line 67
    iget-object v0, p0, Lcom/smartisanos/launcher/view/v;->Uu:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4, v0}, Lcom/smartisanos/launcher/view/db;->c(Lcom/smartisanos/smengine/g;)Z

    .line 68
    iget-object v0, p0, Lcom/smartisanos/launcher/view/v;->Uu:Lcom/smartisanos/smengine/g;

    new-instance v1, Lcom/smartisanos/launcher/view/u;

    invoke-direct {v1, p0, v3, v4}, Lcom/smartisanos/launcher/view/u;-><init>(Lcom/smartisanos/launcher/view/v;Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/launcher/view/db;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 69
    iget-object p0, p0, Lcom/smartisanos/launcher/view/v;->Uu:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    .line 70
    :cond_a
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 71
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Z;->updateLayer()V

    .line 72
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->getPageCount()I

    move-result p0

    .line 73
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_b

    .line 74
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->hr()I

    move-result p0

    .line 75
    :cond_b
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v0

    .line 76
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/smartisanos/launcher/view/Z;->D(II)V

    .line 77
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object p0

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Naa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    :cond_c
    return-void
.end method

.method protected Ug()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/m;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/m;-><init>(Lcom/smartisanos/launcher/view/v;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/d;->mTouchListener:Lcom/smartisanos/smengine/ha;

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/view/p;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/p;-><init>(Lcom/smartisanos/launcher/view/v;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/d;->mSingleTapListener:Lcom/smartisanos/smengine/fa;

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/view/r;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/r;-><init>(Lcom/smartisanos/launcher/view/v;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/d;->Iu:Lcom/smartisanos/smengine/V;

    return-void
.end method

.method public Yg()V
    .locals 0

    return-void
.end method

.method public _g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/v;->Vu:Lcom/smartisanos/smengine/n;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/v;->Vu:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/v;->Vu:Lcom/smartisanos/smengine/n;

    return-void
.end method

.method public a(FFFF)V
    .locals 0

    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/d;->a(FFFF)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->qm()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object p1

    const/4 p2, 0x0

    const p3, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, p2, p3}, Lcom/smartisanos/launcher/view/a/X;->d(Lcom/smartisanos/smengine/g;F)V

    .line 9
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Vm()V

    :cond_2
    return-void
.end method

.method public ah()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/smartisanos/launcher/view/v;->Su:I

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/view/v;->Ru:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/view/v;->Uu:Lcom/smartisanos/smengine/g;

    .line 2
    invoke-super {p0}, Lcom/smartisanos/launcher/view/d;->clear()V

    return-void
.end method

.method public i(FF)V
    .locals 2

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Kd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/view/v;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "## Poweroff first!!!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/d;->Ju:Z

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/launcher/view/Eb;->k(FF)V

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/d;->h(FF)V

    return-void
.end method

.method public i(Lcom/smartisanos/launcher/view/a/g;)Z
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/v;->Sg()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/4 p1, 0x2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->mSingleTapListener:Lcom/smartisanos/smengine/fa;

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/fa;->g(Lcom/smartisanos/smengine/Fa;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 6
    :cond_1
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/d;->onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z

    move-result p0

    return p0
.end method
