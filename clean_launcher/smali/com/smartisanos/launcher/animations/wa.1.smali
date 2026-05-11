.class Lcom/smartisanos/launcher/animations/wa;
.super Ljava/lang/Object;
.source "MultiSelectConcentrateAnimation.java"


# instance fields
.field private Pn:Lcom/smartisanos/smengine/a/j;

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/ya;

.field public vn:Ljava/util/ArrayList;

.field private wn:Lcom/smartisanos/launcher/view/a/g;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/animations/ya;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/wa;->this$0:Lcom/smartisanos/launcher/animations/ya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/wa;->vn:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/wa;->Pn:Lcom/smartisanos/smengine/a/j;

    .line 4
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/wa;->wn:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/wa;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/wa;->wn:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method


# virtual methods
.method public Xd()V
    .locals 7

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/animations/xa;

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/wa;->this$0:Lcom/smartisanos/launcher/animations/ya;

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/xa;-><init>(Lcom/smartisanos/launcher/animations/ya;)V

    const v1, 0x3ecccccd    # 0.4f

    .line 2
    iput v1, v0, Lcom/smartisanos/launcher/animations/xa;->Gm:F

    const/high16 v1, 0x42200000    # 40.0f

    .line 3
    iput v1, v0, Lcom/smartisanos/launcher/animations/xa;->Fm:F

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/wa;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/wa;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/wa;->this$0:Lcom/smartisanos/launcher/animations/ya;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/ya;->a(Lcom/smartisanos/launcher/animations/ya;)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    iput v2, v0, Lcom/smartisanos/launcher/animations/xa;->lm:F

    .line 8
    iput v1, v0, Lcom/smartisanos/launcher/animations/xa;->mm:F

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/wa;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v1, v0, Lcom/smartisanos/launcher/animations/xa;->nm:F

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/wa;->wn:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iput v1, v0, Lcom/smartisanos/launcher/animations/xa;->om:F

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/wa;->Pn:Lcom/smartisanos/smengine/a/j;

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v3, v0, Lcom/smartisanos/launcher/animations/xa;->pm:F

    .line 12
    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iput v1, v0, Lcom/smartisanos/launcher/animations/xa;->qm:F

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/wa;->this$0:Lcom/smartisanos/launcher/animations/ya;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/ya;->b(Lcom/smartisanos/launcher/animations/ya;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 14
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    iget v5, v0, Lcom/smartisanos/launcher/animations/xa;->nm:F

    iget v6, v0, Lcom/smartisanos/launcher/animations/xa;->om:F

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result v1

    invoke-direct {v3, v5, v6, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v3, v0, Lcom/smartisanos/launcher/animations/xa;->um:Lcom/smartisanos/smengine/a/j;

    .line 15
    iput v2, v0, Lcom/smartisanos/launcher/animations/xa;->rm:F

    .line 16
    iput v2, v0, Lcom/smartisanos/launcher/animations/xa;->tm:F

    const/16 v1, 0xe

    .line 17
    iput v1, v0, Lcom/smartisanos/launcher/animations/xa;->Em:I

    .line 18
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/xa;->Pd()V

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/wa;->vn:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
