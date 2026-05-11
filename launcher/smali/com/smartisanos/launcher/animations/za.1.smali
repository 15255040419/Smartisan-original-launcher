.class Lcom/smartisanos/launcher/animations/za;
.super Ljava/lang/Object;
.source "MultiSelectFadeinFadeoutAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/Ea;

.field public vn:Ljava/util/ArrayList;

.field private wn:Lcom/smartisanos/launcher/view/a/g;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/animations/Ea;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/za;->this$0:Lcom/smartisanos/launcher/animations/Ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/za;->vn:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/za;->wn:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/za;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/za;->wn:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method


# virtual methods
.method public Xd()V
    .locals 10

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/animations/A;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/A;-><init>()V

    const v1, 0x3f333333    # 0.7f

    .line 2
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->Gm:F

    const/high16 v2, 0x40e00000    # 7.0f

    .line 3
    iput v2, v0, Lcom/smartisanos/launcher/animations/A;->Fm:F

    const/4 v3, 0x0

    .line 4
    iput v3, v0, Lcom/smartisanos/launcher/animations/A;->lm:F

    const/high16 v4, 0x40400000    # 3.0f

    .line 5
    iput v4, v0, Lcom/smartisanos/launcher/animations/A;->mm:F

    .line 6
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/za;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iput v5, v0, Lcom/smartisanos/launcher/animations/A;->nm:F

    .line 7
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/za;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    iput v5, v0, Lcom/smartisanos/launcher/animations/A;->om:F

    .line 8
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/za;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 9
    iget v6, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iput v6, v0, Lcom/smartisanos/launcher/animations/A;->pm:F

    .line 10
    iget v6, v5, Lcom/smartisanos/smengine/a/j;->y:F

    iput v6, v0, Lcom/smartisanos/launcher/animations/A;->qm:F

    .line 11
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    iget v7, v0, Lcom/smartisanos/launcher/animations/A;->nm:F

    iget v8, v0, Lcom/smartisanos/launcher/animations/A;->om:F

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v6, v7, v8, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v6, v0, Lcom/smartisanos/launcher/animations/A;->um:Lcom/smartisanos/smengine/a/j;

    .line 12
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/za;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    iput-object v5, v0, Lcom/smartisanos/launcher/animations/A;->wm:Lcom/smartisanos/smengine/a/j;

    .line 13
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    const v6, 0x3f570a3d    # 0.84f

    invoke-direct {v5, v6, v6, v6}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v5, v0, Lcom/smartisanos/launcher/animations/A;->xm:Lcom/smartisanos/smengine/a/j;

    .line 14
    new-instance v5, Lcom/smartisanos/smengine/a/k;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v7, v7, v7}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v5, v0, Lcom/smartisanos/launcher/animations/A;->ym:Lcom/smartisanos/smengine/a/k;

    .line 15
    new-instance v5, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v5, v7, v7, v7, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v5, v0, Lcom/smartisanos/launcher/animations/A;->zm:Lcom/smartisanos/smengine/a/k;

    .line 16
    new-instance v5, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v5, v7, v7, v7, v7}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v5, v0, Lcom/smartisanos/launcher/animations/A;->Am:Lcom/smartisanos/smengine/a/k;

    .line 17
    new-instance v5, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v5, v3, v3, v3, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v5, v0, Lcom/smartisanos/launcher/animations/A;->Bm:Lcom/smartisanos/smengine/a/k;

    const/16 v5, 0xd

    .line 18
    iput v5, v0, Lcom/smartisanos/launcher/animations/A;->Em:I

    .line 19
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/A;->Pd()V

    .line 20
    new-instance v5, Lcom/smartisanos/launcher/animations/Da;

    iget-object v8, p0, Lcom/smartisanos/launcher/animations/za;->this$0:Lcom/smartisanos/launcher/animations/Ea;

    iget-object v9, p0, Lcom/smartisanos/launcher/animations/za;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v5, v8, v9}, Lcom/smartisanos/launcher/animations/Da;-><init>(Lcom/smartisanos/launcher/animations/Ea;Lcom/smartisanos/launcher/view/a/g;)V

    iput-object v5, v0, Lcom/smartisanos/launcher/animations/A;->Hm:Lcom/smartisanos/smengine/a;

    .line 21
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/za;->vn:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v0, Lcom/smartisanos/launcher/animations/A;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/A;-><init>()V

    .line 23
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->Gm:F

    .line 24
    iput v2, v0, Lcom/smartisanos/launcher/animations/A;->Fm:F

    .line 25
    iput v4, v0, Lcom/smartisanos/launcher/animations/A;->lm:F

    .line 26
    iput v2, v0, Lcom/smartisanos/launcher/animations/A;->mm:F

    .line 27
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/za;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->nm:F

    .line 28
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/za;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->om:F

    .line 29
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/za;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->pm:F

    .line 30
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/za;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->qm:F

    .line 31
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    iget v2, v0, Lcom/smartisanos/launcher/animations/A;->nm:F

    iget v4, v0, Lcom/smartisanos/launcher/animations/A;->om:F

    iget-object v5, p0, Lcom/smartisanos/launcher/animations/za;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v1, v2, v4, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/A;->um:Lcom/smartisanos/smengine/a/j;

    .line 32
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v7, v7, v7, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/A;->ym:Lcom/smartisanos/smengine/a/k;

    .line 33
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v7, v7, v7, v7}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/A;->zm:Lcom/smartisanos/smengine/a/k;

    .line 34
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v3, v3, v3, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/A;->Am:Lcom/smartisanos/smengine/a/k;

    .line 35
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v7, v7, v7, v7}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/A;->Bm:Lcom/smartisanos/smengine/a/k;

    .line 36
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/za;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/a/j;->ca(F)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/A;->wm:Lcom/smartisanos/smengine/a/j;

    .line 37
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/za;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/A;->xm:Lcom/smartisanos/smengine/a/j;

    const/16 v1, 0xe

    .line 38
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->Em:I

    .line 39
    new-instance v1, Lcom/smartisanos/launcher/animations/Aa;

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/za;->this$0:Lcom/smartisanos/launcher/animations/Ea;

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/za;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v1, v2, v3}, Lcom/smartisanos/launcher/animations/Aa;-><init>(Lcom/smartisanos/launcher/animations/Ea;Lcom/smartisanos/launcher/view/a/g;)V

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/A;->Hm:Lcom/smartisanos/smengine/a;

    .line 40
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/A;->Pd()V

    .line 41
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/za;->vn:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
