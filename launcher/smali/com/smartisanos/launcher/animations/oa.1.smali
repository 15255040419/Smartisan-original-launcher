.class public Lcom/smartisanos/launcher/animations/oa;
.super Ljava/lang/Object;
.source "MultiPageAnimation.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private An:Ljava/util/ArrayList;

.field private Bn:Ljava/util/ArrayList;

.field private Cn:Ljava/util/ArrayList;

.field public Dn:Z

.field private En:I

.field private Fn:Lcom/smartisanos/launcher/view/b/M;

.field private Gn:Lcom/smartisanos/launcher/view/b/M;

.field public Hn:Ljava/util/ArrayList;

.field private In:I

.field private dl:Lcom/smartisanos/launcher/view/b/fa;

.field public xn:Ljava/util/ArrayList;

.field private yn:Lcom/smartisanos/smengine/g;

.field private zn:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/animations/oa;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/oa;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/launcher/view/b/M;IIIILjava/util/ArrayList;Ljava/util/ArrayList;ILcom/smartisanos/smengine/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/smartisanos/launcher/animations/oa;->xn:Ljava/util/ArrayList;

    .line 3
    new-instance p4, Lcom/smartisanos/smengine/g;

    invoke-direct {p4}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object p4, p0, Lcom/smartisanos/launcher/animations/oa;->yn:Lcom/smartisanos/smengine/g;

    .line 4
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/smartisanos/launcher/animations/oa;->zn:Ljava/util/ArrayList;

    .line 5
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/smartisanos/launcher/animations/oa;->An:Ljava/util/ArrayList;

    .line 6
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/smartisanos/launcher/animations/oa;->Bn:Ljava/util/ArrayList;

    .line 7
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/smartisanos/launcher/animations/oa;->Cn:Ljava/util/ArrayList;

    const/4 p4, 0x0

    .line 8
    iput-boolean p4, p0, Lcom/smartisanos/launcher/animations/oa;->Dn:Z

    const/4 p4, 0x1

    .line 9
    iput-boolean p4, p0, Lcom/smartisanos/launcher/animations/oa;->Dn:Z

    .line 10
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/oa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 11
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/oa;->Gn:Lcom/smartisanos/launcher/view/b/M;

    .line 12
    iput-object p3, p0, Lcom/smartisanos/launcher/animations/oa;->Fn:Lcom/smartisanos/launcher/view/b/M;

    .line 13
    iput-object p8, p0, Lcom/smartisanos/launcher/animations/oa;->xn:Ljava/util/ArrayList;

    .line 14
    iput-object p9, p0, Lcom/smartisanos/launcher/animations/oa;->Hn:Ljava/util/ArrayList;

    .line 15
    iput p10, p0, Lcom/smartisanos/launcher/animations/oa;->En:I

    .line 16
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/oa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object p2, p0, Lcom/smartisanos/launcher/animations/oa;->Gn:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/animations/oa;->In:I

    if-eqz p11, :cond_0

    .line 17
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/oa;->yn:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1, p11}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/oa;->Zd()V

    return-void
.end method

