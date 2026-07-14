.class public Lcom/smartisanos/launcher/view/b/fa;
.super Lcom/smartisanos/smengine/SceneNode;
.source "PageView.java"

# interfaces
.implements Lcom/smartisanos/smengine/B;


# static fields
.field protected static SQ:Landroid/widget/Toast;

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field protected AQ:Z

.field protected BQ:Lcom/smartisanos/launcher/animations/r;

.field public CQ:Z

.field public DQ:Lcom/smartisanos/launcher/view/ec;

.field public FQ:Z

.field protected Fo:F

.field public GQ:Lcom/smartisanos/launcher/view/b/ra;

.field protected Go:I

.field public HQ:Z

.field protected Ho:F

.field protected IQ:F

.field protected Io:F

.field private JQ:Ljava/util/ArrayList;

.field protected Jo:F

.field private KN:Lcom/smartisanos/launcher/view/dc;

.field private KQ:Ljava/util/ArrayList;

.field protected LQ:I

.field protected MQ:I

.field protected NQ:Lcom/smartisanos/smengine/g;

.field protected OQ:F

.field protected PQ:Lcom/smartisanos/launcher/view/b/ea;

.field private RQ:Z

.field protected bK:I

.field protected gH:I

.field protected hH:I

.field protected hp:[F

.field protected ip:Lcom/smartisanos/smengine/g;

.field protected mScrollX:F

.field protected pQ:Ljava/util/ArrayList;

.field protected qQ:Ljava/util/ArrayList;

.field protected rQ:Ljava/util/List;

.field protected sQ:Lcom/smartisanos/launcher/view/b/P;

.field protected tQ:Lcom/smartisanos/launcher/view/b/M;

.field protected uQ:Lcom/smartisanos/launcher/view/a/g;

.field protected vQ:Lcom/smartisanos/launcher/view/b/M;

.field protected wQ:Lcom/smartisanos/launcher/view/b/M;

.field protected xQ:Lcom/smartisanos/smengine/oa;

.field protected yQ:Lcom/smartisanos/launcher/animations/Qa;

.field protected zQ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/b/fa;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/smartisanos/launcher/view/b/fa;->SQ:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/fa;->rQ:Ljava/util/List;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/fa;->zQ:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/b/fa;->AQ:Z

    .line 7
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/fa;->CQ:Z

    .line 8
    new-instance v0, Lcom/smartisanos/launcher/view/ec;

    const-string v1, "multi_select_node"

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/ec;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    .line 9
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/fa;->FQ:Z

    .line 10
    new-instance v0, Lcom/smartisanos/launcher/view/b/ra;

    const-string v1, "switch_page_node"

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/b/ra;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    .line 11
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/fa;->HQ:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 12
    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->IQ:F

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->JQ:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->KQ:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->LQ:I

    .line 16
    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->MQ:I

    .line 17
    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    .line 18
    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->gH:I

    .line 19
    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    .line 20
    new-instance v0, Lcom/smartisanos/launcher/view/b/ea;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/b/ea;-><init>(Lcom/smartisanos/launcher/view/b/fa;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->PQ:Lcom/smartisanos/launcher/view/b/ea;

    .line 21
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/fa;->RQ:Z

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method public static m(Ljava/lang/Object;)Z
    .locals 1

    .line 7
    instance-of v0, p0, Lcom/smartisanos/launcher/view/b/fa;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/smartisanos/launcher/view/b/t;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public Am()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Aq()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->JQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_0

    .line 5
    sget-object v2, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### update cellworldTranslateSinglePageMode data, cell size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 8
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 9
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 10
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->JQ:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Ar()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_3X4_MODE(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected Bq()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hp:[F

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->hp:[F

    .line 3
    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->Fo:F

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    const-wide/high16 v4, 0x4079000000000000L    # 400.0

    .line 4
    iget v6, p0, Lcom/smartisanos/launcher/view/b/fa;->Fo:F

    div-float v6, v2, v6

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v5, v4

    add-float/2addr v2, v5

    .line 5
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/fa;->hp:[F

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Br()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_4X4_MODE(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected Cq()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->gH:I

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/ra;->js()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/ra;->fs()V

    .line 6
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    const/4 v4, 0x0

    if-ltz v1, :cond_6

    .line 7
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/b/fa;->Yb(I)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_4

    move v6, v4

    .line 8
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 9
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/b/M;

    .line 10
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v8

    .line 11
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v9

    if-eq v8, v9, :cond_2

    :goto_2
    move v5, v4

    goto :goto_3

    .line 12
    :cond_2
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/M;->Sn()I

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_3
    if-eqz v5, :cond_6

    .line 13
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### empty screen index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 14
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 15
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 16
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "### all screen is not empty."

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_7
    return-void

    .line 17
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 18
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_9

    .line 19
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->dc(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method public Cr()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_4X5_MODE(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Dl()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    return p0
.end method

.method protected Dq()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Sn()I

    move-result v0

    if-nez v0, :cond_2

    .line 5
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    .line 6
    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "all pages are invisible, cleanEmptyPageForSingleMode do not remove this spacial page ,return"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Pq()Ljava/util/ArrayList;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Mq()V

    .line 10
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    .line 12
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/b/fa;->dc(I)V

    .line 13
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v3

    if-ltz v2, :cond_4

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    .line 14
    :cond_4
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v2

    if-nez v2, :cond_5

    add-int/lit8 v2, v3, -0x1

    .line 15
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v2

    if-nez v2, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 16
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v2

    .line 17
    :cond_5
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/b/fa;->s(Lcom/smartisanos/launcher/view/b/M;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public Dr()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v1, "]"

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mergeInvisiblePageToPageList total page count ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 4
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_3
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 10
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 11
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v5, :cond_4

    .line 12
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_5
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/fa;->rQ:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "], title ["

    const-string v7, "merge page index ["

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 14
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/b/M;

    if-nez v8, :cond_7

    .line 15
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v8, :cond_7

    .line 16
    iget-object v9, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {v9, v8}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    :cond_7
    if-eqz v8, :cond_9

    .line 17
    sget-boolean v9, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v9, :cond_8

    sget-object v9, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v8, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/M;->Bn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 18
    :cond_8
    iget-object v6, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_9
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 22
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 23
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_b

    sget-object v4, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string v5, "pageListMap size still larger than 0 !"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 24
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v5, :cond_c

    .line 26
    sget-boolean v8, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v8, :cond_d

    sget-object v8, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v5, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->Bn()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 27
    :cond_d
    iget-object v8, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 28
    :cond_e
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 29
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_f

    .line 33
    sget-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mergeInvisiblePageToPageList after merge, page list size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_f
    :goto_4
    return-void
.end method

.method public Eq()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Dq()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Cq()V

    :goto_0
    return-void
.end method

.method public Er()Lcom/smartisanos/smengine/g;
    .locals 4

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Xn()Lcom/smartisanos/smengine/g;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Lcom/smartisanos/launcher/view/b/ca;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/b/ca;-><init>(Lcom/smartisanos/launcher/view/b/fa;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    :cond_2
    return-object v0
.end method

.method protected F(II)Ljava/util/ArrayList;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p2, v0, :cond_2

    if-gez p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public Fq()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Gr()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Md()V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Rr()V

    return-void
.end method

.method public Fr()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Yn()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public G(II)V
    .locals 2

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    const v1, 0x3f7d70a4    # 0.99f

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/smartisanos/launcher/view/b/fa;->a(IIFF)V

    return-void
.end method

.method public Gb(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 3
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/b/M;->ib(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Gq()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/fa;->HQ:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/bb;->Fp()V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/bb;->xp()V

    :cond_0
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->ac(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0, v2, v3, v4}, Lcom/smartisanos/launcher/view/b/fa;->b(Lcom/smartisanos/launcher/view/b/M;IZ)Z

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    .line 10
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_4

    .line 11
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/b/M;

    .line 12
    invoke-virtual {v7, v4, v4}, Lcom/smartisanos/launcher/view/b/M;->d(ZZ)Lcom/smartisanos/smengine/g;

    .line 13
    invoke-virtual {v7, v3}, Lcom/smartisanos/launcher/view/b/M;->lb(Z)V

    .line 14
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 15
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Lcom/smartisanos/launcher/view/tc;->f(ZZ)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 16
    sget-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, " reset Mode "

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v2, v3, v4}, Lcom/smartisanos/launcher/view/b/fa;->b(Lcom/smartisanos/launcher/view/b/M;IZ)Z

    :cond_5
    return-void
.end method

.method public Gr()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 2
    instance-of v1, v0, Lcom/smartisanos/launcher/view/b/ka;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/smartisanos/launcher/view/b/ka;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/ka;->po()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected H(F)Lcom/smartisanos/smengine/g;
    .locals 13

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->gH:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v1

    .line 4
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### screen count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/ra;->js()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/ra;->fs()V

    .line 7
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/bb;->xp()V

    .line 9
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    :goto_0
    const/4 v5, 0x0

    if-ltz v1, :cond_b

    .line 10
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/b/fa;->Yb(I)Ljava/util/ArrayList;

    move-result-object v6

    move v7, v5

    .line 11
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    .line 12
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/b/M;

    .line 13
    sget-boolean v9, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v9, :cond_4

    sget-object v9, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "##### p index = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 14
    :cond_4
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v9

    .line 15
    sget-boolean v10, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v10, :cond_5

    sget-object v10, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "### cells .size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 16
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v10

    if-eq v9, v10, :cond_7

    .line 17
    sget-boolean v6, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v6, :cond_6

    .line 18
    sget-object v6, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string v7, "#########cells.size() != getCurrentPageCellCount()"

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_6
    :goto_2
    move v6, v5

    goto :goto_3

    .line 19
    :cond_7
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/M;->Sn()I

    move-result v8

    if-eqz v8, :cond_8

    .line 20
    sget-boolean v6, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v6, :cond_6

    sget-object v6, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string v7, "#########p.pageCellCount() != 0"

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    move v6, v4

    :goto_3
    if-eqz v6, :cond_b

    .line 21
    sget-boolean v5, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v5, :cond_a

    sget-object v5, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "### empty screen index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 22
    :cond_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 23
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 24
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_c

    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "### all screen is not empty."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_c
    return-object v2

    .line 25
    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 26
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v5, p1, :cond_e

    .line 27
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->dc(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 28
    :cond_e
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result p1

    .line 29
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->jr()I

    move-result v0

    mul-int/2addr p1, v0

    .line 30
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->s(Lcom/smartisanos/launcher/view/b/M;)V

    goto :goto_5

    .line 32
    :cond_f
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 33
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/bb;->Gp()V

    :cond_10
    sub-int/2addr v1, v4

    if-gtz v1, :cond_11

    .line 34
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_13

    if-ltz v1, :cond_13

    .line 35
    :cond_11
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_12

    .line 36
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/b/fa;->G(II)V

    .line 37
    :cond_12
    new-instance v0, Lcom/smartisanos/launcher/view/b/X;

    invoke-direct {v0, p0, v3}, Lcom/smartisanos/launcher/view/b/X;-><init>(Lcom/smartisanos/launcher/view/b/fa;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1, p1, v5, v0}, Lcom/smartisanos/launcher/view/b/fa;->a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object v2

    :cond_13
    :goto_5
    return-object v2
.end method

.method protected Hb(Z)Lcom/smartisanos/launcher/view/b/M;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->er()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->q(Lcom/smartisanos/launcher/view/b/M;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->_q()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Iq()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->_q()Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Zq()Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    return-object p0
.end method

.method public Hq()Lcom/smartisanos/launcher/a/b/j;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 5
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    .line 6
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->io()Lcom/smartisanos/launcher/data/Q;

    move-result-object v6

    .line 7
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v5

    .line 9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_1

    .line 11
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/a/g;

    .line 12
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 13
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 14
    :cond_1
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 15
    :cond_2
    new-instance p0, Lcom/smartisanos/launcher/a/b/j;

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/a/b/j;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-object p0
.end method

.method public Hr()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->xQ:Lcom/smartisanos/smengine/oa;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/oa;->isFinished()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public I(Z)Lcom/smartisanos/launcher/view/b/M;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "all page is invisible, create a empty page, isReadOnly status ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->getPageCount()I

    move-result v1

    .line 4
    new-instance v2, Lcom/smartisanos/launcher/data/Q;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/Q;-><init>()V

    const-string v3, ""

    .line 5
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/smartisanos/launcher/view/b/fa;->a(Ljava/util/ArrayList;ILjava/lang/String;Lcom/smartisanos/launcher/data/Q;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    .line 6
    iput-boolean p1, v0, Lcom/smartisanos/launcher/view/b/M;->uI:Z

    .line 7
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createEmptyPage set readOnlyPage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->l(Lcom/smartisanos/launcher/view/b/M;)V

    return-object v0
.end method

.method protected I(F)Lcom/smartisanos/smengine/g;
    .locals 6

    .line 9
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 12
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Sn()I

    move-result v0

    if-nez v0, :cond_2

    .line 13
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    .line 14
    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "all pages are invisible, cleanEmptyPageForSingleMode do not remove this spacial page ,return"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    return-object v2

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Pq()Ljava/util/ArrayList;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v2

    .line 17
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v4

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_4

    .line 19
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Dq()V

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    .line 20
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/b/fa;->G(II)V

    .line 21
    new-instance v0, Lcom/smartisanos/launcher/view/b/Y;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/b/Y;-><init>(Lcom/smartisanos/launcher/view/b/fa;)V

    invoke-virtual {p0, v3, p1, v1, v0}, Lcom/smartisanos/launcher/view/b/fa;->a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object v2

    goto :goto_0

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne v4, v0, :cond_7

    sub-int/2addr v4, v3

    .line 23
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### topageindex = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 24
    :cond_6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0, v4}, Lcom/smartisanos/launcher/view/b/fa;->G(II)V

    .line 25
    new-instance v0, Lcom/smartisanos/launcher/view/b/Z;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/b/Z;-><init>(Lcom/smartisanos/launcher/view/b/fa;)V

    invoke-virtual {p0, v4, p1, v1, v0}, Lcom/smartisanos/launcher/view/b/fa;->a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object v2

    goto :goto_0

    :cond_7
    sub-int/2addr v4, v3

    .line 26
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0, v4}, Lcom/smartisanos/launcher/view/b/fa;->G(II)V

    .line 27
    new-instance v0, Lcom/smartisanos/launcher/view/b/aa;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/b/aa;-><init>(Lcom/smartisanos/launcher/view/b/fa;)V

    invoke-virtual {p0, v4, p1, v1, v0}, Lcom/smartisanos/launcher/view/b/fa;->a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public Ib(Z)I
    .locals 4

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 3
    iget v0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    neg-float v0, v0

    .line 4
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->Jb(Z)F

    move-result p1

    div-float/2addr v0, p1

    .line 5
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### getscreenIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->jr()I

    move-result v1

    div-int/2addr p1, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const/4 v2, 0x0

    if-gez v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    int-to-float v1, p1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    move v0, p1

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    if-nez v0, :cond_5

    .line 8
    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget v3, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    if-ne v1, v3, :cond_5

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-nez v1, :cond_5

    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->IQ:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_5

    .line 9
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-gez p0, :cond_3

    move p0, v2

    :cond_3
    if-le p0, p1, :cond_4

    move p0, p1

    :cond_4
    return p0

    :cond_5
    return v0
.end method

.method public Iq()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->Ub(I)Ljava/util/List;

    return-void
.end method

.method protected Ir()V
    .locals 1

    .line 1
    sget p0, Lcom/smartisanos/launcher/ob;->over_page_limit:I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/Bb;->showToast(II)V

    return-void
.end method

.method public J(F)Lcom/smartisanos/smengine/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Ed()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->I(F)Lcom/smartisanos/smengine/g;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->H(F)Lcom/smartisanos/smengine/g;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public Jb(Z)F
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->kr()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->lr()F

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object p1

    .line 4
    iget-object v3, p1, Lcom/smartisanos/smengine/d/f;->tY:Lcom/smartisanos/smengine/a/i;

    .line 5
    invoke-virtual {v3, v2, v2}, Lcom/smartisanos/smengine/a/i;->set(FF)Lcom/smartisanos/smengine/a/i;

    .line 6
    iget v2, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-virtual {p0, v2, v3}, Lcom/smartisanos/launcher/view/b/fa;->a(ILcom/smartisanos/smengine/a/i;)V

    .line 7
    iget v2, v3, Lcom/smartisanos/smengine/a/i;->x:F

    .line 8
    invoke-virtual {p1}, Lcom/smartisanos/smengine/d/f;->release()V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lcom/smartisanos/smengine/a/i;

    invoke-direct {p1}, Lcom/smartisanos/smengine/a/i;-><init>()V

    .line 10
    invoke-virtual {p1, v2, v2}, Lcom/smartisanos/smengine/a/i;->set(FF)Lcom/smartisanos/smengine/a/i;

    .line 11
    iget v2, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/launcher/view/b/fa;->a(ILcom/smartisanos/smengine/a/i;)V

    .line 12
    iget v2, p1, Lcom/smartisanos/smengine/a/i;->x:F

    .line 13
    :goto_0
    iget p1, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->isSinglePageMode(I)Z

    move-result p1

    if-eqz p1, :cond_1

    add-float/2addr v2, v0

    return v2

    .line 14
    :cond_1
    iget p1, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->isMultiPageMode(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->getMultiPageRowColumn(I)[I

    move-result-object p0

    const/4 p1, 0x1

    .line 16
    aget p0, p0, p1

    sub-int/2addr p0, p1

    int-to-float p0, p0

    add-float/2addr v1, v2

    mul-float/2addr p0, v1

    add-float/2addr p0, v0

    add-float/2addr p0, v2

    return p0

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unknown mode in getSpan"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public Jq()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/M;->setSceneNodeForceRender(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Jr()V
    .locals 33

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/fa;->NQ:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/fa;->NQ:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/high16 v2, 0x200000

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v1

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/fa;->ar()I

    move-result v2

    .line 6
    new-array v4, v2, [Lcom/smartisanos/launcher/view/b/M;

    .line 7
    new-array v5, v2, [F

    .line 8
    new-array v6, v2, [F

    .line 9
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7}, Lcom/smartisanos/smengine/a/j;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v8

    move v11, v9

    move v12, v11

    :goto_0
    if-ge v10, v2, :cond_1

    mul-int v13, v1, v2

    add-int/2addr v13, v10

    .line 10
    invoke-virtual {v0, v13}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v13

    .line 11
    aput-object v13, v4, v10

    .line 12
    invoke-virtual {v13, v7}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 13
    invoke-virtual {v7}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v13

    aput v13, v5, v10

    .line 14
    invoke-virtual {v7}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v13

    aput v13, v6, v10

    .line 15
    aget v13, v5, v10

    add-float/2addr v11, v13

    .line 16
    aget v13, v6, v10

    add-float/2addr v12, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    int-to-float v1, v2

    div-float/2addr v11, v1

    div-float/2addr v12, v1

    .line 17
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v1, v0, Lcom/smartisanos/launcher/view/b/fa;->NQ:Lcom/smartisanos/smengine/g;

    :goto_1
    if-ge v8, v2, :cond_2

    .line 18
    aget-object v1, v4, v8

    .line 19
    aget v7, v5, v8

    sub-float/2addr v7, v11

    .line 20
    aget v10, v6, v8

    sub-float/2addr v10, v12

    .line 21
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v13

    .line 22
    invoke-virtual {v13}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v22

    .line 23
    invoke-virtual {v13}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v23

    .line 24
    invoke-virtual {v13}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result v13

    const v14, -0x430a3d80    # -0.029999971f

    mul-float/2addr v7, v14

    add-float v7, v22, v7

    mul-float/2addr v10, v14

    add-float v10, v23, v10

    .line 25
    new-instance v15, Lcom/smartisanos/smengine/oa;

    invoke-direct {v15, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 26
    invoke-virtual {v15, v3}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const v14, 0x3dcccccd    # 0.1f

    .line 27
    invoke-virtual {v15, v14}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v3, 0xe

    .line 28
    invoke-virtual {v15, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v16, 0x1

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const v20, 0x3f7851ec    # 0.97f

    const v21, 0x3f7851ec    # 0.97f

    const/high16 v24, 0x3f800000    # 1.0f

    move v3, v14

    move-object v14, v15

    move-object v3, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v24

    .line 29
    invoke-virtual/range {v14 .. v21}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 30
    iget-object v14, v0, Lcom/smartisanos/launcher/view/b/fa;->NQ:Lcom/smartisanos/smengine/g;

    invoke-virtual {v14, v9, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 31
    new-instance v3, Lcom/smartisanos/smengine/oa;

    invoke-direct {v3, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v14, 0x3dcccccd    # 0.1f

    .line 32
    invoke-virtual {v3, v14}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v14, 0xe

    .line 33
    invoke-virtual {v3, v14}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v15, 0x0

    move-object v14, v3

    move/from16 v16, v22

    move/from16 v17, v23

    move/from16 v18, v13

    move/from16 v19, v7

    move/from16 v20, v10

    move/from16 v21, v13

    .line 34
    invoke-virtual/range {v14 .. v21}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 35
    iget-object v14, v0, Lcom/smartisanos/launcher/view/b/fa;->NQ:Lcom/smartisanos/smengine/g;

    invoke-virtual {v14, v9, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 36
    new-instance v3, Lcom/smartisanos/smengine/oa;

    invoke-direct {v3, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/4 v15, 0x1

    .line 37
    invoke-virtual {v3, v15}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const v14, 0x3e99999a    # 0.3f

    .line 38
    invoke-virtual {v3, v14}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v9, 0xe

    .line 39
    invoke-virtual {v3, v9}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v26, 0x1

    const v27, 0x3f7851ec    # 0.97f

    const v28, 0x3f7851ec    # 0.97f

    const/high16 v29, 0x3f800000    # 1.0f

    const/high16 v30, 0x3f800000    # 1.0f

    const/high16 v31, 0x3f800000    # 1.0f

    const/high16 v32, 0x3f800000    # 1.0f

    move-object/from16 v25, v3

    .line 40
    invoke-virtual/range {v25 .. v32}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 41
    iget-object v9, v0, Lcom/smartisanos/launcher/view/b/fa;->NQ:Lcom/smartisanos/smengine/g;

    const v15, 0x3dcccccd    # 0.1f

    invoke-virtual {v9, v15, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 42
    new-instance v3, Lcom/smartisanos/smengine/oa;

    invoke-direct {v3, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 43
    invoke-virtual {v3, v14}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v1, 0xe

    .line 44
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v15, 0x0

    move-object v14, v3

    const/4 v1, 0x1

    move/from16 v16, v7

    move/from16 v17, v10

    move/from16 v19, v22

    move/from16 v20, v23

    .line 45
    invoke-virtual/range {v14 .. v21}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 46
    iget-object v7, v0, Lcom/smartisanos/launcher/view/b/fa;->NQ:Lcom/smartisanos/smengine/g;

    const v9, 0x3dcccccd    # 0.1f

    invoke-virtual {v7, v9, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v8, v8, 0x1

    move v3, v1

    const/4 v9, 0x0

    goto/16 :goto_1

    .line 47
    :cond_2
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/fa;->NQ:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/view/b/Q;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/b/Q;-><init>(Lcom/smartisanos/launcher/view/b/fa;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 48
    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->NQ:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method public K(F)F
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->Io:F

    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->Fo:F

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public Kb(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/animations/r;->A(Z)V

    return-void
.end method

.method public Kq()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->getPageCount()I

    move-result v0

    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->getMaxPageCount(I)I

    move-result v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    .line 3
    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "max page count reached, long press do not create a new page ,return"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return v2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget v3, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    if-ne v0, v3, :cond_3

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Sn()I

    move-result v0

    if-nez v0, :cond_3

    .line 7
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    .line 8
    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "all pages are invisible, long press do not create a new page ,return"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    return v2

    .line 9
    :cond_3
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget v3, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    if-ne v0, v3, :cond_5

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 11
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_4

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_4

    return v2

    .line 13
    :cond_4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 14
    :cond_5
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget v3, p0, Lcom/smartisanos/launcher/view/b/fa;->gH:I

    if-ne v0, v3, :cond_6

    .line 15
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/b/M;

    .line 16
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    return v2

    .line 17
    :cond_6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Rq()Ljava/util/ArrayList;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 20
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v3

    .line 21
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_7

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v2

    if-ne v3, p0, :cond_7

    return v2

    :cond_7
    return v1
.end method

.method public Kr()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/fa;->NQ:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/fa;->NQ:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/high16 v2, 0x200000

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 4
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v1, v0, Lcom/smartisanos/launcher/view/b/fa;->NQ:Lcom/smartisanos/smengine/g;

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    .line 7
    new-instance v10, Lcom/smartisanos/smengine/oa;

    invoke-direct {v10, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/4 v11, 0x0

    .line 8
    invoke-virtual {v10, v11}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const v12, 0x3dcccccd    # 0.1f

    .line 9
    invoke-virtual {v10, v12}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v13, 0xe

    .line 10
    invoke-virtual {v10, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f83d70a    # 1.03f

    const v8, 0x3f83d70a    # 1.03f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v2, v10

    .line 11
    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 12
    iget-object v2, v0, Lcom/smartisanos/launcher/view/b/fa;->NQ:Lcom/smartisanos/smengine/g;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v10}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 13
    new-instance v2, Lcom/smartisanos/smengine/oa;

    invoke-direct {v2, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 14
    invoke-virtual {v2, v11}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const v1, 0x3e99999a    # 0.3f

    .line 15
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 16
    invoke-virtual {v2, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v15, 0x1

    const v16, 0x3f83d70a    # 1.03f

    const v17, 0x3f83d70a    # 1.03f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    move-object v14, v2

    .line 17
    invoke-virtual/range {v14 .. v21}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 18
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/fa;->NQ:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v12, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 19
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/fa;->NQ:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/view/b/da;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/b/da;-><init>(Lcom/smartisanos/launcher/view/b/fa;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 20
    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->NQ:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method public L(F)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/fa;->zQ:Z

    if-eqz v0, :cond_5

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->ip:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->ip:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->kill()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->ip:Lcom/smartisanos/smengine/g;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->ip:Lcom/smartisanos/smengine/g;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->reset()V

    :goto_0
    move v0, v2

    .line 8
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 10
    new-instance v11, Lcom/smartisanos/smengine/oa;

    invoke-direct {v11, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 11
    invoke-virtual {v11, p1}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 12
    invoke-virtual {v11, v2}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 13
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    const/16 v3, 0xe

    .line 14
    invoke-virtual {v11, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v4, 0x1

    .line 15
    iget v5, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v1, Lcom/smartisanos/smengine/a/j;->z:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v3, v11

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 16
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->ip:Lcom/smartisanos/smengine/g;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v11}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/fa;->ip:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->start()V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/fa;->ip:Lcom/smartisanos/smengine/g;

    new-instance v0, Lcom/smartisanos/launcher/view/b/T;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/b/T;-><init>(Lcom/smartisanos/launcher/view/b/fa;)V

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    goto :goto_2

    .line 19
    :cond_3
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/b/fa;->zQ:Z

    .line 20
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/b/fa;->CQ:Z

    if-eqz p1, :cond_4

    .line 21
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/ec;->Rp()V

    .line 22
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 23
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/b/P;->Fb(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public Lb(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

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

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_0

    .line 3
    instance-of v1, v0, Lcom/smartisanos/launcher/view/b/ka;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    check-cast v0, Lcom/smartisanos/launcher/view/b/ka;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/b/ka;->ob(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Lq()Lcom/smartisanos/launcher/view/a/g;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->tn()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "### all visible page is full, now recreate a new empty screen."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Iq()V

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Lq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    return-object p0
.end method

.method public Lr()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Ld()V

    return-void
.end method

.method public M(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/b/fa;->IQ:F

    return-void
.end method

.method public Mb(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/fa;->AQ:Z

    const/4 p1, 0x0

    move v0, p1

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/b/fa;->AQ:Z

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/b/M;->Na(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 8
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/b/fa;->AQ:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/M;->Na(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public Mq()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Hr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->xQ:Lcom/smartisanos/smengine/oa;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/oa;->Ij()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->ip:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->ip:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_1
    return-void
.end method

.method public Mr()V
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->L(F)V

    return-void
.end method

.method public Nb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/fa;->RQ:Z

    return-void
.end method

.method public Nq()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->KQ:Ljava/util/ArrayList;

    return-object p0
.end method

.method public Nr()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Pr()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->mo()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Oq()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->JQ:Ljava/util/ArrayList;

    return-object p0
.end method

.method public Or()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v2, :cond_1

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->uQ:Lcom/smartisanos/launcher/view/a/g;

    if-eq v2, v3, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->fb(Z)V

    .line 9
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public Pq()Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/b/fa;->cc(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### screen index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is empty screen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public Pr()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    iput v1, v2, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v3

    iget v2, v2, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/tc;->Ob(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Qq()Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 7
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    .line 8
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->rQ:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    if-nez v4, :cond_4

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    :cond_4
    if-eqz v4, :cond_5

    .line 12
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_5
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 15
    :cond_6
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result p0

    if-lez p0, :cond_8

    .line 16
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v2, :cond_7

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    return-object v0

    .line 20
    :cond_9
    :goto_4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public Qr()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->rQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->rQ:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePageObjectNameList index ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], pageName ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Bn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], name ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public Rb(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    sub-int/2addr p0, v2

    if-ne v0, p0, :cond_1

    if-lez p1, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public Ro()Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->uQ:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method public Rq()Ljava/util/ArrayList;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lcom/smartisanos/smengine/d/f;->tY:Lcom/smartisanos/smengine/a/i;

    .line 4
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    const/4 v4, 0x0

    .line 5
    :goto_0
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v2, v5, v5}, Lcom/smartisanos/smengine/a/i;->set(FF)Lcom/smartisanos/smengine/a/i;

    .line 7
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    .line 8
    invoke-virtual {v5, v3}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 9
    iget v6, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-virtual {p0, v6, v2}, Lcom/smartisanos/launcher/view/b/fa;->a(ILcom/smartisanos/smengine/a/i;)V

    .line 10
    iget v6, v2, Lcom/smartisanos/smengine/a/i;->x:F

    .line 11
    iget v7, v3, Lcom/smartisanos/smengine/a/j;->x:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    sub-float v8, v7, v6

    add-float/2addr v7, v6

    .line 12
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    neg-int v9, v6

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_0

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpg-float v6, v8, v6

    if-lez v6, :cond_1

    :cond_0
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    neg-int v8, v6

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_2

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpg-float v6, v7, v6

    if-gtz v6, :cond_2

    .line 13
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v1}, Lcom/smartisanos/smengine/d/f;->release()V

    return-object v0
.end method

.method public Rr()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->gH:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->no()V

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->ko()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->no()V

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->ko()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public Sb(I)V
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/smartisanos/launcher/view/b/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/b/fa;->g(IF)V

    goto :goto_0

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/b/fa;->g(IF)V

    :goto_0
    return-void
.end method

.method public Sq()Lcom/smartisanos/launcher/animations/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    return-object p0
.end method

.method public Tb(I)Ljava/util/List;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->ur()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 4
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 5
    instance-of v4, p0, Lcom/smartisanos/launcher/view/b/t;

    if-eqz v4, :cond_0

    .line 6
    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/N;->C(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/N;->D(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v1

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->getPageCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, p1, :cond_3

    .line 9
    iget v7, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v1, Lcom/smartisanos/smengine/a/i;->x:F

    add-float/2addr v7, v8

    iput v7, v2, Lcom/smartisanos/smengine/a/j;->x:F

    .line 10
    iget v7, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v1, Lcom/smartisanos/smengine/a/i;->y:F

    add-float/2addr v7, v8

    iput v7, v2, Lcom/smartisanos/smengine/a/j;->y:F

    .line 11
    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/b/fa;->I(Z)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v7

    .line 12
    iget v8, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v2, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 13
    iget v8, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget v9, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    if-ne v8, v9, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v8

    if-eqz v8, :cond_1

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f7d70a4    # 0.99f

    .line 14
    invoke-virtual {v7, v9, v9, v8}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    :cond_1
    add-int v8, v4, v6

    .line 15
    iput v8, v7, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    .line 16
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateGeometricState()V

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 18
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/M;->_n()V

    .line 19
    :cond_2
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public Tq()Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->wQ:Lcom/smartisanos/launcher/view/b/M;

    return-object p0
.end method

.method public Ua(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    const-string v2, ""

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->uQ:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->uQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->uQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 8
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    .line 9
    invoke-virtual {v4, p1}, Lcom/smartisanos/launcher/view/b/M;->Oa(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 10
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    if-eqz p0, :cond_6

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 14
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_7

    return-object v1

    :cond_7
    return-object v0

    :cond_8
    :goto_2
    return-object v1
.end method

.method public Ub(I)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createEmptyScreenByMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    .line 2
    iget v3, v0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/fa;->Tb(I)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_2

    .line 4
    :cond_1
    iget v3, v0, Lcom/smartisanos/launcher/view/b/fa;->gH:I

    if-ne v1, v3, :cond_8

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/smartisanos/launcher/data/Constants;->getPageNums(I)I

    move-result v2

    .line 6
    invoke-static/range {p1 .. p1}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_4_MODE(I)Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/fa;->dr()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v3

    .line 8
    iget-object v7, v0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 9
    div-int/2addr v3, v2

    .line 10
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/b/fa;->Tb(I)Ljava/util/List;

    move-result-object v7

    .line 11
    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->pageWorldCenterPointsInWindow:[[Lcom/smartisanos/smengine/a/j;

    aget-object v1, v8, v1

    .line 12
    iget-object v8, v0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    div-int/2addr v8, v2

    .line 13
    sget v9, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v9, v9

    .line 14
    iget v10, v0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {v10}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v10

    iget v10, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 15
    iget v11, v0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {v11}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v11

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 16
    iget v12, v0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {v12}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v12

    iget v12, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 17
    iget v13, v0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {v13}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v13

    iget v13, v13, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 18
    sget-boolean v14, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v14, :cond_2

    int-to-float v9, v2

    mul-float/2addr v9, v12

    .line 19
    iget v14, v0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    .line 20
    invoke-static {v14}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v14

    iget v14, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->page_spacing_h:F

    add-int/lit8 v15, v2, -0x1

    int-to-float v15, v15

    mul-float/2addr v14, v15

    add-float/2addr v9, v14

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/fa;->kr()F

    move-result v14

    add-float/2addr v9, v14

    :cond_2
    div-float/2addr v12, v10

    div-float/2addr v13, v11

    move v10, v6

    :goto_0
    if-ge v10, v2, :cond_3

    .line 22
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/b/M;

    .line 23
    new-instance v14, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v14}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/fa;->or()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v15

    invoke-virtual {v15}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v15

    .line 25
    invoke-virtual {v15}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v15

    .line 26
    aget-object v6, v1, v10

    invoke-virtual {v15, v6, v14}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 27
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    iget v15, v14, Lcom/smartisanos/smengine/a/j;->x:F

    sub-int v4, v8, v3

    int-to-float v4, v4

    mul-float/2addr v4, v9

    add-float/2addr v15, v4

    iget v4, v14, Lcom/smartisanos/smengine/a/j;->y:F

    iget v14, v14, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v6, v15, v4, v14}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 28
    iget v4, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v6, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v11, v4, v6, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 29
    invoke-virtual {v11, v12, v13, v4}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 30
    iget v4, v0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    const/4 v6, 0x0

    invoke-virtual {v0, v11, v6, v4}, Lcom/smartisanos/launcher/view/b/fa;->a(Lcom/smartisanos/launcher/view/b/M;II)V

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    goto :goto_0

    .line 31
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    move-object v2, v7

    goto/16 :goto_2

    .line 32
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_9_MODE(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/fa;->dr()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v3

    .line 34
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 35
    div-int/2addr v3, v2

    .line 36
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/b/fa;->Tb(I)Ljava/util/List;

    move-result-object v4

    .line 37
    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->pageWorldCenterPointsInWindow:[[Lcom/smartisanos/smengine/a/j;

    aget-object v1, v6, v1

    .line 38
    iget-object v6, v0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    div-int/2addr v6, v2

    .line 39
    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v7, v7

    .line 40
    iget v8, v0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v8

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 41
    iget v9, v0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {v9}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v9

    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 42
    iget v10, v0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {v10}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v10

    iget v10, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 43
    iget v11, v0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {v11}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v11

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float/2addr v10, v8

    div-float/2addr v11, v9

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_6

    .line 44
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/b/M;

    .line 45
    new-instance v12, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v12}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/fa;->or()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v13

    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v13

    .line 47
    invoke-virtual {v13}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v13

    .line 48
    aget-object v14, v1, v8

    invoke-virtual {v13, v14, v12}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 49
    new-instance v13, Lcom/smartisanos/smengine/a/j;

    iget v14, v12, Lcom/smartisanos/smengine/a/j;->x:F

    sub-int v15, v6, v3

    int-to-float v5, v15

    mul-float/2addr v5, v7

    add-float/2addr v14, v5

    iget v5, v12, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v12, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v13, v14, v5, v12}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 50
    sget-boolean v5, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v5, :cond_5

    sget-object v5, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[9]current_group_index - lastInWindowGroupIndex = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 51
    :cond_5
    iget v5, v13, Lcom/smartisanos/smengine/a/j;->x:F

    iget v12, v13, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v13, 0x0

    invoke-virtual {v9, v5, v12, v13}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 52
    invoke-virtual {v9, v10, v11, v5}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 53
    iget v12, v0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    const/4 v14, 0x0

    invoke-virtual {v0, v9, v14, v12}, Lcom/smartisanos/launcher/view/b/fa;->a(Lcom/smartisanos/launcher/view/b/M;II)V

    add-int/lit8 v8, v8, 0x1

    move v5, v13

    goto :goto_1

    .line 54
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    move-object v2, v4

    goto :goto_2

    .line 55
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createEmptyScreenByMode mode error. mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_2
    return-object v2
.end method

.method public Uh()Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/bb;->yp()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/bb;->yp()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v3

    if-ne v3, v2, :cond_4

    .line 9
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/bb;->zp()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/bb;->zp()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    if-nez v3, :cond_7

    goto :goto_1

    .line 13
    :cond_7
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_1

    .line 14
    :cond_8
    instance-of v4, v3, Lcom/smartisanos/launcher/view/a/ka;

    if-eqz v4, :cond_6

    .line 15
    check-cast v3, Lcom/smartisanos/launcher/view/a/ka;

    .line 16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    return-object v0
.end method

.method public Uq()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    .line 2
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    return p0
.end method

.method public Vb(I)Lcom/smartisanos/smengine/a/i;
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/i;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    .line 3
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    div-int v1, p1, p0

    .line 4
    rem-int/2addr p1, p0

    int-to-float p0, v1

    int-to-float p1, p1

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/smartisanos/smengine/a/i;->set(FF)Lcom/smartisanos/smengine/a/i;

    return-object v0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "### error,cell index < 0"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public Vg()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 6
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->uQ:Lcom/smartisanos/launcher/view/a/g;

    if-eq v2, v3, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Vg()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public Vq()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result p0

    return p0
.end method

.method public Wb(I)Lcom/smartisanos/launcher/view/b/M;
    .locals 2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public Wq()Lcom/smartisanos/launcher/view/b/M;
    .locals 6

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 5
    iget v3, v0, Lcom/smartisanos/smengine/a/j;->x:F

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    neg-int v5, v4

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_0

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public Xb(I)Lcom/smartisanos/launcher/view/b/M;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public Xq()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    .line 2
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    return p0
.end method

.method public Yb(I)Ljava/util/ArrayList;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->jr()I

    move-result v0

    mul-int/2addr p1, v0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->jr()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/b/fa;->F(II)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public Yq()Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->tQ:Lcom/smartisanos/launcher/view/b/M;

    return-object p0
.end method

.method public Zb(I)Lcom/smartisanos/launcher/view/b/M;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/b/M;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected Zq()Lcom/smartisanos/launcher/view/b/M;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_3

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 7
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Kn()Z

    move-result v3

    if-nez v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public _b(I)[Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->updatePageCellCenterPoints(I)V

    .line 2
    sget-object p0, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method protected _q()Lcom/smartisanos/launcher/view/b/M;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    add-int/lit8 p0, p0, -0x1

    :goto_1
    if-ltz p0, :cond_2

    .line 6
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 7
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 p0, p0, -0x1

    move-object v1, v2

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public a(ZFFLcom/smartisanos/smengine/a;I)F
    .locals 5

    .line 126
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->de()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/high16 p1, 0x447a0000    # 1000.0f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    move p2, v0

    move p1, v1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x3b860000    # -1000.0f

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    move p1, v0

    move p2, v1

    goto :goto_0

    :cond_1
    move p1, v1

    move p2, p1

    .line 127
    :goto_0
    iget v2, p0, Lcom/smartisanos/launcher/view/b/fa;->Io:F

    iget v3, p0, Lcom/smartisanos/launcher/view/b/fa;->Jo:F

    sub-float/2addr v2, v3

    iget v4, p0, Lcom/smartisanos/launcher/view/b/fa;->Fo:F

    div-float/2addr v2, v4

    if-eqz p1, :cond_2

    int-to-float p1, p5

    add-float/2addr v2, p1

    float-to-double p1, v2

    .line 128
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    :goto_1
    double-to-int p1, p1

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    int-to-float p1, p5

    sub-float/2addr v2, p1

    float-to-double p1, v2

    .line 129
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    goto :goto_1

    .line 130
    :cond_3
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_6

    .line 131
    iget p1, p0, Lcom/smartisanos/launcher/view/b/fa;->OQ:F

    sub-float/2addr v3, p1

    const/high16 p1, 0x40800000    # 4.0f

    div-float p2, v4, p1

    cmpl-float p2, v3, p2

    if-lez p2, :cond_4

    int-to-float p1, p5

    sub-float/2addr v2, p1

    float-to-double p1, v2

    .line 132
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    goto :goto_1

    :cond_4
    neg-float p2, v4

    div-float/2addr p2, p1

    cmpg-float p1, v3, p2

    if-gez p1, :cond_5

    int-to-float p1, p5

    add-float/2addr v2, p1

    float-to-double p1, v2

    .line 133
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    goto :goto_1

    .line 134
    :cond_5
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_2

    .line 135
    :cond_6
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_2
    if-gez p1, :cond_7

    move p1, v1

    goto :goto_3

    .line 136
    :cond_7
    iget p2, p0, Lcom/smartisanos/launcher/view/b/fa;->Go:I

    add-int/lit8 p5, p2, -0x1

    if-le p1, p5, :cond_8

    add-int/lit8 p1, p2, -0x1

    .line 137
    :cond_8
    :goto_3
    invoke-virtual {p0, p1, p3, v1, p4}, Lcom/smartisanos/launcher/view/b/fa;->a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object p0

    .line 138
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    int-to-float p0, p1

    return p0
.end method

.method public a(FFZ)Lcom/smartisanos/launcher/view/b/M;
    .locals 3

    .line 18
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/4 p1, 0x0

    .line 19
    :goto_0
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 20
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/launcher/view/b/M;

    .line 21
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    :cond_0
    if-eqz p3, :cond_1

    .line 23
    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget v2, p0, Lcom/smartisanos/launcher/view/b/fa;->gH:I

    if-ne v1, v2, :cond_1

    .line 24
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(ILjava/lang/String;Lcom/smartisanos/launcher/data/Q;)Lcom/smartisanos/launcher/view/b/M;
    .locals 4

    .line 9
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPage by page index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/launcher/Aa;->K(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 12
    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v1

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPage error, page index ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], max cell count ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], cell list size ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    sget-object v2, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 17
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/smartisanos/launcher/view/b/fa;->a(Ljava/util/ArrayList;ILjava/lang/String;Lcom/smartisanos/launcher/data/Q;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/util/ArrayList;ILjava/lang/String;Lcom/smartisanos/launcher/data/Q;)Lcom/smartisanos/launcher/view/b/M;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/Eb;->Jx:Z

    .line 3
    iget p4, p4, Lcom/smartisanos/launcher/data/Q;->Er:I

    const/4 v1, 0x1

    const-string v2, "page"

    if-ne p4, v1, :cond_1

    .line 4
    new-instance p4, Lcom/smartisanos/launcher/view/b/sa;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, v0, p1, p3, p0}, Lcom/smartisanos/launcher/view/b/sa;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p4, v1, :cond_2

    .line 5
    new-instance p4, Lcom/smartisanos/launcher/view/b/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "folder_page"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, v0, p1, p3, p0}, Lcom/smartisanos/launcher/view/b/a;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 6
    new-instance p4, Lcom/smartisanos/launcher/view/b/ka;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, v0, p1, p3, p0}, Lcom/smartisanos/launcher/view/b/ka;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V

    goto :goto_0

    .line 7
    :cond_3
    new-instance p4, Lcom/smartisanos/launcher/view/b/O;

    invoke-direct {p4, v2, p1, p3, p0}, Lcom/smartisanos/launcher/view/b/O;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V

    .line 8
    :goto_0
    iput p2, p4, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    return-object p4
.end method

.method public a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;
    .locals 11

    .line 139
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Hr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "#### scrollto slideanimation != null mSlideAnimation KILL"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 142
    iget-object p3, p0, Lcom/smartisanos/launcher/view/b/fa;->xQ:Lcom/smartisanos/smengine/oa;

    invoke-virtual {p3}, Lcom/smartisanos/smengine/oa;->Ij()V

    goto :goto_0

    .line 143
    :cond_1
    iget-object p3, p0, Lcom/smartisanos/launcher/view/b/fa;->xQ:Lcom/smartisanos/smengine/oa;

    invoke-virtual {p3}, Lcom/smartisanos/smengine/oa;->kill()V

    .line 144
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->de()V

    int-to-float p3, p1

    .line 145
    invoke-virtual {p0, p3}, Lcom/smartisanos/launcher/view/b/fa;->K(F)F

    move-result p3

    .line 146
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    .line 147
    sget-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### scrollto, needmovex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "targetIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->xQ:Lcom/smartisanos/smengine/oa;

    if-nez v0, :cond_4

    .line 149
    new-instance v0, Lcom/smartisanos/smengine/oa;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->xQ:Lcom/smartisanos/smengine/oa;

    goto :goto_1

    .line 150
    :cond_4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/oa;->reset()V

    .line 151
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->xQ:Lcom/smartisanos/smengine/oa;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/oa;->g(Lcom/smartisanos/smengine/SceneNode;)V

    .line 152
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 154
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->xQ:Lcom/smartisanos/smengine/oa;

    invoke-virtual {v2, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 155
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/fa;->xQ:Lcom/smartisanos/smengine/oa;

    const/16 v2, 0xe

    invoke-virtual {p2, v2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 156
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->xQ:Lcom/smartisanos/smengine/oa;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v5

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v6

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result v7

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result p2

    add-float v8, p2, p3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v9

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result v10

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    if-eqz p4, :cond_5

    .line 157
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/fa;->xQ:Lcom/smartisanos/smengine/oa;

    new-instance p3, Lcom/smartisanos/launcher/view/b/U;

    invoke-direct {p3, p0, p4}, Lcom/smartisanos/launcher/view/b/U;-><init>(Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/smengine/a;)V

    invoke-virtual {p2, p3}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    goto :goto_2

    .line 158
    :cond_5
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/fa;->xQ:Lcom/smartisanos/smengine/oa;

    iget-object p3, p0, Lcom/smartisanos/launcher/view/b/fa;->PQ:Lcom/smartisanos/launcher/view/b/ea;

    invoke-virtual {p2, p3}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    :goto_2
    const/4 p2, 0x0

    .line 159
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->xQ:Lcom/smartisanos/smengine/oa;

    invoke-virtual {v1, p2, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 160
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object p0

    sget-object p2, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Naa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {p0, p2, p1}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    return-object v1
.end method

.method public a(IIFF)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p2

    const/4 v2, 0x1

    .line 103
    iput-boolean v2, v0, Lcom/smartisanos/launcher/view/b/fa;->zQ:Z

    .line 104
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 105
    iget-object v3, v0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/b/P;->Fb(Z)V

    .line 106
    iget v2, v0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget v3, v0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    if-ne v2, v3, :cond_3

    .line 107
    iget-object v2, v0, Lcom/smartisanos/launcher/view/b/fa;->ip:Lcom/smartisanos/smengine/g;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    iget-object v2, v0, Lcom/smartisanos/launcher/view/b/fa;->ip:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/g;->kill()V

    .line 109
    :cond_0
    iget-object v2, v0, Lcom/smartisanos/launcher/view/b/fa;->ip:Lcom/smartisanos/smengine/g;

    if-nez v2, :cond_1

    .line 110
    new-instance v2, Lcom/smartisanos/smengine/g;

    invoke-direct {v2}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v2, v0, Lcom/smartisanos/launcher/view/b/fa;->ip:Lcom/smartisanos/smengine/g;

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v2}, Lcom/smartisanos/smengine/g;->reset()V

    .line 112
    :goto_0
    iget-object v2, v0, Lcom/smartisanos/launcher/view/b/fa;->ip:Lcom/smartisanos/smengine/g;

    new-instance v3, Lcom/smartisanos/launcher/view/b/S;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/b/S;-><init>(Lcom/smartisanos/launcher/view/b/fa;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    const/4 v2, 0x0

    move v3, v2

    .line 113
    :goto_1
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 114
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    .line 115
    new-instance v13, Lcom/smartisanos/smengine/oa;

    invoke-direct {v13, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 116
    invoke-virtual {v13, v2}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    move/from16 v14, p3

    .line 117
    invoke-virtual {v13, v14}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v5, 0xe

    .line 118
    invoke-virtual {v13, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 119
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    const/4 v6, 0x1

    .line 120
    iget v7, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, v4, Lcom/smartisanos/smengine/a/j;->z:F

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v5, v13

    move/from16 v10, p4

    move/from16 v11, p4

    invoke-virtual/range {v5 .. v12}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 121
    iget-object v4, v0, Lcom/smartisanos/launcher/view/b/fa;->ip:Lcom/smartisanos/smengine/g;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v13}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    :cond_2
    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->ip:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    .line 123
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v0

    move/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/Z;->D(II)V

    .line 124
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v0

    sget-object v2, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Jaa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    .line 125
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v0

    sget-object v2, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Kaa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    return-void
.end method

.method protected a(ILcom/smartisanos/smengine/a/i;)V
    .locals 0

    .line 27
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    .line 28
    iget p1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    invoke-virtual {p2, p1, p0}, Lcom/smartisanos/smengine/a/i;->set(FF)Lcom/smartisanos/smengine/a/i;

    return-void
.end method

.method public a(JJZ)V
    .locals 5

    .line 51
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v1, " newId = "

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### update cell oriGenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_5

    cmp-long v0, p3, v2

    if-ltz v0, :cond_5

    .line 53
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/launcher/view/Eb;->q(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/b/fa;->v(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_3

    .line 55
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    if-nez v2, :cond_2

    .line 56
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    if-nez v2, :cond_2

    .line 57
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    .line 58
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    move-object v0, v2

    :cond_3
    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/smartisanos/launcher/view/b/fa;->a(Lcom/smartisanos/launcher/view/a/g;JZ)V

    goto :goto_0

    .line 60
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCell(). cell == null. oriGenId = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/a/g;JZ)V
    .locals 8

    .line 61
    invoke-static {p2, p3}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/launcher/view/b/fa;->u(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    :cond_0
    const/4 v7, 0x0

    if-eqz p1, :cond_3

    .line 63
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    .line 64
    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateCell setItemInfo ! "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " updateIcon = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 65
    :cond_1
    invoke-virtual {p1, v6}, Lcom/smartisanos/launcher/view/a/g;->c(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 66
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Xm()V

    if-eqz p4, :cond_2

    .line 67
    invoke-virtual {p1, v7}, Lcom/smartisanos/launcher/view/a/g;->fb(Z)V

    .line 68
    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/ItemInfo;->Qe()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x7

    .line 69
    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/activeicon/a;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/activeicon/a;->uq()V

    .line 70
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Ym()V

    .line 71
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 72
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    goto/16 :goto_1

    :cond_3
    if-eqz v6, :cond_c

    .line 73
    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/ItemInfo;->Ze()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 74
    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateCell error ! this is normal cell. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 75
    :cond_4
    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 76
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_5

    .line 77
    sget-object p1, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCell! can\'t get cell by id ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_5
    if-eqz p4, :cond_8

    .line 78
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_7

    iget-object p1, v6, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/smartisanos/launcher/data/T;->Q(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    .line 79
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "maybe error with activity icon"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :cond_7
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result p1

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    .line 81
    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/ItemInfo;->Ne()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-boolean v3, v6, Lcom/smartisanos/launcher/data/ItemInfo;->mFGTransparentAndBlackWhiteFlag:Z

    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v4, p1

    float-to-int v5, p1

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/launcher/data/ItemInfo;Ljava/lang/String;ZZII)Lcom/smartisanos/smengine/Da;

    .line 82
    :cond_8
    iget p1, v6, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    int-to-long p1, p1

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/b/fa;->u(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    if-eqz p0, :cond_a

    if-eqz p4, :cond_9

    .line 84
    invoke-virtual {p0, v7, v6}, Lcom/smartisanos/launcher/view/a/g;->a(ZLcom/smartisanos/launcher/data/ItemInfo;)V

    .line 85
    :cond_9
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    goto :goto_1

    .line 86
    :cond_a
    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateCell can not find folder. folderCell\'s id = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v6, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_b
    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateCell can not find folder. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_c
    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "updateCell error ! info ==null. id = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/b/M;II)V
    .locals 7

    .line 89
    sget-object p2, Lcom/smartisanos/launcher/data/Constants;->pageCellSizeScale:[Lcom/smartisanos/smengine/a/i;

    aget-object p2, p2, p3

    .line 90
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->pageCellAllCenterPoints:[[Lcom/smartisanos/smengine/a/j;

    aget-object v0, v0, p3

    .line 91
    invoke-static {p3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 92
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v2, 0x0

    .line 93
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 94
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 95
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v4

    iget v5, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v4, v5

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v5

    add-int/2addr v4, v5

    .line 96
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 97
    aget-object v4, v0, v4

    .line 98
    iget v5, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v3, v5, v6, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 99
    iget v4, p2, Lcom/smartisanos/smengine/a/i;->x:F

    iget v5, p2, Lcom/smartisanos/smengine/a/i;->y:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 100
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "??? rowIndex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " colIndex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lp.page_cell_col_num = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currentsPageMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " targetMode = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " pcArray size = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/smengine/a/i;)V
    .locals 5

    .line 29
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 31
    iget v2, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 32
    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/b/fa;->FQ:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/ra;->hs()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 34
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    .line 35
    iget-object v3, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/a/j;->Gt()Lcom/smartisanos/smengine/a/j;

    .line 36
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 37
    iget-object p1, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 38
    iget-object p1, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    iget v3, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    add-float/2addr v3, v4

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_spacing_h:F

    add-float/2addr v3, v2

    iput v3, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 39
    iget v2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 40
    iget v2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iput v2, v1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 41
    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    iput p1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 43
    :goto_0
    iget-object p1, v0, Lcom/smartisanos/smengine/d/f;->tY:Lcom/smartisanos/smengine/a/i;

    const/4 v2, 0x0

    .line 44
    invoke-virtual {p1, v2, v2}, Lcom/smartisanos/smengine/a/i;->set(FF)Lcom/smartisanos/smengine/a/i;

    .line 45
    iget v2, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/launcher/view/b/fa;->a(ILcom/smartisanos/smengine/a/i;)V

    .line 46
    iget p0, p1, Lcom/smartisanos/smengine/a/i;->x:F

    .line 47
    iget p1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    sub-float v1, p1, p0

    add-float/2addr p1, p0

    .line 48
    iput v1, p2, Lcom/smartisanos/smengine/a/i;->x:F

    .line 49
    iput p1, p2, Lcom/smartisanos/smengine/a/i;->y:F

    .line 50
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/launcher/animations/r;Lcom/smartisanos/launcher/view/ec;)V
    .locals 9

    .line 173
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v0

    const-string v1, "multiSelectCellUp"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/C;->Ia(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v0

    const-string v2, "titleViewLongPress"

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/C;->Ia(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v0

    const-string v3, "titleViewUp"

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/C;->Ia(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v0

    const-string v4, "cellExitPage"

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/C;->Ia(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v0

    const-string v5, "cellCollideEnter"

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/C;->Ia(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v0

    const-string v6, "cellCollideExit"

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/C;->Ia(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v0

    const-string v7, "relayoutByUninstall"

    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/C;->Ia(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v0

    const-string v8, "settingButtonStatus"

    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/C;->Ia(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/smengine/C;->a(Ljava/lang/String;Lcom/smartisanos/smengine/B;)V

    .line 182
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/smartisanos/smengine/C;->a(Ljava/lang/String;Lcom/smartisanos/smengine/B;)V

    .line 183
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/smartisanos/smengine/C;->a(Ljava/lang/String;Lcom/smartisanos/smengine/B;)V

    .line 184
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object p1

    invoke-virtual {p1, v4, p2}, Lcom/smartisanos/smengine/C;->a(Ljava/lang/String;Lcom/smartisanos/smengine/B;)V

    .line 185
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object p1

    invoke-virtual {p1, v5, p2}, Lcom/smartisanos/smengine/C;->a(Ljava/lang/String;Lcom/smartisanos/smengine/B;)V

    .line 186
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object p1

    invoke-virtual {p1, v6, p2}, Lcom/smartisanos/smengine/C;->a(Ljava/lang/String;Lcom/smartisanos/smengine/B;)V

    .line 187
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    invoke-virtual {p1, v7, p0}, Lcom/smartisanos/smengine/C;->a(Ljava/lang/String;Lcom/smartisanos/smengine/B;)V

    .line 188
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object p0

    invoke-virtual {p0, v8, p3}, Lcom/smartisanos/smengine/C;->a(Ljava/lang/String;Lcom/smartisanos/smengine/B;)V

    .line 189
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object p0

    const-string p1, "cellIntoFolderArea"

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/C;->Ia(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object p0

    const-string p3, "cellExitFolderArea"

    invoke-virtual {p0, p3}, Lcom/smartisanos/smengine/C;->Ia(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/C;->a(Ljava/lang/String;Lcom/smartisanos/smengine/B;)V

    .line 192
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Lcom/smartisanos/smengine/C;->a(Ljava/lang/String;Lcom/smartisanos/smengine/B;)V

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/i;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/smartisanos/smengine/a/i;->x:F

    iget p1, p1, Lcom/smartisanos/smengine/a/i;->y:F

    iget v1, p2, Lcom/smartisanos/smengine/a/i;->x:F

    iget p2, p2, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V
    .locals 6

    const-string v0, "multiSelectCellUp"

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 162
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/b/fa;->CQ:Z

    goto :goto_0

    :cond_0
    const-string v0, "titleViewLongPress"

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    .line 164
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/fa;->FQ:Z

    .line 165
    invoke-virtual {p2}, Lcom/smartisanos/smengine/A;->getData()Ljava/util/ArrayList;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_1

    return-void

    .line 167
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    .line 168
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {p2, p1}, Lcom/smartisanos/launcher/view/b/ra;->x(Lcom/smartisanos/launcher/view/b/M;)V

    .line 169
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    new-instance p1, Lcom/smartisanos/smengine/Fa;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/smengine/Fa;-><init>(IFFFF)V

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/ra;->onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z

    goto :goto_0

    :cond_2
    const-string p2, "titleViewUp"

    .line 170
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 171
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/b/fa;->FQ:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/b/M;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/launcher/view/b/fa;->b(Lcom/smartisanos/launcher/view/b/M;IZ)Z

    move-result p0

    return p0
.end method

.method public ac(I)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->zn()I

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->zn()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public ah()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->ah()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ar()I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 2
    sget p0, Lcom/smartisanos/launcher/data/Constants;->LARGE_SCREEN_MAX_PAGE_COUNT:I

    return p0

    .line 3
    :cond_0
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->getGroupNum(I)I

    move-result p0

    return p0
.end method

.method public b(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;Lcom/smartisanos/smengine/g;F)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Rq()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/a/g;

    .line 7
    sget-object v5, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->CZ:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    const v6, 0x3ee66666    # 0.45f

    if-ne v5, p1, :cond_1

    .line 8
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v4

    invoke-virtual {v4, p2, v6}, Lcom/smartisanos/launcher/view/a/X;->f(Lcom/smartisanos/smengine/g;F)V

    goto :goto_1

    .line 9
    :cond_1
    sget-object v5, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->DZ:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    if-ne v5, p1, :cond_0

    .line 10
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v4

    invoke-virtual {v4, p2, v6}, Lcom/smartisanos/launcher/view/a/X;->c(Lcom/smartisanos/smengine/g;F)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->getAnimation()Lcom/smartisanos/launcher/animations/Ja;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/smartisanos/launcher/animations/Ja;->a(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;Lcom/smartisanos/smengine/g;F)V

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/a/g;

    .line 14
    sget-object v7, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->CZ:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    if-ne v7, p1, :cond_5

    .line 15
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Lcom/smartisanos/launcher/view/a/X;->f(Lcom/smartisanos/smengine/g;F)V

    goto :goto_2

    .line 16
    :cond_5
    sget-object v7, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->DZ:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    if-ne v7, p1, :cond_4

    .line 17
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Lcom/smartisanos/launcher/view/a/X;->c(Lcom/smartisanos/smengine/g;F)V

    goto :goto_2

    .line 18
    :cond_6
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->getAnimation()Lcom/smartisanos/launcher/animations/Ja;

    move-result-object v2

    invoke-virtual {v2, p1, v6, v5}, Lcom/smartisanos/launcher/animations/Ja;->a(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;Lcom/smartisanos/smengine/g;F)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public b(Lcom/smartisanos/launcher/view/b/M;IZ)Z
    .locals 3

    .line 19
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWITCH_TO_SINGLE:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/ub;->Oc()Z

    move-result v2

    if-nez v2, :cond_2

    .line 21
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "can not switch page for status is wrong"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 22
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ub;->Sc()V

    return v0

    .line 23
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 24
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "switchPageMode nothing to do by setting button is down"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    return v0

    .line 25
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/r;->vd()V

    .line 26
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Z;->jp()V

    .line 27
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v2, :cond_5

    .line 28
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 29
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 30
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->yQ:Lcom/smartisanos/launcher/animations/Qa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/Qa;->Ud()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Fr()V

    .line 33
    :cond_6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->yQ:Lcom/smartisanos/launcher/animations/Qa;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/animations/Qa;->a(Lcom/smartisanos/launcher/view/b/M;IZ)V

    return v1
.end method

.method public bc(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->jr()I

    move-result p0

    div-int/2addr p1, p0

    return p1
.end method

.method public br()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    return-object p0
.end method

.method public c(JZ)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### update cell id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/launcher/view/Eb;->q(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/smartisanos/launcher/view/b/fa;->a(Lcom/smartisanos/launcher/view/a/g;JZ)V

    :cond_1
    return-void
.end method

.method public cc(I)Z
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->Yb(I)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v4

    if-eq v3, v4, :cond_0

    return v0

    .line 6
    :cond_0
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public clear(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->rQ:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->rQ:Ljava/util/List;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/b/P;->clear(Z)V

    .line 12
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    .line 13
    :cond_3
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->tQ:Lcom/smartisanos/launcher/view/b/M;

    .line 14
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->uQ:Lcom/smartisanos/launcher/view/a/g;

    .line 15
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->vQ:Lcom/smartisanos/launcher/view/b/M;

    .line 16
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->wQ:Lcom/smartisanos/launcher/view/b/M;

    .line 17
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->xQ:Lcom/smartisanos/smengine/oa;

    .line 18
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->ip:Lcom/smartisanos/smengine/g;

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->yQ:Lcom/smartisanos/launcher/animations/Qa;

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/Qa;->clear()V

    .line 21
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->yQ:Lcom/smartisanos/launcher/animations/Qa;

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    if-eqz v0, :cond_5

    .line 23
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->clear()V

    .line 24
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    if-eqz v0, :cond_6

    .line 26
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/ec;->clear(Z)V

    .line 27
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    .line 28
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    if-eqz v0, :cond_7

    .line 29
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/b/ra;->clear(Z)V

    .line 30
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    .line 31
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->JQ:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 33
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->JQ:Ljava/util/ArrayList;

    .line 34
    :cond_8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->KQ:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->KQ:Ljava/util/ArrayList;

    .line 37
    :cond_9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->vQ:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_a

    .line 38
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/b/M;->clear(Z)V

    .line 39
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->vQ:Lcom/smartisanos/launcher/view/b/M;

    .line 40
    :cond_a
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->wQ:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_b

    .line 41
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/b/M;->clear(Z)V

    .line 42
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->wQ:Lcom/smartisanos/launcher/view/b/M;

    .line 43
    :cond_b
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->NQ:Lcom/smartisanos/smengine/g;

    .line 44
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->hp:[F

    .line 45
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    return-void
.end method

.method public dc(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/b/fa;->p(IZ)V

    return-void
.end method

.method public de()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->ar()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/launcher/view/b/fa;->Go:I

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->tr()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->Fo:F

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->Jo:F

    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->mScrollX:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->Io:F

    .line 6
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->Io:F

    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->Fo:F

    iget v2, p0, Lcom/smartisanos/launcher/view/b/fa;->Go:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->Ho:F

    return-void
.end method

.method public dispatchTouchEvent(Lcom/smartisanos/smengine/Fa;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isUserInteractionEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/fa;->CQ:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/ec;->onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z

    move-result p0

    return p0

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/fa;->FQ:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/ra;->onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z

    move-result p0

    return p0

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z

    move-result p0

    return p0
.end method

.method public dr()Lcom/smartisanos/launcher/view/b/M;
    .locals 11

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/smartisanos/smengine/d/f;->tY:Lcom/smartisanos/smengine/a/i;

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->ar()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 5
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    add-int v6, v4, v2

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    :goto_1
    if-ge v4, v6, :cond_4

    .line 6
    iget-object v7, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/b/M;

    .line 7
    iget-object v8, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/ra;->hs()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v8

    if-ne v7, v8, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p0, v7, v1}, Lcom/smartisanos/launcher/view/b/fa;->a(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/smengine/a/i;)V

    .line 9
    iget v7, v1, Lcom/smartisanos/smengine/a/i;->y:F

    .line 10
    iget v8, v1, Lcom/smartisanos/smengine/a/i;->x:F

    .line 11
    sget v9, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    neg-int v10, v9

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-ltz v10, :cond_1

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-lez v7, :cond_2

    :cond_1
    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    neg-int v9, v7

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_3

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpg-float v7, v8, v7

    if-gtz v7, :cond_3

    :cond_2
    move-object v3, v5

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move v4, v6

    goto :goto_0

    .line 12
    :cond_6
    :goto_4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    return-object v3
.end method

.method public ec(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/smartisanos/launcher/view/b/N;->Fa(I)[Lcom/smartisanos/smengine/a/i;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/launcher/view/b/fa;->a(Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/i;)V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateWorldBoundingVolume()V

    return-void
.end method

.method protected er()Lcom/smartisanos/launcher/view/b/M;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_1
    if-ltz p0, :cond_3

    .line 6
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 7
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public f(FFFF)F
    .locals 2

    mul-float p0, p1, p4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p4, v0

    if-nez v1, :cond_0

    return p2

    :cond_0
    sub-float v1, p3, p2

    cmpg-float p4, p4, v0

    if-gez p4, :cond_1

    mul-float/2addr v1, p1

    div-float/2addr v1, p0

    sub-float/2addr p3, v1

    return p3

    :cond_1
    mul-float/2addr v1, p1

    div-float/2addr v1, p0

    add-float/2addr p2, p3

    sub-float/2addr p2, v1

    return p2
.end method

.method public f(IF)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->wd()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->Rb(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Id()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/animations/r;->c(IF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public fr()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->MQ:I

    return p0
.end method

.method public g(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5

    const-string v1, ""

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 7
    invoke-virtual {v3, p1, p2}, Lcom/smartisanos/launcher/view/b/M;->g(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    if-eqz p0, :cond_5

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/launcher/view/a/g;

    .line 12
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    :goto_2
    return-object v0
.end method

.method public g(IF)V
    .locals 2

    if-nez p1, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Id()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->wd()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->Rb(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    .line 18
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Id()Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/animations/r;->c(IF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAllViewCanBeTouched()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setForceDispatchTouchToView(Z)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMultiPageMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->gH:I

    return p0
.end method

.method public getPageCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getSinglePageMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    return p0
.end method

.method public gr()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->LQ:I

    return p0
.end method

.method public h(Lcom/smartisanos/smengine/g;FF)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 3
    invoke-virtual {v1, p1, p2, p3}, Lcom/smartisanos/launcher/view/b/M;->h(Lcom/smartisanos/smengine/g;FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/launcher/view/a/X;->b(Lcom/smartisanos/smengine/g;FF)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public h(Ljava/util/ArrayList;)V
    .locals 3

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 11
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ra;->hs()Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 16
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Un()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public hr()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    if-eqz p0, :cond_3

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public i(Ljava/util/ArrayList;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public init()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "PageView create !!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getMultiPageMode()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->gH:I

    .line 4
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    .line 5
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getMaxPageCount(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->LQ:I

    .line 6
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_app_count:I

    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->MQ:I

    .line 7
    new-instance v0, Lcom/smartisanos/launcher/animations/r;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/animations/r;-><init>(Lcom/smartisanos/launcher/view/b/fa;Z)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {p0, p0, v0, v2}, Lcom/smartisanos/launcher/view/b/fa;->a(Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/launcher/animations/r;Lcom/smartisanos/launcher/view/ec;)V

    .line 9
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    const-string v3, "CoverPageClicked"

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/smengine/C;->a(Ljava/lang/String;Lcom/smartisanos/smengine/B;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/ec;->b(Lcom/smartisanos/launcher/view/b/fa;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/b/ra;->b(Lcom/smartisanos/launcher/view/b/fa;)V

    .line 16
    new-instance v0, Lcom/smartisanos/launcher/animations/Qa;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/animations/Qa;-><init>(Lcom/smartisanos/launcher/view/b/fa;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->yQ:Lcom/smartisanos/launcher/animations/Qa;

    .line 17
    new-instance v0, Lcom/smartisanos/launcher/view/b/P;

    const-string v2, "pageParentForTranslate"

    invoke-direct {v0, v2, p0}, Lcom/smartisanos/launcher/view/b/P;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setCollideAlways(Z)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 21
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    new-instance v1, Lcom/smartisanos/launcher/view/b/V;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/b/V;-><init>(Lcom/smartisanos/launcher/view/b/fa;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setOnClickListener(Lcom/smartisanos/smengine/aa;)V

    .line 23
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/b/fa;->AQ:Z

    .line 24
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    .line 25
    sget-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "INIT STATUS FOR PAGEVIEW ================"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constants.SHOW_APP_NAME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "STATUS INIT DONE ========================"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 28
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_3

    .line 29
    new-instance v0, Lcom/smartisanos/launcher/view/b/W;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/b/W;-><init>(Lcom/smartisanos/launcher/view/b/fa;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->KN:Lcom/smartisanos/launcher/view/dc;

    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->KN:Lcom/smartisanos/launcher/view/dc;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/ec;->a(Lcom/smartisanos/launcher/view/dc;)V

    :cond_3
    return-void
.end method

.method public ir()[Lcom/smartisanos/smengine/a/j;
    .locals 1

    move-object v0, p0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->updatePageCellCenterPoints(I)V

    .line 2
    sget-object p0, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/a/j;

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/data/FolderCellPositionAdapter;->adaptPositions(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method public j(Lcom/smartisanos/smengine/g;FF)V
    .locals 2

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 5
    invoke-virtual {v1, p1, p2, p3}, Lcom/smartisanos/launcher/view/b/M;->j(Lcom/smartisanos/smengine/g;FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/launcher/view/a/X;->f(Lcom/smartisanos/smengine/g;FF)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public j(Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public je()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->Io:F

    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->Jo:F

    sub-float/2addr v0, v1

    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->Fo:F

    div-float/2addr v0, p0

    return v0
.end method

.method public jr()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->getPageNums(I)I

    move-result p0

    return p0
.end method

.method public kn()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->kn()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public kr()F
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_left:F

    :goto_0
    add-float/2addr v0, p0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    goto :goto_0
.end method

.method public l(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public lb(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 6
    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/a/g;->lb(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public lr()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_spacing_h:F

    return p0
.end method

.method public m(Lcom/smartisanos/launcher/view/b/M;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_4

    .line 2
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_3

    if-ne v2, p1, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_3
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/b/fa;->r(Lcom/smartisanos/launcher/view/b/M;)V

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/b/M;->clear(Z)V

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public mr()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    return-object p0
.end method

.method public n(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result p1

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->ur()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_1
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 9
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public nb(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

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

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/b/M;->nb(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(Lcom/smartisanos/launcher/view/b/M;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page can not found in page list : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o(IZ)V
    .locals 5

    .line 66
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getPageNums(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_4

    .line 67
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->Xb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 69
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 71
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Un()V

    .line 72
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->Wb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_2

    .line 73
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Un()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    mul-int/2addr p1, v0

    if-gt v0, p1, :cond_6

    sub-int v3, p1, v0

    :goto_2
    if-ge v3, p1, :cond_6

    .line 77
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v4

    if-eqz p2, :cond_5

    .line 78
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 79
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    goto :goto_3

    .line 80
    :cond_5
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 81
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->Un()V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p1

    .line 82
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v3, v4, :cond_7

    .line 83
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_7
    add-int/2addr p1, v0

    :goto_4
    if-ge p1, v3, :cond_9

    .line 84
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    if-eqz p2, :cond_8

    .line 85
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 86
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    goto :goto_5

    .line 87
    :cond_8
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 88
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Un()V

    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method public o(Lcom/smartisanos/launcher/data/ItemInfo;)Z
    .locals 13

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "### add cell to page"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 5
    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "calculate cell index error return by item info is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return v0

    .line 6
    :cond_1
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### add cell to page, pkg name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->getPageCount()I

    move-result v1

    if-eqz v1, :cond_15

    .line 8
    iget v2, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->getMaxPageCount(I)I

    move-result v2

    const/4 v3, 0x1

    if-lt v1, v2, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v0

    .line 9
    :goto_0
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/b/fa;->Hb(Z)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    if-nez v1, :cond_5

    .line 10
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "there is no space for install new cell !"

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Ir()V

    return v0

    .line 12
    :cond_5
    iget-boolean v2, v1, Lcom/smartisanos/launcher/view/b/M;->uI:Z

    if-eqz v2, :cond_7

    .line 13
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_6

    sget-object p1, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "the page is read only, nothing to do !"

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Ir()V

    return v0

    .line 15
    :cond_7
    iget v2, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget v4, p0, Lcom/smartisanos/launcher/view/b/fa;->gH:I

    if-ne v2, v4, :cond_a

    .line 16
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 17
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Mn()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 18
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 19
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/tc;->yb(Z)V

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x2

    .line 21
    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/tc;->setMode(I)V

    goto :goto_1

    .line 22
    :cond_8
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/tc;->setMode(I)V

    .line 23
    :goto_1
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto :goto_2

    .line 24
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "can\'t find page title !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/r;->vd()V

    .line 26
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->tn()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    .line 27
    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/view/a/g;->c(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 28
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v4

    .line 29
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v5

    .line 30
    iget v6, v1, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    .line 31
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    iput v6, v7, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 32
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    invoke-virtual {p0, v4, v5}, Lcom/smartisanos/launcher/view/b/fa;->x(II)I

    move-result v8

    iput v8, v7, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    const/4 v7, 0x7

    .line 33
    invoke-virtual {v2, v7}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 34
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->fb(Z)V

    .line 35
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 36
    iget v7, p1, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-lez v7, :cond_b

    .line 37
    invoke-virtual {v2, v7}, Lcom/smartisanos/launcher/view/a/g;->qb(I)V

    .line 38
    :cond_b
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    if-ltz v6, :cond_14

    .line 39
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    if-ltz v7, :cond_13

    .line 40
    instance-of v7, p1, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    if-nez v7, :cond_e

    .line 41
    iget-object v7, p1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/smartisanos/launcher/Aa;->A(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 42
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_e

    .line 43
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 44
    instance-of v9, v8, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    if-eqz v9, :cond_d

    goto :goto_3

    .line 45
    :cond_d
    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-byte v9, p1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    iget-byte v10, v8, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-ne v9, v10, :cond_c

    iget v9, p1, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    iget v10, v8, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    if-ne v9, v10, :cond_c

    iget-wide v9, p1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iget-wide v11, v8, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_c

    .line 46
    sget-object v9, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addCellToPage check info == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 47
    sget-object v9, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addCellToPage check info1 == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_3

    .line 48
    :cond_e
    sget-boolean v7, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v7, :cond_f

    invoke-static {v0}, Lcom/smartisanos/launcher/Qa;->r(Z)Z

    move-result v0

    if-nez v0, :cond_10

    .line 49
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 51
    iget-wide v8, p1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "_id"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v8

    iget v8, v8, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "pageIndex"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v8, "cellIndex"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->WZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v2, v0}, Lcom/smartisanos/launcher/data/F;->a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V

    .line 56
    :cond_10
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->gH:I

    if-ne v0, p0, :cond_11

    .line 57
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->no()V

    .line 58
    :cond_11
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_12

    .line 59
    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info.id   ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pageIndex ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], cellIndex ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/smartisanos/launcher/view/b/fa;->x(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 62
    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "### add cell to page end, pkg name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_12
    return v3

    .line 63
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "addCellToPage illegal cell index !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "addCellToPage illegal page index !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "empty page list !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public or()Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    return-object p0
.end method

.method public p(Lcom/smartisanos/launcher/view/b/M;)I
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result p1

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->jr()I

    move-result p0

    div-int/2addr p1, p0

    return p1
.end method

.method public p(IZ)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### removeScreen index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->jr()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### removePage index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    mul-int v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v4

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/z;->b(Lcom/smartisanos/smengine/y;)V

    .line 7
    invoke-virtual {v2, p2}, Lcom/smartisanos/launcher/view/b/M;->clear(Z)V

    .line 8
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public pr()Lcom/smartisanos/launcher/animations/Qa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->yQ:Lcom/smartisanos/launcher/animations/Qa;

    return-object p0
.end method

.method public q(J)Lcom/smartisanos/launcher/view/a/g;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->uQ:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->uQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-wide v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->uQ:Lcom/smartisanos/launcher/view/a/g;

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 8
    invoke-virtual {v1, p1, p2}, Lcom/smartisanos/launcher/view/b/M;->s(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->zn()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/view/a/g;->pb(I)V

    move-object v1, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_0

    .line 10
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    if-eqz p0, :cond_6

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 13
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_5

    return-object v0

    :cond_6
    :goto_2
    return-object v1
.end method

.method protected q(Lcom/smartisanos/launcher/view/b/M;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->Bn()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->Kn()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public qr()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/b/fa;->RQ:Z

    return p0
.end method

.method public r(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->Wn()V

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/z;->b(Lcom/smartisanos/smengine/y;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/b/M;->clear(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public rr()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->jr()I

    move-result v1

    div-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->jr()I

    move-result p0

    rem-int/2addr v1, p0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public s(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 10

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "resetPagesTranslate targetPage is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    .line 3
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    move v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_4

    .line 4
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_3

    .line 5
    sget-object v1, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "resetPagesTranslate. it will be crash in user_debug launcher"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_3
    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "resetPagesTranslate. return!"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->p(Lcom/smartisanos/launcher/view/b/M;)I

    move-result p1

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->jr()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v4, :cond_5

    new-array v3, v4, [Lcom/smartisanos/smengine/a/j;

    .line 10
    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->pageWorldCenterPointsInWindow:[[Lcom/smartisanos/smengine/a/j;

    iget v5, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    aget-object v4, v4, v5

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    goto :goto_3

    :cond_5
    const/4 v4, 0x4

    if-eq v2, v4, :cond_7

    const/16 v4, 0x9

    if-ne v2, v4, :cond_6

    goto :goto_2

    .line 11
    :cond_6
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v4, :cond_8

    .line 12
    sget v4, Lcom/smartisanos/launcher/data/Constants;->LARGE_SCREEN_MAX_PAGE_COUNT:I

    if-ne v2, v4, :cond_8

    .line 13
    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->pageWorldCenterPointsInWindow:[[Lcom/smartisanos/smengine/a/j;

    iget v4, p0, Lcom/smartisanos/launcher/view/b/fa;->gH:I

    aget-object v3, v3, v4

    goto :goto_3

    .line 14
    :cond_7
    :goto_2
    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->pageWorldCenterPointsInWindow:[[Lcom/smartisanos/smengine/a/j;

    iget v4, p0, Lcom/smartisanos/launcher/view/b/fa;->gH:I

    aget-object v3, v3, v4

    .line 15
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->tr()F

    move-result v4

    .line 16
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ge v0, v5, :cond_9

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    .line 18
    div-int v7, v0, v2

    .line 19
    rem-int v8, v0, v2

    int-to-float v7, v7

    mul-float/2addr v7, v4

    .line 20
    aget-object v9, v3, v8

    iget v9, v9, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v7, v9

    .line 21
    aget-object v8, v3, v8

    iget v8, v8, Lcom/smartisanos/smengine/a/j;->y:F

    .line 22
    invoke-virtual {v5, v7, v8, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 23
    :cond_9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    neg-int p1, p1

    int-to-float p1, p1

    mul-float/2addr p1, v4

    invoke-virtual {v0, p1, v6, v6}, Lcom/smartisanos/launcher/view/b/P;->setTranslate(FFF)V

    .line 24
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateGeometricState()V

    .line 25
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_a

    .line 26
    sget-object p1, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### after reset current screenIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public sb(I)I
    .locals 2

    add-int/lit8 p1, p1, 0x1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/b/fa;->x(II)I

    move-result p0

    if-le p1, p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public se()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Hr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->xQ:Lcom/smartisanos/smengine/oa;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/oa;->kill()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->de()V

    .line 4
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->Go:I

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/b/fa;->G(II)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/db;->dh()V

    .line 6
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->Jo:F

    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->OQ:F

    .line 7
    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->Io:F

    sub-float/2addr v1, v0

    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->Fo:F

    div-float/2addr v1, p0

    return v1
.end method

.method public setMultiPageMode(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/b/fa;->gH:I

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 6
    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/a/g;->setMultiPageMode(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sr()I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->Ib(Z)I

    move-result p0

    return p0
.end method

.method public t(FF)Lcom/smartisanos/launcher/view/b/M;
    .locals 6

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 2
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    const p2, 0x461c3c00    # 9999.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 5
    invoke-virtual {v3, p1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/a/j;->p(Lcom/smartisanos/smengine/a/j;)F

    move-result v4

    cmpg-float v5, v4, p2

    if-gez v5, :cond_0

    move-object v1, v3

    move p2, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public t(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/fa;->wQ:Lcom/smartisanos/launcher/view/b/M;

    return-void
.end method

.method public tb(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    .line 1
    iget p1, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    add-int/lit8 p1, p1, -0x1

    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/b/fa;->x(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method public tr()F
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->Jb(Z)F

    move-result p0

    return p0
.end method

.method public u(J)Lcom/smartisanos/launcher/view/a/g;
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/launcher/view/Eb;->q(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/b/fa;->v(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    if-nez p0, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    if-nez p0, :cond_1

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_3

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/launcher/view/b/fa;->q(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public u(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/fa;->tQ:Lcom/smartisanos/launcher/view/b/M;

    return-void
.end method

.method public updateScroll(F)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Bq()V

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->mScrollX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->mScrollX:F

    .line 3
    iget p1, p0, Lcom/smartisanos/launcher/view/b/fa;->Fo:F

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 4
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->mScrollX:F

    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->Ho:F

    cmpg-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x4479c000    # 999.0f

    const/16 v5, 0x3e6

    const/16 v6, 0x3e8

    const/4 v7, 0x0

    const/16 v8, 0x3e7

    if-gez v2, :cond_2

    sub-float v2, v1, v0

    int-to-float p1, p1

    div-float/2addr v2, p1

    float-to-int v2, v2

    sub-float v0, v1, v0

    div-float/2addr v0, p1

    int-to-float p1, v2

    sub-float/2addr v0, p1

    if-ge v2, v6, :cond_1

    if-nez v2, :cond_0

    move p1, v7

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/fa;->hp:[F

    add-int/lit8 v1, v2, -0x1

    aget p1, p1, v1

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->hp:[F

    aget v1, v1, v2

    .line 7
    iget v2, p0, Lcom/smartisanos/launcher/view/b/fa;->Ho:F

    sub-float/2addr v3, v0

    mul-float/2addr p1, v3

    sub-float/2addr v2, p1

    mul-float/2addr v1, v0

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/smartisanos/launcher/view/b/fa;->Jo:F

    goto :goto_1

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->hp:[F

    aget v3, v2, v8

    aget v5, v2, v5

    sub-float/2addr v3, v5

    .line 9
    aget v2, v2, v8

    sub-float/2addr v1, v2

    add-float/2addr p1, v0

    sub-float/2addr p1, v4

    mul-float/2addr v3, p1

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/smartisanos/launcher/view/b/fa;->Jo:F

    .line 10
    :goto_1
    iget p1, p0, Lcom/smartisanos/launcher/view/b/fa;->Jo:F

    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->Ho:F

    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->Fo:F

    sub-float v2, v0, v1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_6

    sub-float/2addr v0, v1

    .line 11
    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->Jo:F

    goto :goto_4

    .line 12
    :cond_2
    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->Io:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_5

    sub-float v2, v0, v1

    int-to-float p1, p1

    div-float/2addr v2, p1

    float-to-int v2, v2

    sub-float/2addr v0, v1

    div-float/2addr v0, p1

    int-to-float p1, v2

    sub-float/2addr v0, p1

    if-ge v2, v6, :cond_4

    if-nez v2, :cond_3

    move p1, v7

    goto :goto_2

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/fa;->hp:[F

    add-int/lit8 v1, v2, -0x1

    aget p1, p1, v1

    .line 14
    :goto_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->hp:[F

    aget v1, v1, v2

    .line 15
    iget v2, p0, Lcom/smartisanos/launcher/view/b/fa;->Io:F

    sub-float/2addr v3, v0

    mul-float/2addr p1, v3

    add-float/2addr v2, p1

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    iput v2, p0, Lcom/smartisanos/launcher/view/b/fa;->Jo:F

    goto :goto_3

    .line 16
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->hp:[F

    aget v3, v2, v8

    aget v5, v2, v5

    sub-float/2addr v3, v5

    .line 17
    aget v2, v2, v8

    add-float/2addr v1, v2

    add-float/2addr p1, v0

    sub-float/2addr p1, v4

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    iput v1, p0, Lcom/smartisanos/launcher/view/b/fa;->Jo:F

    .line 18
    :goto_3
    iget p1, p0, Lcom/smartisanos/launcher/view/b/fa;->Jo:F

    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->Io:F

    iget v1, p0, Lcom/smartisanos/launcher/view/b/fa;->Fo:F

    add-float v2, v0, v1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_6

    add-float/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->Jo:F

    goto :goto_4

    .line 20
    :cond_5
    iput v0, p0, Lcom/smartisanos/launcher/view/b/fa;->Jo:F

    .line 21
    :cond_6
    :goto_4
    iget p1, p0, Lcom/smartisanos/launcher/view/b/fa;->Jo:F

    cmpl-float p1, p1, v7

    if-lez p1, :cond_7

    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->sLeftScreenEnabled:Z

    if-eqz p1, :cond_7

    iput v7, p0, Lcom/smartisanos/launcher/view/b/fa;->Jo:F

    .line 22
    :cond_7
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->Jo:F

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/b/P;->setTranslateX(F)V

    .line 23
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object p1

    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->Jo:F

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/Z;->w(F)V

    return-void
.end method

.method public ur()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public v(J)Lcom/smartisanos/launcher/view/a/g;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    invoke-virtual {v1, p1, p2}, Lcom/smartisanos/launcher/view/b/M;->s(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public v(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/fa;->vQ:Lcom/smartisanos/launcher/view/b/M;

    return-void
.end method

.method public vm()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->gH:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public vr()Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->vQ:Lcom/smartisanos/launcher/view/b/M;

    return-object p0
.end method

.method public w(II)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->zr()Z

    move-result v0

    const-string v1, ".png"

    const-string v2, "back"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr p1, p0

    add-int/2addr p1, p2

    rem-int/lit8 p1, p1, 0x9

    add-int/2addr p1, v3

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Ar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr p1, p0

    add-int/2addr p1, p2

    rem-int/lit8 p1, p1, 0xc

    add-int/2addr p1, v3

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Br()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr p1, p0

    add-int/2addr p1, p2

    rem-int/lit8 p1, p1, 0x10

    add-int/2addr p1, v3

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Cr()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr p1, p0

    add-int/2addr p1, p2

    rem-int/lit8 p1, p1, 0x14

    add-int/2addr p1, v3

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBackgroundImageName i = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " j = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public w(Lcom/smartisanos/launcher/view/b/M;)Z
    .locals 1

    .line 14
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWITCH_TO_SINGLE:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/b/fa;->a(Lcom/smartisanos/launcher/view/b/M;I)Z

    move-result p0

    return p0
.end method

.method public wr()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/r;->A(Z)V

    return-void
.end method

.method public writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 8

    const-string v0, "PageView"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mPageListCount"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mInvisiblePageList"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->rQ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mPageObjectNameListCount"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mPageParentForTranslate"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->tQ:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "displayPageInSingleMode"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->uQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mCurrentPageCell"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->JQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mAllCellsWorldTranslateSinglePageModeCount"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->KQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mAllCellsWorldTranslateMultiPageModeCount"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->xQ:Lcom/smartisanos/smengine/oa;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mSlideAnimation"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->ip:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mPageSinkAnimation"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->yQ:Lcom/smartisanos/launcher/animations/Qa;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mPageViewAnimation"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/b/fa;->zQ:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mIsPageSinked"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/b/fa;->CQ:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mIsInMultiSelectMode"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/b/fa;->FQ:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mIsInPageSwitchMode"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/b/fa;->HQ:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mIsInFloatPageMode"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->vQ:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mWaitingToLockPage"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->wQ:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mConfirmPasswordPage"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/b/fa;->AQ:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mSettingEnableShowAppName"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/fa;->BQ:Lcom/smartisanos/launcher/animations/r;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mAnimationController"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PageObjectNames"

    .line 21
    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    .line 22
    :goto_0
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/fa;->rQ:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    const-string v5, "PageObjName"

    .line 23
    invoke-interface {p2, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "index"

    invoke-interface {v5, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v6, p0, Lcom/smartisanos/launcher/view/b/fa;->rQ:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "name"

    invoke-interface {v5, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v1, "VisiblePages"

    .line 28
    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    move v2, v3

    .line 29
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 30
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    .line 31
    invoke-virtual {v4, v1, p2}, Lcom/smartisanos/launcher/view/b/M;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 32
    :cond_1
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v1, "InvisiblePages"

    .line 33
    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 34
    :goto_2
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 35
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/fa;->qQ:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 36
    invoke-virtual {v2, v1, p2}, Lcom/smartisanos/launcher/view/b/M;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 37
    :cond_2
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 38
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public x(II)I
    .locals 0

    .line 3
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr p1, p0

    add-int/2addr p1, p2

    return p1
.end method

.method public x(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->rQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->rQ:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public xb(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 2
    rem-int/2addr p1, p0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public xr()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->pQ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 2
    iget-boolean v1, v0, Lcom/smartisanos/launcher/view/b/M;->uI:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public y(Ljava/util/List;)V
    .locals 9

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "updateCells items is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "updateCells items size is 0"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "updateCells begin !"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    const/16 v1, 0x14

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v0

    move v0, v3

    :goto_0
    move v4, v3

    :cond_4
    :goto_1
    if-ge v4, v1, :cond_6

    add-int/lit8 v4, v4, 0x1

    .line 5
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v5, :cond_4

    .line 6
    sget-boolean v6, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v6, :cond_5

    sget-object v6, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCell for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    :cond_5
    iget-wide v5, v5, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {p0, v5, v6, v2}, Lcom/smartisanos/launcher/view/b/fa;->c(JZ)V

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    new-instance p1, Lcom/smartisanos/launcher/view/b/ba;

    const/16 v1, 0x64

    invoke-direct {p1, p0, v1, v0}, Lcom/smartisanos/launcher/view/b/ba;-><init>(Lcom/smartisanos/launcher/view/b/fa;ILjava/util/List;)V

    const/4 p0, 0x0

    .line 11
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_2

    .line 12
    :cond_7
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_8

    sget-object p0, Lcom/smartisanos/launcher/view/b/fa;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "update icon step 3 update UI finish!"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public yb(I)Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 2
    rem-int/2addr p1, p0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public yr()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->getPageCount()I

    move-result v0

    .line 2
    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->hH:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->getMaxPageCount(I)I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public z(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/fa;->uQ:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method public zr()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_3X3_MODE(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/smartisanos/launcher/view/b/fa;->bK:I

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_3X3_MODE_FOLDER(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
