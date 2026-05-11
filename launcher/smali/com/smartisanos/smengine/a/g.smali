.class public final Lcom/smartisanos/smengine/a/g;
.super Ljava/lang/Object;
.source "Quaternion.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final FV:Lcom/smartisanos/smengine/a/g;

.field public static final IDENTITY:Lcom/smartisanos/smengine/a/g;

.field public static final ZERO:Lcom/smartisanos/smengine/a/g;

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/smartisanos/smengine/a/g;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/a/g;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/g;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/a/g;->IDENTITY:Lcom/smartisanos/smengine/a/g;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/g;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/a/g;->FV:Lcom/smartisanos/smengine/a/g;

    .line 4
    new-instance v0, Lcom/smartisanos/smengine/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/a/g;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/g;->ZERO:Lcom/smartisanos/smengine/a/g;

    .line 5
    sget-object v0, Lcom/smartisanos/smengine/a/g;->FV:Lcom/smartisanos/smengine/a/g;

    sget-object v1, Lcom/smartisanos/smengine/a/j;->PV:Lcom/smartisanos/smengine/a/j;

    sget-object v2, Lcom/smartisanos/smengine/a/j;->QV:Lcom/smartisanos/smengine/a/j;

    sget-object v3, Lcom/smartisanos/smengine/a/j;->RV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/a/g;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/a/g;->x:F

    .line 3
    iput v0, p0, Lcom/smartisanos/smengine/a/g;->y:F

    .line 4
    iput v0, p0, Lcom/smartisanos/smengine/a/g;->z:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/smartisanos/smengine/a/g;->w:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/smartisanos/smengine/a/g;->x:F

    .line 8
    iput p2, p0, Lcom/smartisanos/smengine/a/g;->y:F

    .line 9
    iput p3, p0, Lcom/smartisanos/smengine/a/g;->z:F

    .line 10
    iput p4, p0, Lcom/smartisanos/smengine/a/g;->w:F

    return-void
.end method


# virtual methods
.method public At()Lcom/smartisanos/smengine/a/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/e;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/e;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/a/g;->a(Lcom/smartisanos/smengine/a/e;)Lcom/smartisanos/smengine/a/e;

    return-object v0
.end method

.method public a(Lcom/smartisanos/smengine/a/e;)Lcom/smartisanos/smengine/a/e;
    .locals 10

    .line 28
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/g;->yt()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v2, v0, v4

    if-lez v2, :cond_1

    div-float/2addr v3, v0

    goto :goto_0

    :cond_1
    move v3, v4

    .line 29
    :goto_0
    iget v0, p0, Lcom/smartisanos/smengine/a/g;->x:F

    mul-float v2, v0, v3

    .line 30
    iget v4, p0, Lcom/smartisanos/smengine/a/g;->y:F

    mul-float v5, v4, v3

    .line 31
    iget v6, p0, Lcom/smartisanos/smengine/a/g;->z:F

    mul-float/2addr v3, v6

    mul-float v7, v0, v2

    mul-float v8, v0, v5

    mul-float/2addr v0, v3

    .line 32
    iget p0, p0, Lcom/smartisanos/smengine/a/g;->w:F

    mul-float/2addr v2, p0

    mul-float v9, v4, v5

    mul-float/2addr v4, v3

    mul-float/2addr v5, p0

    mul-float/2addr v6, v3

    mul-float/2addr p0, v3

    add-float v3, v9, v6

    sub-float v3, v1, v3

    .line 33
    iput v3, p1, Lcom/smartisanos/smengine/a/e;->oV:F

    sub-float v3, v8, p0

    .line 34
    iput v3, p1, Lcom/smartisanos/smengine/a/e;->pV:F

    add-float v3, v0, v5

    .line 35
    iput v3, p1, Lcom/smartisanos/smengine/a/e;->qV:F

    add-float/2addr v8, p0

    .line 36
    iput v8, p1, Lcom/smartisanos/smengine/a/e;->rV:F

    add-float/2addr v6, v7

    sub-float p0, v1, v6

    .line 37
    iput p0, p1, Lcom/smartisanos/smengine/a/e;->sV:F

    sub-float p0, v4, v2

    .line 38
    iput p0, p1, Lcom/smartisanos/smengine/a/e;->tV:F

    sub-float/2addr v0, v5

    .line 39
    iput v0, p1, Lcom/smartisanos/smengine/a/e;->uV:F

    add-float/2addr v4, v2

    .line 40
    iput v4, p1, Lcom/smartisanos/smengine/a/e;->vV:F

    add-float/2addr v7, v9

    sub-float/2addr v1, v7

    .line 41
    iput v1, p1, Lcom/smartisanos/smengine/a/e;->wV:F

    return-object p1
