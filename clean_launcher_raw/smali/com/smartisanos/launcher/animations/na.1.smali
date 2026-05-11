.class Lcom/smartisanos/launcher/animations/na;
.super Ljava/lang/Object;
.source "MultiPageAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/oa;

.field public vn:Ljava/util/ArrayList;

.field private wn:Lcom/smartisanos/launcher/view/a/g;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/animations/oa;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/na;->this$0:Lcom/smartisanos/launcher/animations/oa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/na;->vn:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/na;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method


# virtual methods
.method public Vd()V
    .locals 9

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/animations/A;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/A;-><init>()V

    const v1, 0x3ecccccd    # 0.4f

    .line 2
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->Gm:F

    const/high16 v1, 0x42200000    # 40.0f

    .line 3
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->Fm:F

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v3

    .line 6
    invoke-static {v2, v3}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v2

    .line 7
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/na;->this$0:Lcom/smartisanos/launcher/animations/oa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/oa;->a(Lcom/smartisanos/launcher/animations/oa;)I

    move-result v3

    if-nez v3, :cond_0

    .line 8
    invoke-static {v2}, Lcom/smartisanos/launcher/view/b/M;->tb(I)I

    move-result v3

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v2}, Lcom/smartisanos/launcher/view/b/M;->sb(I)I

    move-result v3

    .line 10
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/na;->this$0:Lcom/smartisanos/launcher/animations/oa;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/oa;->b(Lcom/smartisanos/launcher/animations/oa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/b/fa;->Vb(I)Lcom/smartisanos/smengine/a/i;

    move-result-object v4

    const/4 v5, 0x0

    .line 11
    iput v5, v0, Lcom/smartisanos/launcher/animations/A;->lm:F

    .line 12
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->mm:F

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/na;->this$0:Lcom/smartisanos/launcher/animations/oa;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/oa;->b(Lcom/smartisanos/launcher/animations/oa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    iget-object v6, p0, Lcom/smartisanos/launcher/animations/na;->this$0:Lcom/smartisanos/launcher/animations/oa;

    invoke-static {v6}, Lcom/smartisanos/launcher/animations/oa;->c(Lcom/smartisanos/launcher/animations/oa;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    .line 14
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/na;->this$0:Lcom/smartisanos/launcher/animations/oa;

    invoke-static {v6}, Lcom/smartisanos/launcher/animations/oa;->b(Lcom/smartisanos/launcher/animations/oa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v7

    iget-object v8, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/animations/oa;->a(Lcom/smartisanos/launcher/animations/oa;I)I

    .line 15
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6, v1}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 16
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v6

    iput v6, v0, Lcom/smartisanos/launcher/animations/A;->nm:F

    .line 18
    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v1

    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->om:F

    .line 19
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/na;->this$0:Lcom/smartisanos/launcher/animations/oa;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/oa;->b(Lcom/smartisanos/launcher/animations/oa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 20
    aget-object v6, v1, v3

    invoke-virtual {v6}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v6

    iput v6, v0, Lcom/smartisanos/launcher/animations/A;->pm:F

    .line 21
    aget-object v3, v1, v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v3

    iput v3, v0, Lcom/smartisanos/launcher/animations/A;->qm:F

    .line 22
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    iget v6, v0, Lcom/smartisanos/launcher/animations/A;->nm:F

    iget v7, v0, Lcom/smartisanos/launcher/animations/A;->om:F

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result v1

    invoke-direct {v3, v6, v7, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v3, v0, Lcom/smartisanos/launcher/animations/A;->um:Lcom/smartisanos/smengine/a/j;

    .line 23
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    iget v2, v0, Lcom/smartisanos/launcher/animations/A;->pm:F

    iget v3, v0, Lcom/smartisanos/launcher/animations/A;->qm:F

    invoke-direct {v1, v2, v3, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/A;->vm:Lcom/smartisanos/smengine/a/j;

    const/16 v1, 0xf

    .line 24
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->Em:I

    .line 25
    new-instance v1, Lcom/smartisanos/launcher/animations/q;

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v1, v2}, Lcom/smartisanos/launcher/animations/q;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/A;->Hm:Lcom/smartisanos/smengine/a;

    .line 26
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/A;->Pd()V

    .line 27
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/na;->vn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    iget v0, v4, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int v0, v0

    iget v1, v4, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    return-void
.end method

.method public Wd()V
    .locals 14

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/animations/A;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/A;-><init>()V

    const v1, 0x3ecccccd    # 0.4f

    .line 2
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->Gm:F

    const/high16 v2, 0x42200000    # 40.0f

    .line 3
    iput v2, v0, Lcom/smartisanos/launcher/animations/A;->Fm:F

    .line 4
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v3

    .line 5
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v4

    .line 6
    invoke-static {v3, v4}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v3

    .line 7
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/na;->this$0:Lcom/smartisanos/launcher/animations/oa;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/oa;->a(Lcom/smartisanos/launcher/animations/oa;)I

    move-result v4

    if-nez v4, :cond_0

    .line 8
    invoke-static {v3}, Lcom/smartisanos/launcher/view/b/M;->tb(I)I

    move-result v4

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v3}, Lcom/smartisanos/launcher/view/b/M;->sb(I)I

    move-result v4

    .line 10
    :goto_0
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/na;->this$0:Lcom/smartisanos/launcher/animations/oa;

    invoke-static {v5}, Lcom/smartisanos/launcher/animations/oa;->b(Lcom/smartisanos/launcher/animations/oa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/view/b/fa;->Vb(I)Lcom/smartisanos/smengine/a/i;

    move-result-object v5

    const/4 v6, 0x0

    .line 11
    iput v6, v0, Lcom/smartisanos/launcher/animations/A;->lm:F

    const/high16 v7, 0x41a00000    # 20.0f

    .line 12
    iput v7, v0, Lcom/smartisanos/launcher/animations/A;->mm:F

    const v8, 0x3f6147ae    # 0.88f

    const v9, 0x3f333333    # 0.7f

    .line 13
    sget-boolean v10, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    const/high16 v11, 0x2000000

    const/high16 v12, 0x1000000

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/smartisanos/launcher/animations/na;->this$0:Lcom/smartisanos/launcher/animations/oa;

    invoke-static {v10}, Lcom/smartisanos/launcher/animations/oa;->b(Lcom/smartisanos/launcher/animations/oa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    const v8, 0x3a83126f    # 0.001f

    const v9, 0x41555555

    .line 16
    iput v9, v0, Lcom/smartisanos/launcher/animations/A;->mm:F

    move v9, v13

    .line 17
    :cond_2
    new-instance v10, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v10, v13, v13, v13}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v10, v0, Lcom/smartisanos/launcher/animations/A;->wm:Lcom/smartisanos/smengine/a/j;

    .line 18
    new-instance v10, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v10, v8, v8, v13}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v10, v0, Lcom/smartisanos/launcher/animations/A;->xm:Lcom/smartisanos/smengine/a/j;

    .line 19
    new-instance v8, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v8, v13, v13, v13, v13}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v8, v0, Lcom/smartisanos/launcher/animations/A;->ym:Lcom/smartisanos/smengine/a/k;

    .line 20
    new-instance v8, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v8, v9, v9, v9, v13}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v8, v0, Lcom/smartisanos/launcher/animations/A;->zm:Lcom/smartisanos/smengine/a/k;

    const/16 v8, 0xd

    .line 21
    iput v8, v0, Lcom/smartisanos/launcher/animations/A;->Em:I

    .line 22
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/A;->Pd()V

    .line 23
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/na;->vn:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v8, Lcom/smartisanos/launcher/animations/A;

    invoke-direct {v8}, Lcom/smartisanos/launcher/animations/A;-><init>()V

    .line 25
    iput v1, v8, Lcom/smartisanos/launcher/animations/A;->Gm:F

    .line 26
    iput v2, v8, Lcom/smartisanos/launcher/animations/A;->Fm:F

    .line 27
    iput v7, v8, Lcom/smartisanos/launcher/animations/A;->lm:F

    .line 28
    iput v2, v8, Lcom/smartisanos/launcher/animations/A;->mm:F

    .line 29
    sget-boolean v7, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/smartisanos/launcher/animations/na;->this$0:Lcom/smartisanos/launcher/animations/oa;

    invoke-static {v7}, Lcom/smartisanos/launcher/animations/oa;->b(Lcom/smartisanos/launcher/animations/oa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 30
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 31
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const v7, 0x41d55555

    .line 32
    iput v7, v8, Lcom/smartisanos/launcher/animations/A;->lm:F

    .line 33
    :cond_4
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    iget-object v9, v0, Lcom/smartisanos/launcher/animations/A;->xm:Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7, v9}, Lcom/smartisanos/smengine/a/j;-><init>(Lcom/smartisanos/smengine/a/j;)V

    iput-object v7, v8, Lcom/smartisanos/launcher/animations/A;->wm:Lcom/smartisanos/smengine/a/j;

    .line 34
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7, v13, v13, v13}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v7, v8, Lcom/smartisanos/launcher/animations/A;->xm:Lcom/smartisanos/smengine/a/j;

    .line 35
    new-instance v7, Lcom/smartisanos/smengine/a/k;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/A;->zm:Lcom/smartisanos/smengine/a/k;

    invoke-direct {v7, v0}, Lcom/smartisanos/smengine/a/k;-><init>(Lcom/smartisanos/smengine/a/k;)V

    iput-object v7, v8, Lcom/smartisanos/launcher/animations/A;->ym:Lcom/smartisanos/smengine/a/k;

    .line 36
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0, v13, v13, v13, v13}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v0, v8, Lcom/smartisanos/launcher/animations/A;->zm:Lcom/smartisanos/smengine/a/k;

    const/16 v0, 0xe

    .line 37
    iput v0, v8, Lcom/smartisanos/launcher/animations/A;->Em:I

    .line 38
    invoke-virtual {v8}, Lcom/smartisanos/launcher/animations/A;->Pd()V

    .line 39
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/na;->vn:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v7, Lcom/smartisanos/launcher/animations/A;

    invoke-direct {v7}, Lcom/smartisanos/launcher/animations/A;-><init>()V

    .line 41
    iput v1, v7, Lcom/smartisanos/launcher/animations/A;->Gm:F

    .line 42
    iput v2, v7, Lcom/smartisanos/launcher/animations/A;->Fm:F

    .line 43
    iput v6, v7, Lcom/smartisanos/launcher/animations/A;->lm:F

    .line 44
    iput v2, v7, Lcom/smartisanos/launcher/animations/A;->mm:F

    .line 45
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/na;->this$0:Lcom/smartisanos/launcher/animations/oa;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/oa;->b(Lcom/smartisanos/launcher/animations/oa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v8

    .line 46
    aget-object v9, v8, v3

    invoke-virtual {v9}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v9

    iput v9, v7, Lcom/smartisanos/launcher/animations/A;->nm:F

    .line 47
    aget-object v9, v8, v3

    invoke-virtual {v9}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v9

    iput v9, v7, Lcom/smartisanos/launcher/animations/A;->om:F

    .line 48
    aget-object v9, v8, v4

    invoke-virtual {v9}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v9

    iput v9, v7, Lcom/smartisanos/launcher/animations/A;->pm:F

    .line 49
    aget-object v4, v8, v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v4

    iput v4, v7, Lcom/smartisanos/launcher/animations/A;->qm:F

    .line 50
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    iget v9, v7, Lcom/smartisanos/launcher/animations/A;->nm:F

    iget v10, v7, Lcom/smartisanos/launcher/animations/A;->om:F

    aget-object v3, v8, v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result v3

    invoke-direct {v4, v9, v10, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v4, v7, Lcom/smartisanos/launcher/animations/A;->um:Lcom/smartisanos/smengine/a/j;

    .line 51
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    iget v4, v7, Lcom/smartisanos/launcher/animations/A;->pm:F

    iget v8, v7, Lcom/smartisanos/launcher/animations/A;->qm:F

    invoke-direct {v3, v4, v8, v6}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v3, v7, Lcom/smartisanos/launcher/animations/A;->vm:Lcom/smartisanos/smengine/a/j;

    const/16 v3, 0xf

    .line 52
    iput v3, v7, Lcom/smartisanos/launcher/animations/A;->Em:I

    .line 53
    new-instance v3, Lcom/smartisanos/launcher/animations/q;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v3, v4}, Lcom/smartisanos/launcher/animations/q;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    iput-object v3, v7, Lcom/smartisanos/launcher/animations/A;->Hm:Lcom/smartisanos/smengine/a;

    .line 54
    invoke-virtual {v7}, Lcom/smartisanos/launcher/animations/A;->Pd()V

    .line 55
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/na;->vn:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v3, Lcom/smartisanos/launcher/animations/A;

    invoke-direct {v3}, Lcom/smartisanos/launcher/animations/A;-><init>()V

    .line 57
    iput v1, v3, Lcom/smartisanos/launcher/animations/A;->Gm:F

    .line 58
    iput v2, v3, Lcom/smartisanos/launcher/animations/A;->Fm:F

    const/high16 v1, 0x41200000    # 10.0f

    .line 59
    iput v1, v3, Lcom/smartisanos/launcher/animations/A;->lm:F

    const/high16 v1, 0x41f00000    # 30.0f

    .line 60
    iput v1, v3, Lcom/smartisanos/launcher/animations/A;->mm:F

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, v3, Lcom/smartisanos/launcher/animations/A;->Im:Z

    .line 62
    iput v0, v3, Lcom/smartisanos/launcher/animations/A;->Em:I

    .line 63
    new-instance v0, Lcom/smartisanos/launcher/animations/p;

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/p;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    iput-object v0, v3, Lcom/smartisanos/launcher/animations/A;->Hm:Lcom/smartisanos/smengine/a;

    .line 64
    invoke-virtual {v3}, Lcom/smartisanos/launcher/animations/A;->Pd()V

    .line 65
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/na;->vn:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    iget v1, v5, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int v1, v1

    iget v2, v5, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 67
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/na;->this$0:Lcom/smartisanos/launcher/animations/oa;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/oa;->b(Lcom/smartisanos/launcher/animations/oa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, p0}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/animations/oa;->a(Lcom/smartisanos/launcher/animations/oa;I)I

    return-void
.end method

.method public Xd()V
    .locals 7

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/animations/A;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/A;-><init>()V

    const v1, 0x3ecccccd    # 0.4f

    .line 2
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->Gm:F

    const/high16 v1, 0x42200000    # 40.0f

    .line 3
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->Fm:F

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v3

    .line 6
    invoke-static {v2, v3}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v2

    .line 7
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/na;->this$0:Lcom/smartisanos/launcher/animations/oa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/oa;->a(Lcom/smartisanos/launcher/animations/oa;)I

    move-result v3

    if-nez v3, :cond_0

    .line 8
    invoke-static {v2}, Lcom/smartisanos/launcher/view/b/M;->tb(I)I

    move-result v3

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v2}, Lcom/smartisanos/launcher/view/b/M;->sb(I)I

    move-result v3

    .line 10
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/na;->this$0:Lcom/smartisanos/launcher/animations/oa;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/oa;->b(Lcom/smartisanos/launcher/animations/oa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/b/fa;->Vb(I)Lcom/smartisanos/smengine/a/i;

    move-result-object v4

    const/4 v5, 0x0

    .line 11
    iput v5, v0, Lcom/smartisanos/launcher/animations/A;->lm:F

    .line 12
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->mm:F

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/na;->this$0:Lcom/smartisanos/launcher/animations/oa;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/oa;->b(Lcom/smartisanos/launcher/animations/oa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 14
    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v6

    iput v6, v0, Lcom/smartisanos/launcher/animations/A;->nm:F

    .line 15
    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v6

    iput v6, v0, Lcom/smartisanos/launcher/animations/A;->om:F

    .line 16
    aget-object v6, v1, v3

    invoke-virtual {v6}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v6

    iput v6, v0, Lcom/smartisanos/launcher/animations/A;->pm:F

    .line 17
    aget-object v3, v1, v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v3

    iput v3, v0, Lcom/smartisanos/launcher/animations/A;->qm:F

    .line 18
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    aget-object v1, v1, v2

    invoke-direct {v3, v1}, Lcom/smartisanos/smengine/a/j;-><init>(Lcom/smartisanos/smengine/a/j;)V

    iput-object v3, v0, Lcom/smartisanos/launcher/animations/A;->um:Lcom/smartisanos/smengine/a/j;

    .line 19
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    iget v2, v0, Lcom/smartisanos/launcher/animations/A;->pm:F

    iget v3, v0, Lcom/smartisanos/launcher/animations/A;->qm:F

    invoke-direct {v1, v2, v3, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/A;->vm:Lcom/smartisanos/smengine/a/j;

    const/16 v1, 0xf

    .line 20
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->Em:I

    .line 21
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/A;->Pd()V

    .line 22
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/na;->vn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    iget v1, v4, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int v1, v1

    iget v2, v4, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/na;->this$0:Lcom/smartisanos/launcher/animations/oa;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/oa;->b(Lcom/smartisanos/launcher/animations/oa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/na;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, p0}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/animations/oa;->a(Lcom/smartisanos/launcher/animations/oa;I)I

    return-void
.end method
