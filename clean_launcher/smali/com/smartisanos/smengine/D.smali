.class public Lcom/smartisanos/smengine/D;
.super Lcom/smartisanos/smengine/N;
.source "PageRenderTarget.java"


# instance fields
.field private EG:I

.field private FG:I

.field private GG:I

.field private HG:F

.field private IG:F

.field private mCellWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 2

    mul-int v0, p2, p5

    mul-int v1, p3, p4

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/smartisanos/smengine/N;-><init>(Ljava/lang/String;II)V

    .line 2
    iput p4, p0, Lcom/smartisanos/smengine/D;->FG:I

    .line 3
    iput p5, p0, Lcom/smartisanos/smengine/D;->GG:I

    .line 4
    iput p3, p0, Lcom/smartisanos/smengine/D;->EG:I

    .line 5
    iput p2, p0, Lcom/smartisanos/smengine/D;->mCellWidth:I

    int-to-float p1, v0

    const/high16 p2, 0x3f800000    # 1.0f

    div-float p1, p2, p1

    .line 6
    iput p1, p0, Lcom/smartisanos/smengine/D;->HG:F

    int-to-float p1, v1

    div-float/2addr p2, p1

    .line 7
    iput p2, p0, Lcom/smartisanos/smengine/D;->IG:F

    return-void
.end method


# virtual methods
.method public p(II)Lcom/smartisanos/smengine/M;
    .locals 5

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/D;->HG:F

    iget v1, p0, Lcom/smartisanos/smengine/D;->mCellWidth:I

    int-to-float v2, v1

    mul-float/2addr v2, v0

    int-to-float p2, p2

    mul-float/2addr v2, p2

    .line 2
    iget p2, p0, Lcom/smartisanos/smengine/D;->IG:F

    iget p0, p0, Lcom/smartisanos/smengine/D;->EG:I

    int-to-float v3, p0

    mul-float/2addr v3, p2

    int-to-float p1, p1

    mul-float/2addr v3, p1

    int-to-float p1, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    int-to-float p0, p0

    mul-float/2addr p2, p0

    add-float/2addr p2, v3

    .line 3
    new-instance p0, Lcom/smartisanos/smengine/M;

    invoke-direct {p0}, Lcom/smartisanos/smengine/M;-><init>()V

    const/4 p1, 0x2

    new-array v1, p1, [F

    const/4 v4, 0x0

    aput v2, v1, v4

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 4
    iput-object v1, p0, Lcom/smartisanos/smengine/M;->rG:[F

    new-array p1, p1, [F

    aput v3, p1, v4

    aput p2, p1, v2

    .line 5
    iput-object p1, p0, Lcom/smartisanos/smengine/M;->v:[F

    return-object p0
.end method

.method public q(II)Lcom/smartisanos/smengine/Ga;
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/D;->mCellWidth:I

    mul-int/2addr p2, v0

    .line 2
    iget p0, p0, Lcom/smartisanos/smengine/D;->EG:I

    mul-int/2addr p1, p0

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/Ga;

    invoke-direct {v1, p2, p1, v0, p0}, Lcom/smartisanos/smengine/Ga;-><init>(IIII)V

    return-object v1
.end method
