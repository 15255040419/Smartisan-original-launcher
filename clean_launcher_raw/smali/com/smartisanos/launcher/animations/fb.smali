.class public Lcom/smartisanos/launcher/animations/fb;
.super Ljava/lang/Object;
.source "SwitchPageAnimation.java"


# instance fields
.field private An:Ljava/util/ArrayList;

.field private Ao:Ljava/util/ArrayList;

.field private Bo:Lcom/smartisanos/smengine/a/j;

.field public Dn:Z

.field private En:I

.field public Hn:Ljava/util/ArrayList;

.field private dl:Lcom/smartisanos/launcher/view/b/fa;

.field private yn:Lcom/smartisanos/smengine/g;

.field private zn:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/b/fa;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/a/j;ILcom/smartisanos/smengine/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/fb;->yn:Lcom/smartisanos/smengine/g;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/fb;->zn:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/fb;->An:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/fb;->Dn:Z

    .line 6
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/fb;->Bo:Lcom/smartisanos/smengine/a/j;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/fb;->Dn:Z

    .line 8
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/fb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 9
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/fb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/animations/r;->B(Z)V

    .line 10
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/fb;->Hn:Ljava/util/ArrayList;

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/fb;->Bo:Lcom/smartisanos/smengine/a/j;

    iget p2, p4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, p4, Lcom/smartisanos/smengine/a/j;->y:F

    iget p4, p4, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p1, p2, v0, p4}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 12
    iput-object p3, p0, Lcom/smartisanos/launcher/animations/fb;->Ao:Ljava/util/ArrayList;

    .line 13
    iput p5, p0, Lcom/smartisanos/launcher/animations/fb;->En:I

    if-eqz p6, :cond_0

    .line 14
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/fb;->yn:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1, p6}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/fb;->Zd()V

    return-void
.end method