.end method

.method public a(FFFFFFFFF)Lcom/smartisanos/smengine/a/g;
    .locals 4

    mul-float v0, p1, p1

    mul-float v1, p4, p4

    add-float/2addr v0, v1

    mul-float v1, p7, p7

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v0}, Lcom/smartisanos/smengine/a/a;->sqrt(F)F

    move-result v0

    div-float v0, v1, v0

    mul-float/2addr p1, v0

    mul-float/2addr p4, v0

    mul-float/2addr p7, v0

    :cond_0
    mul-float v0, p2, p2

    mul-float v2, p5, p5

    add-float/2addr v0, v2

    mul-float v2, p8, p8

    add-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_1

    .line 6
    invoke-static {v0}, Lcom/smartisanos/smengine/a/a;->sqrt(F)F

    move-result v0

    div-float v0, v1, v0

    mul-float/2addr p2, v0

    mul-float/2addr p5, v0

    mul-float/2addr p8, v0

    :cond_1
    mul-float v0, p3, p3

    mul-float v2, p6, p6

    add-float/2addr v0, v2

    mul-float v2, p9, p9

    add-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_2

    .line 7
    invoke-static {v0}, Lcom/smartisanos/smengine/a/a;->sqrt(F)F

    move-result v0

    div-float v0, v1, v0

    mul-float/2addr p3, v0

    mul-float/2addr p6, v0

    mul-float/2addr p9, v0

    :cond_2
    add-float v0, p1, p5

    add-float/2addr v0, p9

    cmpl-float v2, v0, v3

    const/high16 v3, 0x3f000000    # 0.5f

    if-ltz v2, :cond_3

    add-float/2addr v0, v1

    .line 8
    invoke-static {v0}, Lcom/smartisanos/smengine/a/a;->sqrt(F)F

    move-result p1

    mul-float p5, p1, v3

    .line 9
    iput p5, p0, Lcom/smartisanos/smengine/a/g;->w:F

    div-float/2addr v3, p1

    sub-float/2addr p8, p6

    mul-float/2addr p8, v3

    .line 10
    iput p8, p0, Lcom/smartisanos/smengine/a/g;->x:F

    sub-float/2addr p3, p7

    mul-float/2addr p3, v3

    .line 11
    iput p3, p0, Lcom/smartisanos/smengine/a/g;->y:F

    sub-float/2addr p4, p2

    mul-float/2addr p4, v3

    .line 12
    iput p4, p0, Lcom/smartisanos/smengine/a/g;->z:F

    goto :goto_0

    :cond_3
    cmpl-float v0, p1, p5

    if-lez v0, :cond_4

    cmpl-float v0, p1, p9

    if-lez v0, :cond_4

    add-float/2addr p1, v1

    sub-float/2addr p1, p5

    sub-float/2addr p1, p9

    .line 13
    invoke-static {p1}, Lcom/smartisanos/smengine/a/a;->sqrt(F)F

    move-result p1

    mul-float p5, p1, v3

    .line 14
    iput p5, p0, Lcom/smartisanos/smengine/a/g;->x:F

    div-float/2addr v3, p1

    add-float/2addr p4, p2

    mul-float/2addr p4, v3

    .line 15
    iput p4, p0, Lcom/smartisanos/smengine/a/g;->y:F

    add-float/2addr p3, p7

    mul-float/2addr p3, v3

    .line 16
    iput p3, p0, Lcom/smartisanos/smengine/a/g;->z:F

    sub-float/2addr p8, p6

    mul-float/2addr p8, v3

    .line 17
    iput p8, p0, Lcom/smartisanos/smengine/a/g;->w:F

    goto :goto_0

    :cond_4
    cmpl-float v0, p5, p9

    if-lez v0, :cond_5

    add-float/2addr p5, v1

    sub-float/2addr p5, p1

    sub-float/2addr p5, p9

    .line 18
    invoke-static {p5}, Lcom/smartisanos/smengine/a/a;->sqrt(F)F

    move-result p1

    mul-float p5, p1, v3

    .line 19
    iput p5, p0, Lcom/smartisanos/smengine/a/g;->y:F

    div-float/2addr v3, p1

    add-float/2addr p4, p2

    mul-float/2addr p4, v3

    .line 20
    iput p4, p0, Lcom/smartisanos/smengine/a/g;->x:F

    add-float/2addr p8, p6

    mul-float/2addr p8, v3

    .line 21
    iput p8, p0, Lcom/smartisanos/smengine/a/g;->z:F

    sub-float/2addr p3, p7

    mul-float/2addr p3, v3

    .line 22
    iput p3, p0, Lcom/smartisanos/smengine/a/g;->w:F

    goto :goto_0

    :cond_5
    add-float/2addr p9, v1

    sub-float/2addr p9, p1

    sub-float/2addr p9, p5

    .line 23
    invoke-static {p9}, Lcom/smartisanos/smengine/a/a;->sqrt(F)F

    move-result p1

    mul-float p5, p1, v3

    .line 24
    iput p5, p0, Lcom/smartisanos/smengine/a/g;->z:F

    div-float/2addr v3, p1

    add-float/2addr p3, p7

    mul-float/2addr p3, v3

    .line 25
    iput p3, p0, Lcom/smartisanos/smengine/a/g;->x:F

    add-float/2addr p8, p6

    mul-float/2addr p8, v3

    .line 26
    iput p8, p0, Lcom/smartisanos/smengine/a/g;->y:F

    sub-float/2addr p4, p2

    mul-float/2addr p4, v3

    .line 27
    iput p4, p0, Lcom/smartisanos/smengine/a/g;->w:F

    :goto_0
    return-object p0
