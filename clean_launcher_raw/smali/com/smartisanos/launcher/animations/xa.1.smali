.class Lcom/smartisanos/launcher/animations/xa;
.super Ljava/lang/Object;
.source "MultiSelectConcentrateAnimation.java"


# instance fields
.field public Cm:F

.field public Dm:F

.field public Em:I

.field public Fm:F

.field public Gm:F

.field public lm:F

.field public mm:F

.field public nm:F

.field public om:F

.field public pm:F

.field public qm:F

.field public rm:F

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/ya;

.field public tm:F

.field public um:Lcom/smartisanos/smengine/a/j;

.field public vm:Lcom/smartisanos/smengine/a/j;

.field public wm:Lcom/smartisanos/smengine/a/j;

.field public xm:Lcom/smartisanos/smengine/a/j;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/animations/ya;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/xa;->this$0:Lcom/smartisanos/launcher/animations/ya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/animations/xa;->lm:F

    .line 3
    iput p1, p0, Lcom/smartisanos/launcher/animations/xa;->mm:F

    .line 4
    iput p1, p0, Lcom/smartisanos/launcher/animations/xa;->lm:F

    .line 5
    iput p1, p0, Lcom/smartisanos/launcher/animations/xa;->om:F

    .line 6
    iput p1, p0, Lcom/smartisanos/launcher/animations/xa;->pm:F

    .line 7
    iput p1, p0, Lcom/smartisanos/launcher/animations/xa;->qm:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    iput p1, p0, Lcom/smartisanos/launcher/animations/xa;->rm:F

    .line 9
    iput p1, p0, Lcom/smartisanos/launcher/animations/xa;->tm:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 10
    iput p1, p0, Lcom/smartisanos/launcher/animations/xa;->Cm:F

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/smartisanos/launcher/animations/xa;->Em:I

    .line 12
    iput p1, p0, Lcom/smartisanos/launcher/animations/xa;->Fm:F

    .line 13
    iput p1, p0, Lcom/smartisanos/launcher/animations/xa;->Gm:F

    return-void
.end method


# virtual methods
.method public Pd()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/animations/xa;->mm:F

    iget v1, p0, Lcom/smartisanos/launcher/animations/xa;->lm:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/smartisanos/launcher/animations/xa;->Fm:F

    div-float/2addr v0, v2

    iget v3, p0, Lcom/smartisanos/launcher/animations/xa;->Gm:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/smartisanos/launcher/animations/xa;->Cm:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v3

    .line 2
    iput v1, p0, Lcom/smartisanos/launcher/animations/xa;->Dm:F

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    iget v1, p0, Lcom/smartisanos/launcher/animations/xa;->pm:F

    iget v2, p0, Lcom/smartisanos/launcher/animations/xa;->qm:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/xa;->vm:Lcom/smartisanos/smengine/a/j;

    .line 4
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    iget v1, p0, Lcom/smartisanos/launcher/animations/xa;->rm:F

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/xa;->wm:Lcom/smartisanos/smengine/a/j;

    .line 5
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    iget v1, p0, Lcom/smartisanos/launcher/animations/xa;->tm:F

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/xa;->xm:Lcom/smartisanos/smengine/a/j;

    return-void
.end method
