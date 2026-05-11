.class public final Lcom/smartisanos/smengine/a/e;
.super Ljava/lang/Object;
.source "Matrix3f.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final IDENTITY:Lcom/smartisanos/smengine/a/e;

.field public static final ZERO:Lcom/smartisanos/smengine/a/e;

.field private static final dD:Ljava/util/logging/Logger;


# instance fields
.field protected oV:F

.field protected pV:F

.field protected qV:F

.field protected rV:F

.field protected sV:F

.field protected tV:F

.field protected uV:F

.field protected vV:F

.field protected wV:F


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-class v0, Lcom/smartisanos/smengine/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/a/e;->dD:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/e;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/smartisanos/smengine/a/e;-><init>(FFFFFFFFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/e;->ZERO:Lcom/smartisanos/smengine/a/e;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/e;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/e;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/a/e;->IDENTITY:Lcom/smartisanos/smengine/a/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/e;->loadIdentity()V

    return-void
.end method

.method public constructor <init>(FFFFFFFFF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/smartisanos/smengine/a/e;->oV:F

    .line 5
    iput p2, p0, Lcom/smartisanos/smengine/a/e;->pV:F

    .line 6
    iput p3, p0, Lcom/smartisanos/smengine/a/e;->qV:F

    .line 7
    iput p4, p0, Lcom/smartisanos/smengine/a/e;->rV:F

    .line 8
    iput p5, p0, Lcom/smartisanos/smengine/a/e;->sV:F

    .line 9
    iput p6, p0, Lcom/smartisanos/smengine/a/e;->tV:F

    .line 10
    iput p7, p0, Lcom/smartisanos/smengine/a/e;->uV:F

    .line 11
    iput p8, p0, Lcom/smartisanos/smengine/a/e;->vV:F

    .line 12
    iput p9, p0, Lcom/smartisanos/smengine/a/e;->wV:F

    return-void
.end method


# virtual methods
.method public clone()Lcom/smartisanos/smengine/a/e;
    .locals 0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/a/e;
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
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/e;->clone()Lcom/smartisanos/smengine/a/e;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/smartisanos/smengine/a/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lcom/smartisanos/smengine/a/e;

    .line 3
    iget v2, p0, Lcom/smartisanos/smengine/a/e;->oV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/e;->oV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lcom/smartisanos/smengine/a/e;->pV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/e;->pV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget v2, p0, Lcom/smartisanos/smengine/a/e;->qV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/e;->qV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget v2, p0, Lcom/smartisanos/smengine/a/e;->rV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/e;->rV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 7
    :cond_5
    iget v2, p0, Lcom/smartisanos/smengine/a/e;->sV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/e;->sV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_6

    return v1

    .line 8
    :cond_6
    iget v2, p0, Lcom/smartisanos/smengine/a/e;->tV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/e;->tV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_7

    return v1

    .line 9
    :cond_7
    iget v2, p0, Lcom/smartisanos/smengine/a/e;->uV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/e;->uV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_8

    return v1

    .line 10
    :cond_8
    iget v2, p0, Lcom/smartisanos/smengine/a/e;->vV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/e;->vV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_9

    return v1

    .line 11
    :cond_9
    iget p0, p0, Lcom/smartisanos/smengine/a/e;->wV:F

    iget p1, p1, Lcom/smartisanos/smengine/a/e;->wV:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_a

    return v1

    :cond_a
    return v0

    :cond_b
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/e;->oV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x559

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 2
    iget v0, p0, Lcom/smartisanos/smengine/a/e;->pV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/e;->qV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 4
    iget v0, p0, Lcom/smartisanos/smengine/a/e;->rV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 5
    iget v0, p0, Lcom/smartisanos/smengine/a/e;->sV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 6
    iget v0, p0, Lcom/smartisanos/smengine/a/e;->tV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 7
    iget v0, p0, Lcom/smartisanos/smengine/a/e;->uV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 8
    iget v0, p0, Lcom/smartisanos/smengine/a/e;->vV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 9
    iget p0, p0, Lcom/smartisanos/smengine/a/e;->wV:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public loadIdentity()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/smartisanos/smengine/a/e;->vV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/e;->uV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/e;->tV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/e;->rV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/e;->qV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/e;->pV:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/a/e;->wV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/e;->sV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/e;->oV:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Matrix3f\n(\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget v2, p0, Lcom/smartisanos/smengine/a/e;->oV:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget v3, p0, Lcom/smartisanos/smengine/a/e;->pV:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget v3, p0, Lcom/smartisanos/smengine/a/e;->qV:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " \n"

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget v4, p0, Lcom/smartisanos/smengine/a/e;->rV:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget v4, p0, Lcom/smartisanos/smengine/a/e;->sV:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v4, p0, Lcom/smartisanos/smengine/a/e;->tV:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lcom/smartisanos/smengine/a/e;->uV:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Lcom/smartisanos/smengine/a/e;->vV:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget p0, p0, Lcom/smartisanos/smengine/a/e;->wV:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " \n)"

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
