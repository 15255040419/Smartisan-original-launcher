.class public Landroid/icu/impl/TrieBuilder;
.super Ljava/lang/Object;
.source "TrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TrieBuilder$DataManipulate;
    }
.end annotation


# static fields
.field protected static final BMP_INDEX_LENGTH_:I = 0x800

.field public static final DATA_BLOCK_LENGTH:I = 0x20

.field protected static final DATA_GRANULARITY_:I = 0x4

.field protected static final INDEX_SHIFT_:I = 0x2

.field protected static final MASK_:I = 0x1f

.field private static final MAX_BUILD_TIME_DATA_LENGTH_:I = 0x110420

.field protected static final MAX_DATA_LENGTH_:I = 0x40000

.field protected static final MAX_INDEX_LENGTH_:I = 0x8800

.field protected static final OPTIONS_DATA_IS_32_BIT_:I = 0x100

.field protected static final OPTIONS_INDEX_SHIFT_:I = 0x4

.field protected static final OPTIONS_LATIN1_IS_LINEAR_:I = 0x200

.field protected static final SHIFT_:I = 0x5

.field protected static final SURROGATE_BLOCK_COUNT_:I = 0x20


# instance fields
.field protected m_dataCapacity_:I

.field protected m_dataLength_:I

.field protected m_indexLength_:I

.field protected m_index_:[I

.field protected m_isCompacted_:Z

.field protected m_isLatin1Linear_:Z

.field protected m_map_:[I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8800

    new-array v1, v0, [I

    .line 180
    iput-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    const v1, 0x8821

    new-array v1, v1, [I

    .line 181
    iput-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    const/4 v1, 0x0

    .line 182
    iput-boolean v1, p0, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    .line 183
    iput-boolean v1, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    .line 184
    iput v0, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    return-void
.end method

.method protected constructor <init>(Landroid/icu/impl/TrieBuilder;)V
    .locals 4

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8800

    new-array v0, v0, [I

    .line 189
    iput-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    .line 190
    iget v0, p1, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    iput v0, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    .line 191
    iget-object v0, p1, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    iget v2, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget v0, p1, Landroid/icu/impl/TrieBuilder;->m_dataCapacity_:I

    iput v0, p0, Landroid/icu/impl/TrieBuilder;->m_dataCapacity_:I

    .line 193
    iget v0, p1, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    iput v0, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    .line 194
    iget-object v0, p1, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    .line 195
    iget-object v0, p1, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iget-boolean v0, p1, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    iput-boolean v0, p0, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    .line 197
    iget-boolean p1, p1, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    iput-boolean p1, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    return-void
.end method

.method protected static final equal_int([IIII)Z
    .locals 2

    :goto_0
    if-lez p3, :cond_0

    .line 206
    aget v0, p0, p1

    aget v1, p0, p2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method protected static final findSameIndexBlock([III)I
    .locals 2

    const/16 v0, 0x800

    :goto_0
    if-ge v0, p1, :cond_1

    const/16 v1, 0x20

    .line 248
    invoke-static {p0, v0, p2, v1}, Landroid/icu/impl/TrieBuilder;->equal_int([IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x20

    goto :goto_0

    :cond_1
    return p1
.end method


# virtual methods
.method protected findUnusedBlocks()V
    .locals 4

    .line 225
    iget-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    move v1, v0

    .line 228
    :goto_0
    iget v2, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    if-ge v1, v2, :cond_0

    .line 229
    iget-object v2, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    iget-object v3, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    shr-int/lit8 v3, v3, 0x5

    aput v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    aput v0, p0, v0

    return-void
.end method

.method public isInZeroBlock(I)Z
    .locals 2

    .line 88
    iget-boolean v0, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const v0, 0x10ffff

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    shr-int/lit8 p1, p1, 0x5

    aget p0, p0, p1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method
