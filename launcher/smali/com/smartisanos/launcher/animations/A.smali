.class public Lcom/smartisanos/launcher/animations/A;
.super Ljava/lang/Object;
.source "CellPassData.java"


# instance fields
.field public Am:Lcom/smartisanos/smengine/a/k;

.field public Bm:Lcom/smartisanos/smengine/a/k;

.field public Cm:F

.field public Dm:F

.field public Em:I

.field public Fm:F

.field public Gm:F

.field public Hm:Lcom/smartisanos/smengine/a;

.field public Im:Z

.field public lm:F

.field public mm:F

.field public nm:F

.field public om:F

.field public pm:F

.field public qm:F

.field public rm:F

.field public tm:F

.field public um:Lcom/smartisanos/smengine/a/j;

.field public vm:Lcom/smartisanos/smengine/a/j;

.field public wm:Lcom/smartisanos/smengine/a/j;

.field public xm:Lcom/smartisanos/smengine/a/j;

.field public ym:Lcom/smartisanos/smengine/a/k;

.field public zm:Lcom/smartisanos/smengine/a/k;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/A;->Im:Z

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/smartisanos/launcher/animations/A;->lm:F

    .line 4
    iput v1, p0, Lcom/smartisanos/launcher/animations/A;->mm:F

    .line 5
    iput v1, p0, Lcom/smartisanos/launcher/animations/A;->lm:F

    .line 6
    iput v1, p0, Lcom/smartisanos/launcher/animations/A;->om:F

    .line 7
    iput v1, p0, Lcom/smartisanos/launcher/animations/A;->pm:F

    .line 8
    iput v1, p0, Lcom/smartisanos/launcher/animations/A;->qm:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    iput v1, p0, Lcom/smartisanos/launcher/animations/A;->rm:F

    .line 10
    iput v1, p0, Lcom/smartisanos/launcher/animations/A;->tm:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 11
    iput v1, p0, Lcom/smartisanos/launcher/animations/A;->Cm:F

    .line 12
    iput v0, p0, Lcom/smartisanos/launcher/animations/A;->Em:I

    .line 13
    iput v1, p0, Lcom/smartisanos/launcher/animations/A;->Fm:F

    .line 14
    iput v1, p0, Lcom/smartisanos/launcher/animations/A;->Gm:F

    return-void
.end method


# virtual methods
.method public Pd()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/animations/A;->mm:F

    iget v1, p0, Lcom/smartisanos/launcher/animations/A;->lm:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/smartisanos/launcher/animations/A;->Fm:F

    div-float/2addr v0, v2

    iget v3, p0, Lcom/smartisanos/launcher/animations/A;->Gm:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/smartisanos/launcher/animations/A;->Cm:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v3

    .line 2
    iput v1, p0, Lcom/smartisanos/launcher/animations/A;->Dm:F

    return-void
.end method
