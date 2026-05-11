.class public final Lcom/smartisanos/smengine/a/j;
.super Ljava/lang/Object;
.source "Vector3f.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final NEGATIVE_INFINITY:Lcom/smartisanos/smengine/a/j;

.field public static final OV:Lcom/smartisanos/smengine/a/j;

.field public static final POSITIVE_INFINITY:Lcom/smartisanos/smengine/a/j;

.field public static final PV:Lcom/smartisanos/smengine/a/j;

.field public static final QV:Lcom/smartisanos/smengine/a/j;

.field public static final RV:Lcom/smartisanos/smengine/a/j;

.field public static final SV:Lcom/smartisanos/smengine/a/j;

.field public static final ZERO:Lcom/smartisanos/smengine/a/j;

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/smartisanos/smengine/a/j;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/a/j;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/j;->ZERO:Lcom/smartisanos/smengine/a/j;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v2, v2, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/j;->OV:Lcom/smartisanos/smengine/a/j;

    .line 4
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/j;->PV:Lcom/smartisanos/smengine/a/j;

    .line 5
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0, v1, v2, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/j;->QV:Lcom/smartisanos/smengine/a/j;

    .line 6
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0, v1, v1, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/j;->RV:Lcom/smartisanos/smengine/a/j;

    .line 7
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0, v2, v2, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/j;->SV:Lcom/smartisanos/smengine/a/j;

    .line 8
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/j;->POSITIVE_INFINITY:Lcom/smartisanos/smengine/a/j;

    .line 9
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/j;->NEGATIVE_INFINITY:Lcom/smartisanos/smengine/a/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 5
    iput p2, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 6
    iput p3, p0, Lcom/smartisanos/smengine/a/j;->z:F

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/a/j;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    return-void
.end method