.method private Ew()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/fb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_4_MODE(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/fb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_9_MODE(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/fb;->Hn:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 4
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/fb;->Hn:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    .line 5
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/fb;->Ao:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 6
    new-instance v6, Lcom/smartisanos/launcher/animations/eb;

    invoke-direct {v6, p0, v4, v5}, Lcom/smartisanos/launcher/animations/eb;-><init>(Lcom/smartisanos/launcher/animations/fb;Lcom/smartisanos/launcher/view/b/M;I)V

    .line 7
    iget v4, p0, Lcom/smartisanos/launcher/animations/fb;->En:I

    if-nez v4, :cond_3

    .line 8
    rem-int/2addr v5, v0

    if-nez v5, :cond_2

    .line 9
    invoke-virtual {v6}, Lcom/smartisanos/launcher/animations/eb;->Wd()V

    .line 10
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/fb;->An:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v6}, Lcom/smartisanos/launcher/animations/eb;->Xd()V

    .line 12
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/fb;->zn:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 13
    rem-int/2addr v5, v0

    if-nez v5, :cond_4

    .line 14
    invoke-virtual {v6}, Lcom/smartisanos/launcher/animations/eb;->Wd()V

    .line 15
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/fb;->An:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {v6}, Lcom/smartisanos/launcher/animations/eb;->Xd()V

    .line 17
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/fb;->zn:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const v0, 0x3d23d70a    # 0.04f

    move v4, v1

    move v3, v2

    move v5, v3

    .line 18
    :goto_3
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/fb;->An:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_8

    .line 19
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/fb;->An:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/animations/eb;

    .line 20
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/fb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-static {v6}, Lcom/smartisanos/launcher/animations/eb;->a(Lcom/smartisanos/launcher/animations/eb;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/view/b/fa;->bc(I)I

    move-result v7

    if-eq v4, v7, :cond_6

    move v5, v2

    :cond_6
    move v4, v2

    .line 21
    :goto_4
    iget-object v8, v6, Lcom/smartisanos/launcher/animations/eb;->vn:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_7

    .line 22
    iget-object v8, v6, Lcom/smartisanos/launcher/animations/eb;->vn:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/animations/A;

    .line 23
    iget v9, v8, Lcom/smartisanos/launcher/animations/A;->Dm:F

    int-to-float v10, v5

    mul-float/2addr v10, v0

    add-float/2addr v9, v10

    .line 24
    iput v9, v8, Lcom/smartisanos/launcher/animations/A;->Dm:F

    .line 25
    invoke-static {v6}, Lcom/smartisanos/launcher/animations/eb;->b(Lcom/smartisanos/launcher/animations/eb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/smartisanos/launcher/animations/fb;->a(Lcom/smartisanos/launcher/animations/A;Lcom/smartisanos/launcher/view/b/M;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_3

    :cond_8
    const v0, 0x3ca3d70a    # 0.02f

    move v3, v1

    move v1, v2

    move v4, v1

    .line 26
    :goto_5
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/fb;->zn:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_a

    .line 27
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/fb;->zn:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/animations/eb;

    .line 28
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/fb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-static {v5}, Lcom/smartisanos/launcher/animations/eb;->a(Lcom/smartisanos/launcher/animations/eb;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/view/b/fa;->bc(I)I

    move-result v6

    if-eq v3, v6, :cond_9

    move v4, v2

    .line 29
    :cond_9
    iget-object v3, v5, Lcom/smartisanos/launcher/animations/eb;->vn:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/animations/A;

    .line 30
    iget v7, v3, Lcom/smartisanos/launcher/animations/A;->Dm:F

    int-to-float v8, v4

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    .line 31
    iput v7, v3, Lcom/smartisanos/launcher/animations/A;->Dm:F

    .line 32
    invoke-static {v5}, Lcom/smartisanos/launcher/animations/eb;->b(Lcom/smartisanos/launcher/animations/eb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/smartisanos/launcher/animations/fb;->a(Lcom/smartisanos/launcher/animations/A;Lcom/smartisanos/launcher/view/b/M;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    move v3, v6

    goto :goto_5

    :cond_a
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/fb;)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/fb;->Bo:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method private a(Lcom/smartisanos/launcher/animations/A;Lcom/smartisanos/launcher/view/b/M;)V
    .locals 9

    .line 2
    iget-object v0, p1, Lcom/smartisanos/launcher/animations/A;->um:Lcom/smartisanos/smengine/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/smartisanos/launcher/animations/A;->vm:Lcom/smartisanos/smengine/a/j;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/oa;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 4
    iget v1, p1, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 5
    iget v1, p1, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v2, 0x0

    .line 6
    iget-object v1, p1, Lcom/smartisanos/launcher/animations/A;->um:Lcom/smartisanos/smengine/a/j;

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v5, v1, Lcom/smartisanos/smengine/a/j;->z:F

    iget-object v1, p1, Lcom/smartisanos/launcher/animations/A;->vm:Lcom/smartisanos/smengine/a/j;

    iget v6, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v1, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/fb;->yn:Lcom/smartisanos/smengine/g;

    iget v2, p1, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/smartisanos/launcher/animations/A;->wm:Lcom/smartisanos/smengine/a/j;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/smartisanos/launcher/animations/A;->xm:Lcom/smartisanos/smengine/a/j;

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lcom/smartisanos/smengine/oa;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 10
    iget p2, p1, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 11
    iget p2, p1, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v2, 0x1

    .line 12
    iget-object p2, p1, Lcom/smartisanos/launcher/animations/A;->wm:Lcom/smartisanos/smengine/a/j;

    iget v3, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, p2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v5, p2, Lcom/smartisanos/smengine/a/j;->z:F

    iget-object p2, p1, Lcom/smartisanos/launcher/animations/A;->xm:Lcom/smartisanos/smengine/a/j;

    iget v6, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, p2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, p2, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 13
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/fb;->yn:Lcom/smartisanos/smengine/g;

    iget p1, p1, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public Zd()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/fb;->Ew()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/fb;->yn:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/fb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/fb;->yn:Lcom/smartisanos/smengine/g;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/fb;->zn:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/fb;->zn:Ljava/util/ArrayList;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/fb;->An:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/fb;->An:Ljava/util/ArrayList;

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/fb;->Hn:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 11
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/fb;->Hn:Ljava/util/ArrayList;

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/fb;->Ao:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 14
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/fb;->Ao:Ljava/util/ArrayList;

    .line 15
    :cond_3
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/fb;->Bo:Lcom/smartisanos/smengine/a/j;

    return-void
.end method
