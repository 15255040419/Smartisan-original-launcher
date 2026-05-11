.class Lcom/smartisanos/launcher/animations/eb;
.super Ljava/lang/Object;
.source "SwitchPageAnimation.java"


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/fb;

.field public vn:Ljava/util/ArrayList;

.field private zo:Lcom/smartisanos/launcher/view/b/M;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/animations/fb;Lcom/smartisanos/launcher/view/b/M;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/eb;->this$0:Lcom/smartisanos/launcher/animations/fb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/eb;->vn:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/eb;->zo:Lcom/smartisanos/launcher/view/b/M;

    .line 4
    iput p3, p0, Lcom/smartisanos/launcher/animations/eb;->mIndex:I

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/eb;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/animations/eb;->mIndex:I

    return p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/animations/eb;)Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/eb;->zo:Lcom/smartisanos/launcher/view/b/M;

    return-object p0
.end method


# virtual methods
.method public Wd()V
    .locals 7

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/animations/A;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/A;-><init>()V

    const v1, 0x3ecccccd    # 0.4f

    .line 2
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->Gm:F

    const/high16 v1, 0x41f00000    # 30.0f

    .line 3
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->Fm:F

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lcom/smartisanos/launcher/animations/A;->lm:F

    .line 5
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->mm:F

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/eb;->zo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 7
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v3, v0, Lcom/smartisanos/launcher/animations/A;->nm:F

    .line 8
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iput v3, v0, Lcom/smartisanos/launcher/animations/A;->om:F

    .line 9
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/eb;->this$0:Lcom/smartisanos/launcher/animations/fb;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/fb;->a(Lcom/smartisanos/launcher/animations/fb;)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iput v3, v0, Lcom/smartisanos/launcher/animations/A;->pm:F

    .line 10
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/eb;->this$0:Lcom/smartisanos/launcher/animations/fb;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/fb;->a(Lcom/smartisanos/launcher/animations/fb;)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iput v3, v0, Lcom/smartisanos/launcher/animations/A;->qm:F

    .line 11
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    iget v4, v0, Lcom/smartisanos/launcher/animations/A;->nm:F

    iget v5, v0, Lcom/smartisanos/launcher/animations/A;->om:F

    iget-object v6, p0, Lcom/smartisanos/launcher/animations/eb;->zo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v3, v4, v5, v6}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v3, v0, Lcom/smartisanos/launcher/animations/A;->um:Lcom/smartisanos/smengine/a/j;

    .line 12
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    iget v4, v0, Lcom/smartisanos/launcher/animations/A;->pm:F

    iget v5, v0, Lcom/smartisanos/launcher/animations/A;->qm:F

    invoke-direct {v3, v4, v5, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v3, v0, Lcom/smartisanos/launcher/animations/A;->vm:Lcom/smartisanos/smengine/a/j;

    const/16 v2, 0xf

    .line 13
    iput v2, v0, Lcom/smartisanos/launcher/animations/A;->Em:I

    .line 14
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/A;->Pd()V

    .line 15
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/eb;->vn:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/eb;->this$0:Lcom/smartisanos/launcher/animations/fb;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/fb;->a(Lcom/smartisanos/launcher/animations/fb;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    iget v0, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p0, v0, v2, v1}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

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

    const/high16 v1, 0x41f00000    # 30.0f

    .line 3
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->Fm:F

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lcom/smartisanos/launcher/animations/A;->lm:F

    .line 5
    iput v1, v0, Lcom/smartisanos/launcher/animations/A;->mm:F

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/eb;->zo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 7
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v3, v0, Lcom/smartisanos/launcher/animations/A;->nm:F

    .line 8
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iput v3, v0, Lcom/smartisanos/launcher/animations/A;->om:F

    .line 9
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/eb;->this$0:Lcom/smartisanos/launcher/animations/fb;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/fb;->a(Lcom/smartisanos/launcher/animations/fb;)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iput v3, v0, Lcom/smartisanos/launcher/animations/A;->pm:F

    .line 10
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/eb;->this$0:Lcom/smartisanos/launcher/animations/fb;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/fb;->a(Lcom/smartisanos/launcher/animations/fb;)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iput v3, v0, Lcom/smartisanos/launcher/animations/A;->qm:F

    .line 11
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    iget v4, v0, Lcom/smartisanos/launcher/animations/A;->nm:F

    iget v5, v0, Lcom/smartisanos/launcher/animations/A;->om:F

    iget-object v6, p0, Lcom/smartisanos/launcher/animations/eb;->zo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v3, v4, v5, v6}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v3, v0, Lcom/smartisanos/launcher/animations/A;->um:Lcom/smartisanos/smengine/a/j;

    .line 12
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    iget v4, v0, Lcom/smartisanos/launcher/animations/A;->pm:F

    iget v5, v0, Lcom/smartisanos/launcher/animations/A;->qm:F

    invoke-direct {v3, v4, v5, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v3, v0, Lcom/smartisanos/launcher/animations/A;->vm:Lcom/smartisanos/smengine/a/j;

    const/16 v2, 0xf

    .line 13
    iput v2, v0, Lcom/smartisanos/launcher/animations/A;->Em:I

    .line 14
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/A;->Pd()V

    .line 15
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/eb;->vn:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/eb;->this$0:Lcom/smartisanos/launcher/animations/fb;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/fb;->a(Lcom/smartisanos/launcher/animations/fb;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    iget v0, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p0, v0, v2, v1}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    return-void
.end method