.method public static t(Lcom/smartisanos/smengine/a/j;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    iget v1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 2
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->z:F

    .line 3
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 5
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_3

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    .line 6
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public Ft()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public Gt()Lcom/smartisanos/smengine/a/j;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    return-object p0
.end method

.method public a(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 1
    iget v1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v1, v0

    iget v2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 2
    iget v1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v1, v0

    iget v2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 3
    iget v1, p0, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float/2addr v0, v1

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    return-object p0
.end method

.method public aa(F)Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 2
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    return-object p0
.end method

.method public ca(F)Lcom/smartisanos/smengine/a/j;
    .locals 3

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v2, p1

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float/2addr p0, p1

    invoke-direct {v0, v1, v2, p0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object v0
.end method

.method public clone()Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/a/j;
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
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public d(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 3

    if-nez p1, :cond_1

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/smengine/a/j;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "Provided vector is null, null returned."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    if-nez p2, :cond_2

    .line 2
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 3
    :cond_2
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v1, v2

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float/2addr p0, p1

    invoke-virtual {p2, v0, v1, p0}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/smartisanos/smengine/a/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lcom/smartisanos/smengine/a/j;

    .line 3
    iget v2, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public g(FFF)Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 2
    iget p1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 3
    iget p1, p0, Lcom/smartisanos/smengine/a/j;->z:F

    add-float/2addr p1, p3

    iput p1, p0, Lcom/smartisanos/smengine/a/j;->z:F

    return-object p0
.end method

.method public g(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 2

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 5
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/a/j;->x:F

    .line 6
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/a/j;->y:F

    .line 7
    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float/2addr p0, p1

    iput p0, p2, Lcom/smartisanos/smengine/a/j;->z:F

    return-object p2
.end method

.method public g([F)[F
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x3

    new-array p1, p1, [F

    :cond_0
    const/4 v0, 0x0

    .line 8
    iget v1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 9
    iget v1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    aput v1, p1, v0

    const/4 v0, 0x2

    .line 10
    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    aput p0, p1, v0

    return-object p1
.end method

.method public getX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    return p0
.end method

.method public getY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    return p0
.end method

.method public getZ()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    return p0
.end method

.method public h(FFF)Lcom/smartisanos/smengine/a/j;
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float v1, v0, p3

    iget v2, p0, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float v3, v2, p2

    sub-float/2addr v1, v3

    mul-float/2addr v2, p1

    .line 2
    iget v3, p0, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr p3, v3

    sub-float/2addr v2, p3

    mul-float/2addr v3, p2

    mul-float/2addr v0, p1

    sub-float/2addr v3, v0

    .line 3
    iput v3, p0, Lcom/smartisanos/smengine/a/j;->z:F

    .line 4
    iput v1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 5
    iput v2, p0, Lcom/smartisanos/smengine/a/j;->y:F

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x559

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x25

    mul-int/lit8 v0, v1, 0x25

    .line 2
    iget v2, p0, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x25

    .line 3
    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr v0, p0

    add-int/2addr v1, v0

    return v1
.end method

.method public i(FFF)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 2
    iput p2, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 3
    iput p3, p0, Lcom/smartisanos/smengine/a/j;->z:F

    return-object p0
.end method

.method public j(FFF)Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 2
    iget p1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 3
    iget p1, p0, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/smartisanos/smengine/a/j;->z:F

    return-object p0
.end method

.method public l(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 2

    if-nez p1, :cond_1

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/smengine/a/j;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "Provided vector is null, null returned."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 4
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    return-object p0
.end method

.method public length()F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/j;->Ft()F

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/smengine/a/a;->sqrt(F)F

    move-result p0

    return p0
.end method

.method public m(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 4

    if-nez p1, :cond_1

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/smengine/a/j;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "Provided vector is null, null returned."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v2, v3

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    add-float/2addr p0, p1

    invoke-direct {v0, v1, v2, p0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object v0
.end method

.method public n(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 2

    if-nez p1, :cond_1

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/smengine/a/j;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "Provided vector is null, null returned."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 4
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    return-object p0
.end method

.method public o(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 2

    .line 1
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/smartisanos/smengine/a/j;->h(FFF)Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method public p(Lcom/smartisanos/smengine/a/j;)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/a/j;->q(Lcom/smartisanos/smengine/a/j;)F

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/smengine/a/a;->sqrt(F)F

    move-result p0

    return p0
.end method

.method public q(Lcom/smartisanos/smengine/a/j;)F
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 2
    iget v2, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    .line 3
    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float/2addr p0, p1

    float-to-double p0, p0

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr p0, p0

    add-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public r(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 2
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    return-object p0
.end method

.method public s(Lcom/smartisanos/smengine/a/j;)F
    .locals 3

    if-nez p1, :cond_1

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/smengine/a/j;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "Provided vector is null, 0 returned."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public setX(F)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    return-object p0
.end method

.method public setY(F)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    return-object p0
.end method

.method public setZ(F)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/a/j;->z:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 3

    .line 1
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 2
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 3
    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    iget v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    iput p1, p0, Lcom/smartisanos/smengine/a/j;->z:F

    return-object p0
.end method

.method public v(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 3

    .line 1
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 2
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 3
    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    iget v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    iput p1, p0, Lcom/smartisanos/smengine/a/j;->z:F

    return-object p0
.end method

.method public w(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/smengine/a/j;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "Provided vector is null, null returned."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    return-object v0

    .line 2
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/a/j;->d(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 2
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 3
    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    iput p1, p0, Lcom/smartisanos/smengine/a/j;->z:F

    return-object p0
.end method

.method public y(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 4

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v2, v3

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float/2addr p0, p1

    invoke-direct {v0, v1, v2, p0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object v0
.end method

.method public z(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 2

    if-nez p1, :cond_1

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/smengine/a/j;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "Provided vector is null, null returned."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 4
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    return-object p0
.end method

.method public zt()Lcom/smartisanos/smengine/a/j;
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/smengine/a/a;->sqrt(F)F

    move-result v0

    div-float/2addr v1, v0

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 4
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 5
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    :cond_0
    return-object p0
.end method
