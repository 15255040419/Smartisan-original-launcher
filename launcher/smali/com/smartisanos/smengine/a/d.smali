.class public Lcom/smartisanos/smengine/a/d;
.super Ljava/lang/Object;
.source "Geometry3D.java"


# instance fields
.field public mRadius:F

.field public nV:Lcom/smartisanos/smengine/a/j;


# direct methods
.method public constructor <init>(Lcom/smartisanos/smengine/a/j;F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/a/d;->nV:Lcom/smartisanos/smengine/a/j;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/smengine/a/d;->nV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 4
    iput p2, p0, Lcom/smartisanos/smengine/a/d;->mRadius:F

    return-void
.end method


# virtual methods
.method public c(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/d;->mRadius:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float/2addr v1, v0

    iput v1, p2, Lcom/smartisanos/smengine/a/j;->z:F

    .line 2
    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 3
    iget p0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v0, p0

    iput v0, p2, Lcom/smartisanos/smengine/a/j;->y:F

    .line 4
    iput v2, p2, Lcom/smartisanos/smengine/a/j;->x:F

    return-void

    .line 5
    :cond_0
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->z:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    .line 6
    iget p0, p0, Lcom/smartisanos/smengine/a/d;->mRadius:F

    float-to-double v2, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    .line 7
    iget p0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    float-to-double v0, p0

    iget p0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    .line 8
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p2, Lcom/smartisanos/smengine/a/j;->x:F

    .line 9
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v2, p0

    double-to-float p0, v2

    iput p0, p2, Lcom/smartisanos/smengine/a/j;->y:F

    return-void
.end method
