.class public Lcom/smartisanos/smengine/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# static fields
.field private static final dD:Ljava/util/logging/Logger;


# instance fields
.field protected JC:F

.field protected KC:F

.field protected LC:F

.field protected MC:F

.field protected OC:F

.field protected PC:F

.field protected QC:[F

.field protected RC:[F

.field protected SC:[F

.field protected TC:[F

.field protected UC:F

.field protected VC:F

.field protected WC:F

.field protected XC:F

.field protected YC:Z

.field private ZC:Z

.field protected _C:Lcom/smartisanos/smengine/a/f;

.field protected aD:Lcom/smartisanos/smengine/a/f;

.field protected bD:Lcom/smartisanos/smengine/a/f;

.field protected cD:Lcom/smartisanos/smengine/a/f;

.field protected height:I

.field protected location:Lcom/smartisanos/smengine/a/j;

.field protected nativeInt:J

.field protected rotation:Lcom/smartisanos/smengine/a/g;

.field protected width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/Camera;->dD:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Camera;->YC:Z

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Camera;->ZC:Z

    .line 4
    new-instance v1, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/Camera;->aD:Lcom/smartisanos/smengine/a/f;

    .line 5
    new-instance v1, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/Camera;->bD:Lcom/smartisanos/smengine/a/f;

    .line 6
    new-instance v1, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/Camera;->cD:Lcom/smartisanos/smengine/a/f;

    .line 7
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/Camera;->location:Lcom/smartisanos/smengine/a/j;

    .line 8
    new-instance v1, Lcom/smartisanos/smengine/a/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/g;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/a/g;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    iput v1, p0, Lcom/smartisanos/smengine/Camera;->JC:F

    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    iput v2, p0, Lcom/smartisanos/smengine/Camera;->KC:F

    const/high16 v2, -0x41000000    # -0.5f

    .line 11
    iput v2, p0, Lcom/smartisanos/smengine/Camera;->LC:F

    const/high16 v3, 0x3f000000    # 0.5f

    .line 12
    iput v3, p0, Lcom/smartisanos/smengine/Camera;->MC:F

    .line 13
    iput v3, p0, Lcom/smartisanos/smengine/Camera;->OC:F

    .line 14
    iput v2, p0, Lcom/smartisanos/smengine/Camera;->PC:F

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 15
    iput-object v3, p0, Lcom/smartisanos/smengine/Camera;->QC:[F

    new-array v3, v2, [F

    .line 16
    iput-object v3, p0, Lcom/smartisanos/smengine/Camera;->RC:[F

    new-array v3, v2, [F

    .line 17
    iput-object v3, p0, Lcom/smartisanos/smengine/Camera;->SC:[F

    new-array v3, v2, [F

    .line 18
    iput-object v3, p0, Lcom/smartisanos/smengine/Camera;->TC:[F

    const/4 v3, 0x0

    .line 19
    iput v3, p0, Lcom/smartisanos/smengine/Camera;->UC:F

    .line 20
    iput v1, p0, Lcom/smartisanos/smengine/Camera;->VC:F

    .line 21
    iput v1, p0, Lcom/smartisanos/smengine/Camera;->WC:F

    .line 22
    iput v3, p0, Lcom/smartisanos/smengine/Camera;->XC:F

    .line 23
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->width:I

    .line 24
    iput p2, p0, Lcom/smartisanos/smengine/Camera;->height:I

    .line 25
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->Vx()V

    .line 26
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->Tj()V

    .line 27
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->Ux()V

    .line 28
    invoke-static {p1, p2}, Lcom/smartisanos/smengine/Camera;->nCreate(II)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    .line 29
    sget-object p0, Lcom/smartisanos/smengine/Camera;->dD:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "Camera created (W: {0}, H: {1})"

    invoke-virtual {p0, v1, p1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private Ux()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/Camera;->e(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lcom/smartisanos/smengine/d/f;->gY:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/Camera;->d(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 4
    iget-object v3, v0, Lcom/smartisanos/smengine/d/f;->hY:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/Camera;->f(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/smartisanos/smengine/Camera;->location:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/a/j;->s(Lcom/smartisanos/smengine/a/j;)F

    .line 6
    iget-object v4, p0, Lcom/smartisanos/smengine/Camera;->aD:Lcom/smartisanos/smengine/a/f;

    iget-object v5, p0, Lcom/smartisanos/smengine/Camera;->location:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v4, v5, v2, v3, v1}, Lcom/smartisanos/smengine/a/f;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->Uj()V

    return-void
.end method

.method private Vx()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->Sj()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->JC:F

    mul-float/2addr v0, v0

    .line 3
    iget v3, p0, Lcom/smartisanos/smengine/Camera;->LC:F

    mul-float/2addr v3, v3

    .line 4
    iget v4, p0, Lcom/smartisanos/smengine/Camera;->MC:F

    mul-float/2addr v4, v4

    .line 5
    iget v5, p0, Lcom/smartisanos/smengine/Camera;->PC:F

    mul-float/2addr v5, v5

    .line 6
    iget v6, p0, Lcom/smartisanos/smengine/Camera;->OC:F

    mul-float/2addr v6, v6

    add-float/2addr v3, v0

    .line 7
    invoke-static {v3}, Lcom/smartisanos/smengine/a/a;->Z(F)F

    move-result v3

    .line 8
    iget-object v7, p0, Lcom/smartisanos/smengine/Camera;->QC:[F

    iget v8, p0, Lcom/smartisanos/smengine/Camera;->JC:F

    neg-float v8, v8

    mul-float/2addr v8, v3

    aput v8, v7, v2

    .line 9
    iget v8, p0, Lcom/smartisanos/smengine/Camera;->LC:F

    neg-float v8, v8

    mul-float/2addr v8, v3

    aput v8, v7, v1

    add-float/2addr v4, v0

    .line 10
    invoke-static {v4}, Lcom/smartisanos/smengine/a/a;->Z(F)F

    move-result v3

    .line 11
    iget-object v4, p0, Lcom/smartisanos/smengine/Camera;->RC:[F

    iget v7, p0, Lcom/smartisanos/smengine/Camera;->JC:F

    mul-float/2addr v7, v3

    aput v7, v4, v2

    .line 12
    iget v7, p0, Lcom/smartisanos/smengine/Camera;->MC:F

    mul-float/2addr v7, v3

    aput v7, v4, v1

    add-float/2addr v5, v0

    .line 13
    invoke-static {v5}, Lcom/smartisanos/smengine/a/a;->Z(F)F

    move-result v3

    .line 14
    iget-object v4, p0, Lcom/smartisanos/smengine/Camera;->SC:[F

    iget v5, p0, Lcom/smartisanos/smengine/Camera;->JC:F

    mul-float/2addr v5, v3

    aput v5, v4, v2

    .line 15
    iget v5, p0, Lcom/smartisanos/smengine/Camera;->PC:F

    neg-float v5, v5

    mul-float/2addr v5, v3

    aput v5, v4, v1

    add-float/2addr v0, v6

    .line 16
    invoke-static {v0}, Lcom/smartisanos/smengine/a/a;->Z(F)F

    move-result v0

    .line 17
    iget-object v3, p0, Lcom/smartisanos/smengine/Camera;->TC:[F

    iget v4, p0, Lcom/smartisanos/smengine/Camera;->JC:F

    neg-float v4, v4

    mul-float/2addr v4, v0

    aput v4, v3, v2

    .line 18
    iget v2, p0, Lcom/smartisanos/smengine/Camera;->OC:F

    mul-float/2addr v2, v0

    aput v2, v3, v1

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->QC:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v2

    const/4 v4, 0x0

    .line 20
    aput v4, v0, v1

    .line 21
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->RC:[F

    const/high16 v5, -0x40800000    # -1.0f

    aput v5, v0, v2

    .line 22
    aput v4, v0, v1

    .line 23
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->SC:[F

    aput v3, v0, v2

    .line 24
    aput v4, v0, v1

    .line 25
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->TC:[F

    aput v5, v0, v2

    .line 26
    aput v4, v0, v1

    .line 27
    :goto_0
    iget-object v6, p0, Lcom/smartisanos/smengine/Camera;->bD:Lcom/smartisanos/smengine/a/f;

    iget v7, p0, Lcom/smartisanos/smengine/Camera;->JC:F

    iget v8, p0, Lcom/smartisanos/smengine/Camera;->KC:F

    iget v9, p0, Lcom/smartisanos/smengine/Camera;->LC:F

    iget v10, p0, Lcom/smartisanos/smengine/Camera;->MC:F

    iget v11, p0, Lcom/smartisanos/smengine/Camera;->OC:F

    iget v12, p0, Lcom/smartisanos/smengine/Camera;->PC:F

    iget-boolean v13, p0, Lcom/smartisanos/smengine/Camera;->ZC:Z

    invoke-virtual/range {v6 .. v13}, Lcom/smartisanos/smengine/a/f;->a(FFFFFFZ)V

    .line 28
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->Ux()V

    return-void
.end method

.method private static native nCreate(II)J
.end method

.method private static native nLookAt(JFFFFFF)V
.end method

.method private static native nRelease(J)V
.end method

.method private static native nSetFrustum(JFFFFFF)V
.end method

.method private static native nSetFrustumOrtho(JFFFFFF)V
.end method

.method private static native nSetFrustumPerspective(JFFFF)V
.end method

.method private static native nSetLocation(JFFF)V
.end method


# virtual methods
.method public Rj()Lcom/smartisanos/smengine/a/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Camera;->cD:Lcom/smartisanos/smengine/a/f;

    return-object p0
.end method

.method public Sj()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/Camera;->ZC:Z

    return p0
.end method

.method public Tj()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Camera;->YC:Z

    return-void
.end method

.method public Uj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->_C:Lcom/smartisanos/smengine/a/f;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/smengine/Camera;->cD:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/a/f;->e(Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;

    iget-object p0, p0, Lcom/smartisanos/smengine/Camera;->aD:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {v1, p0}, Lcom/smartisanos/smengine/a/f;->d(Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->cD:Lcom/smartisanos/smengine/a/f;

    iget-object v1, p0, Lcom/smartisanos/smengine/Camera;->bD:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/a/f;->e(Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;

    iget-object p0, p0, Lcom/smartisanos/smengine/Camera;->aD:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/a/f;->d(Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;

    :goto_0
    return-void
.end method

.method public a(FFFFFF)V
    .locals 9

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->JC:F

    .line 2
    iput p2, p0, Lcom/smartisanos/smengine/Camera;->KC:F

    .line 3
    iput p3, p0, Lcom/smartisanos/smengine/Camera;->LC:F

    .line 4
    iput p4, p0, Lcom/smartisanos/smengine/Camera;->MC:F

    .line 5
    iput p5, p0, Lcom/smartisanos/smengine/Camera;->OC:F

    .line 6
    iput p6, p0, Lcom/smartisanos/smengine/Camera;->PC:F

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Camera;->ZC:Z

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->Vx()V

    .line 9
    iget-wide v1, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v1 .. v8}, Lcom/smartisanos/smengine/Camera;->nSetFrustum(JFFFFFF)V

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V
    .locals 10

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v0

    .line 11
    iget-object v1, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    .line 12
    iget-object v2, v0, Lcom/smartisanos/smengine/d/f;->gY:Lcom/smartisanos/smengine/a/j;

    .line 13
    iget-object v3, v0, Lcom/smartisanos/smengine/d/f;->hY:Lcom/smartisanos/smengine/a/j;

    .line 14
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    iget-object v4, p0, Lcom/smartisanos/smengine/Camera;->location:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/a/j;->z(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/a/j;->zt()Lcom/smartisanos/smengine/a/j;

    .line 15
    invoke-virtual {v2, p2}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/a/j;->zt()Lcom/smartisanos/smengine/a/j;

    .line 16
    sget-object v4, Lcom/smartisanos/smengine/a/j;->ZERO:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/a/j;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 17
    sget-object v4, Lcom/smartisanos/smengine/a/j;->QV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 18
    :cond_0
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/a/j;->o(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/a/j;->zt()Lcom/smartisanos/smengine/a/j;

    .line 19
    sget-object v4, Lcom/smartisanos/smengine/a/j;->ZERO:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/a/j;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 20
    iget v4, v1, Lcom/smartisanos/smengine/a/j;->x:F

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_1

    .line 21
    iget v6, v1, Lcom/smartisanos/smengine/a/j;->y:F

    neg-float v4, v4

    invoke-virtual {v3, v6, v4, v5}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    goto :goto_0

    .line 22
    :cond_1
    iget v4, v1, Lcom/smartisanos/smengine/a/j;->z:F

    iget v6, v1, Lcom/smartisanos/smengine/a/j;->y:F

    neg-float v6, v6

    invoke-virtual {v3, v5, v4, v6}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 23
    :cond_2
    :goto_0
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/a/j;->o(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/a/j;->zt()Lcom/smartisanos/smengine/a/j;

    .line 24
    iget-object v4, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/a/g;

    invoke-virtual {v4, v3, v2, v1}, Lcom/smartisanos/smengine/a/g;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/g;

    .line 25
    iget-object v1, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/g;->zt()Lcom/smartisanos/smengine/a/g;

    .line 26
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    .line 27
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->Ux()V

    .line 28
    iget-wide v2, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    iget v4, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v6, p1, Lcom/smartisanos/smengine/a/j;->z:F

    iget v7, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, p2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, p2, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-static/range {v2 .. v9}, Lcom/smartisanos/smengine/Camera;->nLookAt(JFFFFFF)V

    return-void
.end method

.method public b(FFFFFF)V
    .locals 9

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->JC:F

    .line 2
    iput p2, p0, Lcom/smartisanos/smengine/Camera;->KC:F

    .line 3
    iput p3, p0, Lcom/smartisanos/smengine/Camera;->LC:F

    .line 4
    iput p4, p0, Lcom/smartisanos/smengine/Camera;->MC:F

    .line 5
    iput p5, p0, Lcom/smartisanos/smengine/Camera;->OC:F

    .line 6
    iput p6, p0, Lcom/smartisanos/smengine/Camera;->PC:F

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Camera;->ZC:Z

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->Vx()V

    .line 9
    iget-wide v1, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v1 .. v8}, Lcom/smartisanos/smengine/Camera;->nSetFrustumOrtho(JFFFFFF)V

    return-void
.end method

.method public d(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/a/g;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/smengine/a/g;->c(ILcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public d(FFFF)V
    .locals 7

    .line 2
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x3c8efa35

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/a/a;->tan(F)F

    move-result v0

    mul-float/2addr v0, p3

    mul-float v1, v0, p2

    neg-float v2, v1

    .line 4
    iput v2, p0, Lcom/smartisanos/smengine/Camera;->LC:F

    .line 5
    iput v1, p0, Lcom/smartisanos/smengine/Camera;->MC:F

    neg-float v1, v0

    .line 6
    iput v1, p0, Lcom/smartisanos/smengine/Camera;->PC:F

    .line 7
    iput v0, p0, Lcom/smartisanos/smengine/Camera;->OC:F

    .line 8
    iput p3, p0, Lcom/smartisanos/smengine/Camera;->JC:F

    .line 9
    iput p4, p0, Lcom/smartisanos/smengine/Camera;->KC:F

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Camera;->ZC:Z

    .line 11
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->Vx()V

    .line 12
    iget-wide v1, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/smengine/Camera;->nSetFrustumPerspective(JFFFF)V

    return-void

    .line 13
    :cond_1
    :goto_0
    sget-object p0, Lcom/smartisanos/smengine/Camera;->dD:Ljava/util/logging/Logger;

    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p3, "Invalid aspect given to setFrustumPerspective: {0}"

    invoke-virtual {p0, p1, p3, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/a/g;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/smengine/a/g;->c(ILcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public f(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/a/g;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/smengine/a/g;->c(ILcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method protected finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/Camera;->nRelease(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public g(Lcom/smartisanos/smengine/a/j;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->location:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->Ux()V

    .line 3
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    iget p0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-static {v0, v1, p0, v2, p1}, Lcom/smartisanos/smengine/Camera;->nSetLocation(JFFF)V

    return-void
.end method

.method public getDirection()Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/a/g;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/a/g;->qc(I)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Camera;->height:I

    return p0
.end method

.method public getLocation()Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Camera;->location:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Camera;->width:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera(location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/smengine/Camera;->location:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n, direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->getDirection()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nres="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", parallel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smartisanos/smengine/Camera;->ZC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nnear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->JC:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", far="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/smengine/Camera;->KC:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
