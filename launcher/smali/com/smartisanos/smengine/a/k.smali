.class public final Lcom/smartisanos/smengine/a/k;
.super Ljava/lang/Object;
.source "Vector4f.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final NEGATIVE_INFINITY:Lcom/smartisanos/smengine/a/k;

.field public static final OV:Lcom/smartisanos/smengine/a/k;

.field public static final POSITIVE_INFINITY:Lcom/smartisanos/smengine/a/k;

.field public static final PV:Lcom/smartisanos/smengine/a/k;

.field public static final QV:Lcom/smartisanos/smengine/a/k;

.field public static final RV:Lcom/smartisanos/smengine/a/k;

.field public static final UV:Lcom/smartisanos/smengine/a/k;

.field public static final VV:Lcom/smartisanos/smengine/a/k;

.field public static final ZERO:Lcom/smartisanos/smengine/a/k;

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/smartisanos/smengine/a/k;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/a/k;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/k;->ZERO:Lcom/smartisanos/smengine/a/k;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/k;->OV:Lcom/smartisanos/smengine/a/k;

    .line 4
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/k;->PV:Lcom/smartisanos/smengine/a/k;

    .line 5
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0, v1, v2, v1, v1}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/k;->QV:Lcom/smartisanos/smengine/a/k;

    .line 6
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/k;->RV:Lcom/smartisanos/smengine/a/k;

    .line 7
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/k;->UV:Lcom/smartisanos/smengine/a/k;

    .line 8
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/k;->VV:Lcom/smartisanos/smengine/a/k;

    .line 9
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/k;->POSITIVE_INFINITY:Lcom/smartisanos/smengine/a/k;

    .line 10
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/k;->NEGATIVE_INFINITY:Lcom/smartisanos/smengine/a/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    iput v0, p0, Lcom/smartisanos/smengine/a/k;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/a/k;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/a/k;->x:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/smartisanos/smengine/a/k;->x:F

    .line 5
    iput p2, p0, Lcom/smartisanos/smengine/a/k;->y:F

    .line 6
    iput p3, p0, Lcom/smartisanos/smengine/a/k;->z:F

    .line 7
    iput p4, p0, Lcom/smartisanos/smengine/a/k;->w:F

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/a/k;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/a/k;->f(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    return-void
.end method


# virtual methods
.method public Gt()Lcom/smartisanos/smengine/a/k;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    iput v0, p0, Lcom/smartisanos/smengine/a/k;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/a/k;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/a/k;->x:F

    return-object p0
.end method

.method public a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;F)Lcom/smartisanos/smengine/a/k;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    .line 1
    iget v1, p1, Lcom/smartisanos/smengine/a/k;->x:F

    mul-float/2addr v1, v0

    iget v2, p2, Lcom/smartisanos/smengine/a/k;->x:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/smartisanos/smengine/a/k;->x:F

    .line 2
    iget v1, p1, Lcom/smartisanos/smengine/a/k;->y:F

    mul-float/2addr v1, v0

    iget v2, p2, Lcom/smartisanos/smengine/a/k;->y:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/smartisanos/smengine/a/k;->y:F

    .line 3
    iget v1, p1, Lcom/smartisanos/smengine/a/k;->z:F

    mul-float/2addr v1, v0

    iget v2, p2, Lcom/smartisanos/smengine/a/k;->z:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/smartisanos/smengine/a/k;->z:F

    .line 4
    iget p1, p1, Lcom/smartisanos/smengine/a/k;->w:F

    mul-float/2addr v0, p1

    iget p1, p2, Lcom/smartisanos/smengine/a/k;->w:F

    mul-float/2addr p3, p1

    add-float/2addr v0, p3

    iput v0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    return-object p0
.end method

.method public clone()Lcom/smartisanos/smengine/a/k;
    .locals 0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/a/k;
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
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/k;->clone()Lcom/smartisanos/smengine/a/k;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/smartisanos/smengine/a/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lcom/smartisanos/smengine/a/k;

    .line 3
    iget v2, p0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/a/k;->x:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/a/k;->y:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget v2, p0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v3, p1, Lcom/smartisanos/smengine/a/k;->z:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget p0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    iget p1, p1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public f(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;
    .locals 1

    .line 1
    iget v0, p1, Lcom/smartisanos/smengine/a/k;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/a/k;->x:F

    .line 2
    iget v0, p1, Lcom/smartisanos/smengine/a/k;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/a/k;->y:F

    .line 3
    iget v0, p1, Lcom/smartisanos/smengine/a/k;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/a/k;->z:F

    .line 4
    iget p1, p1, Lcom/smartisanos/smengine/a/k;->w:F

    iput p1, p0, Lcom/smartisanos/smengine/a/k;->w:F

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/k;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x559

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x25

    mul-int/lit8 v0, v1, 0x25

    .line 2
    iget v2, p0, Lcom/smartisanos/smengine/a/k;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x25

    .line 3
    iget v2, p0, Lcom/smartisanos/smengine/a/k;->z:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x25

    .line 4
    iget p0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr v0, p0

    add-int/2addr v1, v0

    return v1
.end method

.method public set(FFFF)Lcom/smartisanos/smengine/a/k;
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/a/k;->x:F

    .line 2
    iput p2, p0, Lcom/smartisanos/smengine/a/k;->y:F

    .line 3
    iput p3, p0, Lcom/smartisanos/smengine/a/k;->z:F

    .line 4
    iput p4, p0, Lcom/smartisanos/smengine/a/k;->w:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/smengine/a/k;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/a/k;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/a/k;->z:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
