.class Lcom/smartisanos/launcher/animations/ta;
.super Ljava/lang/Object;
.source "MultiSelectAllCellBackToPageAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/va;

.field public vn:Ljava/util/ArrayList;

.field private wn:Lcom/smartisanos/launcher/view/a/g;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/animations/va;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/ta;->this$0:Lcom/smartisanos/launcher/animations/va;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/ta;->vn:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/ta;->wn:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/ta;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ta;->wn:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method


# virtual methods
.method public Xd()V
    .locals 7

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/animations/ua;

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/ta;->this$0:Lcom/smartisanos/launcher/animations/va;

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/ua;-><init>(Lcom/smartisanos/launcher/animations/va;)V

    const v1, 0x3ecccccd    # 0.4f

    .line 2
    iput v1, v0, Lcom/smartisanos/launcher/animations/ua;->Gm:F

    const/high16 v1, 0x41000000    # 8.0f

    .line 3
    iput v1, v0, Lcom/smartisanos/launcher/animations/ua;->Fm:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    iput v2, v0, Lcom/smartisanos/launcher/animations/ua;->lm:F

    .line 5
    iput v1, v0, Lcom/smartisanos/launcher/animations/ua;->mm:F

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/ta;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v1, v0, Lcom/smartisanos/launcher/animations/ua;->nm:F

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/ta;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iput v1, v0, Lcom/smartisanos/launcher/animations/ua;->om:F

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/ta;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 9
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/ta;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v3

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/ta;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/smartisanos/launcher/view/b/M;->getIndex(II)I

    move-result v1

    .line 10
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/ta;->this$0:Lcom/smartisanos/launcher/animations/va;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/va;->a(Lcom/smartisanos/launcher/animations/va;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 11
    aget-object v4, v3, v1

    .line 12
    iget v5, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iput v5, v0, Lcom/smartisanos/launcher/animations/ua;->pm:F

    .line 13
    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iput v4, v0, Lcom/smartisanos/launcher/animations/ua;->qm:F

    .line 14
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    iget v5, v0, Lcom/smartisanos/launcher/animations/ua;->nm:F

    iget v6, v0, Lcom/smartisanos/launcher/animations/ua;->om:F

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result v1

    invoke-direct {v4, v5, v6, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v4, v0, Lcom/smartisanos/launcher/animations/ua;->um:Lcom/smartisanos/smengine/a/j;

    .line 15
    iput v2, v0, Lcom/smartisanos/launcher/animations/ua;->rm:F

    .line 16
    iput v2, v0, Lcom/smartisanos/launcher/animations/ua;->tm:F

    const/16 v1, 0xe

    .line 17
    iput v1, v0, Lcom/smartisanos/launcher/animations/ua;->Em:I

    .line 18
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/ua;->Pd()V

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ta;->vn:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
