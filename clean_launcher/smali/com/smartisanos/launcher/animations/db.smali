.class public Lcom/smartisanos/launcher/animations/db;
.super Ljava/lang/Object;
.source "SpringAnimCalculate.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field mDampingRatio:D

.field private mInitialized:Z

.field mMaxValue:F

.field mMinValue:F

.field mNaturalFreq:D

.field mValue:F

.field mVelocity:F

.field private mo:J

.field private oo:J

.field private po:F

.field private qo:D

.field private ro:D

.field private so:D

.field private uo:D

.field private vo:D

.field private wo:D

.field private xo:Lcom/smartisanos/launcher/animations/cb;

.field private final yo:Lcom/smartisanos/launcher/animations/bb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/animations/db;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/db;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/smartisanos/launcher/animations/db;->mo:J

    .line 3
    iput-wide v0, p0, Lcom/smartisanos/launcher/animations/db;->oo:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/smartisanos/launcher/animations/db;->mVelocity:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 5
    iput v0, p0, Lcom/smartisanos/launcher/animations/db;->mValue:F

    .line 6
    iput v0, p0, Lcom/smartisanos/launcher/animations/db;->mMaxValue:F

    .line 7
    iget v0, p0, Lcom/smartisanos/launcher/animations/db;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lcom/smartisanos/launcher/animations/db;->mMinValue:F

    const-wide v0, 0x4097700000000000L    # 1500.0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/launcher/animations/db;->mNaturalFreq:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 9
    iput-wide v0, p0, Lcom/smartisanos/launcher/animations/db;->mDampingRatio:D

    const v0, 0x3c23d70a    # 0.01f

    .line 10
    iput v0, p0, Lcom/smartisanos/launcher/animations/db;->po:F

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 11
    iput-wide v0, p0, Lcom/smartisanos/launcher/animations/db;->qo:D

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/db;->mInitialized:Z

    .line 13
    new-instance v0, Lcom/smartisanos/launcher/animations/bb;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/bb;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/db;->yo:Lcom/smartisanos/launcher/animations/bb;

    return-void
.end method

.method private init()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/db;->mInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/smartisanos/launcher/animations/db;->qo:D

    const-wide v2, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 3
    iget-wide v0, p0, Lcom/smartisanos/launcher/animations/db;->mDampingRatio:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    neg-double v4, v0

    .line 4
    iget-wide v6, p0, Lcom/smartisanos/launcher/animations/db;->mNaturalFreq:D

    mul-double/2addr v4, v6

    mul-double/2addr v0, v0

    sub-double/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/smartisanos/launcher/animations/db;->uo:D

    .line 6
    iget-wide v0, p0, Lcom/smartisanos/launcher/animations/db;->mDampingRatio:D

    neg-double v4, v0

    iget-wide v6, p0, Lcom/smartisanos/launcher/animations/db;->mNaturalFreq:D

    mul-double/2addr v4, v6

    mul-double/2addr v0, v0

    sub-double/2addr v0, v2

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    iput-wide v4, p0, Lcom/smartisanos/launcher/animations/db;->vo:D

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    .line 8
    iget-wide v4, p0, Lcom/smartisanos/launcher/animations/db;->mNaturalFreq:D

    mul-double/2addr v0, v0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    iput-wide v4, p0, Lcom/smartisanos/launcher/animations/db;->wo:D

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/db;->mInitialized:Z

    return-void

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Error: Final position of the spring must be set before the animation starts"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private o(FZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/db;->xo:Lcom/smartisanos/launcher/animations/cb;

    invoke-interface {p0, p1}, Lcom/smartisanos/launcher/animations/cb;->c(F)V

    return-void
.end method

