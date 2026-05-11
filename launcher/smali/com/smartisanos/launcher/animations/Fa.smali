.class Lcom/smartisanos/launcher/animations/Fa;
.super Ljava/lang/Object;
.source "MultiSelectSpreadOutAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/Ha;

.field public vn:Ljava/util/ArrayList;

.field private wn:Lcom/smartisanos/launcher/view/a/g;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/animations/Ha;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Fa;->this$0:Lcom/smartisanos/launcher/animations/Ha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Fa;->vn:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/Fa;->wn:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/Fa;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Fa;->wn:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method


# virtual methods
.method public Xd()V
    .locals 11

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/animations/A;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/A;-><init>()V

    const v1, 0x3f333333    # 0.7f

    .line 2
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->Gm:F

    const/high16 v2, 0x41000000    # 8.0f

    .line 3
    iput v2, v0, Lcom/smartisanos/launcher/animations/A;->Fm:F

    const/4 v3, 0x0

    .line 4
    iput v3, v0, Lcom/smartisanos/launcher/animations/A;->lm:F

    const/high16 v4, 0x40800000    # 4.0f

    .line 5
    iput v4, v0, Lcom/smartisanos/launcher/animations/A;->mm:F

    .line 6
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/Fa;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iput v5, v0, Lcom/smartisanos/launcher/animations/A;->nm:F

    .line 7
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/Fa;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    iput v5, v0, Lcom/smartisanos/launcher/animations/A;->om:F

    .line 8
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/Fa;->this$0:Lcom/smartisanos/launcher/animations/Ha;

    invoke-static {v5}, Lcom/smartisanos/launcher/animations/Ha;->b(Lcom/smartisanos/launcher/animations/Ha;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 9
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/Fa;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v6

    iget-object v7, p0, Lcom/smartisanos/launcher/animations/Fa;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v7

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v6

    .line 10
    aget-object v7, v5, v6

    .line 11
    iget v8, v7, Lcom/smartisanos/smengine/a/j;->x:F

    iput v8, v0, Lcom/smartisanos/launcher/animations/A;->pm:F

    .line 12
    iget v8, v7, Lcom/smartisanos/smengine/a/j;->y:F

    iput v8, v0, Lcom/smartisanos/launcher/animations/A;->qm:F

    .line 13
    new-instance v8, Lcom/smartisanos/smengine/a/j;

    iget v9, v0, Lcom/smartisanos/launcher/animations/A;->nm:F

    iget v10, v0, Lcom/smartisanos/launcher/animations/A;->om:F

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result v5

    invoke-direct {v8, v9, v10, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v8, v0, Lcom/smartisanos/launcher/animations/A;->um:Lcom/smartisanos/smengine/a/j;

    .line 14
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    iget v6, v7, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v7, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v7, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v5, v6, v8, v7}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v5, v0, Lcom/smartisanos/launcher/animations/A;->vm:Lcom/smartisanos/smengine/a/j;

    const/16 v5, 0x1b

    .line 15
    iput v5, v0, Lcom/smartisanos/launcher/animations/A;->Em:I

    .line 16
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/A;->Pd()V

    .line 17
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/Fa;->vn:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v0, Lcom/smartisanos/launcher/animations/A;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/A;-><init>()V

    .line 19
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->Gm:F

    .line 20
    iput v2, v0, Lcom/smartisanos/launcher/animations/A;->Fm:F

    .line 21
    iput v3, v0, Lcom/smartisanos/launcher/animations/A;->lm:F

    .line 22
    iput v4, v0, Lcom/smartisanos/launcher/animations/A;->mm:F

    .line 23
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/Fa;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    iput-object v6, v0, Lcom/smartisanos/launcher/animations/A;->wm:Lcom/smartisanos/smengine/a/j;

    .line 24
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    const v7, 0x3f570a3d    # 0.84f

    invoke-direct {v6, v7, v7, v7}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v6, v0, Lcom/smartisanos/launcher/animations/A;->xm:Lcom/smartisanos/smengine/a/j;

    .line 25
    new-instance v6, Lcom/smartisanos/smengine/a/k;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v8, v8, v8, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v6, v0, Lcom/smartisanos/launcher/animations/A;->ym:Lcom/smartisanos/smengine/a/k;

    .line 26
    new-instance v6, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v6, v8, v8, v8, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v6, v0, Lcom/smartisanos/launcher/animations/A;->zm:Lcom/smartisanos/smengine/a/k;

    .line 27
    new-instance v6, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v6, v8, v8, v8, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v6, v0, Lcom/smartisanos/launcher/animations/A;->Am:Lcom/smartisanos/smengine/a/k;

    .line 28
    new-instance v6, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v6, v3, v3, v3, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v6, v0, Lcom/smartisanos/launcher/animations/A;->Bm:Lcom/smartisanos/smengine/a/k;

    .line 29
    iput v5, v0, Lcom/smartisanos/launcher/animations/A;->Em:I

    .line 30
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/A;->Pd()V

    .line 31
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/Fa;->vn:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v0, Lcom/smartisanos/launcher/animations/A;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/A;-><init>()V

    .line 33
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->Gm:F

    .line 34
    iput v2, v0, Lcom/smartisanos/launcher/animations/A;->Fm:F

    .line 35
    iput v4, v0, Lcom/smartisanos/launcher/animations/A;->lm:F

    .line 36
    iput v2, v0, Lcom/smartisanos/launcher/animations/A;->mm:F

    .line 37
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/Fa;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/smartisanos/smengine/a/j;->ca(F)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/A;->wm:Lcom/smartisanos/smengine/a/j;

    .line 38
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/Fa;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/A;->xm:Lcom/smartisanos/smengine/a/j;

    .line 39
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v8, v8, v8, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/A;->ym:Lcom/smartisanos/smengine/a/k;

    .line 40
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v8, v8, v8, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/A;->zm:Lcom/smartisanos/smengine/a/k;

    .line 41
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v3, v3, v3, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/A;->Am:Lcom/smartisanos/smengine/a/k;

    .line 42
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v8, v8, v8, v8}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/A;->Bm:Lcom/smartisanos/smengine/a/k;

    .line 43
    iput v5, v0, Lcom/smartisanos/launcher/animations/A;->Em:I

    .line 44
    new-instance v1, Lcom/smartisanos/launcher/animations/Ga;

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/Fa;->this$0:Lcom/smartisanos/launcher/animations/Ha;

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/Fa;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v1, v2, v3}, Lcom/smartisanos/launcher/animations/Ga;-><init>(Lcom/smartisanos/launcher/animations/Ha;Lcom/smartisanos/launcher/view/a/g;)V

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/A;->Hm:Lcom/smartisanos/smengine/a;

    .line 45
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/A;->Pd()V

    .line 46
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Fa;->vn:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
