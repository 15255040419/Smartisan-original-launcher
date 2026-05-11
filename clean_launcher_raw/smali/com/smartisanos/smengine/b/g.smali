.class public Lcom/smartisanos/smengine/b/g;
.super Lcom/smartisanos/smengine/SceneNode;
.source "ParticleEmitter.java"


# static fields
.field private static final XR:Lcom/smartisanos/smengine/b/d;

.field private static final YR:Lcom/smartisanos/smengine/b/h;

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private AR:I

.field private BR:Z

.field private DR:Z

.field private ER:F

.field private FR:F

.field private GR:F

.field private HR:F

.field private IR:F

.field private JR:Lcom/smartisanos/smengine/a/j;

.field private KR:I

.field private MR:I

.field private OR:F

.field private QR:F

.field private RR:Z

.field private SR:Z

.field private UR:Ljava/lang/String;

.field private transient WR:Lcom/smartisanos/smengine/a/j;

.field private enabled:Z

.field private endColor:Lcom/smartisanos/smengine/a/k;

.field private gravity:Lcom/smartisanos/smengine/a/j;

.field private shape:Lcom/smartisanos/smengine/b/d;

.field private startColor:Lcom/smartisanos/smengine/a/k;

.field private vR:Lcom/smartisanos/smengine/b/j;

.field private wR:Lcom/smartisanos/smengine/b/h;

.field private xR:I

