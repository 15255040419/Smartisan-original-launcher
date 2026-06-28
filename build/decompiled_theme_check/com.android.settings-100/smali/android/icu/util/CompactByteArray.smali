.class public final Landroid/icu/util/CompactByteArray;
.super Ljava/lang/Object;
.source "CompactByteArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BLOCKCOUNT:I = 0x80

.field private static final BLOCKMASK:I = 0x7f

.field private static final BLOCKSHIFT:I = 0x7

.field private static final INDEXCOUNT:I = 0x200

.field private static final INDEXSHIFT:I = 0x9

.field public static final UNICODECOUNT:I = 0x10000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field defaultValue:B

.field private hashes:[I

.field private indices:[C

.field private isCompact:Z

.field private values:[B


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Landroid/icu/util/CompactByteArray;-><init>(B)V

    return-void
.end method

.method public constructor <init>(B)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10000

    new-array v1, v0, [B

    .line 69
    iput-object v1, p0, Landroid/icu/util/CompactByteArray;->values:[B

    const/16 v1, 0x200

    new-array v2, v1, [C

    .line 70
    iput-object v2, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    new-array v2, v1, [I

    .line 71
    iput-object v2, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 73
    iget-object v4, p0, Landroid/icu/util/CompactByteArray;->values:[B

    aput-byte p1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_1

    .line 76
    iget-object v3, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    shl-int/lit8 v4, v0, 0x7

    int-to-char v4, v4

    aput-char v4, v3, v0

    .line 77
    iget-object v3, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_1
    iput-boolean v2, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    .line 81
    iput-byte p1, p0, Landroid/icu/util/CompactByteArray;->defaultValue:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    invoke-static {p1}, Landroid/icu/impl/Utility;->RLEStringToCharArray(Ljava/lang/String;)[C

    move-result-object p1

    .line 125
    invoke-static {p2}, Landroid/icu/impl/Utility;->RLEStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/icu/util/CompactByteArray;-><init>([C[B)V

    return-void
.end method

.method public constructor <init>([C[B)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    array-length v0, p1

    const-string v1, "Index out of bounds."

    const/16 v2, 0x200

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 100
    aget-char v3, p1, v0

    .line 101
    array-length v4, p2

    add-int/lit16 v4, v4, 0x80

    if-ge v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_1
    iput-object p1, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    .line 105
    iput-object p2, p0, Landroid/icu/util/CompactByteArray;->values:[B

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    return-void

    .line 98
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final arrayRegionMatches([BI[BII)Z
    .locals 2

    add-int/2addr p4, p1

    sub-int/2addr p3, p1

    :goto_0
    if-ge p1, p4, :cond_1

    .line 261
    aget-byte v0, p0, p1

    add-int v1, p1, p3

    aget-byte v1, p2, v1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final blockTouched(I)Z
    .locals 0

    .line 280
    iget-object p0, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    aget p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private expand()V
    .locals 7

    .line 378
    iget-boolean v0, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x200

    new-array v1, v0, [I

    .line 380
    iput-object v1, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    const/high16 v1, 0x10000

    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    int-to-char v5, v4

    .line 383
    invoke-virtual {p0, v5}, Landroid/icu/util/CompactByteArray;->elementAt(C)B

    move-result v5

    .line 384
    aput-byte v5, v2, v4

    shr-int/lit8 v6, v4, 0x7

    .line 385
    invoke-direct {p0, v6, v5}, Landroid/icu/util/CompactByteArray;->touchBlock(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_1

    .line 388
    iget-object v4, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    shl-int/lit8 v5, v1, 0x7

    int-to-char v5, v5

    aput-char v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 390
    iput-object v0, p0, Landroid/icu/util/CompactByteArray;->values:[B

    .line 391
    iput-object v2, p0, Landroid/icu/util/CompactByteArray;->values:[B

    .line 392
    iput-boolean v3, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    :cond_2
    return-void
.end method

.method private final touchBlock(II)V
    .locals 1

    .line 272
    iget-object p0, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    aget v0, p0, p1

    shl-int/lit8 p2, p2, 0x1

    add-int/2addr v0, p2

    or-int/lit8 p2, v0, 0x1

    aput p2, p0, p1

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 317
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/CompactByteArray;

    .line 318
    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->values:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Landroid/icu/util/CompactByteArray;->values:[B

    .line 319
    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Landroid/icu/util/CompactByteArray;->indices:[C

    .line 320
    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    iput-object p0, v0, Landroid/icu/util/CompactByteArray;->hashes:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 323
    new-instance v0, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v0, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public compact()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v0}, Landroid/icu/util/CompactByteArray;->compact(Z)V

    return-void
.end method

.method public compact(Z)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    iget-boolean p1, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    if-nez p1, :cond_5

    const p1, 0xffff

    const/4 v0, 0x0

    move v3, p1

    move v1, v0

    move v2, v1

    move v4, v2

    .line 203
    :goto_0
    iget-object v5, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    array-length v6, v5

    const/16 v7, 0x80

    if-ge v1, v6, :cond_4

    .line 204
    aput-char p1, v5, v1

    .line 205
    invoke-direct {p0, v1}, Landroid/icu/util/CompactByteArray;->blockTouched(I)Z

    move-result v5

    if-nez v5, :cond_0

    if-eq v3, p1, :cond_0

    .line 210
    iget-object v5, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    aput-char v3, v5, v1

    goto :goto_3

    :cond_0
    move v6, v0

    move v8, v6

    :goto_1
    if-ge v6, v2, :cond_2

    .line 216
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    aget v10, v9, v1

    aget v9, v9, v6

    if-ne v10, v9, :cond_1

    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->values:[B

    .line 217
    invoke-static {v9, v4, v9, v8, v7}, Landroid/icu/util/CompactByteArray;->arrayRegionMatches([BI[BII)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 219
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    int-to-char v10, v8

    aput-char v10, v9, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    add-int/lit16 v8, v8, 0x80

    goto :goto_1

    .line 223
    :cond_2
    :goto_2
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    aget-char v9, v9, v1

    if-ne v9, p1, :cond_3

    .line 225
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->values:[B

    invoke-static {v9, v4, v9, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 227
    iget-object v7, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    int-to-char v8, v8

    aput-char v8, v7, v1

    .line 228
    iget-object v7, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    aget v9, v7, v1

    aput v9, v7, v6

    add-int/lit8 v2, v2, 0x1

    if-nez v5, :cond_3

    move v3, v8

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit16 v4, v4, 0x80

    goto :goto_0

    :cond_4
    mul-int/2addr v2, v7

    .line 241
    new-array p1, v2, [B

    .line 242
    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->values:[B

    invoke-static {v1, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 243
    iput-object p1, p0, Landroid/icu/util/CompactByteArray;->values:[B

    const/4 p1, 0x1

    .line 244
    iput-boolean p1, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    const/4 p1, 0x0

    .line 245
    iput-object p1, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    :cond_5
    return-void
.end method

.method public elementAt(C)B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->values:[B

    iget-object p0, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    shr-int/lit8 v1, p1, 0x7

    aget-char p0, p0, v1

    const v1, 0xffff

    and-int/2addr p0, v1

    and-int/lit8 p1, p1, 0x7f

    add-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 341
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    .line 343
    :cond_2
    check-cast p1, Landroid/icu/util/CompactByteArray;

    move v2, v0

    :goto_0
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_4

    int-to-char v3, v2

    .line 346
    invoke-virtual {p0, v3}, Landroid/icu/util/CompactByteArray;->elementAt(C)B

    move-result v4

    invoke-virtual {p1, v3}, Landroid/icu/util/CompactByteArray;->elementAt(C)B

    move-result v3

    if-eq v4, v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public getIndexArray()[C
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    iget-object p0, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    return-object p0
.end method

.method public getValueArray()[B
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    iget-object p0, p0, Landroid/icu/util/CompactByteArray;->values:[B

    return-object p0
.end method

.method public hashCode()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->values:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x10

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 362
    :goto_0
    iget-object v3, p0, Landroid/icu/util/CompactByteArray;->values:[B

    array-length v4, v3

    if-ge v1, v4, :cond_0

    mul-int/lit8 v2, v2, 0x25

    .line 363
    aget-byte v3, v3, v1

    add-int/2addr v2, v3

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return v2
.end method

.method public setElementAt(CB)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    iget-boolean v0, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Landroid/icu/util/CompactByteArray;->expand()V

    .line 155
    :cond_0
    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->values:[B

    aput-byte p2, v0, p1

    shr-int/lit8 p1, p1, 0x7

    .line 156
    invoke-direct {p0, p1, p2}, Landroid/icu/util/CompactByteArray;->touchBlock(II)V

    return-void
.end method

.method public setElementAt(CCB)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    iget-boolean v0, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Landroid/icu/util/CompactByteArray;->expand()V

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_1

    .line 176
    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->values:[B

    aput-byte p3, v0, p1

    shr-int/lit8 v0, p1, 0x7

    .line 177
    invoke-direct {p0, v0, p3}, Landroid/icu/util/CompactByteArray;->touchBlock(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
