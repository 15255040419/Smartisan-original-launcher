.class public Lcom/smartisanos/launcher/view/Tc;
.super Ljava/lang/Object;
.source "WaveView.java"


# instance fields
.field public a:F

.field public d:F

.field public qy:F

.field public ry:F

.field final synthetic this$0:Lcom/smartisanos/launcher/view/Uc;

.field public time:F

.field public w:F


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/Uc;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Tc;->this$0:Lcom/smartisanos/launcher/view/Uc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/view/Tc;->a:F

    .line 3
    iput p1, p0, Lcom/smartisanos/launcher/view/Tc;->w:F

    .line 4
    iput p1, p0, Lcom/smartisanos/launcher/view/Tc;->qy:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/smartisanos/launcher/view/Tc;->ry:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    iput v0, p0, Lcom/smartisanos/launcher/view/Tc;->d:F

    .line 7
    iput p1, p0, Lcom/smartisanos/launcher/view/Tc;->time:F

    return-void
.end method


# virtual methods
.method public n(F)F
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/Tc;->a:F

    float-to-double v0, v0

    iget v2, p0, Lcom/smartisanos/launcher/view/Tc;->ry:F

    mul-float/2addr v2, p1

    iget-object p1, p0, Lcom/smartisanos/launcher/view/Tc;->this$0:Lcom/smartisanos/launcher/view/Uc;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/Uc;->a(Lcom/smartisanos/launcher/view/Uc;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr v2, p1

    const p1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v2, p1

    iget p1, p0, Lcom/smartisanos/launcher/view/Tc;->w:F

    iget v3, p0, Lcom/smartisanos/launcher/view/Tc;->time:F

    mul-float/2addr p1, v3

    add-float/2addr v2, p1

    iget p1, p0, Lcom/smartisanos/launcher/view/Tc;->qy:F

    add-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget p0, p0, Lcom/smartisanos/launcher/view/Tc;->d:F

    float-to-double p0, p0

    add-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method