.end method

.method public a(FLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/g;
    .locals 4

    .line 42
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v0

    .line 43
    iget-object v1, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    .line 44
    iget v2, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, p2, Lcom/smartisanos/smengine/a/j;->y:F

    iget p2, p2, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v2, v3, p2}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 45
    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->zt()Lcom/smartisanos/smengine/a/j;

    .line 46
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/a/g;->b(FLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/g;

    .line 47
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    return-object p0
.end method

.method public a(Lcom/smartisanos/smengine/a/g;)Lcom/smartisanos/smengine/a/g;
    .locals 1

    .line 1
    iget v0, p1, Lcom/smartisanos/smengine/a/g;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/a/g;->x:F

    .line 2
    iget v0, p1, Lcom/smartisanos/smengine/a/g;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/a/g;->y:F

    .line 3
    iget v0, p1, Lcom/smartisanos/smengine/a/g;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/a/g;->z:F

    .line 4
    iget p1, p1, Lcom/smartisanos/smengine/a/g;->w:F

    iput p1, p0, Lcom/smartisanos/smengine/a/g;->w:F

    return-object p0
.end method

.method public a(Lcom/smartisanos/smengine/a/g;Lcom/smartisanos/smengine/a/g;)Lcom/smartisanos/smengine/a/g;
    .locals 9

    if-nez p2, :cond_0

    .line 48
    new-instance p2, Lcom/smartisanos/smengine/a/g;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/g;-><init>()V

    .line 49
    :cond_0
    iget v0, p1, Lcom/smartisanos/smengine/a/g;->w:F

    iget v1, p1, Lcom/smartisanos/smengine/a/g;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/a/g;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/g;->z:F

    .line 50
    iget v3, p0, Lcom/smartisanos/smengine/a/g;->x:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/a/g;->y:F

    mul-float v5, v4, p1

    add-float/2addr v3, v5

    iget v5, p0, Lcom/smartisanos/smengine/a/g;->z:F

    mul-float v6, v5, v2

    sub-float/2addr v3, v6

    iget v6, p0, Lcom/smartisanos/smengine/a/g;->w:F

    mul-float v7, v6, v1

    add-float/2addr v3, v7

    iput v3, p2, Lcom/smartisanos/smengine/a/g;->x:F

    .line 51
    iget v3, p0, Lcom/smartisanos/smengine/a/g;->x:F

    neg-float v7, v3

    mul-float/2addr v7, p1

    mul-float/2addr v4, v0

    add-float/2addr v7, v4

    mul-float v4, v5, v1

    add-float/2addr v7, v4

    mul-float v4, v6, v2

    add-float/2addr v7, v4

    iput v7, p2, Lcom/smartisanos/smengine/a/g;->y:F

    mul-float v4, v3, v2

    .line 52
    iget v7, p0, Lcom/smartisanos/smengine/a/g;->y:F

    mul-float v8, v7, v1

    sub-float/2addr v4, v8

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    mul-float v5, v6, p1

    add-float/2addr v4, v5

    iput v4, p2, Lcom/smartisanos/smengine/a/g;->z:F

    neg-float v3, v3

    mul-float/2addr v3, v1

    mul-float/2addr v7, v2

    sub-float/2addr v3, v7

    .line 53
    iget p0, p0, Lcom/smartisanos/smengine/a/g;->z:F

    mul-float/2addr p0, p1

    sub-float/2addr v3, p0

    mul-float/2addr v6, v0

    add-float/2addr v3, v6

    iput v3, p2, Lcom/smartisanos/smengine/a/g;->w:F

    return-object p2
.end method

.method public a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/g;
    .locals 10

    .line 54
    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, p3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v5, p2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v6, p3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, p1, Lcom/smartisanos/smengine/a/j;->z:F

    iget v8, p2, Lcom/smartisanos/smengine/a/j;->z:F

    iget v9, p3, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/a/g;->a(FFFFFFFFF)Lcom/smartisanos/smengine/a/g;

    return-object p0
.end method

.method public b(FLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/g;
    .locals 2

    .line 1
    iget v0, p2, Lcom/smartisanos/smengine/a/j;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p2, Lcom/smartisanos/smengine/a/j;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p2, Lcom/smartisanos/smengine/a/j;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/g;->loadIdentity()V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    .line 3
    invoke-static {p1}, Lcom/smartisanos/smengine/a/a;->sin(F)F

    move-result v0

    .line 4
    invoke-static {p1}, Lcom/smartisanos/smengine/a/a;->cos(F)F

    move-result p1

    iput p1, p0, Lcom/smartisanos/smengine/a/g;->w:F

    .line 5
    iget p1, p2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/smartisanos/smengine/a/g;->x:F

    .line 6
    iget p1, p2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/smartisanos/smengine/a/g;->y:F

    .line 7
    iget p1, p2, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/g;->z:F

    :goto_0
    return-object p0
.end method

.method public c(ILcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 11

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/g;->yt()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/a/a;->Z(F)F

    move-result v0

    .line 4
    :cond_1
    iget v2, p0, Lcom/smartisanos/smengine/a/g;->x:F

    mul-float v3, v2, v2

    mul-float/2addr v3, v0

    .line 5
    iget v4, p0, Lcom/smartisanos/smengine/a/g;->y:F

    mul-float v5, v2, v4

    mul-float/2addr v5, v0

    .line 6
    iget v6, p0, Lcom/smartisanos/smengine/a/g;->z:F

    mul-float v7, v2, v6

    mul-float/2addr v7, v0

    .line 7
    iget p0, p0, Lcom/smartisanos/smengine/a/g;->w:F

    mul-float/2addr v2, p0

    mul-float/2addr v2, v0

    mul-float v8, v4, v4

    mul-float/2addr v8, v0

    mul-float v9, v4, v6

    mul-float/2addr v9, v0

    mul-float/2addr v4, p0

    mul-float/2addr v4, v0

    mul-float v10, v6, v6

    mul-float/2addr v10, v0

    mul-float/2addr v6, p0

    mul-float/2addr v6, v0

    const/high16 p0, 0x40000000    # 2.0f

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 8
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/smengine/a/g;->log:Lcom/smartisanos/launcher/va;

    const-string p2, "Invalid column index."

    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid column index. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    add-float/2addr v7, v4

    mul-float/2addr v7, p0

    .line 10
    iput v7, p2, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v9, v2

    mul-float/2addr v9, p0

    .line 11
    iput v9, p2, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v3, v8

    mul-float/2addr v3, p0

    sub-float/2addr v1, v3

    .line 12
    iput v1, p2, Lcom/smartisanos/smengine/a/j;->z:F

    goto :goto_0

    :cond_4
    sub-float/2addr v5, v6

    mul-float/2addr v5, p0

    .line 13
    iput v5, p2, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v3, v10

    mul-float/2addr v3, p0

    sub-float/2addr v1, v3

    .line 14
    iput v1, p2, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v9, v2

    mul-float/2addr v9, p0

    .line 15
    iput v9, p2, Lcom/smartisanos/smengine/a/j;->z:F

    goto :goto_0

    :cond_5
    add-float/2addr v8, v10

    mul-float/2addr v8, p0

    sub-float/2addr v1, v8

    .line 16
    iput v1, p2, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v5, v6

    mul-float/2addr v5, p0

    .line 17
    iput v5, p2, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v7, v4

    mul-float/2addr v7, p0

    .line 18
    iput v7, p2, Lcom/smartisanos/smengine/a/j;->z:F

    :goto_0
    return-object p2
.end method

.method public clone()Lcom/smartisanos/smengine/a/g;
    .locals 0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/a/g;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/g;->clone()Lcom/smartisanos/smengine/a/g;

    move-result-object p0

    return-object p0
.end method

.method public d(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 8

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 2
    :cond_0
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p1, Lcom/smartisanos/smengine/a/j;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p2, v1, v1, v1}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    .line 5
    iget v2, p0, Lcom/smartisanos/smengine/a/g;->w:F

    mul-float v3, v2, v2

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/a/g;->y:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v4, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, p1

    add-float/2addr v3, v6

    iget v6, p0, Lcom/smartisanos/smengine/a/g;->z:F

    mul-float v7, v6, v5

    mul-float/2addr v7, v2

    mul-float/2addr v7, v1

    sub-float/2addr v3, v7

    iget p0, p0, Lcom/smartisanos/smengine/a/g;->x:F

    mul-float v7, p0, p0

    mul-float/2addr v7, v0

    add-float/2addr v3, v7

    mul-float v7, v4, v5

    mul-float/2addr v7, p0

    mul-float/2addr v7, v1

    add-float/2addr v3, v7

    mul-float v7, v6, v5

    mul-float/2addr v7, p0

    mul-float/2addr v7, p1

    add-float/2addr v3, v7

    mul-float v7, v6, v6

    mul-float/2addr v7, v0

    sub-float/2addr v3, v7

    mul-float v7, v4, v4

    mul-float/2addr v7, v0

    sub-float/2addr v3, v7

    iput v3, p2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float v3, p0, v5

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    mul-float v7, v4, v4

    mul-float/2addr v7, v1

    add-float/2addr v3, v7

    mul-float v7, v6, v5

    mul-float/2addr v7, v4

    mul-float/2addr v7, p1

    add-float/2addr v3, v7

    mul-float v7, v2, v5

    mul-float/2addr v7, v6

    mul-float/2addr v7, v0

    add-float/2addr v3, v7

    mul-float v7, v6, v6

    mul-float/2addr v7, v1

    sub-float/2addr v3, v7

    mul-float v7, v2, v2

    mul-float/2addr v7, v1

    add-float/2addr v3, v7

    mul-float v7, p0, v5

    mul-float/2addr v7, v2

    mul-float/2addr v7, p1

    sub-float/2addr v3, v7

    mul-float v7, p0, p0

    mul-float/2addr v7, v1

    sub-float/2addr v3, v7

    .line 6
    iput v3, p2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float v3, p0, v5

    mul-float/2addr v3, v6

    mul-float/2addr v3, v0

    mul-float v7, v4, v5

    mul-float/2addr v7, v6

    mul-float/2addr v7, v1

    add-float/2addr v3, v7

    mul-float/2addr v6, v6

    mul-float/2addr v6, p1

    add-float/2addr v3, v6

    mul-float v6, v2, v5

    mul-float/2addr v6, v4

    mul-float/2addr v6, v0

    sub-float/2addr v3, v6

    mul-float/2addr v4, v4

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    mul-float/2addr v5, v2

    mul-float/2addr v5, p0

    mul-float/2addr v5, v1

    add-float/2addr v3, v5

    mul-float/2addr p0, p0

    mul-float/2addr p0, p1

    sub-float/2addr v3, p0

    mul-float/2addr v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v3, v2

    .line 7
    iput v3, p2, Lcom/smartisanos/smengine/a/j;->z:F

    :goto_0
    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/smartisanos/smengine/a/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lcom/smartisanos/smengine/a/g;

    .line 3
    iget v2, p0, Lcom/smartisanos/smengine/a/g;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/a/g;->x:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lcom/smartisanos/smengine/a/g;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/a/g;->y:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget v2, p0, Lcom/smartisanos/smengine/a/g;->z:F

    iget v3, p1, Lcom/smartisanos/smengine/a/g;->z:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget p0, p0, Lcom/smartisanos/smengine/a/g;->w:F

    iget p1, p1, Lcom/smartisanos/smengine/a/g;->w:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/g;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x559

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 2
    iget v0, p0, Lcom/smartisanos/smengine/a/g;->y:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/g;->z:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 4
    iget p0, p0, Lcom/smartisanos/smengine/a/g;->w:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public inverse()Lcom/smartisanos/smengine/a/g;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/g;->yt()F

    move-result v0

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/g;

    iget v2, p0, Lcom/smartisanos/smengine/a/g;->x:F

    neg-float v2, v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/smartisanos/smengine/a/g;->y:F

    neg-float v3, v3

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/smartisanos/smengine/a/g;->z:F

    neg-float v4, v4

    mul-float/2addr v4, v1

    iget p0, p0, Lcom/smartisanos/smengine/a/g;->w:F

    mul-float/2addr p0, v1

    invoke-direct {v0, v2, v3, v4, p0}, Lcom/smartisanos/smengine/a/g;-><init>(FFFF)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isIdentity()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/g;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/a/g;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/a/g;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/smartisanos/smengine/a/g;->w:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public l(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 11

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/g;->w:F

    mul-float v1, v0, v0

    iget v2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v1, v2

    iget v3, p0, Lcom/smartisanos/smengine/a/g;->y:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    mul-float/2addr v5, v0

    iget v6, p1, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    iget v5, p0, Lcom/smartisanos/smengine/a/g;->z:F

    mul-float v7, v5, v4

    mul-float/2addr v7, v0

    iget v8, p1, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v7, v8

    sub-float/2addr v1, v7

    iget p0, p0, Lcom/smartisanos/smengine/a/g;->x:F

    mul-float v7, p0, p0

    mul-float/2addr v7, v2

    add-float/2addr v1, v7

    mul-float v7, v3, v4

    mul-float/2addr v7, p0

    mul-float/2addr v7, v8

    add-float/2addr v1, v7

    mul-float v7, v5, v4

    mul-float/2addr v7, p0

    mul-float/2addr v7, v6

    add-float/2addr v1, v7

    mul-float v7, v5, v5

    mul-float/2addr v7, v2

    sub-float/2addr v1, v7

    mul-float v7, v3, v3

    mul-float/2addr v7, v2

    sub-float/2addr v1, v7

    mul-float v7, p0, v4

    mul-float/2addr v7, v3

    mul-float/2addr v7, v2

    mul-float v9, v3, v3

    mul-float/2addr v9, v8

    add-float/2addr v7, v9

    mul-float v9, v5, v4

    mul-float/2addr v9, v3

    mul-float/2addr v9, v6

    add-float/2addr v7, v9

    mul-float v9, v0, v4

    mul-float/2addr v9, v5

    mul-float/2addr v9, v2

    add-float/2addr v7, v9

    mul-float v9, v5, v5

    mul-float/2addr v9, v8

    sub-float/2addr v7, v9

    mul-float v9, v0, v0

    mul-float/2addr v9, v8

    add-float/2addr v7, v9

    mul-float v9, p0, v4

    mul-float/2addr v9, v0

    mul-float/2addr v9, v6

    sub-float/2addr v7, v9

    mul-float v9, p0, p0

    mul-float/2addr v9, v8

    sub-float/2addr v7, v9

    mul-float v9, p0, v4

    mul-float/2addr v9, v5

    mul-float/2addr v9, v2

    mul-float v10, v3, v4

    mul-float/2addr v10, v5

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    mul-float/2addr v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v9, v5

    mul-float v5, v0, v4

    mul-float/2addr v5, v3

    mul-float/2addr v5, v2

    sub-float/2addr v9, v5

    mul-float/2addr v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v9, v3

    mul-float/2addr v4, v0

    mul-float/2addr v4, p0

    mul-float/2addr v4, v8

    add-float/2addr v9, v4

    mul-float/2addr p0, p0

    mul-float/2addr p0, v6

    sub-float/2addr v9, p0

    mul-float/2addr v0, v0

    mul-float/2addr v0, v6

    add-float/2addr v9, v0

    .line 2
    iput v9, p1, Lcom/smartisanos/smengine/a/j;->z:F

    .line 3
    iput v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 4
    iput v7, p1, Lcom/smartisanos/smengine/a/j;->y:F

    return-object p1
.end method

.method public loadIdentity()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/smartisanos/smengine/a/g;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/a/g;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/a/g;->x:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/a/g;->w:F

    return-void
.end method

.method public qc(I)Lcom/smartisanos/smengine/a/j;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/a/g;->c(ILcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public set(FFFF)Lcom/smartisanos/smengine/a/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/a/g;->x:F

    .line 2
    iput p2, p0, Lcom/smartisanos/smengine/a/g;->y:F

    .line 3
    iput p3, p0, Lcom/smartisanos/smengine/a/g;->z:F

    .line 4
    iput p4, p0, Lcom/smartisanos/smengine/a/g;->w:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/smengine/a/g;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/a/g;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/a/g;->z:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/smengine/a/g;->w:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public yt()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/g;->w:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/smartisanos/smengine/a/g;->x:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/a/g;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget p0, p0, Lcom/smartisanos/smengine/a/g;->z:F

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public zt()Lcom/smartisanos/smengine/a/g;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/g;->yt()F

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/smengine/a/a;->Z(F)F

    move-result v0

    .line 2
    iget v1, p0, Lcom/smartisanos/smengine/a/g;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/a/g;->x:F

    .line 3
    iget v1, p0, Lcom/smartisanos/smengine/a/g;->y:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/a/g;->y:F

    .line 4
    iget v1, p0, Lcom/smartisanos/smengine/a/g;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/a/g;->z:F

    .line 5
    iget v1, p0, Lcom/smartisanos/smengine/a/g;->w:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/a/g;->w:F

    return-object p0
.end method
