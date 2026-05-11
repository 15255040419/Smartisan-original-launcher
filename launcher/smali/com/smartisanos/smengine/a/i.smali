.class public final Lcom/smartisanos/smengine/a/i;
.super Ljava/lang/Object;
.source "Vector2f.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MV:Lcom/smartisanos/smengine/a/i;

.field public static final ZERO:Lcom/smartisanos/smengine/a/i;

.field private static final dD:Ljava/util/logging/Logger;


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/smartisanos/smengine/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/a/i;->dD:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    sput-object v0, Lcom/smartisanos/smengine/a/i;->ZERO:Lcom/smartisanos/smengine/a/i;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    sput-object v0, Lcom/smartisanos/smengine/a/i;->MV:Lcom/smartisanos/smengine/a/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/a/i;->x:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/smartisanos/smengine/a/i;->x:F

    .line 3
    iput p2, p0, Lcom/smartisanos/smengine/a/i;->y:F

    return-void
.end method


# virtual methods
.method public Ft()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/i;->x:F

    mul-float/2addr v0, v0

    iget p0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public b(Lcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/smartisanos/smengine/a/i;->dD:Ljava/util/logging/Logger;

    const-string p1, "Provided vector is null, null returned."

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/a/i;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/i;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/a/i;->x:F

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/i;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    return-object p0
.end method

.method public b(Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;
    .locals 2

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Lcom/smartisanos/smengine/a/i;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/i;-><init>()V

    .line 5
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/a/i;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/i;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/a/i;->x:F

    .line 6
    iget p0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/i;->y:F

    sub-float/2addr p0, p1

    iput p0, p2, Lcom/smartisanos/smengine/a/i;->y:F

    return-object p2
.end method

.method public ba(F)Lcom/smartisanos/smengine/a/i;
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/i;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/i;->x:F

    .line 2
    iget v0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    return-object p0
.end method

.method public c(Lcom/smartisanos/smengine/a/i;)F
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/smartisanos/smengine/a/i;->dD:Ljava/util/logging/Logger;

    const-string p1, "Provided vector is null, 0 returned."

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/a/i;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/i;->x:F

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/i;->y:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public clone()Lcom/smartisanos/smengine/a/i;
    .locals 0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/a/i;
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
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/i;->clone()Lcom/smartisanos/smengine/a/i;

    move-result-object p0

    return-object p0
.end method

.method public d(Lcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/a/i;->b(Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    move-result-object p0

    return-object p0
.end method

.method public e(Lcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/smartisanos/smengine/a/i;->dD:Ljava/util/logging/Logger;

    const-string p1, "Provided vector is null, null returned."

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/a/i;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/i;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/a/i;->x:F

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/i;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/smartisanos/smengine/a/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lcom/smartisanos/smengine/a/i;

    .line 3
    iget v2, p0, Lcom/smartisanos/smengine/a/i;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget p0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/a/i;->x:F

    return p0
.end method

.method public getY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x559

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x25

    mul-int/lit8 v0, v1, 0x25

    .line 2
    iget p0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr v0, p0

    add-int/2addr v1, v0

    return v1
.end method

.method public length()F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/i;->Ft()F

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/smengine/a/a;->sqrt(F)F

    move-result p0

    return p0
.end method

.method public set(FF)Lcom/smartisanos/smengine/a/i;
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/a/i;->x:F

    .line 2
    iput p2, p0, Lcom/smartisanos/smengine/a/i;->y:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zt()Lcom/smartisanos/smengine/a/i;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/i;->length()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/a/i;->ba(F)Lcom/smartisanos/smengine/a/i;

    return-object p0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/a/i;->ba(F)Lcom/smartisanos/smengine/a/i;

    return-object p0
.end method