.field private yR:[Lcom/smartisanos/smengine/b/f;

.field private zR:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/smartisanos/smengine/b/g;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/b/g;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/b/c;

    sget-object v1, Lcom/smartisanos/smengine/a/j;->ZERO:Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/b/c;-><init>(Lcom/smartisanos/smengine/a/j;)V

    sput-object v0, Lcom/smartisanos/smengine/b/g;->XR:Lcom/smartisanos/smengine/b/d;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/b/b;

    invoke-direct {v0}, Lcom/smartisanos/smengine/b/b;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/b/g;->YR:Lcom/smartisanos/smengine/b/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/smengine/b/g;->enabled:Z

    .line 3
    sget-object v1, Lcom/smartisanos/smengine/b/g;->XR:Lcom/smartisanos/smengine/b/d;

    iput-object v1, p0, Lcom/smartisanos/smengine/b/g;->shape:Lcom/smartisanos/smengine/b/d;

    .line 4
    sget-object v1, Lcom/smartisanos/smengine/b/g;->YR:Lcom/smartisanos/smengine/b/h;

    iput-object v1, p0, Lcom/smartisanos/smengine/b/g;->wR:Lcom/smartisanos/smengine/b/h;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 5
    iput v1, p0, Lcom/smartisanos/smengine/b/g;->ER:F

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/smartisanos/smengine/b/g;->FR:F

    const/high16 v2, 0x40400000    # 3.0f

    .line 7
    iput v2, p0, Lcom/smartisanos/smengine/b/g;->GR:F

    const/high16 v2, 0x40e00000    # 7.0f

    .line 8
    iput v2, p0, Lcom/smartisanos/smengine/b/g;->HR:F

    .line 9
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v1, v3, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v2, p0, Lcom/smartisanos/smengine/b/g;->gravity:Lcom/smartisanos/smengine/a/j;

    .line 10
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    sget-object v4, Lcom/smartisanos/smengine/a/j;->OV:Lcom/smartisanos/smengine/a/j;

    invoke-direct {v2, v4}, Lcom/smartisanos/smengine/a/j;-><init>(Lcom/smartisanos/smengine/a/j;)V

    iput-object v2, p0, Lcom/smartisanos/smengine/b/g;->JR:Lcom/smartisanos/smengine/a/j;

    .line 11
    iput v0, p0, Lcom/smartisanos/smengine/b/g;->KR:I

    .line 12
    iput v0, p0, Lcom/smartisanos/smengine/b/g;->MR:I

    .line 13
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const v2, 0x3f666666    # 0.9f

    const v4, 0x3f333333    # 0.7f

    invoke-direct {v0, v2, v2, v2, v4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/b/g;->startColor:Lcom/smartisanos/smengine/a/k;

    .line 14
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0, v3, v3, v3, v1}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/b/g;->endColor:Lcom/smartisanos/smengine/a/k;

    const v0, 0x3e4ccccd    # 0.2f

    .line 15
    iput v0, p0, Lcom/smartisanos/smengine/b/g;->OR:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 16
    iput v0, p0, Lcom/smartisanos/smengine/b/g;->QR:F

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/smartisanos/smengine/b/g;->RR:Z

    .line 18
    iput-boolean v0, p0, Lcom/smartisanos/smengine/b/g;->SR:Z

    .line 19
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/b/g;->WR:Lcom/smartisanos/smengine/a/j;

    .line 20
    iput p2, p0, Lcom/smartisanos/smengine/b/g;->xR:I

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "particle.mesh_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/smengine/b/g;->UR:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, p3}, Lcom/smartisanos/smengine/b/g;->hc(I)V

    return-void
.end method

.method private Ld(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/b/g;->yR:[Lcom/smartisanos/smengine/b/f;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/smartisanos/smengine/b/f;->RW:F

    .line 3
    iput v1, v0, Lcom/smartisanos/smengine/b/f;->size:F

    .line 4
    iget-object v2, v0, Lcom/smartisanos/smengine/b/f;->color:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lcom/smartisanos/smengine/b/f;->TW:I

    .line 6
    iput v1, v0, Lcom/smartisanos/smengine/b/f;->angle:F

    .line 7
    iput v1, v0, Lcom/smartisanos/smengine/b/f;->IR:F

    .line 8
    iget-object v0, v0, Lcom/smartisanos/smengine/b/f;->position:Lcom/smartisanos/smengine/a/j;

    const v2, -0x383cb000    # -100000.0f

    invoke-virtual {v0, v2, v2, v2}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 9
    iget v0, p0, Lcom/smartisanos/smengine/b/g;->AR:I

    if-ne p1, v0, :cond_0

    .line 10
    :goto_0
    iget v0, p0, Lcom/smartisanos/smengine/b/g;->AR:I

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/smartisanos/smengine/b/g;->yR:[Lcom/smartisanos/smengine/b/f;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/smartisanos/smengine/b/f;->RW:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 11
    iput v0, p0, Lcom/smartisanos/smengine/b/g;->AR:I

    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/b/g;->zR:I

    if-ge p1, v0, :cond_1

    .line 13
    iput p1, p0, Lcom/smartisanos/smengine/b/g;->zR:I

    :cond_1
    return-void
.end method

.method private O(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/b/g;->UR:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    check-cast v1, Lcom/smartisanos/smengine/b/j;

    iput-object v1, p0, Lcom/smartisanos/smengine/b/g;->vR:Lcom/smartisanos/smengine/b/j;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/b/j;

    invoke-direct {v1, p1}, Lcom/smartisanos/smengine/b/j;-><init>(I)V

    iput-object v1, p0, Lcom/smartisanos/smengine/b/g;->vR:Lcom/smartisanos/smengine/b/j;

    .line 5
    iget-object p1, p0, Lcom/smartisanos/smengine/b/g;->vR:Lcom/smartisanos/smengine/b/j;

    invoke-virtual {p1, p0, p2}, Lcom/smartisanos/smengine/b/j;->a(Lcom/smartisanos/smengine/b/g;I)V

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object p1

    iget-object p2, p0, Lcom/smartisanos/smengine/b/g;->vR:Lcom/smartisanos/smengine/b/j;

    invoke-virtual {p1, v0, p2}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    :goto_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/smartisanos/smengine/b/g;->SR:Z

    return-void
.end method

.method private P(II)V
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/b/g;->yR:[Lcom/smartisanos/smengine/b/f;

    aget-object v0, p0, p1

    .line 3
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 4
    aput-object v0, p0, p2

    return-void
.end method

.method private a(Lcom/smartisanos/smengine/b/f;FLcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V
    .locals 4

    .line 3
    iget-object v0, p1, Lcom/smartisanos/smengine/b/f;->QW:Lcom/smartisanos/smengine/a/j;

    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v2, p0, Lcom/smartisanos/smengine/b/g;->gravity:Lcom/smartisanos/smengine/a/j;

    iget v3, v2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v3, p2

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 4
    iget v1, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v3, p2

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 5
    iget v1, v0, Lcom/smartisanos/smengine/a/j;->z:F

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float/2addr v2, p2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->z:F

    .line 6
    iget-object v1, p0, Lcom/smartisanos/smengine/b/g;->WR:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v1, p2}, Lcom/smartisanos/smengine/a/j;->aa(F)Lcom/smartisanos/smengine/a/j;

    .line 7
    iget-object v0, p1, Lcom/smartisanos/smengine/b/f;->position:Lcom/smartisanos/smengine/a/j;

    iget-object v1, p0, Lcom/smartisanos/smengine/b/g;->WR:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/a/j;->n(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 8
    iget v0, p1, Lcom/smartisanos/smengine/b/f;->SW:F

    iget v1, p1, Lcom/smartisanos/smengine/b/f;->RW:F

    sub-float v1, v0, v1

    div-float/2addr v1, v0

    .line 9
    iget-object v0, p1, Lcom/smartisanos/smengine/b/f;->color:Lcom/smartisanos/smengine/a/k;

    iget-object v2, p0, Lcom/smartisanos/smengine/b/g;->startColor:Lcom/smartisanos/smengine/a/k;

    iget-object v3, p0, Lcom/smartisanos/smengine/b/g;->endColor:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v0, v2, v3, v1}, Lcom/smartisanos/smengine/a/k;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;F)Lcom/smartisanos/smengine/a/k;

    .line 10
    iget v0, p0, Lcom/smartisanos/smengine/b/g;->OR:F

    iget v2, p0, Lcom/smartisanos/smengine/b/g;->QR:F

    invoke-static {v1, v0, v2}, Lcom/smartisanos/smengine/a/a;->e(FFF)F

    move-result v0

    iput v0, p1, Lcom/smartisanos/smengine/b/f;->size:F

    .line 11
    iget v0, p1, Lcom/smartisanos/smengine/b/f;->angle:F

    iget v2, p1, Lcom/smartisanos/smengine/b/f;->IR:F

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    iput v0, p1, Lcom/smartisanos/smengine/b/f;->angle:F

    .line 12
    iget-object p2, p0, Lcom/smartisanos/smengine/b/g;->WR:Lcom/smartisanos/smengine/a/j;

    iget-object v0, p1, Lcom/smartisanos/smengine/b/f;->position:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    iget v0, p1, Lcom/smartisanos/smengine/b/f;->size:F

    invoke-virtual {p2, v0, v0, v0}, Lcom/smartisanos/smengine/a/j;->g(FFF)Lcom/smartisanos/smengine/a/j;

    .line 13
    iget-object p2, p0, Lcom/smartisanos/smengine/b/g;->WR:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p4, p2}, Lcom/smartisanos/smengine/a/j;->u(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 14
    iget-object p2, p0, Lcom/smartisanos/smengine/b/g;->WR:Lcom/smartisanos/smengine/a/j;

    iget-object p4, p1, Lcom/smartisanos/smengine/b/f;->position:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p2, p4}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    iget p4, p1, Lcom/smartisanos/smengine/b/f;->size:F

    invoke-virtual {p2, p4, p4, p4}, Lcom/smartisanos/smengine/a/j;->j(FFF)Lcom/smartisanos/smengine/a/j;

    .line 15
    iget-object p2, p0, Lcom/smartisanos/smengine/b/g;->WR:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p3, p2}, Lcom/smartisanos/smengine/a/j;->v(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 16
    iget-boolean p2, p0, Lcom/smartisanos/smengine/b/g;->DR:Z

    if-nez p2, :cond_0

    .line 17
    iget p2, p0, Lcom/smartisanos/smengine/b/g;->KR:I

    int-to-float p2, p2

    mul-float/2addr v1, p2

    iget p0, p0, Lcom/smartisanos/smengine/b/g;->MR:I

    int-to-float p0, p0

    mul-float/2addr v1, p0

    float-to-int p0, v1

    iput p0, p1, Lcom/smartisanos/smengine/b/f;->TW:I

    :cond_0
    return-void
.end method

.method private i(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/b/f;
    .locals 6

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/b/g;->AR:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/smartisanos/smengine/b/g;->yR:[Lcom/smartisanos/smengine/b/f;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    aget-object v1, v1, v0

    .line 4
    iget-boolean v2, p0, Lcom/smartisanos/smengine/b/g;->DR:Z

    if-eqz v2, :cond_1

    .line 5
    iget v2, p0, Lcom/smartisanos/smengine/b/g;->MR:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/smartisanos/smengine/a/a;->I(II)I

    move-result v2

    iget v4, p0, Lcom/smartisanos/smengine/b/g;->KR:I

    mul-int/2addr v2, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lcom/smartisanos/smengine/a/a;->I(II)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/smartisanos/smengine/b/f;->TW:I

    .line 6
    :cond_1
    iget v2, p0, Lcom/smartisanos/smengine/b/g;->GR:F

    invoke-static {}, Lcom/smartisanos/smengine/a/a;->xt()F

    move-result v3

    iget v4, p0, Lcom/smartisanos/smengine/b/g;->HR:F

    iget v5, p0, Lcom/smartisanos/smengine/b/g;->GR:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/smartisanos/smengine/b/f;->SW:F

    .line 7
    iget v2, v1, Lcom/smartisanos/smengine/b/f;->SW:F

    iput v2, v1, Lcom/smartisanos/smengine/b/f;->RW:F

    .line 8
    iget-object v2, v1, Lcom/smartisanos/smengine/b/f;->color:Lcom/smartisanos/smengine/a/k;

    iget-object v3, p0, Lcom/smartisanos/smengine/b/g;->startColor:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/a/k;->f(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    .line 9
    iget v2, p0, Lcom/smartisanos/smengine/b/g;->OR:F

    iput v2, v1, Lcom/smartisanos/smengine/b/f;->size:F

    .line 10
    iget-object v2, p0, Lcom/smartisanos/smengine/b/g;->wR:Lcom/smartisanos/smengine/b/h;

    iget-object v3, p0, Lcom/smartisanos/smengine/b/g;->shape:Lcom/smartisanos/smengine/b/d;

    invoke-interface {v2, v1, v3}, Lcom/smartisanos/smengine/b/h;->a(Lcom/smartisanos/smengine/b/f;Lcom/smartisanos/smengine/b/d;)V

    .line 11
    iget-boolean v2, p0, Lcom/smartisanos/smengine/b/g;->BR:Z

    if-eqz v2, :cond_2

    .line 12
    invoke-static {}, Lcom/smartisanos/smengine/a/a;->xt()F

    move-result v2

    const v3, 0x40c90fdb

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/smartisanos/smengine/b/f;->angle:F

    .line 13
    :cond_2
    iget v2, p0, Lcom/smartisanos/smengine/b/g;->IR:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_3

    const v3, 0x3e4ccccd    # 0.2f

    .line 14
    invoke-static {}, Lcom/smartisanos/smengine/a/a;->xt()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    mul-float/2addr v2, v4

    iput v2, v1, Lcom/smartisanos/smengine/b/f;->IR:F

    .line 15
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/smengine/b/g;->WR:Lcom/smartisanos/smengine/a/j;

    iget-object v3, v1, Lcom/smartisanos/smengine/b/f;->position:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    iget v3, v1, Lcom/smartisanos/smengine/b/f;->size:F

    invoke-virtual {v2, v3, v3, v3}, Lcom/smartisanos/smengine/a/j;->g(FFF)Lcom/smartisanos/smengine/a/j;

    .line 16
    iget-object v2, p0, Lcom/smartisanos/smengine/b/g;->WR:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p2, v2}, Lcom/smartisanos/smengine/a/j;->u(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 17
    iget-object p2, p0, Lcom/smartisanos/smengine/b/g;->WR:Lcom/smartisanos/smengine/a/j;

    iget-object v2, v1, Lcom/smartisanos/smengine/b/f;->position:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p2, v2}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    iget v2, v1, Lcom/smartisanos/smengine/b/f;->size:F

    invoke-virtual {p2, v2, v2, v2}, Lcom/smartisanos/smengine/a/j;->j(FFF)Lcom/smartisanos/smengine/a/j;

    .line 18
    iget-object p2, p0, Lcom/smartisanos/smengine/b/g;->WR:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/a/j;->v(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 19
    iget p1, p0, Lcom/smartisanos/smengine/b/g;->AR:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/smartisanos/smengine/b/g;->AR:I

    add-int/lit8 v0, v0, 0x1

    .line 20
    iput v0, p0, Lcom/smartisanos/smengine/b/g;->zR:I

    return-object v1
.end method

.method private pa(F)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    sget-object v2, Lcom/smartisanos/smengine/a/j;->POSITIVE_INFINITY:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 4
    iget-object v2, v0, Lcom/smartisanos/smengine/d/f;->gY:Lcom/smartisanos/smengine/a/j;

    sget-object v3, Lcom/smartisanos/smengine/a/j;->NEGATIVE_INFINITY:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/smengine/b/g;->yR:[Lcom/smartisanos/smengine/b/f;

    array-length v5, v4

    const/4 v6, 0x0

    if-ge v3, v5, :cond_4

    .line 6
    aget-object v4, v4, v3

    .line 7
    iget v5, v4, Lcom/smartisanos/smengine/b/f;->RW:F

    cmpl-float v7, v5, v6

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    sub-float/2addr v5, p1

    .line 8
    iput v5, v4, Lcom/smartisanos/smengine/b/f;->RW:F

    .line 9
    iget v5, v4, Lcom/smartisanos/smengine/b/f;->RW:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    .line 10
    invoke-direct {p0, v3}, Lcom/smartisanos/smengine/b/g;->Ld(I)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-direct {p0, v4, p1, v1, v2}, Lcom/smartisanos/smengine/b/g;->a(Lcom/smartisanos/smengine/b/f;FLcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V

    .line 12
    iget v4, p0, Lcom/smartisanos/smengine/b/g;->zR:I

    if-ge v4, v3, :cond_3

    .line 13
    invoke-direct {p0, v4, v3}, Lcom/smartisanos/smengine/b/g;->P(II)V

    .line 14
    iget v4, p0, Lcom/smartisanos/smengine/b/g;->AR:I

    if-ne v3, v4, :cond_2

    .line 15
    iget v4, p0, Lcom/smartisanos/smengine/b/g;->zR:I

    iput v4, p0, Lcom/smartisanos/smengine/b/g;->AR:I

    .line 16
    :cond_2
    iget v4, p0, Lcom/smartisanos/smengine/b/g;->zR:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/smartisanos/smengine/b/g;->zR:I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    .line 17
    iget v4, p0, Lcom/smartisanos/smengine/b/g;->ER:F

    div-float/2addr v3, v4

    .line 18
    iget v4, p0, Lcom/smartisanos/smengine/b/g;->FR:F

    add-float/2addr p1, v4

    :cond_5
    :goto_2
    cmpl-float v4, p1, v3

    if-lez v4, :cond_7

    sub-float/2addr p1, v3

    .line 19
    invoke-direct {p0, v1, v2}, Lcom/smartisanos/smengine/b/g;->i(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/b/f;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 20
    iget v5, v4, Lcom/smartisanos/smengine/b/f;->RW:F

    sub-float/2addr v5, p1

    iput v5, v4, Lcom/smartisanos/smengine/b/f;->RW:F

    .line 21
    iget v5, v4, Lcom/smartisanos/smengine/b/f;->RW:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_6

    .line 22
    iget v4, p0, Lcom/smartisanos/smengine/b/g;->AR:I

    invoke-direct {p0, v4}, Lcom/smartisanos/smengine/b/g;->Ld(I)V

    goto :goto_2

    .line 23
    :cond_6
    invoke-direct {p0, v4, p1, v1, v2}, Lcom/smartisanos/smengine/b/g;->a(Lcom/smartisanos/smengine/b/f;FLcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V

    goto :goto_2

    .line 24
    :cond_7
    iput p1, p0, Lcom/smartisanos/smengine/b/g;->FR:F

    .line 25
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    return-void
.end method


# virtual methods
.method public N(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/b/g;->QR:F

    return-void
.end method

.method public O(F)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/smartisanos/smengine/b/g;->HR:F

    return-void
.end method

.method public Ob(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    .line 4
    iget-object v2, v0, Lcom/smartisanos/smengine/d/f;->gY:Lcom/smartisanos/smengine/a/j;

    .line 5
    invoke-static {v1}, Lcom/smartisanos/smengine/a/j;->t(Lcom/smartisanos/smengine/a/j;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    sget-object v3, Lcom/smartisanos/smengine/a/j;->POSITIVE_INFINITY:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 7
    :cond_0
    invoke-static {v2}, Lcom/smartisanos/smengine/a/j;->t(Lcom/smartisanos/smengine/a/j;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    sget-object v3, Lcom/smartisanos/smengine/a/j;->NEGATIVE_INFINITY:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    :cond_1
    if-eqz p1, :cond_2

    .line 9
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/smartisanos/smengine/b/g;->i(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/b/f;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/smengine/b/g;->vR:Lcom/smartisanos/smengine/b/j;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    const-string p1, "VertexColorTextureMaterial"

    .line 11
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 13
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    return-void
.end method

.method public P(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/b/g;->GR:F

    return-void
.end method

.method public Pb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/b/g;->BR:Z

    return-void
.end method

.method public Q(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/b/g;->ER:F

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/smartisanos/smengine/b/g;->FR:F

    return-void
.end method

.method public R(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/b/g;->OR:F

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/b/g;->shape:Lcom/smartisanos/smengine/b/d;

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/b/h;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/smengine/b/g;->wR:Lcom/smartisanos/smengine/b/h;

    return-void
.end method

.method public c(Lcom/smartisanos/smengine/a/k;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/b/g;->endColor:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/a/k;->f(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    return-void
.end method

.method public d(FFF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/b/g;->gravity:Lcom/smartisanos/smengine/a/j;

    iput p1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 2
    iput p2, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 3
    iput p3, p0, Lcom/smartisanos/smengine/a/j;->z:F

    return-void
.end method

.method public d(Lcom/smartisanos/smengine/a/k;)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/smengine/b/g;->startColor:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/a/k;->f(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/b/g;->os()V

    return-void
.end method

.method public fc(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/b/g;->KR:I

    .line 2
    iget-object p1, p0, Lcom/smartisanos/smengine/b/g;->vR:Lcom/smartisanos/smengine/b/j;

    iget v0, p0, Lcom/smartisanos/smengine/b/g;->KR:I

    iget p0, p0, Lcom/smartisanos/smengine/b/g;->MR:I

    invoke-virtual {p1, v0, p0}, Lcom/smartisanos/smengine/b/j;->o(II)V

    return-void
.end method

.method public gc(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/b/g;->MR:I

    .line 2
    iget-object p1, p0, Lcom/smartisanos/smengine/b/g;->vR:Lcom/smartisanos/smengine/b/j;

    iget v0, p0, Lcom/smartisanos/smengine/b/g;->KR:I

    iget p0, p0, Lcom/smartisanos/smengine/b/g;->MR:I

    invoke-virtual {p1, v0, p0}, Lcom/smartisanos/smengine/b/j;->o(II)V

    return-void
.end method

.method public getShape()Lcom/smartisanos/smengine/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/b/g;->shape:Lcom/smartisanos/smengine/b/d;

    return-object p0
.end method

.method public final hc(I)V
    .locals 4

    .line 1
    new-array v0, p1, [Lcom/smartisanos/smengine/b/f;

    iput-object v0, p0, Lcom/smartisanos/smengine/b/g;->yR:[Lcom/smartisanos/smengine/b/f;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/smartisanos/smengine/b/g;->yR:[Lcom/smartisanos/smengine/b/f;

    new-instance v3, Lcom/smartisanos/smengine/b/f;

    invoke-direct {v3}, Lcom/smartisanos/smengine/b/f;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/smartisanos/smengine/b/g;->xR:I

    invoke-direct {p0, v1, p1}, Lcom/smartisanos/smengine/b/g;->O(II)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/smengine/b/g;->vR:Lcom/smartisanos/smengine/b/j;

    iget v1, p0, Lcom/smartisanos/smengine/b/g;->KR:I

    iget v2, p0, Lcom/smartisanos/smengine/b/g;->MR:I

    invoke-virtual {p1, v1, v2}, Lcom/smartisanos/smengine/b/j;->o(II)V

    .line 5
    iput v0, p0, Lcom/smartisanos/smengine/b/g;->zR:I

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/smartisanos/smengine/b/g;->AR:I

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/b/g;->enabled:Z

    return p0
.end method

.method public ms()Lcom/smartisanos/smengine/b/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/b/g;->wR:Lcom/smartisanos/smengine/b/h;

    return-object p0
.end method

.method public ns()[Lcom/smartisanos/smengine/b/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/b/g;->yR:[Lcom/smartisanos/smengine/b/f;

    return-object p0
.end method

.method public os()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/smengine/b/g;->yR:[Lcom/smartisanos/smengine/b/f;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    iget v1, v1, Lcom/smartisanos/smengine/b/f;->RW:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/b/g;->Ld(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/b/g;->enabled:Z

    return-void
.end method

.method public update(F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/b/g;->SR:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/b/g;->pa(F)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/smengine/b/g;->vR:Lcom/smartisanos/smengine/b/j;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/y;->getClearFlag()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/smartisanos/smengine/b/g;->vR:Lcom/smartisanos/smengine/b/j;

    iget-object v0, p0, Lcom/smartisanos/smengine/b/g;->yR:[Lcom/smartisanos/smengine/b/f;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/smartisanos/smengine/b/j;->a([Lcom/smartisanos/smengine/b/f;Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/a/e;)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/smengine/b/g;->vR:Lcom/smartisanos/smengine/b/j;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/y;->Dk()V

    :cond_0
    return-void
.end method
