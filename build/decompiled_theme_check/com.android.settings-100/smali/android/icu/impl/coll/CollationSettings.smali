.class public final Landroid/icu/impl/coll/CollationSettings;
.super Landroid/icu/impl/coll/SharedObject;
.source "CollationSettings.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final ALTERNATE_MASK:I = 0xc

.field public static final BACKWARD_SECONDARY:I = 0x800

.field public static final CASE_FIRST:I = 0x200

.field public static final CASE_FIRST_AND_UPPER_MASK:I = 0x300

.field public static final CASE_LEVEL:I = 0x400

.field public static final CHECK_FCD:I = 0x1

.field private static final EMPTY_INT_ARRAY:[I

.field static final MAX_VARIABLE_MASK:I = 0x70

.field static final MAX_VARIABLE_SHIFT:I = 0x4

.field static final MAX_VAR_CURRENCY:I = 0x3

.field static final MAX_VAR_PUNCT:I = 0x1

.field static final MAX_VAR_SPACE:I = 0x0

.field static final MAX_VAR_SYMBOL:I = 0x2

.field public static final NUMERIC:I = 0x2

.field static final SHIFTED:I = 0x4

.field static final STRENGTH_MASK:I = 0xf000

.field static final STRENGTH_SHIFT:I = 0xc

.field static final UPPER_FIRST:I = 0x100


# instance fields
.field public fastLatinOptions:I

.field public fastLatinPrimaries:[C

.field minHighNoReorder:J

.field public options:I

.field public reorderCodes:[I

.field reorderRanges:[J

.field public reorderTable:[B

.field public variableTop:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 484
    sput-object v0, Landroid/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Landroid/icu/impl/coll/SharedObject;-><init>()V

    const/16 v0, 0x2010

    .line 443
    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    .line 477
    sget-object v0, Landroid/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    const/4 v0, -0x1

    .line 487
    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    const/16 v0, 0x180

    new-array v0, v0, [C

    .line 490
    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    return-void
.end method

.method static getStrength(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0xc

    return p0
.end method

.method static getTertiaryMask(I)I
    .locals 0

    .line 420
    invoke-static {p0}, Landroid/icu/impl/coll/CollationSettings;->isTertiaryWithCaseBits(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0xff3f

    goto :goto_0

    :cond_0
    const/16 p0, 0x3f3f

    :goto_0
    return p0
.end method

.method static isTertiaryWithCaseBits(I)Z
    .locals 1

    and-int/lit16 p0, p0, 0x600

    const/16 v0, 0x200

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reorderEx(J)J
    .locals 6

    .line 298
    iget-wide v0, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    return-wide p1

    :cond_0
    const-wide/32 v0, 0xffff

    or-long/2addr v0, p1

    const/4 v2, 0x0

    .line 304
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    aget-wide v3, v3, v2

    cmp-long v5, v0, v3

    if-ltz v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    long-to-int p0, v3

    int-to-short p0, p0

    int-to-long v0, p0

    const/16 p0, 0x18

    shl-long/2addr v0, p0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private static reorderTableHasSplitBytes([B)Z
    .locals 3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_1

    .line 280
    aget-byte v2, p0, v1

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private setReorderArrays([I[III[B)V
    .locals 0

    if-nez p1, :cond_0

    .line 244
    sget-object p1, Landroid/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    .line 247
    :cond_0
    iput-object p5, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    .line 248
    iput-object p1, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    .line 249
    invoke-direct {p0, p2, p3, p4}, Landroid/icu/impl/coll/CollationSettings;->setReorderRanges([III)V

    return-void
.end method

.method private setReorderRanges([III)V
    .locals 8

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 254
    iput-object p1, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    goto :goto_1

    .line 256
    :cond_0
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    const/4 v0, 0x0

    .line 259
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, p2, 0x1

    aget p2, p1, p2

    int-to-long v4, p2

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    aput-wide v4, v1, v0

    if-lt v2, p3, :cond_1

    :goto_1
    return-void

    :cond_1
    move v0, v2

    move p2, v3

    goto :goto_0
.end method

.method static sortsTertiaryUpperCaseFirst(I)Z
    .locals 1

    and-int/lit16 p0, p0, 0x700

    const/16 v0, 0x300

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method aliasReordering(Landroid/icu/impl/coll/CollationData;[II[B)V
    .locals 6

    .line 139
    array-length v0, p2

    if-ne p3, v0, :cond_0

    move-object v0, p2

    goto :goto_0

    .line 143
    :cond_0
    new-array v0, p3, [I

    const/4 v1, 0x0

    .line 144
    invoke-static {p2, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    :goto_0
    array-length v1, p2

    sub-int v2, v1, p3

    if-eqz p4, :cond_4

    if-nez v2, :cond_1

    .line 151
    invoke-static {p4}, Landroid/icu/impl/coll/CollationSettings;->reorderTableHasSplitBytes([B)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    aget v2, p2, p3

    const v3, 0xffff

    and-int/2addr v2, v3

    if-nez v2, :cond_4

    add-int/lit8 v2, v1, -0x1

    aget v2, p2, v2

    and-int/2addr v2, v3

    if-eqz v2, :cond_4

    .line 156
    :goto_1
    iput-object p4, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    .line 157
    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    :goto_2
    if-ge p3, v1, :cond_2

    .line 161
    aget p1, p2, p3

    const/high16 p4, 0xff0000

    and-int/2addr p1, p4

    if-nez p1, :cond_2

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    if-ne p3, v1, :cond_3

    const-wide/16 p1, 0x0

    .line 168
    iput-wide p1, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    goto :goto_3

    :cond_3
    add-int/lit8 p1, v1, -0x1

    .line 172
    aget p1, p2, p1

    int-to-long v2, p1

    const-wide v4, 0xffff0000L

    and-long/2addr v2, v4

    iput-wide v2, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    sub-int/2addr v1, p3

    .line 173
    invoke-direct {p0, p2, p3, v1}, Landroid/icu/impl/coll/CollationSettings;->setReorderRanges([III)V

    :goto_3
    return-void

    .line 179
    :cond_4
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/coll/CollationSettings;->setReordering(Landroid/icu/impl/coll/CollationData;[I)V

    return-void
.end method

.method public clone()Landroid/icu/impl/coll/CollationSettings;
    .locals 1

    .line 99
    invoke-super {p0}, Landroid/icu/impl/coll/SharedObject;->clone()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    .line 102
    iget-object p0, p0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    iput-object p0, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/icu/impl/coll/SharedObject;
    .locals 0

    .line 26
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->clone()Landroid/icu/impl/coll/CollationSettings;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->clone()Landroid/icu/impl/coll/CollationSettings;

    move-result-object p0

    return-object p0
.end method

.method public copyReorderingFrom(Landroid/icu/impl/coll/CollationSettings;)V
    .locals 2

    .line 265
    invoke-virtual {p1}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    return-void

    .line 269
    :cond_0
    iget-wide v0, p1, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    iput-wide v0, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    .line 270
    iget-object v0, p1, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    .line 271
    iget-object v0, p1, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    .line 272
    iget-object p1, p1, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    iput-object p1, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    return-void
.end method

.method public dontCheckFCD()Z
    .locals 1

    .line 431
    iget p0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 109
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 110
    :cond_1
    check-cast p1, Landroid/icu/impl/coll/CollationSettings;

    .line 111
    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    iget v2, p1, Landroid/icu/impl/coll/CollationSettings;->options:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_3

    .line 112
    iget-wide v1, p0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    iget-wide v3, p1, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    return v0

    .line 113
    :cond_3
    iget-object p0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    iget-object p1, p1, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public getAlternateHandling()Z
    .locals 0

    .line 388
    iget p0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 p0, p0, 0xc

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCaseFirst()I
    .locals 0

    .line 370
    iget p0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 p0, p0, 0x300

    return p0
.end method

.method public getFlag(I)Z
    .locals 0

    .line 355
    iget p0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMaxVariable()I
    .locals 0

    .line 409
    iget p0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 p0, p0, 0x70

    shr-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public getStrength()I
    .locals 0

    .line 338
    iget p0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-static {p0}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result p0

    return p0
.end method

.method hasBackwardSecondary()Z
    .locals 0

    .line 435
    iget p0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasReordering()Z
    .locals 0

    .line 275
    iget-object p0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 119
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    shl-int/lit8 v1, v0, 0x8

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    int-to-long v0, v1

    .line 120
    iget-wide v2, p0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    xor-long/2addr v0, v2

    long-to-int v1, v0

    .line 121
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    array-length v0, v0

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    .line 122
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 123
    aget v2, v2, v1

    shl-int/2addr v2, v1

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isNumeric()Z
    .locals 0

    .line 439
    iget p0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reorder(J)J
    .locals 5

    .line 288
    iget-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    long-to-int v1, p1

    const/16 v2, 0x18

    ushr-int/2addr v1, v2

    aget-byte v0, v0, v1

    if-nez v0, :cond_1

    const-wide/16 v3, 0x1

    cmp-long v1, p1, v3

    if-gtz v1, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationSettings;->reorderEx(J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    int-to-long v0, v0

    const-wide/16 v3, 0xff

    and-long/2addr v0, v3

    shl-long/2addr v0, v2

    const-wide/32 v2, 0xffffff

    and-long p0, p1, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public resetReordering()V
    .locals 3

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    const-wide/16 v1, 0x0

    .line 132
    iput-wide v1, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    .line 133
    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    .line 134
    sget-object v0, Landroid/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    return-void
.end method

.method public setAlternateHandlingDefault(I)V
    .locals 1

    .line 383
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, -0xd

    and-int/lit8 p1, p1, 0xc

    or-int/2addr p1, v0

    .line 384
    iput p1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    return-void
.end method

.method public setAlternateHandlingShifted(Z)V
    .locals 1

    .line 374
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, -0xd

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x4

    .line 376
    iput p1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    goto :goto_0

    .line 378
    :cond_0
    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    :goto_0
    return-void
.end method

.method public setCaseFirst(I)V
    .locals 1

    .line 360
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v0, -0x301

    or-int/2addr p1, v0

    .line 361
    iput p1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    return-void
.end method

.method public setCaseFirstDefault(I)V
    .locals 1

    .line 365
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v0, -0x301

    and-int/lit16 p1, p1, 0x300

    or-int/2addr p1, v0

    .line 366
    iput p1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    return-void
.end method

.method public setFlag(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 344
    iget p2, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    goto :goto_0

    .line 346
    :cond_0
    iget p2, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    :goto_0
    return-void
.end method

.method public setFlagDefault(II)V
    .locals 2

    .line 351
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    not-int v1, p1

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    return-void
.end method

.method public setMaxVariable(II)V
    .locals 2

    .line 392
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, -0x71

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "illegal maxVariable value "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p1, v0

    .line 398
    iput p1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    goto :goto_1

    :cond_2
    and-int/lit8 p1, p2, 0x70

    or-int/2addr p1, v0

    .line 401
    iput p1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    :goto_1
    return-void
.end method

.method public setReordering(Landroid/icu/impl/coll/CollationData;[I)V
    .locals 9

    .line 183
    array-length v0, p2

    if-eqz v0, :cond_8

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget v0, p2, v1

    const/16 v2, 0x67

    if-ne v0, v2, :cond_0

    goto/16 :goto_4

    .line 187
    :cond_0
    new-instance v0, Landroid/icu/impl/coll/UVector32;

    invoke-direct {v0}, Landroid/icu/impl/coll/UVector32;-><init>()V

    .line 188
    invoke-virtual {p1, p2, v0}, Landroid/icu/impl/coll/CollationData;->makeReorderRanges([ILandroid/icu/impl/coll/UVector32;)V

    .line 189
    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 191
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    return-void

    .line 194
    :cond_1
    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector32;->getBuffer()[I

    move-result-object v4

    add-int/lit8 v0, p1, -0x1

    .line 201
    aget v0, v4, v0

    int-to-long v2, v0

    const-wide v5, 0xffff0000L

    and-long/2addr v2, v5

    iput-wide v2, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    const/16 v0, 0x100

    new-array v7, v0, [B

    const/4 v0, -0x1

    move v3, v0

    move v0, v1

    move v2, v0

    :goto_0
    if-ge v0, p1, :cond_5

    .line 209
    aget v5, v4, v0

    ushr-int/lit8 v6, v5, 0x18

    :goto_1
    if-ge v2, v6, :cond_2

    add-int v8, v2, v5

    int-to-byte v8, v8

    .line 212
    aput-byte v8, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/high16 v8, 0xff0000

    and-int/2addr v5, v8

    if-eqz v5, :cond_4

    .line 217
    aput-byte v1, v7, v6

    add-int/lit8 v6, v6, 0x1

    if-gez v3, :cond_3

    move v3, v0

    :cond_3
    move v2, v6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    const/16 v0, 0xff

    if-gt v2, v0, :cond_6

    int-to-byte v0, v2

    .line 225
    aput-byte v0, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    if-gez v3, :cond_7

    move v5, v1

    move v6, v5

    goto :goto_3

    :cond_7
    sub-int v1, p1, v3

    move v6, v1

    move v5, v3

    :goto_3
    move-object v2, p0

    move-object v3, p2

    .line 237
    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/coll/CollationSettings;->setReorderArrays([I[III[B)V

    return-void

    .line 184
    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    return-void
.end method

.method public setStrength(I)V
    .locals 2

    .line 314
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    const v1, -0xf001

    and-int/2addr v0, v1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/16 v1, 0xf

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal strength value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p1, v0

    .line 321
    iput p1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    return-void
.end method

.method public setStrengthDefault(I)V
    .locals 2

    .line 329
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    const v1, -0xf001

    and-int/2addr v0, v1

    const v1, 0xf000

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    .line 330
    iput p1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    return-void
.end method
