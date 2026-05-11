.class public Lcom/smartisanos/launcher/animations/Ea;
.super Ljava/lang/Object;
.source "MultiSelectFadeinFadeoutAnimation.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field public Dn:Z

.field private Hn:Ljava/util/ArrayList;

.field private Qn:I

.field private dl:Lcom/smartisanos/launcher/view/b/fa;

.field public xn:Ljava/util/ArrayList;

.field private yn:Lcom/smartisanos/smengine/g;

.field private zn:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/animations/Ea;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/Ea;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/b/fa;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p4, Lcom/smartisanos/smengine/g;

    invoke-direct {p4}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object p4, p0, Lcom/smartisanos/launcher/animations/Ea;->yn:Lcom/smartisanos/smengine/g;

    .line 3
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/smartisanos/launcher/animations/Ea;->zn:Ljava/util/ArrayList;

    const/4 p4, 0x0

    .line 4
    iput-boolean p4, p0, Lcom/smartisanos/launcher/animations/Ea;->Dn:Z

    .line 5
    iput p4, p0, Lcom/smartisanos/launcher/animations/Ea;->Qn:I

    const/4 p4, 0x1

    .line 6
    iput-boolean p4, p0, Lcom/smartisanos/launcher/animations/Ea;->Dn:Z

    .line 7
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Ea;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 8
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/Ea;->xn:Ljava/util/ArrayList;

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    iget-boolean p1, p1, Lcom/smartisanos/launcher/view/Eb;->Jx:Z

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/Ea;->yn:Lcom/smartisanos/smengine/g;

    new-instance p2, Lcom/smartisanos/launcher/animations/Ca;

    invoke-direct {p2, p0}, Lcom/smartisanos/launcher/animations/Ca;-><init>(Lcom/smartisanos/launcher/animations/Ea;)V

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/Ea;->yn:Lcom/smartisanos/smengine/g;

    new-instance p2, Lcom/smartisanos/launcher/animations/Ba;

    invoke-direct {p2, p0}, Lcom/smartisanos/launcher/animations/Ba;-><init>(Lcom/smartisanos/launcher/animations/Ea;)V

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 12
    :goto_0
    iput-object p3, p0, Lcom/smartisanos/launcher/animations/Ea;->Hn:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/Ea;->Zd()V

    return-void
.end method