.method private setPropertyValue(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/db;->xo:Lcom/smartisanos/launcher/animations/cb;

    invoke-interface {p0, p1}, Lcom/smartisanos/launcher/animations/cb;->e(F)V

    return-void
.end method

.method private setValueThreshold(D)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/smartisanos/launcher/animations/db;->ro:D

    .line 2
    iget-wide p1, p0, Lcom/smartisanos/launcher/animations/db;->ro:D

    const-wide v0, 0x404f400000000000L    # 62.5

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lcom/smartisanos/launcher/animations/db;->so:D

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/launcher/animations/cb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/db;->xo:Lcom/smartisanos/launcher/animations/cb;

    return-void
.end method

.method public doAnimationFrame(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/launcher/animations/db;->mo:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2
    iput-wide p1, p0, Lcom/smartisanos/launcher/animations/db;->mo:J

    .line 3
    iget p1, p0, Lcom/smartisanos/launcher/animations/db;->mValue:F

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/db;->setPropertyValue(F)V

    return v3

    :cond_0
    sub-long v0, p1, v0

    .line 4
    iput-wide p1, p0, Lcom/smartisanos/launcher/animations/db;->mo:J

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/animations/db;->updateValueAndVelocity(J)Z

    move-result p1

    .line 6
    iget p2, p0, Lcom/smartisanos/launcher/animations/db;->mValue:F

    iget v0, p0, Lcom/smartisanos/launcher/animations/db;->mMaxValue:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/smartisanos/launcher/animations/db;->mValue:F

    .line 7
    iget p2, p0, Lcom/smartisanos/launcher/animations/db;->mValue:F

    iget v0, p0, Lcom/smartisanos/launcher/animations/db;->mMinValue:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/smartisanos/launcher/animations/db;->mValue:F

    .line 8
    iget p2, p0, Lcom/smartisanos/launcher/animations/db;->mValue:F

    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/animations/db;->setPropertyValue(F)V

    if-eqz p1, :cond_1

    .line 9
    iget p2, p0, Lcom/smartisanos/launcher/animations/db;->mValue:F

    invoke-direct {p0, p2, v3}, Lcom/smartisanos/launcher/animations/db;->o(FZ)V

    :cond_1
    return p1
.end method

.method public getFinalPosition()F
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/launcher/animations/db;->qo:D

    double-to-float p0, v0

    return p0
.end method

.method public isAtEquilibrium(FF)Z
    .locals 4

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v0, p2

    iget-wide v2, p0, Lcom/smartisanos/launcher/animations/db;->so:D

    cmpg-double p2, v0, v2

    if-gez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/db;->getFinalPosition()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    iget-wide v0, p0, Lcom/smartisanos/launcher/animations/db;->ro:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public l(J)Lcom/smartisanos/launcher/animations/db;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/smartisanos/launcher/animations/db;->oo:J

    return-object p0
.end method

.method public m(J)Lcom/smartisanos/launcher/animations/db;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/smartisanos/launcher/animations/db;->mo:J

    return-object p0
.end method

.method public setDampingRatio(F)Lcom/smartisanos/launcher/animations/db;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    float-to-double v0, p1

    .line 1
    iput-wide v0, p0, Lcom/smartisanos/launcher/animations/db;->mDampingRatio:D

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/db;->mInitialized:Z

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Damping ratio must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFinalPosition(F)Lcom/smartisanos/launcher/animations/db;
    .locals 2

    float-to-double v0, p1

    .line 1
    iput-wide v0, p0, Lcom/smartisanos/launcher/animations/db;->qo:D

    return-object p0
.end method

.method public setMinimumVisibleChange(F)Lcom/smartisanos/launcher/animations/db;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/animations/db;->po:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/animations/db;->setValueThreshold(D)V

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum visible change must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStartValue(F)Lcom/smartisanos/launcher/animations/db;
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/animations/db;->mValue:F

    return-object p0
.end method

.method public setStartVelocity(F)Lcom/smartisanos/launcher/animations/db;
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/animations/db;->mVelocity:F

    return-object p0
.end method

.method public setStiffness(F)Lcom/smartisanos/launcher/animations/db;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    float-to-double v0, p1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/launcher/animations/db;->mNaturalFreq:D

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/db;->mInitialized:Z

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Spring stiffness constant must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method updateValueAndVelocity(J)Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/animations/db;->mValue:F

    float-to-double v2, v0

    iget v0, p0, Lcom/smartisanos/launcher/animations/db;->mVelocity:F

    float-to-double v4, v0

    move-object v1, p0

    move-wide v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/db;->updateValues(DDJ)Lcom/smartisanos/launcher/animations/bb;

    move-result-object p1

    .line 2
    iget p2, p1, Lcom/smartisanos/launcher/animations/bb;->mValue:F

    iput p2, p0, Lcom/smartisanos/launcher/animations/db;->mValue:F

    .line 3
    iget p1, p1, Lcom/smartisanos/launcher/animations/bb;->mVelocity:F

    iput p1, p0, Lcom/smartisanos/launcher/animations/db;->mVelocity:F

    .line 4
    iget p1, p0, Lcom/smartisanos/launcher/animations/db;->mValue:F

    iget p2, p0, Lcom/smartisanos/launcher/animations/db;->mMinValue:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/animations/db;->mValue:F

    .line 5
    iget p1, p0, Lcom/smartisanos/launcher/animations/db;->mValue:F

    iget p2, p0, Lcom/smartisanos/launcher/animations/db;->mMaxValue:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/animations/db;->mValue:F

    .line 6
    iget p1, p0, Lcom/smartisanos/launcher/animations/db;->mValue:F

    iget p2, p0, Lcom/smartisanos/launcher/animations/db;->mVelocity:F

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/animations/db;->isAtEquilibrium(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/db;->getFinalPosition()F

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/animations/db;->mValue:F

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/smartisanos/launcher/animations/db;->mVelocity:F

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method updateValues(DDJ)Lcom/smartisanos/launcher/animations/bb;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/animations/db;->init()V

    move-wide/from16 v1, p5

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    .line 2
    iget-wide v3, v0, Lcom/smartisanos/launcher/animations/db;->qo:D

    sub-double v3, p1, v3

    .line 3
    iget-wide v5, v0, Lcom/smartisanos/launcher/animations/db;->mDampingRatio:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v5, v7

    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    if-lez v9, :cond_0

    .line 4
    iget-wide v5, v0, Lcom/smartisanos/launcher/animations/db;->vo:D

    mul-double v7, v5, v3

    sub-double v7, v7, p3

    iget-wide v12, v0, Lcom/smartisanos/launcher/animations/db;->uo:D

    sub-double v14, v5, v12

    div-double/2addr v7, v14

    sub-double v7, v3, v7

    mul-double/2addr v3, v5

    sub-double v3, v3, p3

    sub-double v12, v5, v12

    div-double/2addr v3, v12

    mul-double/2addr v5, v1

    .line 5
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v7

    iget-wide v12, v0, Lcom/smartisanos/launcher/animations/db;->uo:D

    mul-double/2addr v12, v1

    .line 6
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v12, v3

    add-double/2addr v5, v12

    .line 7
    iget-wide v12, v0, Lcom/smartisanos/launcher/animations/db;->vo:D

    mul-double/2addr v7, v12

    mul-double/2addr v12, v1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v7, v12

    iget-wide v12, v0, Lcom/smartisanos/launcher/animations/db;->uo:D

    mul-double/2addr v3, v12

    mul-double/2addr v12, v1

    .line 8
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v3, v1

    add-double/2addr v7, v3

    goto/16 :goto_0

    :cond_0
    cmpl-double v9, v5, v7

    if-nez v9, :cond_1

    .line 9
    iget-wide v5, v0, Lcom/smartisanos/launcher/animations/db;->mNaturalFreq:D

    mul-double v7, v5, v3

    add-double v7, p3, v7

    mul-double v12, v7, v1

    add-double/2addr v3, v12

    neg-double v5, v5

    mul-double/2addr v5, v1

    .line 10
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v3

    .line 11
    iget-wide v12, v0, Lcom/smartisanos/launcher/animations/db;->mNaturalFreq:D

    neg-double v12, v12

    mul-double/2addr v12, v1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v3, v12

    iget-wide v12, v0, Lcom/smartisanos/launcher/animations/db;->mNaturalFreq:D

    neg-double v14, v12

    mul-double/2addr v3, v14

    neg-double v12, v12

    mul-double/2addr v12, v1

    .line 12
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v7, v1

    add-double/2addr v7, v3

    goto :goto_0

    .line 13
    :cond_1
    iget-wide v12, v0, Lcom/smartisanos/launcher/animations/db;->wo:D

    div-double/2addr v7, v12

    iget-wide v12, v0, Lcom/smartisanos/launcher/animations/db;->mNaturalFreq:D

    mul-double v14, v5, v12

    mul-double/2addr v14, v3

    add-double v14, v14, p3

    mul-double/2addr v7, v14

    neg-double v5, v5

    mul-double/2addr v5, v12

    mul-double/2addr v5, v1

    .line 14
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-wide v12, v0, Lcom/smartisanos/launcher/animations/db;->wo:D

    mul-double/2addr v12, v1

    .line 15
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v3

    iget-wide v14, v0, Lcom/smartisanos/launcher/animations/db;->wo:D

    mul-double/2addr v14, v1

    .line 16
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v7

    add-double/2addr v12, v14

    mul-double/2addr v5, v12

    .line 17
    iget-wide v12, v0, Lcom/smartisanos/launcher/animations/db;->mNaturalFreq:D

    neg-double v14, v12

    mul-double/2addr v14, v5

    iget-wide v10, v0, Lcom/smartisanos/launcher/animations/db;->mDampingRatio:D

    mul-double/2addr v14, v10

    neg-double v9, v10

    mul-double/2addr v9, v12

    mul-double/2addr v9, v1

    const-wide v11, 0x4005bf0a8b145769L    # Math.E

    .line 18
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    iget-wide v11, v0, Lcom/smartisanos/launcher/animations/db;->wo:D

    move-wide/from16 p1, v5

    neg-double v5, v11

    mul-double/2addr v5, v3

    mul-double/2addr v11, v1

    .line 19
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v5, v3

    iget-wide v3, v0, Lcom/smartisanos/launcher/animations/db;->wo:D

    mul-double/2addr v7, v3

    mul-double/2addr v3, v1

    .line 20
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v7, v1

    add-double/2addr v5, v7

    mul-double/2addr v9, v5

    add-double v7, v14, v9

    move-wide/from16 v5, p1

    .line 21
    :goto_0
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/db;->yo:Lcom/smartisanos/launcher/animations/bb;

    iget-wide v2, v0, Lcom/smartisanos/launcher/animations/db;->qo:D

    add-double/2addr v5, v2

    double-to-float v0, v5

    iput v0, v1, Lcom/smartisanos/launcher/animations/bb;->mValue:F

    double-to-float v0, v7

    .line 22
    iput v0, v1, Lcom/smartisanos/launcher/animations/bb;->mVelocity:F

    return-object v1
.end method
