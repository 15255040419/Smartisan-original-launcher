.class public Lcom/smartisanos/launcher/animations/Qa;
.super Lcom/smartisanos/launcher/animations/V;
.source "PageViewAnimation.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;

.field public static pn:F

.field public static qn:F


# instance fields
.field private dl:Lcom/smartisanos/launcher/view/b/fa;

.field private dn:Z

.field private en:Z

.field private fn:Lcom/smartisanos/smengine/g;

.field private gn:Z

.field private hn:Z

.field jn:F

.field kn:F

.field private ln:I

.field private mn:Ljava/util/ArrayList;

.field private nn:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/smartisanos/launcher/animations/Qa;->pn:F

    .line 3
    sput v0, Lcom/smartisanos/launcher/animations/Qa;->qn:F

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/V;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/Qa;->dn:Z

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/Qa;->en:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/Qa;->gn:Z

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/Qa;->hn:Z

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/smartisanos/launcher/animations/Qa;->jn:F

    .line 8
    iput v1, p0, Lcom/smartisanos/launcher/animations/Qa;->kn:F

    .line 9
    iput v0, p0, Lcom/smartisanos/launcher/animations/Qa;->ln:I

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Qa;->mn:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Qa;->nn:Ljava/util/ArrayList;

    .line 12
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 13
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 p1, p0, 0x2

    int-to-float p1, p1

    sput p1, Lcom/smartisanos/launcher/animations/Qa;->pn:F

    neg-int p0, p0

    .line 14
    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    sput p0, Lcom/smartisanos/launcher/animations/Qa;->qn:F

    return-void
.end method

