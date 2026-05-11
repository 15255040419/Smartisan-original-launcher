.class public Lcom/smartisanos/launcher/animations/qa;
.super Ljava/lang/Object;
.source "MultiPageHasEmptyCellAnimation.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private An:Ljava/util/ArrayList;

.field private Bn:Ljava/util/ArrayList;

.field private Cn:Ljava/util/ArrayList;

.field public Dn:Z

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
    const-class v0, Lcom/smartisanos/launcher/animations/qa;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/qa;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/b/fa;IIIILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p3, Lcom/smartisanos/smengine/g;

    invoke-direct {p3}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object p3, p0, Lcom/smartisanos/launcher/animations/qa;->yn:Lcom/smartisanos/smengine/g;

    .line 3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/smartisanos/launcher/animations/qa;->zn:Ljava/util/ArrayList;

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/smartisanos/launcher/animations/qa;->An:Ljava/util/ArrayList;

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/smartisanos/launcher/animations/qa;->Bn:Ljava/util/ArrayList;

    .line 6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/smartisanos/launcher/animations/qa;->Cn:Ljava/util/ArrayList;

    const/4 p3, 0x0

    .line 7
    iput-boolean p3, p0, Lcom/smartisanos/launcher/animations/qa;->Dn:Z

    const/4 p3, 0x1

    .line 8
    iput-boolean p3, p0, Lcom/smartisanos/launcher/animations/qa;->Dn:Z

    .line 9
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 10
    iput-object p6, p0, Lcom/smartisanos/launcher/animations/qa;->xn:Ljava/util/ArrayList;

    .line 11
    iput-object p7, p0, Lcom/smartisanos/launcher/animations/qa;->Hn:Ljava/util/ArrayList;

    .line 12
    iput p2, p0, Lcom/smartisanos/launcher/animations/qa;->In:I

    if-eqz p8, :cond_0

    .line 13
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/qa;->yn:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1, p8}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/qa;->Zd()V

    return-void
.end method