.method private Bw()V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/Ea;->xn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/Ea;->xn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 3
    new-instance v3, Lcom/smartisanos/launcher/animations/za;

    invoke-direct {v3, p0, v2}, Lcom/smartisanos/launcher/animations/za;-><init>(Lcom/smartisanos/launcher/animations/Ea;Lcom/smartisanos/launcher/view/a/g;)V

    .line 4
    invoke-virtual {v3}, Lcom/smartisanos/launcher/animations/za;->Xd()V

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/Ea;->zn:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x3cf5c28f    # 0.03f

    move v2, v0

    move v3, v2

    .line 6
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/Ea;->zn:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 7
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/Ea;->zn:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/animations/za;

    move v5, v0

    .line 8
    :goto_2
    iget-object v6, v4, Lcom/smartisanos/launcher/animations/za;->vn:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 9
    iget-object v6, v4, Lcom/smartisanos/launcher/animations/za;->vn:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/animations/A;

    .line 10
    iget v7, v6, Lcom/smartisanos/launcher/animations/A;->Dm:F

    int-to-float v8, v3

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    .line 11
    iput v7, v6, Lcom/smartisanos/launcher/animations/A;->Dm:F

    .line 12
    invoke-static {v4}, Lcom/smartisanos/launcher/animations/za;->a(Lcom/smartisanos/launcher/animations/za;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/smartisanos/launcher/animations/Ea;->a(Lcom/smartisanos/launcher/animations/A;Lcom/smartisanos/launcher/view/a/g;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(Lcom/smartisanos/smengine/SceneNode;IFFF)Lcom/smartisanos/smengine/oa;
    .locals 10

    if-eqz p1, :cond_0

    .line 26
    new-instance v0, Lcom/smartisanos/smengine/oa;

    invoke-direct {v0, p1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 27
    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 28
    invoke-virtual {v0, p3}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v1, 0x3

    move v2, p4

    move v3, p4

    move v4, p4

    move v5, p4

    move v6, p5

    move v7, p5

    move v8, p5

    move v9, p5

    .line 29
    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/Ea;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ea;->Hn:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a(Lcom/smartisanos/launcher/animations/A;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/oa;

    invoke-direct {v0, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 3
    iget v1, v7, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 4
    iget v1, v7, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 5
    iget-object v1, v7, Lcom/smartisanos/launcher/animations/A;->wm:Lcom/smartisanos/smengine/a/j;

    iget v11, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v12, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v13, v1, Lcom/smartisanos/smengine/a/j;->z:F

    iget-object v1, v7, Lcom/smartisanos/launcher/animations/A;->xm:Lcom/smartisanos/smengine/a/j;

    iget v14, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v15, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    const/4 v10, 0x1

    move-object v9, v0

    move/from16 v16, v1

    invoke-virtual/range {v9 .. v16}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 7
    iget-object v1, v6, Lcom/smartisanos/launcher/animations/Ea;->yn:Lcom/smartisanos/smengine/g;

    iget v2, v7, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 8
    new-instance v5, Lcom/smartisanos/smengine/oa;

    invoke-direct {v5, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 9
    iget v0, v7, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 10
    iget v0, v7, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 11
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/A;->Am:Lcom/smartisanos/smengine/a/k;

    iget v11, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v12, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v13, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v14, v0, Lcom/smartisanos/smengine/a/k;->w:F

    iget-object v0, v7, Lcom/smartisanos/launcher/animations/A;->Bm:Lcom/smartisanos/smengine/a/k;

    iget v15, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    const/4 v10, 0x3

    move-object v9, v5

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v0

    invoke-virtual/range {v9 .. v18}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 12
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/A;->Hm:Lcom/smartisanos/smengine/a;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 14
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/A;->Am:Lcom/smartisanos/smengine/a/k;

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    iget-object v1, v7, Lcom/smartisanos/launcher/animations/A;->Bm:Lcom/smartisanos/smengine/a/k;

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const v2, 0x3ee66666    # 0.45f

    if-gez v0, :cond_1

    move v9, v1

    move v10, v2

    goto :goto_0

    :cond_1
    move v10, v1

    move v9, v2

    :goto_0
    const/4 v0, 0x1

    .line 16
    invoke-virtual {v8, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    iget v2, v7, Lcom/smartisanos/launcher/animations/A;->Em:I

    iget v3, v7, Lcom/smartisanos/launcher/animations/A;->Cm:F

    move-object/from16 v0, p0

    move v4, v9

    move-object v11, v5

    move v5, v10

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/animations/Ea;->a(Lcom/smartisanos/smengine/SceneNode;IFFF)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18
    iget-object v1, v6, Lcom/smartisanos/launcher/animations/Ea;->yn:Lcom/smartisanos/smengine/g;

    iget v2, v7, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_2
    const/4 v0, 0x3

    .line 19
    invoke-virtual {v8, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    iget v2, v7, Lcom/smartisanos/launcher/animations/A;->Em:I

    iget v3, v7, Lcom/smartisanos/launcher/animations/A;->Cm:F

    move-object/from16 v0, p0

    move v4, v9

    move v5, v10

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/animations/Ea;->a(Lcom/smartisanos/smengine/SceneNode;IFFF)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21
    iget-object v1, v6, Lcom/smartisanos/launcher/animations/Ea;->yn:Lcom/smartisanos/smengine/g;

    iget v2, v7, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_3
    const/4 v0, 0x5

    .line 22
    invoke-virtual {v8, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    iget v2, v7, Lcom/smartisanos/launcher/animations/A;->Em:I

    iget v3, v7, Lcom/smartisanos/launcher/animations/A;->Cm:F

    move-object/from16 v0, p0

    move v4, v9

    move v5, v10

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/animations/Ea;->a(Lcom/smartisanos/smengine/SceneNode;IFFF)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 24
    iget-object v1, v6, Lcom/smartisanos/launcher/animations/Ea;->yn:Lcom/smartisanos/smengine/g;

    iget v2, v7, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_1

    :cond_4
    move-object v11, v5

    .line 25
    :cond_5
    :goto_1
    iget-object v0, v6, Lcom/smartisanos/launcher/animations/Ea;->yn:Lcom/smartisanos/smengine/g;

    iget v1, v7, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {v0, v1, v11}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method static synthetic access$300()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/animations/Ea;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/animations/Ea;)Lcom/smartisanos/launcher/view/b/fa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ea;->dl:Lcom/smartisanos/launcher/view/b/fa;

    return-object p0
.end method

.method static synthetic c(Lcom/smartisanos/launcher/animations/Ea;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/animations/Ea;->Qn:I

    return p0
.end method

.method static synthetic d(Lcom/smartisanos/launcher/animations/Ea;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/animations/Ea;->Qn:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/smartisanos/launcher/animations/Ea;->Qn:I

    return v0
.end method


# virtual methods
.method public Yd()Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ea;->yn:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method public Zd()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/Ea;->Bw()V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Ea;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/Ea;->xn:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Ea;->xn:Ljava/util/ArrayList;

    .line 5
    :cond_0
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Ea;->yn:Lcom/smartisanos/smengine/g;

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/Ea;->zn:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Ea;->zn:Ljava/util/ArrayList;

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/Ea;->Hn:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 11
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Ea;->Hn:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method