.method private Pc(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->getPageNums(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_MODE(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_4_MODE(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 5
    rem-int/2addr p1, v0

    sub-int p1, v0, p1

    if-eq p1, v0, :cond_2

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->Tb(I)Ljava/util/List;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_9_MODE(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 9
    rem-int/2addr p1, v0

    sub-int p1, v0, p1

    if-eq p1, v0, :cond_2

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->Tb(I)Ljava/util/List;

    :cond_2
    :goto_0
    return-void

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alignmentPageByMode mode error. mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private Qc(I)Lcom/smartisanos/smengine/a/i;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 2
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    return-object v0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/Qa;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/Qa;Lcom/smartisanos/launcher/view/b/M;Ljava/util/ArrayList;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/animations/Qa;->a(Lcom/smartisanos/launcher/view/b/M;Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Lcom/smartisanos/launcher/view/b/M;Ljava/util/ArrayList;)V
    .locals 7

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 350
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 351
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 352
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    add-int/lit8 p1, v2, -0x1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_2
    if-ltz p1, :cond_3

    .line 353
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    if-nez v4, :cond_2

    if-eqz v5, :cond_2

    .line 354
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v6

    if-nez v6, :cond_2

    move-object v4, v5

    goto :goto_3

    .line 355
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    add-int/2addr v2, p1

    .line 356
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 357
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    if-nez v3, :cond_4

    if-eqz v5, :cond_4

    .line 358
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v6

    if-nez v6, :cond_4

    move-object v3, v5

    goto :goto_5

    .line 359
    :cond_4
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    if-nez v4, :cond_6

    .line 360
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 361
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    iget v2, v2, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    sub-int/2addr v2, p1

    .line 362
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/view/b/fa;->Xb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 363
    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 364
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    :cond_6
    if-nez v3, :cond_7

    .line 365
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 366
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/launcher/view/b/M;

    iget p2, p2, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    add-int/2addr p2, p1

    .line 367
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/view/b/fa;->Wb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 368
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 369
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    .line 370
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    .line 371
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 372
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->Un()V

    goto :goto_6

    :cond_8
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/Qa;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/animations/Qa;->gn:Z

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/Qa;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/Qa;->gn:Z

    return p1
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/animations/Qa;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/Qa;->dn:Z

    return p1
.end method

.method static synthetic c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    return-object p0
.end method

.method static synthetic d(Lcom/smartisanos/launcher/animations/Qa;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Qa;->mn:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lcom/smartisanos/launcher/animations/Qa;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Qa;->nn:Ljava/util/ArrayList;

    return-object p0
.end method

.method private h(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)F
    .locals 4

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget p0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, p2, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, p2, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public Sd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/Qa;->gn:Z

    return-void
.end method

.method public Td()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Ud()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/animations/Qa;->dn:Z

    return p0
.end method

.method public a(Lcom/smartisanos/launcher/animations/Pa;)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Qa;->nn:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;FLjava/util/ArrayList;)V
    .locals 35

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 90
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v4, "]"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleAnimation ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 91
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/animations/Oa;->Tn:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    const-string v6, "params error, index 0 must be AnimationTimeLine object"

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v0, v12, :cond_29

    const/4 v13, 0x2

    if-eq v0, v13, :cond_1

    goto/16 :goto_24

    .line 92
    :cond_1
    iget-boolean v0, v1, Lcom/smartisanos/launcher/animations/Qa;->dn:Z

    if-nez v0, :cond_2

    .line 93
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_51

    sget-object v0, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAnimation SHOW_SINGLE_PAGE break. multiPageInOneScreenAlready="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v1, Lcom/smartisanos/launcher/animations/Qa;->dn:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_24

    :cond_2
    if-eqz v3, :cond_51

    .line 94
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_24

    .line 95
    :cond_3
    :try_start_0
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 96
    :try_start_1
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 98
    :goto_0
    :try_start_2
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move v3, v11

    .line 99
    :goto_1
    iget-object v6, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v6

    .line 100
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v15, :cond_4

    .line 101
    iget-object v9, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v9

    invoke-virtual {v15, v9}, Lcom/smartisanos/launcher/view/b/M;->Ya(I)V

    goto :goto_2

    .line 102
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v6

    iget-object v9, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/smartisanos/launcher/view/V;->Ya(I)V

    .line 103
    sget-boolean v6, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v6, :cond_6

    sget-object v6, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SHOW_SINGLE_PAGE begin, userSpecifiedPage ["

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_6
    if-nez v0, :cond_f

    .line 104
    iget-object v0, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Yq()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 105
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 106
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 107
    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 108
    iget v0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    sget v6, Lcom/smartisanos/launcher/animations/Qa;->qn:F

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_7

    sget v6, Lcom/smartisanos/launcher/animations/Qa;->pn:F

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_7

    move v0, v11

    goto :goto_3

    :cond_7
    move v0, v12

    const/4 v9, 0x0

    :goto_3
    if-eqz v0, :cond_e

    .line 109
    iget-object v0, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Rq()Ljava/util/ArrayList;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_d

    .line 111
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6}, Lcom/smartisanos/smengine/a/j;-><init>()V

    const/4 v9, -0x1

    move v8, v9

    move v9, v11

    const/4 v15, 0x0

    .line 112
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v9, v5, :cond_c

    .line 113
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    .line 114
    sget-boolean v16, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v16, :cond_8

    sget-object v10, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "all pages in window, title ["

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->Bn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 115
    :cond_8
    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 116
    iget v7, v6, Lcom/smartisanos/smengine/a/j;->x:F

    sget v10, Lcom/smartisanos/launcher/animations/Qa;->pn:F

    cmpl-float v10, v7, v10

    if-gez v10, :cond_b

    sget v10, Lcom/smartisanos/launcher/animations/Qa;->qn:F

    cmpg-float v7, v7, v10

    if-gtz v7, :cond_9

    goto :goto_6

    :cond_9
    if-nez v15, :cond_a

    .line 117
    iget v7, v5, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    :goto_5
    move-object v15, v5

    move v8, v7

    goto :goto_6

    .line 118
    :cond_a
    iget v7, v5, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    if-le v8, v7, :cond_b

    goto :goto_5

    :cond_b
    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x2

    goto :goto_4

    :cond_c
    move-object v0, v15

    goto :goto_7

    .line 119
    :cond_d
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_51

    sget-object v0, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "getAllPagesInWindow() return list size is 0 !!! in this case, some error happened !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_24

    :cond_e
    move-object v0, v9

    :cond_f
    :goto_7
    if-eqz v0, :cond_1f

    .line 120
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v3, :cond_1f

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 121
    :cond_10
    sget-boolean v5, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v5, :cond_11

    sget-object v5, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showEmptyPage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isEmpty = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 122
    :cond_11
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_12

    sget-object v3, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "display_page.isVisiblePage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 123
    :cond_12
    iget-object v3, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 124
    iget v5, v0, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    .line 125
    iget-object v6, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->jr()I

    move-result v6

    .line 126
    sget-boolean v7, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v7, :cond_13

    sget-object v7, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pageCount ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "], pageIndex ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 127
    :cond_13
    div-int/2addr v5, v6

    move v4, v11

    move v7, v4

    :goto_8
    if-ge v4, v6, :cond_15

    mul-int v7, v5, v6

    add-int/2addr v7, v4

    .line 128
    iget-object v8, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/smartisanos/launcher/view/b/M;

    .line 129
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_14

    move v7, v11

    goto :goto_9

    :cond_14
    add-int/lit8 v4, v4, 0x1

    move v7, v12

    goto :goto_8

    :cond_15
    const/4 v9, 0x0

    :goto_9
    if-eqz v7, :cond_1e

    mul-int v4, v5, v6

    sub-int/2addr v4, v12

    if-lez v4, :cond_17

    :goto_a
    if-ltz v4, :cond_17

    .line 130
    iget-object v7, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/b/M;

    .line 131
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_16

    goto :goto_b

    :cond_16
    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    :cond_17
    move-object v7, v9

    :goto_b
    add-int/2addr v5, v12

    mul-int/2addr v5, v6

    if-nez v7, :cond_19

    if-ge v5, v3, :cond_19

    :goto_c
    if-ge v5, v3, :cond_19

    .line 132
    iget-object v4, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    .line 133
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_18

    goto :goto_d

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_19
    move-object v4, v7

    :goto_d
    if-nez v4, :cond_1a

    .line 134
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_1b

    sget-object v3, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "Oooooooooooopse! all page are invisible"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_e

    :cond_1a
    move-object v0, v4

    .line 135
    :cond_1b
    :goto_e
    iget-object v3, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v3

    .line 136
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    .line 137
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 138
    :cond_1d
    invoke-virtual {v4, v11}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_f

    :cond_1e
    move-object v0, v9

    :cond_1f
    if-eqz v0, :cond_28

    .line 139
    iget-object v3, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 140
    iget-object v4, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4, v0}, Lcom/smartisanos/launcher/view/b/fa;->u(Lcom/smartisanos/launcher/view/b/M;)V

    .line 141
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SHOW_SINGLE_PAGE page_index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 142
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iget-object v4, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v4

    .line 144
    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    .line 145
    invoke-static {v4}, Lcom/smartisanos/launcher/view/b/N;->A(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v5

    .line 146
    iget v6, v5, Lcom/smartisanos/smengine/a/i;->x:F

    .line 147
    iget v5, v5, Lcom/smartisanos/smengine/a/i;->y:F

    .line 148
    iget-object v7, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/fa;->jr()I

    move-result v7

    .line 149
    iget v8, v1, Lcom/smartisanos/launcher/animations/Qa;->ln:I

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->getMultiPageRowColumn(I)[I

    move-result-object v8

    .line 150
    aget v9, v8, v11

    .line 151
    aget v8, v8, v12

    .line 152
    iget v10, v1, Lcom/smartisanos/launcher/animations/Qa;->ln:I

    invoke-static {v10}, Lcom/smartisanos/launcher/data/Constants;->isMultiPageMode(I)Z

    move-result v10

    if-eqz v10, :cond_27

    .line 153
    iget v10, v1, Lcom/smartisanos/launcher/animations/Qa;->jn:F

    const/high16 v13, 0x3f800000    # 1.0f

    div-float v10, v13, v10

    .line 154
    iget v15, v1, Lcom/smartisanos/launcher/animations/Qa;->kn:F

    div-float/2addr v13, v15

    .line 155
    rem-int v15, v3, v7

    .line 156
    div-int/2addr v3, v7

    .line 157
    div-int v18, v15, v9

    .line 158
    rem-int/2addr v15, v8

    .line 159
    invoke-static {v4}, Lcom/smartisanos/launcher/view/b/N;->r(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v4

    .line 160
    iget v11, v4, Lcom/smartisanos/smengine/a/i;->x:F

    sget v20, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    const/16 v17, 0x2

    div-int/lit8 v12, v20, 0x2

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 161
    sget v12, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    iget v4, v4, Lcom/smartisanos/smengine/a/i;->y:F

    sub-float/2addr v12, v4

    .line 162
    new-instance v4, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/i;-><init>()V

    move/from16 p1, v10

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v7, :cond_21

    .line 163
    div-int v17, v10, v9

    .line 164
    rem-int v20, v10, v8

    move/from16 p3, v8

    sub-int v8, v20, v15

    int-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v8, v11

    move/from16 v20, v6

    sub-int v6, v17, v18

    int-to-float v6, v6

    move/from16 v17, v9

    .line 165
    iget-object v9, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v9

    invoke-static {v9}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v9

    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    mul-float/2addr v9, v13

    add-float/2addr v9, v5

    mul-float/2addr v6, v9

    add-float/2addr v6, v12

    .line 166
    sget v9, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v9, v9

    move/from16 v21, v5

    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v5, v5

    invoke-static {v8, v6, v9, v5, v4}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 167
    iget v5, v4, Lcom/smartisanos/smengine/a/i;->x:F

    .line 168
    iget v6, v4, Lcom/smartisanos/smengine/a/i;->y:F

    .line 169
    new-instance v8, Lcom/smartisanos/smengine/a/j;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v6, v9}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move/from16 v8, p3

    move/from16 v9, v17

    move/from16 v6, v20

    move/from16 v5, v21

    goto :goto_10

    .line 170
    :cond_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_23

    .line 171
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "error ! SHOW_SINGLE_PAGE target location list is empty !!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_22
    return-void

    :cond_23
    const/4 v4, 0x1

    if-ne v7, v4, :cond_24

    .line 172
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_24

    sget-object v4, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    const-string v5, "error !!! SHOW_SINGLE_PAGE page_mode_buffer == 1"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 173
    :cond_24
    iget-object v4, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v4

    .line 174
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 175
    :goto_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_26

    .line 176
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/b/M;

    .line 177
    div-int v9, v6, v7

    if-ne v9, v3, :cond_25

    .line 178
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 179
    :cond_25
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/M;->Wn()V

    .line 180
    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 181
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/M;->Un()V

    :goto_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_26
    const/4 v3, 0x0

    :goto_13
    if-ge v3, v7, :cond_51

    .line 182
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    .line 183
    iget-object v6, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v8

    iget-object v9, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v9

    invoke-virtual {v6, v4, v8, v9}, Lcom/smartisanos/launcher/view/b/fa;->a(Lcom/smartisanos/launcher/view/b/M;II)V

    .line 184
    iget-object v6, v1, Lcom/smartisanos/launcher/animations/Qa;->mn:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    .line 186
    iget-object v6, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/view/b/M;->Ya(I)V

    const/4 v6, 0x1

    .line 187
    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 188
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->getAnimation()Lcom/smartisanos/launcher/animations/Ja;

    move-result-object v8

    sget-object v9, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->AZ:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    const v10, 0x3e8f5c29    # 0.28f

    invoke-virtual {v8, v9, v10, v6}, Lcom/smartisanos/launcher/animations/Ja;->a(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;FLjava/util/ArrayList;)V

    .line 191
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/smengine/a/j;

    .line 192
    new-instance v8, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v8}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 193
    iget-object v9, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/fa;->or()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v9

    .line 194
    invoke-virtual {v9}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v9

    .line 195
    invoke-virtual {v9, v6, v8}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 196
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    .line 197
    new-instance v10, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v10}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 198
    invoke-virtual {v9, v6, v10}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 199
    new-instance v9, Lcom/smartisanos/smengine/oa;

    invoke-direct {v9, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 200
    invoke-virtual {v9, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v10, 0xe

    .line 201
    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v18, 0x0

    .line 202
    iget v10, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v6, Lcom/smartisanos/smengine/a/j;->y:F

    const/16 v21, 0x0

    iget v11, v8, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v8, Lcom/smartisanos/smengine/a/j;->y:F

    const/16 v24, 0x0

    move-object/from16 v17, v9

    move/from16 v19, v10

    move/from16 v20, v6

    move/from16 v22, v11

    move/from16 v23, v8

    invoke-virtual/range {v17 .. v24}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const/4 v6, 0x0

    .line 203
    invoke-virtual {v14, v6, v9}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 204
    new-instance v6, Lcom/smartisanos/smengine/oa;

    invoke-direct {v6, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 205
    invoke-virtual {v6, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v4, 0xe

    .line 206
    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v19, 0x1

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v18, v6

    move/from16 v23, p1

    move/from16 v24, v13

    .line 207
    invoke-virtual/range {v18 .. v25}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const/4 v4, 0x0

    .line 208
    invoke-virtual {v14, v4, v6}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    .line 209
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unkown buffer mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/smartisanos/launcher/animations/Qa;->ln:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_28
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_51

    sget-object v0, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "error !!! SHOW_SINGLE_PAGE, mCurrentPage is null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_24

    .line 211
    :catch_2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_51

    sget-object v0, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_24

    .line 212
    :cond_29
    iget-boolean v0, v1, Lcom/smartisanos/launcher/animations/Qa;->dn:Z

    if-eqz v0, :cond_2a

    .line 213
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_51

    sget-object v0, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAnimation SHOW_MULTI_PAGE break. multiPageInOneScreenAlready="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v1, Lcom/smartisanos/launcher/animations/Qa;->dn:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_24

    :cond_2a
    if-eqz v3, :cond_51

    .line 214
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_24

    :cond_2b
    const/4 v5, 0x1

    .line 215
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x0

    .line 216
    :try_start_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/g;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 217
    sget-boolean v5, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v5, :cond_2c

    sget-object v5, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    const-string v6, "SHOW_MULTI_PAGE begin"

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 218
    :cond_2c
    iget-object v5, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->Rq()Ljava/util/ArrayList;

    move-result-object v5

    .line 219
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2d
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/b/M;

    .line 221
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 222
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 223
    :cond_2e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_30

    .line 224
    sget-boolean v5, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v5, :cond_2f

    sget-object v5, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    const-string v7, "some error happened, getAllPagesInWindow() page list is empty !"

    invoke-virtual {v5, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 225
    :cond_2f
    iget-object v5, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_30
    sget-boolean v5, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v5, :cond_31

    sget-object v5, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "display_pages size =======> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 227
    :cond_31
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_38

    const/high16 v5, 0x4f000000

    .line 228
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7}, Lcom/smartisanos/smengine/a/j;-><init>()V

    move v9, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 229
    :goto_15
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_35

    .line 230
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/b/M;

    .line 231
    invoke-virtual {v10, v7}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 232
    iget v11, v7, Lcom/smartisanos/smengine/a/j;->x:F

    sget v12, Lcom/smartisanos/launcher/animations/Qa;->pn:F

    cmpl-float v12, v11, v12

    if-gez v12, :cond_34

    sget v12, Lcom/smartisanos/launcher/animations/Qa;->qn:F

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_32

    goto :goto_17

    .line 233
    :cond_32
    new-instance v11, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v11}, Lcom/smartisanos/smengine/a/j;-><init>()V

    invoke-direct {v1, v7, v11}, Lcom/smartisanos/launcher/animations/Qa;->h(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)F

    move-result v11

    if-nez v8, :cond_33

    goto :goto_16

    :cond_33
    cmpl-float v12, v9, v11

    if-ltz v12, :cond_34

    :goto_16
    move-object v8, v10

    move v9, v11

    :cond_34
    :goto_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_35
    if-nez v8, :cond_37

    .line 234
    sget-boolean v5, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v5, :cond_36

    sget-object v5, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    const-string v7, "some error happened, mCurrentPage is out of window !!!"

    invoke-virtual {v5, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 235
    :cond_36
    iget-object v5, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v5, v8}, Lcom/smartisanos/launcher/view/b/fa;->u(Lcom/smartisanos/launcher/view/b/M;)V

    goto :goto_18

    :cond_37
    const/4 v7, 0x0

    .line 236
    iget-object v5, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5, v8}, Lcom/smartisanos/launcher/view/b/fa;->u(Lcom/smartisanos/launcher/view/b/M;)V

    goto :goto_18

    :cond_38
    const/4 v7, 0x0

    .line 237
    iget-object v5, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v5, v8}, Lcom/smartisanos/launcher/view/b/fa;->u(Lcom/smartisanos/launcher/view/b/M;)V

    .line 238
    :goto_18
    sget-boolean v5, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v5, :cond_39

    sget-object v5, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SHOW_MULTI_PAGE getAllPagesInWindow list size ==> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 239
    :cond_39
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->isSinglePageMode(I)Z

    move-result v5

    const-string v6, "handleAnimation target_mode = "

    if-nez v5, :cond_50

    .line 240
    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->pageWorldCenterPointsInWindow:[[Lcom/smartisanos/smengine/a/j;

    aget-object v5, v5, v0

    .line 241
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getPageNums(I)I

    move-result v7

    .line 242
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getMultiPageRowColumn(I)[I

    move-result-object v8

    const/4 v9, 0x0

    .line 243
    aget v10, v8, v9

    const/4 v9, 0x1

    .line 244
    aget v8, v8, v9

    .line 245
    invoke-direct {v1, v0}, Lcom/smartisanos/launcher/animations/Qa;->Pc(I)V

    .line 246
    iput v0, v1, Lcom/smartisanos/launcher/animations/Qa;->ln:I

    .line 247
    iget-object v9, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v9

    invoke-direct {v1, v9}, Lcom/smartisanos/launcher/animations/Qa;->Qc(I)Lcom/smartisanos/smengine/a/i;

    move-result-object v9

    .line 248
    invoke-direct {v1, v0}, Lcom/smartisanos/launcher/animations/Qa;->Qc(I)Lcom/smartisanos/smengine/a/i;

    move-result-object v11

    .line 249
    iget v12, v11, Lcom/smartisanos/smengine/a/i;->x:F

    iget v13, v9, Lcom/smartisanos/smengine/a/i;->x:F

    div-float/2addr v12, v13

    .line 250
    iget v13, v11, Lcom/smartisanos/smengine/a/i;->y:F

    iget v9, v9, Lcom/smartisanos/smengine/a/i;->y:F

    div-float v9, v13, v9

    .line 251
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->isMultiPageMode(I)Z

    move-result v13

    if-eqz v13, :cond_4f

    .line 252
    iput v12, v1, Lcom/smartisanos/launcher/animations/Qa;->jn:F

    .line 253
    iput v9, v1, Lcom/smartisanos/launcher/animations/Qa;->kn:F

    .line 254
    iget-object v6, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->ur()I

    move-result v6

    .line 255
    div-int/2addr v6, v7

    .line 256
    iget-object v13, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/b/fa;->Yq()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v13

    .line 257
    iget-object v14, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v14

    .line 258
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_19
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/smartisanos/launcher/view/b/M;

    move-object/from16 p1, v14

    if-eqz v15, :cond_3a

    .line 259
    iget-object v14, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v14

    invoke-virtual {v15, v14}, Lcom/smartisanos/launcher/view/b/M;->Ya(I)V

    :cond_3a
    move-object/from16 v14, p1

    goto :goto_19

    .line 260
    :cond_3b
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v14

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v14

    iget-object v15, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/smartisanos/launcher/view/V;->Ya(I)V

    .line 261
    iget-object v14, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v13, :cond_4d

    .line 262
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 263
    div-int v15, v4, v7

    .line 264
    iget-object v2, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    move-object/from16 p1, v11

    .line 265
    iget-object v11, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v11

    invoke-static {v11}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v11

    move-object/from16 p3, v3

    .line 266
    iget-object v3, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->getMultiPageRowColumn(I)[I

    move-result-object v3

    if-eqz v3, :cond_4c

    const/16 v17, 0x1

    .line 267
    aget v3, v3, v17

    move-object/from16 v17, v13

    .line 268
    iget v13, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    move/from16 v20, v8

    iget v8, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    add-float/2addr v13, v8

    iget v8, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move/from16 v21, v10

    int-to-float v10, v3

    mul-float/2addr v8, v10

    add-float/2addr v13, v8

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    iget v10, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->page_spacing_h:F

    mul-float/2addr v8, v10

    add-float/2addr v13, v8

    .line 269
    iget v8, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    iget v8, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    iget v8, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_bottom:F

    .line 270
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 271
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_1a
    if-ge v11, v6, :cond_45

    move/from16 v22, v6

    const/4 v6, 0x0

    :goto_1b
    if-ge v6, v7, :cond_44

    mul-int v23, v11, v7

    move/from16 v24, v3

    add-int v3, v23, v6

    .line 272
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 273
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v23

    if-nez v23, :cond_3c

    move-object/from16 v23, v14

    .line 274
    iget-object v14, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/b/fa;->or()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v14

    invoke-virtual {v14, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_1c

    :cond_3c
    move-object/from16 v23, v14

    .line 275
    :goto_1c
    new-instance v14, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v14}, Lcom/smartisanos/smengine/a/j;-><init>()V

    move-object/from16 v25, v2

    .line 276
    iget-object v2, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->or()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v2

    move/from16 v27, v4

    .line 278
    aget-object v4, v5, v6

    invoke-virtual {v2, v4, v14}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 279
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    iget v4, v14, Lcom/smartisanos/smengine/a/j;->x:F

    move-object/from16 v28, v5

    neg-int v5, v15

    add-int/2addr v5, v11

    int-to-float v5, v5

    mul-float/2addr v5, v13

    add-float/2addr v4, v5

    iget v5, v14, Lcom/smartisanos/smengine/a/j;->y:F

    iget v14, v14, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v2, v4, v5, v14}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    if-ne v11, v15, :cond_3f

    const/4 v4, 0x1

    .line 280
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 281
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    const/4 v4, 0x0

    .line 282
    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/b/M;->gb(Z)V

    .line 283
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    iget v5, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v14, 0x0

    invoke-direct {v4, v5, v2, v14}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v2, :cond_3d

    .line 286
    iget-object v2, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/b/M;->Ya(I)V

    .line 287
    :cond_3d
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_3e

    const/4 v2, 0x1

    .line 288
    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/b/M;->ib(Z)V

    move v4, v2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_20

    :cond_3e
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1d
    const/4 v4, 0x1

    goto :goto_20

    .line 289
    :cond_3f
    iget v4, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 290
    invoke-virtual {v3, v12, v9, v2}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    add-int/lit8 v4, v15, 0x1

    if-eq v11, v4, :cond_41

    if-eqz v15, :cond_40

    add-int/lit8 v4, v15, -0x1

    if-ne v11, v4, :cond_40

    goto :goto_1e

    :cond_40
    const/4 v4, 0x0

    .line 291
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 292
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->Un()V

    goto :goto_1d

    .line 293
    :cond_41
    :goto_1e
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->Mn()Z

    move-result v4

    if-eqz v4, :cond_42

    const/4 v4, 0x1

    .line 294
    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/b/M;->gb(Z)V

    goto :goto_1f

    :cond_42
    const/4 v4, 0x1

    .line 295
    :goto_1f
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v5, :cond_43

    .line 296
    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/b/M;->ib(Z)V

    .line 297
    :cond_43
    :goto_20
    iget-object v5, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v14

    invoke-virtual {v5, v3, v14, v0}, Lcom/smartisanos/launcher/view/b/fa;->a(Lcom/smartisanos/launcher/view/b/M;II)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v14, v23

    move/from16 v3, v24

    move-object/from16 v2, v25

    move/from16 v4, v27

    move-object/from16 v5, v28

    goto/16 :goto_1b

    :cond_44
    move-object/from16 v25, v2

    move/from16 v24, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v23, v14

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v22

    move-object/from16 v2, v25

    move/from16 v4, v27

    goto/16 :goto_1a

    :cond_45
    move-object/from16 v25, v2

    move/from16 v24, v3

    move/from16 v27, v4

    move/from16 v22, v6

    .line 298
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v7, :cond_47

    .line 299
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_46

    sget-object v0, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "some error happened activity_group.size() < group_size. so break !!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 300
    :cond_46
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity group size < group_size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_47
    rem-int v4, v27, v7

    .line 302
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 303
    div-int v3, v4, v21

    .line 304
    rem-int v5, v4, v20

    move-object/from16 v6, v25

    .line 305
    iget v11, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    iget v13, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    add-float/2addr v11, v13

    iget v13, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    add-float/2addr v11, v13

    .line 306
    iget v13, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    iget v14, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_bottom:F

    add-float/2addr v13, v14

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    add-float/2addr v13, v6

    iget-object v6, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 307
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v6

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    div-float/2addr v6, v9

    add-float/2addr v13, v6

    if-eqz v17, :cond_48

    .line 308
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/smengine/a/j;->y:F

    goto :goto_21

    :cond_48
    const/4 v6, 0x0

    :goto_21
    const/4 v14, 0x0

    :goto_22
    if-ge v14, v7, :cond_49

    .line 309
    div-int v18, v14, v21

    .line 310
    rem-int v23, v14, v20

    move/from16 v25, v15

    .line 311
    new-instance v15, Lcom/smartisanos/smengine/a/j;

    move/from16 v26, v9

    sub-int v9, v23, v5

    int-to-float v9, v9

    mul-float/2addr v9, v11

    move/from16 v23, v5

    sub-int v5, v18, v3

    int-to-float v5, v5

    mul-float/2addr v5, v13

    sub-float v5, v6, v5

    move/from16 v18, v3

    const/4 v3, 0x0

    invoke-direct {v15, v9, v5, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v18

    move/from16 v5, v23

    move/from16 v15, v25

    move/from16 v9, v26

    goto :goto_22

    :cond_49
    move/from16 v26, v9

    move/from16 v25, v15

    move-object/from16 v3, v17

    .line 312
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 313
    div-int v3, v3, v24

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v7, :cond_4a

    .line 314
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    .line 315
    iget-object v6, v1, Lcom/smartisanos/launcher/animations/Qa;->mn:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, p3

    .line 317
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v11, Ljava/lang/Float;

    move-object/from16 v13, p1

    iget v14, v13, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-direct {v11, v14}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->getAnimation()Lcom/smartisanos/launcher/animations/Ja;

    move-result-object v11

    sget-object v14, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->zZ:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    const v15, 0x3e8f5c29    # 0.28f

    invoke-virtual {v11, v14, v15, v6}, Lcom/smartisanos/launcher/animations/Ja;->a(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;FLjava/util/ArrayList;)V

    .line 322
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/smengine/a/j;

    .line 323
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/smengine/a/j;

    .line 324
    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    .line 325
    new-instance v14, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v14}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 326
    iget-object v15, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/b/fa;->or()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v15

    invoke-virtual {v15}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v15

    .line 327
    invoke-virtual {v15}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v15

    .line 328
    invoke-virtual {v15, v6, v14}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 329
    new-instance v6, Lcom/smartisanos/smengine/oa;

    invoke-direct {v6, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    move/from16 v15, p2

    .line 330
    invoke-virtual {v6, v15}, Lcom/smartisanos/smengine/c;->p(F)V

    move-object/from16 p1, v2

    const/16 v2, 0xe

    .line 331
    invoke-virtual {v6, v2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v28, 0x0

    .line 332
    iget v2, v14, Lcom/smartisanos/smengine/a/j;->x:F

    iget v14, v14, Lcom/smartisanos/smengine/a/j;->y:F

    const/16 v31, 0x0

    move/from16 p3, v4

    iget v4, v11, Lcom/smartisanos/smengine/a/j;->x:F

    iget v11, v11, Lcom/smartisanos/smengine/a/j;->y:F

    const/16 v34, 0x0

    move-object/from16 v27, v6

    move/from16 v29, v2

    move/from16 v30, v14

    move/from16 v32, v4

    move/from16 v33, v11

    invoke-virtual/range {v27 .. v34}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const/4 v2, 0x0

    .line 333
    invoke-virtual {v9, v2, v6}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 334
    new-instance v2, Lcom/smartisanos/smengine/oa;

    invoke-direct {v2, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 335
    invoke-virtual {v2, v15}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v4, 0xe

    .line 336
    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v5, 0x0

    .line 337
    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const/16 v28, 0x1

    const/high16 v29, 0x3f800000    # 1.0f

    const/high16 v30, 0x3f800000    # 1.0f

    const/high16 v31, 0x3f800000    # 1.0f

    const/high16 v34, 0x3f800000    # 1.0f

    move-object/from16 v27, v2

    move/from16 v32, v12

    move/from16 v33, v26

    .line 338
    invoke-virtual/range {v27 .. v34}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const/4 v6, 0x0

    .line 339
    invoke-virtual {v9, v6, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 p3, v9

    move-object/from16 p1, v13

    goto/16 :goto_23

    .line 340
    :cond_4a
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_4b

    .line 341
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v0

    move/from16 v6, v22

    move/from16 v4, v25

    invoke-virtual {v0, v6, v4}, Lcom/smartisanos/launcher/view/Z;->D(II)V

    .line 342
    :cond_4b
    iget-object v0, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateGeometricState()V

    goto/16 :goto_24

    .line 343
    :cond_4c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAnimation multiMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_4d
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error !!! getCurrentPageInWindowForSinglePageMode return null, by size w ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], h ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 345
    :cond_4e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "current page in window is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_4f
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    :cond_50
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :catch_3
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_51

    sget-object v0, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_51
    :goto_24
    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/b/M;IZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v0, Lcom/smartisanos/launcher/animations/Qa;->gn:Z

    .line 7
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/V;->rb(Z)V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Fh()Lcom/smartisanos/launcher/view/hc;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 10
    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/hc;->rb(Z)V

    .line 11
    :cond_0
    iget-boolean v3, v0, Lcom/smartisanos/launcher/animations/Qa;->dn:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    .line 12
    sget-object v3, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    const-string v5, "switchPageViewByMode SHOW_SINGLE_PAGE toTargetPage is not null"

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    sget-object v3, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    const-string v5, "switchPageViewByMode to single page"

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 14
    :goto_0
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/b/fa;->Nb(Z)V

    goto :goto_1

    .line 15
    :cond_2
    sget-object v3, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    const-string v5, "switchPageViewByMode to multi page"

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 16
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/b/fa;->Nb(Z)V

    .line 17
    :goto_1
    iget-boolean v3, v0, Lcom/smartisanos/launcher/animations/Qa;->dn:Z

    const-string v7, "mSomethingIsFloat = true when about to switch page mode"

    const/4 v8, 0x4

    const v9, 0x3e8f5c29    # 0.28f

    if-eqz v3, :cond_12

    .line 18
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    if-eqz v3, :cond_4

    .line 19
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "to single mode return by page_mode_switch_animation is not null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 20
    :cond_4
    new-instance v3, Lcom/smartisanos/smengine/g;

    invoke-direct {v3}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v3, v0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    .line 21
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/smartisanos/launcher/view/b/fa;->ec(I)V

    .line 22
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Qr()V

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v10, v0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v11, v0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v10, v11, v9, v9}, Lcom/smartisanos/launcher/view/b/fa;->j(Lcom/smartisanos/smengine/g;FF)V

    .line 25
    iget-object v10, v0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    .line 26
    iget-object v11, v0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v11

    .line 27
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    move v14, v2

    move v13, v4

    move-object v15, v10

    move v10, v14

    :goto_2
    if-ge v10, v12, :cond_8

    .line 28
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    .line 29
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v16

    if-eqz v16, :cond_5

    .line 30
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/tc;->Sp()Lcom/smartisanos/smengine/F;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 31
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/tc;->Sp()Lcom/smartisanos/smengine/F;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 32
    :cond_5
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez v15, :cond_6

    move-object v15, v5

    .line 33
    :cond_6
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v6

    move v13, v2

    if-nez v6, :cond_7

    move v14, v4

    .line 34
    :cond_7
    invoke-virtual {v5, v2}, Lcom/smartisanos/launcher/view/b/M;->kb(Z)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_8
    if-eqz v13, :cond_c

    .line 35
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/b/fa;->Ub(I)Ljava/util/List;

    move-result-object v5

    .line 36
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v10, :cond_9

    .line 37
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    .line 38
    invoke-virtual {v10, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_3

    .line 39
    :cond_a
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    .line 40
    iget-object v6, v0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->yr()Z

    move-result v6

    iput-boolean v6, v5, Lcom/smartisanos/launcher/view/b/M;->uI:Z

    .line 41
    sget-boolean v6, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v6, :cond_b

    sget-object v6, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "show empty page, attribute readOnlyPage="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v5, Lcom/smartisanos/launcher/view/b/M;->uI:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 42
    :cond_b
    iget-object v6, v0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6, v5}, Lcom/smartisanos/launcher/view/b/fa;->u(Lcom/smartisanos/launcher/view/b/M;)V

    move-object v15, v5

    goto :goto_4

    :cond_c
    if-nez v14, :cond_d

    .line 43
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5, v15}, Lcom/smartisanos/launcher/view/b/fa;->u(Lcom/smartisanos/launcher/view/b/M;)V

    move v13, v4

    goto :goto_4

    :cond_d
    move-object/from16 v15, p1

    .line 44
    :goto_4
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v13}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;->JZ:Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

    invoke-virtual {v0, v5, v9, v3}, Lcom/smartisanos/launcher/animations/Qa;->a(Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;FLjava/util/ArrayList;)V

    .line 47
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v5

    sget-object v6, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->cZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v5, v6, v9, v3}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 48
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_e

    sget-object v3, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 49
    :cond_e
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    invoke-virtual {v3, v8, v4}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 50
    :goto_5
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Qa;->nn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 51
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Qa;->nn:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/animations/Pa;

    iget-boolean v5, v0, Lcom/smartisanos/launcher/animations/Qa;->dn:Z

    invoke-interface {v3, v5, v1}, Lcom/smartisanos/launcher/animations/Pa;->a(ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 52
    :cond_f
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    new-instance v3, Lcom/smartisanos/launcher/animations/Ka;

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/animations/Ka;-><init>(Lcom/smartisanos/launcher/animations/Qa;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    if-ne v4, v1, :cond_10

    .line 53
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    if-eqz p3, :cond_1b

    .line 54
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    goto/16 :goto_7

    .line 55
    :cond_10
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->wt()V

    if-eqz p3, :cond_11

    .line 56
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    .line 57
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    goto/16 :goto_7

    .line 58
    :cond_11
    new-instance v1, Lcom/smartisanos/launcher/animations/La;

    const/16 v2, 0x64

    invoke-direct {v1, v0, v2}, Lcom/smartisanos/launcher/animations/La;-><init>(Lcom/smartisanos/launcher/animations/Qa;I)V

    const/4 v0, 0x0

    .line 59
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    goto/16 :goto_7

    .line 60
    :cond_12
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    if-eqz v3, :cond_14

    .line 61
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "to multi pages : page_mode_switch_animation is not null, so return"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_13
    return-void

    .line 62
    :cond_14
    :goto_6
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Qa;->nn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_15

    .line 63
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Qa;->nn:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/animations/Pa;

    iget-boolean v5, v0, Lcom/smartisanos/launcher/animations/Qa;->dn:Z

    invoke-interface {v3, v5, v1}, Lcom/smartisanos/launcher/animations/Pa;->a(ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 64
    :cond_15
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    .line 65
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v1

    .line 66
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 67
    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/b/M;->kb(Z)V

    .line 68
    iget-boolean v5, v3, Lcom/smartisanos/launcher/view/b/M;->uI:Z

    if-eqz v5, :cond_16

    .line 69
    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/b/M;->clear(Z)V

    .line 70
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->or()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 72
    :cond_17
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Dr()V

    .line 73
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/b/fa;->ec(I)V

    .line 74
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Pr()V

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v3, Ljava/lang/Integer;

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v3, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;->IZ:Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

    invoke-virtual {v0, v3, v9, v2}, Lcom/smartisanos/launcher/animations/Qa;->a(Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;FLjava/util/ArrayList;)V

    .line 79
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v3, :cond_18

    .line 80
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v3, v5, v9, v9}, Lcom/smartisanos/launcher/view/b/fa;->h(Lcom/smartisanos/smengine/g;FF)V

    .line 81
    :cond_18
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    sget-object v5, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->dZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v3, v5, v9, v2}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 82
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_19

    sget-object v2, Lcom/smartisanos/launcher/animations/Qa;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v2, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 83
    :cond_19
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v2

    invoke-virtual {v2, v8, v4}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 84
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    new-instance v3, Lcom/smartisanos/launcher/animations/Ma;

    invoke-direct {v3, v0, v1}, Lcom/smartisanos/launcher/animations/Ma;-><init>(Lcom/smartisanos/launcher/animations/Qa;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 85
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->wt()V

    if-eqz p3, :cond_1a

    .line 86
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    .line 87
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    goto :goto_7

    .line 88
    :cond_1a
    new-instance v1, Lcom/smartisanos/launcher/animations/Na;

    const/16 v2, 0x64

    invoke-direct {v1, v0, v2}, Lcom/smartisanos/launcher/animations/Na;-><init>(Lcom/smartisanos/launcher/animations/Qa;I)V

    const/4 v0, 0x0

    .line 89
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_1b
    :goto_7
    return-void
.end method

.method public b(Lcom/smartisanos/launcher/animations/Pa;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Qa;->nn:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Qa;->fn:Lcom/smartisanos/smengine/g;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/Qa;->mn:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Qa;->mn:Ljava/util/ArrayList;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/Qa;->nn:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Qa;->nn:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method
