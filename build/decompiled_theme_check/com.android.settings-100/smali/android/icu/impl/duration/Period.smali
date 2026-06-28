.class public final Landroid/icu/impl/duration/Period;
.super Ljava/lang/Object;
.source "Period.java"


# instance fields
.field final counts:[I

.field final inFuture:Z

.field final timeLimit:B


# direct methods
.method private constructor <init>(IZFLandroid/icu/impl/duration/TimeUnit;)V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte p1, p1

    .line 298
    iput-byte p1, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    .line 299
    iput-boolean p2, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    .line 300
    sget-object p1, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    .line 301
    iget-object p0, p0, Landroid/icu/impl/duration/Period;->counts:[I

    iget-byte p1, p4, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p3, p2

    float-to-int p2, p3

    add-int/lit8 p2, p2, 0x1

    aput p2, p0, p1

    return-void
.end method

.method constructor <init>(IZ[I)V
    .locals 0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte p1, p1

    .line 308
    iput-byte p1, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    .line 309
    iput-boolean p2, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    .line 310
    iput-object p3, p0, Landroid/icu/impl/duration/Period;->counts:[I

    return-void
.end method

.method public static at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .locals 2

    .line 44
    invoke-static {p0}, Landroid/icu/impl/duration/Period;->checkCount(F)V

    .line 45
    new-instance v0, Landroid/icu/impl/duration/Period;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, p1}, Landroid/icu/impl/duration/Period;-><init>(IZFLandroid/icu/impl/duration/TimeUnit;)V

    return-object v0
.end method

.method private static checkCount(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    return-void

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ") cannot be negative"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lessThan(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .locals 3

    .line 68
    invoke-static {p0}, Landroid/icu/impl/duration/Period;->checkCount(F)V

    .line 69
    new-instance v0, Landroid/icu/impl/duration/Period;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/icu/impl/duration/Period;-><init>(IZFLandroid/icu/impl/duration/TimeUnit;)V

    return-object v0
.end method

.method public static moreThan(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .locals 3

    .line 56
    invoke-static {p0}, Landroid/icu/impl/duration/Period;->checkCount(F)V

    .line 57
    new-instance v0, Landroid/icu/impl/duration/Period;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/icu/impl/duration/Period;-><init>(IZFLandroid/icu/impl/duration/TimeUnit;)V

    return-object v0
.end method

.method private setFuture(Z)Landroid/icu/impl/duration/Period;
    .locals 2

    .line 350
    iget-boolean v0, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    if-eq v0, p1, :cond_0

    .line 351
    new-instance v0, Landroid/icu/impl/duration/Period;

    iget-byte v1, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    iget-object p0, p0, Landroid/icu/impl/duration/Period;->counts:[I

    invoke-direct {v0, v1, p1, p0}, Landroid/icu/impl/duration/Period;-><init>(IZ[I)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method private setTimeLimit(B)Landroid/icu/impl/duration/Period;
    .locals 2

    .line 363
    iget-byte v0, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    if-eq v0, p1, :cond_0

    .line 364
    new-instance v0, Landroid/icu/impl/duration/Period;

    iget-boolean v1, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    iget-object p0, p0, Landroid/icu/impl/duration/Period;->counts:[I

    invoke-direct {v0, p1, v1, p0}, Landroid/icu/impl/duration/Period;-><init>(IZ[I)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method private setTimeUnitInternalValue(Landroid/icu/impl/duration/TimeUnit;I)Landroid/icu/impl/duration/Period;
    .locals 4

    .line 332
    iget-byte p1, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    .line 333
    iget-object v0, p0, Landroid/icu/impl/duration/Period;->counts:[I

    aget v1, v0, p1

    if-eq v1, p2, :cond_1

    .line 334
    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 335
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/duration/Period;->counts:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 336
    aget v2, v2, v1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    :cond_0
    aput p2, v0, p1

    .line 339
    new-instance p1, Landroid/icu/impl/duration/Period;

    iget-byte p2, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    iget-boolean p0, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    invoke-direct {p1, p2, p0, v0}, Landroid/icu/impl/duration/Period;-><init>(IZ[I)V

    return-object p1

    :cond_1
    return-object p0
.end method

.method private setTimeUnitValue(Landroid/icu/impl/duration/TimeUnit;F)Landroid/icu/impl/duration/Period;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    add-int/lit8 p2, p2, 0x1

    .line 320
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/duration/Period;->setTimeUnitInternalValue(Landroid/icu/impl/duration/TimeUnit;I)Landroid/icu/impl/duration/Period;

    move-result-object p0

    return-object p0

    .line 318
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .locals 0

    .line 84
    invoke-static {p1}, Landroid/icu/impl/duration/Period;->checkCount(F)V

    .line 85
    invoke-direct {p0, p2, p1}, Landroid/icu/impl/duration/Period;->setTimeUnitValue(Landroid/icu/impl/duration/TimeUnit;F)Landroid/icu/impl/duration/Period;

    move-result-object p0

    return-object p0
.end method

.method public at()Landroid/icu/impl/duration/Period;
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setTimeLimit(B)Landroid/icu/impl/duration/Period;

    move-result-object p0

    return-object p0
.end method

.method public equals(Landroid/icu/impl/duration/Period;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 268
    iget-byte v1, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    iget-byte v2, p1, Landroid/icu/impl/duration/Period;->timeLimit:B

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    iget-boolean v2, p1, Landroid/icu/impl/duration/Period;->inFuture:Z

    if-ne v1, v2, :cond_2

    move v1, v0

    .line 271
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/duration/Period;->counts:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 272
    aget v2, v2, v1

    iget-object v3, p1, Landroid/icu/impl/duration/Period;->counts:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 250
    :try_start_0
    check-cast p1, Landroid/icu/impl/duration/Period;

    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/Period;->equals(Landroid/icu/impl/duration/Period;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCount(Landroid/icu/impl/duration/TimeUnit;)F
    .locals 1

    .line 194
    iget-byte p1, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    .line 195
    iget-object p0, p0, Landroid/icu/impl/duration/Period;->counts:[I

    aget v0, p0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 198
    :cond_0
    aget p0, p0, p1

    add-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 287
    iget-byte v0, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    shl-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    or-int/2addr v0, v1

    const/4 v1, 0x0

    .line 288
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/duration/Period;->counts:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    shl-int/lit8 v0, v0, 0x2

    .line 289
    aget v2, v2, v1

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public inFuture()Landroid/icu/impl/duration/Period;
    .locals 1

    const/4 v0, 0x1

    .line 131
    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setFuture(Z)Landroid/icu/impl/duration/Period;

    move-result-object p0

    return-object p0
.end method

.method public inFuture(Z)Landroid/icu/impl/duration/Period;
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Landroid/icu/impl/duration/Period;->setFuture(Z)Landroid/icu/impl/duration/Period;

    move-result-object p0

    return-object p0
.end method

.method public inPast()Landroid/icu/impl/duration/Period;
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setFuture(Z)Landroid/icu/impl/duration/Period;

    move-result-object p0

    return-object p0
.end method

.method public inPast(Z)Landroid/icu/impl/duration/Period;
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 162
    invoke-direct {p0, p1}, Landroid/icu/impl/duration/Period;->setFuture(Z)Landroid/icu/impl/duration/Period;

    move-result-object p0

    return-object p0
.end method

.method public isInFuture()Z
    .locals 0

    .line 208
    iget-boolean p0, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    return p0
.end method

.method public isInPast()Z
    .locals 0

    .line 218
    iget-boolean p0, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isLessThan()Z
    .locals 1

    .line 238
    iget-byte p0, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMoreThan()Z
    .locals 1

    .line 228
    iget-byte p0, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSet()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 170
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/duration/Period;->counts:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 171
    aget v2, v2, v1

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isSet(Landroid/icu/impl/duration/TimeUnit;)Z
    .locals 0

    .line 184
    iget-object p0, p0, Landroid/icu/impl/duration/Period;->counts:[I

    iget-byte p1, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    aget p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lessThan()Landroid/icu/impl/duration/Period;
    .locals 1

    const/4 v0, 0x1

    .line 122
    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setTimeLimit(B)Landroid/icu/impl/duration/Period;

    move-result-object p0

    return-object p0
.end method

.method public moreThan()Landroid/icu/impl/duration/Period;
    .locals 1

    const/4 v0, 0x2

    .line 113
    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setTimeLimit(B)Landroid/icu/impl/duration/Period;

    move-result-object p0

    return-object p0
.end method

.method public omit(Landroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/duration/Period;->setTimeUnitInternalValue(Landroid/icu/impl/duration/TimeUnit;I)Landroid/icu/impl/duration/Period;

    move-result-object p0

    return-object p0
.end method