.method private Bw()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/oa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/oa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Xq()I

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/oa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Uq()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 4
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/oa;->xn:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 5
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/oa;->xn:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/a/g;

    .line 6
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v5

    .line 7
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v6

    .line 8
    invoke-static {v5, v6}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v5

    .line 9
    new-instance v6, Lcom/smartisanos/launcher/animations/na;

    invoke-direct {v6, p0, v4}, Lcom/smartisanos/launcher/animations/na;-><init>(Lcom/smartisanos/launcher/animations/oa;Lcom/smartisanos/launcher/view/a/g;)V

    .line 10
    iget v4, p0, Lcom/smartisanos/launcher/animations/oa;->En:I

    if-nez v4, :cond_2

    if-nez v5, :cond_0

    .line 11
    invoke-virtual {v6}, Lcom/smartisanos/launcher/animations/na;->Vd()V

    .line 12
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/oa;->Bn:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_0
    rem-int/2addr v5, v1

    if-nez v5, :cond_1

    .line 14
    invoke-virtual {v6}, Lcom/smartisanos/launcher/animations/na;->Wd()V

    .line 15
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/oa;->An:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v6}, Lcom/smartisanos/launcher/animations/na;->Xd()V

    .line 17
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/oa;->zn:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v0, -0x1

    if-ne v5, v4, :cond_3

    .line 18
    invoke-virtual {v6}, Lcom/smartisanos/launcher/animations/na;->Vd()V

    .line 19
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/oa;->Bn:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 20
    rem-int/2addr v5, v1

    if-nez v5, :cond_4

    .line 21
    invoke-virtual {v6}, Lcom/smartisanos/launcher/animations/na;->Wd()V

    .line 22
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/oa;->An:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {v6}, Lcom/smartisanos/launcher/animations/na;->Xd()V

    .line 24
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/oa;->zn:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/oa;->Cn:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const v0, 0x3ca3d70a    # 0.02f

    const/4 v1, 0x0

    move-object v4, v1

    move v3, v2

    move v5, v3

    .line 26
    :goto_2
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/oa;->zn:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 27
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/oa;->zn:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/animations/na;

    .line 28
    invoke-static {v6}, Lcom/smartisanos/launcher/animations/na;->a(Lcom/smartisanos/launcher/animations/na;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/b/M;

    if-eq v7, v4, :cond_6

    move v5, v2

    .line 29
    :cond_6
    iget-object v4, v6, Lcom/smartisanos/launcher/animations/na;->vn:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/animations/A;

    .line 30
    iget v8, v4, Lcom/smartisanos/launcher/animations/A;->Dm:F

    int-to-float v9, v5

    mul-float/2addr v9, v0

    add-float/2addr v8, v9

    .line 31
    iput v8, v4, Lcom/smartisanos/launcher/animations/A;->Dm:F

    .line 32
    invoke-static {v6}, Lcom/smartisanos/launcher/animations/na;->a(Lcom/smartisanos/launcher/animations/na;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v6

    invoke-direct {p0, v4, v6, v1}, Lcom/smartisanos/launcher/animations/oa;->a(Lcom/smartisanos/launcher/animations/A;Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/a;)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v7

    goto :goto_2

    :cond_7
    move-object v4, v1

    move v3, v2

    move v5, v3

    .line 33
    :goto_3
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/oa;->An:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_a

    .line 34
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/oa;->An:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/animations/na;

    .line 35
    invoke-static {v6}, Lcom/smartisanos/launcher/animations/na;->a(Lcom/smartisanos/launcher/animations/na;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/b/M;

    if-eq v7, v4, :cond_8

    move v5, v2

    :cond_8
    move v4, v2

    .line 36
    :goto_4
    iget-object v8, v6, Lcom/smartisanos/launcher/animations/na;->vn:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_9

    .line 37
    iget-object v8, v6, Lcom/smartisanos/launcher/animations/na;->vn:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/animations/A;

    .line 38
    iget v9, v8, Lcom/smartisanos/launcher/animations/A;->Dm:F

    int-to-float v10, v5

    mul-float/2addr v10, v0

    add-float/2addr v9, v10

    .line 39
    iput v9, v8, Lcom/smartisanos/launcher/animations/A;->Dm:F

    .line 40
    invoke-static {v6}, Lcom/smartisanos/launcher/animations/na;->a(Lcom/smartisanos/launcher/animations/na;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v9

    invoke-direct {p0, v8, v9, v1}, Lcom/smartisanos/launcher/animations/oa;->a(Lcom/smartisanos/launcher/animations/A;Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v7

    goto :goto_3

    :cond_a
    move-object v5, v1

    move v3, v2

    move v4, v3

    .line 41
    :goto_5
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/oa;->Cn:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_d

    .line 42
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/oa;->Cn:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/animations/na;

    .line 43
    invoke-static {v6}, Lcom/smartisanos/launcher/animations/na;->a(Lcom/smartisanos/launcher/animations/na;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/b/M;

    .line 44
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/oa;->Bn:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_b

    .line 45
    iget-object v6, v6, Lcom/smartisanos/launcher/animations/na;->vn:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/animations/A;

    .line 46
    iget v8, v6, Lcom/smartisanos/launcher/animations/A;->Cm:F

    int-to-float v9, v4

    mul-float/2addr v9, v0

    add-float/2addr v8, v9

    .line 47
    iput v8, v6, Lcom/smartisanos/launcher/animations/A;->Cm:F

    :cond_b
    if-eq v7, v5, :cond_c

    move v4, v2

    goto :goto_6

    :cond_c
    add-int/lit8 v4, v4, 0x1

    :goto_6
    add-int/lit8 v3, v3, 0x1

    move-object v5, v7

    goto :goto_5

    :cond_d
    move-object v4, v1

    move v3, v2

    move v5, v3

    .line 48
    :goto_7
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/oa;->Bn:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_f

    .line 49
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/oa;->Bn:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/animations/na;

    .line 50
    invoke-static {v6}, Lcom/smartisanos/launcher/animations/na;->a(Lcom/smartisanos/launcher/animations/na;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/b/M;

    if-eq v7, v4, :cond_e

    move v5, v2

    .line 51
    :cond_e
    iget-object v4, v6, Lcom/smartisanos/launcher/animations/na;->vn:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/animations/A;

    .line 52
    iget v8, v4, Lcom/smartisanos/launcher/animations/A;->Dm:F

    int-to-float v9, v5

    mul-float/2addr v9, v0

    add-float/2addr v8, v9

    .line 53
    iput v8, v4, Lcom/smartisanos/launcher/animations/A;->Dm:F

    .line 54
    invoke-static {v6}, Lcom/smartisanos/launcher/animations/na;->a(Lcom/smartisanos/launcher/animations/na;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v6

    invoke-direct {p0, v4, v6, v1}, Lcom/smartisanos/launcher/animations/oa;->a(Lcom/smartisanos/launcher/animations/A;Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/a;)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v7

    goto :goto_7

    :cond_f
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/oa;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/animations/oa;->En:I

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/oa;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/animations/oa;->In:I

    return p1
.end method

.method private a(Lcom/smartisanos/launcher/animations/A;Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/a;)V
    .locals 10

    .line 3
    iget-object p3, p1, Lcom/smartisanos/launcher/animations/A;->um:Lcom/smartisanos/smengine/a/j;

    if-eqz p3, :cond_0

    iget-object p3, p1, Lcom/smartisanos/launcher/animations/A;->vm:Lcom/smartisanos/smengine/a/j;

    if-eqz p3, :cond_0

    .line 4
    new-instance p3, Lcom/smartisanos/smengine/oa;

    invoke-direct {p3, p2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 5
    iget v0, p1, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {p3, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 6
    iget v0, p1, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {p3, v0}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v1, 0x0

    .line 7
    iget-object v0, p1, Lcom/smartisanos/launcher/animations/A;->um:Lcom/smartisanos/smengine/a/j;

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/a/j;->z:F

    iget-object v0, p1, Lcom/smartisanos/launcher/animations/A;->vm:Lcom/smartisanos/smengine/a/j;

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v0, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/oa;->yn:Lcom/smartisanos/smengine/g;

    iget v1, p1, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {v0, v1, p3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 9
    iget-object v0, p1, Lcom/smartisanos/launcher/animations/A;->Hm:Lcom/smartisanos/smengine/a;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p3, v0}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 11
    :cond_0
    iget-object p3, p1, Lcom/smartisanos/launcher/animations/A;->wm:Lcom/smartisanos/smengine/a/j;

    if-eqz p3, :cond_1

    iget-object p3, p1, Lcom/smartisanos/launcher/animations/A;->xm:Lcom/smartisanos/smengine/a/j;

    if-eqz p3, :cond_1

    .line 12
    new-instance p3, Lcom/smartisanos/smengine/oa;

    invoke-direct {p3, p2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 13
    iget v0, p1, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {p3, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 14
    iget v0, p1, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {p3, v0}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v1, 0x1

    .line 15
    iget-object v0, p1, Lcom/smartisanos/launcher/animations/A;->wm:Lcom/smartisanos/smengine/a/j;

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/a/j;->z:F

    iget-object v0, p1, Lcom/smartisanos/launcher/animations/A;->xm:Lcom/smartisanos/smengine/a/j;

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v0, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/oa;->yn:Lcom/smartisanos/smengine/g;

    iget v1, p1, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {v0, v1, p3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 17
    :cond_1
    iget-object p3, p1, Lcom/smartisanos/launcher/animations/A;->ym:Lcom/smartisanos/smengine/a/k;

    if-eqz p3, :cond_2

    iget-object p3, p1, Lcom/smartisanos/launcher/animations/A;->zm:Lcom/smartisanos/smengine/a/k;

    if-eqz p3, :cond_2

    .line 18
    new-instance p3, Lcom/smartisanos/smengine/oa;

    invoke-direct {p3, p2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 19
    iget v0, p1, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {p3, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 20
    iget v0, p1, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {p3, v0}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v1, 0x3

    .line 21
    iget-object v0, p1, Lcom/smartisanos/launcher/animations/A;->ym:Lcom/smartisanos/smengine/a/k;

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v5, v0, Lcom/smartisanos/smengine/a/k;->w:F

    iget-object v0, p1, Lcom/smartisanos/launcher/animations/A;->zm:Lcom/smartisanos/smengine/a/k;

    iget v6, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v7, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v8, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v9, v0, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v0, p3

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/oa;->yn:Lcom/smartisanos/smengine/g;

    iget v1, p1, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {v0, v1, p3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 23
    :cond_2
    iget-boolean p3, p1, Lcom/smartisanos/launcher/animations/A;->Im:Z

    if-eqz p3, :cond_5

    .line 24
    new-instance p3, Lcom/smartisanos/smengine/oa;

    invoke-direct {p3, p2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 25
    iget p2, p1, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {p3, p2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 26
    iget p2, p1, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {p3, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 p2, 0x14

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p3, p2, v0, v0}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 28
    iget-object p2, p1, Lcom/smartisanos/launcher/animations/A;->Hm:Lcom/smartisanos/smengine/a;

    if-eqz p2, :cond_4

    .line 29
    sget-boolean p2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p2, :cond_3

    sget-object p2, Lcom/smartisanos/launcher/animations/oa;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "############ passlistener != null"

    invoke-virtual {p2, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 30
    :cond_3
    iget-object p2, p1, Lcom/smartisanos/launcher/animations/A;->Hm:Lcom/smartisanos/smengine/a;

    invoke-virtual {p3, p2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 31
    :cond_4
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/oa;->yn:Lcom/smartisanos/smengine/g;

    iget p1, p1, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {p0, p1, p3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_5
    return-void
.end method

.method static synthetic b(Lcom/smartisanos/launcher/animations/oa;)Lcom/smartisanos/launcher/view/b/fa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/oa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    return-object p0
.end method

.method static synthetic c(Lcom/smartisanos/launcher/animations/oa;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/animations/oa;->In:I

    return p0
.end method


# virtual methods
.method public Yd()Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/oa;->yn:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method public Zd()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/oa;->Bw()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/oa;->yn:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/oa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/oa;->xn:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/oa;->xn:Ljava/util/ArrayList;

    .line 5
    :cond_0
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/oa;->yn:Lcom/smartisanos/smengine/g;

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/oa;->zn:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/oa;->zn:Ljava/util/ArrayList;

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/oa;->An:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 11
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/oa;->An:Ljava/util/ArrayList;

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/oa;->Bn:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 14
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/oa;->Bn:Ljava/util/ArrayList;

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/oa;->Cn:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 17
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/oa;->Cn:Ljava/util/ArrayList;

    .line 18
    :cond_4
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/oa;->Gn:Lcom/smartisanos/launcher/view/b/M;

    .line 19
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/oa;->Hn:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 21
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/oa;->Hn:Ljava/util/ArrayList;

    :cond_5
    return-void
.end method