.method private Bw()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Xq()I

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Uq()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 4
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/qa;->xn:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 5
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/qa;->xn:Ljava/util/ArrayList;

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
    new-instance v6, Lcom/smartisanos/launcher/animations/pa;

    invoke-direct {v6, p0, v4}, Lcom/smartisanos/launcher/animations/pa;-><init>(Lcom/smartisanos/launcher/animations/qa;Lcom/smartisanos/launcher/view/a/g;)V

    add-int/lit8 v4, v0, -0x1

    if-ne v5, v4, :cond_0

    .line 10
    invoke-virtual {v6}, Lcom/smartisanos/launcher/animations/pa;->Vd()V

    .line 11
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/qa;->Bn:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 12
    rem-int/2addr v5, v1

    if-nez v5, :cond_1

    .line 13
    invoke-virtual {v6}, Lcom/smartisanos/launcher/animations/pa;->Wd()V

    .line 14
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/qa;->An:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v6}, Lcom/smartisanos/launcher/animations/pa;->Xd()V

    .line 16
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/qa;->zn:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/qa;->Cn:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const v0, 0x3ca3d70a    # 0.02f

    const/4 v1, 0x0

    move-object v4, v1

    move v3, v2

    move v5, v3

    .line 18
    :goto_2
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/qa;->An:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 19
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/qa;->An:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/animations/pa;

    .line 20
    invoke-static {v6}, Lcom/smartisanos/launcher/animations/pa;->a(Lcom/smartisanos/launcher/animations/pa;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/b/M;

    if-eq v7, v4, :cond_3

    move v5, v2

    :cond_3
    move v4, v2

    .line 21
    :goto_3
    iget-object v8, v6, Lcom/smartisanos/launcher/animations/pa;->vn:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 22
    iget-object v8, v6, Lcom/smartisanos/launcher/animations/pa;->vn:Ljava/util/ArrayList;

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
    invoke-static {v6}, Lcom/smartisanos/launcher/animations/pa;->a(Lcom/smartisanos/launcher/animations/pa;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v9

    invoke-direct {p0, v8, v9, v1}, Lcom/smartisanos/launcher/animations/qa;->a(Lcom/smartisanos/launcher/animations/A;Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v7

    goto :goto_2

    :cond_5
    move-object v5, v1

    move v3, v2

    move v4, v3

    .line 26
    :goto_4
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/qa;->Cn:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_8

    .line 27
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/qa;->Cn:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/animations/pa;

    .line 28
    invoke-static {v6}, Lcom/smartisanos/launcher/animations/pa;->a(Lcom/smartisanos/launcher/animations/pa;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/b/M;

    .line 29
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/qa;->Bn:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    .line 30
    iget-object v6, v6, Lcom/smartisanos/launcher/animations/pa;->vn:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/animations/A;

    .line 31
    iget v8, v6, Lcom/smartisanos/launcher/animations/A;->Cm:F

    int-to-float v9, v4

    mul-float/2addr v9, v0

    add-float/2addr v8, v9

    .line 32
    iput v8, v6, Lcom/smartisanos/launcher/animations/A;->Cm:F

    :cond_6
    if-eq v7, v5, :cond_7

    move v4, v2

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v4, 0x1

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object v5, v7

    goto :goto_4

    :cond_8
    move-object v4, v1

    move v3, v2

    move v5, v3

    .line 33
    :goto_6
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/qa;->Bn:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_a

    .line 34
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/qa;->Bn:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/animations/pa;

    .line 35
    invoke-static {v6}, Lcom/smartisanos/launcher/animations/pa;->a(Lcom/smartisanos/launcher/animations/pa;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/b/M;

    if-eq v7, v4, :cond_9

    move v5, v2

    .line 36
    :cond_9
    iget-object v4, v6, Lcom/smartisanos/launcher/animations/pa;->vn:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/animations/A;

    .line 37
    iget v8, v4, Lcom/smartisanos/launcher/animations/A;->Dm:F

    int-to-float v9, v5

    mul-float/2addr v9, v0

    add-float/2addr v8, v9

    .line 38
    iput v8, v4, Lcom/smartisanos/launcher/animations/A;->Dm:F

    .line 39
    invoke-static {v6}, Lcom/smartisanos/launcher/animations/pa;->a(Lcom/smartisanos/launcher/animations/pa;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v6

    invoke-direct {p0, v4, v6, v1}, Lcom/smartisanos/launcher/animations/qa;->a(Lcom/smartisanos/launcher/animations/A;Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/a;)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v7

    goto :goto_6

    :cond_a
    move-object v4, v1

    move v3, v2

    move v5, v3

    .line 40
    :goto_7
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/qa;->zn:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_c

    .line 41
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/qa;->zn:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/animations/pa;

    .line 42
    invoke-static {v6}, Lcom/smartisanos/launcher/animations/pa;->a(Lcom/smartisanos/launcher/animations/pa;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/b/M;

    if-eq v7, v4, :cond_b

    move v5, v2

    .line 43
    :cond_b
    iget-object v4, v6, Lcom/smartisanos/launcher/animations/pa;->vn:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/animations/A;

    .line 44
    iget v8, v4, Lcom/smartisanos/launcher/animations/A;->Dm:F

    int-to-float v9, v5

    mul-float/2addr v9, v0

    add-float/2addr v8, v9

    .line 45
    iput v8, v4, Lcom/smartisanos/launcher/animations/A;->Dm:F

    .line 46
    invoke-static {v6}, Lcom/smartisanos/launcher/animations/pa;->a(Lcom/smartisanos/launcher/animations/pa;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v6

    invoke-direct {p0, v4, v6, v1}, Lcom/smartisanos/launcher/animations/qa;->a(Lcom/smartisanos/launcher/animations/A;Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/a;)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v7

    goto :goto_7

    :cond_c
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/qa;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/animations/qa;->In:I

    return p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/qa;)Lcom/smartisanos/launcher/view/b/fa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    return-object p0
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
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/qa;->yn:Lcom/smartisanos/smengine/g;

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
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/qa;->yn:Lcom/smartisanos/smengine/g;

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
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/qa;->yn:Lcom/smartisanos/smengine/g;

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

    sget-object p2, Lcom/smartisanos/launcher/animations/qa;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "############ passlistener != null"

    invoke-virtual {p2, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 30
    :cond_3
    iget-object p2, p1, Lcom/smartisanos/launcher/animations/A;->Hm:Lcom/smartisanos/smengine/a;

    invoke-virtual {p3, p2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 31
    :cond_4
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/qa;->yn:Lcom/smartisanos/smengine/g;

    iget p1, p1, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {p0, p1, p3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_5
    return-void
.end method

.method static synthetic b(Lcom/smartisanos/launcher/animations/qa;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/animations/qa;->In:I

    return p0
.end method


# virtual methods
.method public Yd()Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/qa;->yn:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method public Zd()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/qa;->Bw()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/qa;->yn:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/qa;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/qa;->xn:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/qa;->xn:Ljava/util/ArrayList;

    .line 5
    :cond_0
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/qa;->yn:Lcom/smartisanos/smengine/g;

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/qa;->zn:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/qa;->zn:Ljava/util/ArrayList;

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/qa;->An:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 11
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/qa;->An:Ljava/util/ArrayList;

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/qa;->Bn:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 14
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/qa;->Bn:Ljava/util/ArrayList;

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/qa;->Cn:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 17
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/qa;->Cn:Ljava/util/ArrayList;

    .line 18
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/qa;->Hn:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 20
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/qa;->Hn:Ljava/util/ArrayList;

    :cond_5
    return-void
.end method
