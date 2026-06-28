.class public abstract Landroid/icu/impl/Trie;
.super Ljava/lang/Object;
.source "Trie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Trie$DefaultGetFoldingOffset;,
        Landroid/icu/impl/Trie$DataManipulate;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final BMP_INDEX_LENGTH:I = 0x800

.field protected static final DATA_BLOCK_LENGTH:I = 0x20

.field protected static final HEADER_LENGTH_:I = 0x10

.field protected static final HEADER_OPTIONS_DATA_IS_32_BIT_:I = 0x100

.field protected static final HEADER_OPTIONS_INDEX_SHIFT_:I = 0x4

.field protected static final HEADER_OPTIONS_LATIN1_IS_LINEAR_MASK_:I = 0x200

.field private static final HEADER_OPTIONS_SHIFT_MASK_:I = 0xf

.field protected static final HEADER_SIGNATURE_:I = 0x54726965

.field protected static final INDEX_STAGE_1_SHIFT_:I = 0x5

.field protected static final INDEX_STAGE_2_SHIFT_:I = 0x2

.field protected static final INDEX_STAGE_3_MASK_:I = 0x1f

.field protected static final LEAD_INDEX_OFFSET_:I = 0x140

.field protected static final SURROGATE_BLOCK_BITS:I = 0x5

.field protected static final SURROGATE_BLOCK_COUNT:I = 0x20

.field protected static final SURROGATE_MASK_:I = 0x3ff


# instance fields
.field protected m_dataLength_:I

.field protected m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

.field protected m_dataOffset_:I

.field protected m_index_:[C

.field private m_isLatin1Linear_:Z

.field private m_options_:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V
    .locals 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 154
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Landroid/icu/impl/Trie;->m_options_:I

    .line 156
    invoke-direct {p0, v0}, Landroid/icu/impl/Trie;->checkHeader(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 161
    iput-object p2, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    goto :goto_0

    .line 163
    :cond_0
    new-instance p2, Landroid/icu/impl/Trie$DefaultGetFoldingOffset;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/icu/impl/Trie$DefaultGetFoldingOffset;-><init>(Landroid/icu/impl/Trie$1;)V

    iput-object p2, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    .line 165
    :goto_0
    iget p2, p0, Landroid/icu/impl/Trie;->m_options_:I

    and-int/lit16 p2, p2, 0x200

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    .line 167
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Landroid/icu/impl/Trie;->m_dataOffset_:I

    .line 168
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    .line 169
    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie;->unserialize(Ljava/nio/ByteBuffer;)V

    return-void

    .line 157
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ICU data file error: Trie header authentication failed, please check if you have the most updated ICU data file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor <init>([CILandroid/icu/impl/Trie$DataManipulate;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p2, p0, Landroid/icu/impl/Trie;->m_options_:I

    if-eqz p3, :cond_0

    .line 183
    iput-object p3, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    goto :goto_0

    .line 185
    :cond_0
    new-instance p2, Landroid/icu/impl/Trie$DefaultGetFoldingOffset;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Landroid/icu/impl/Trie$DefaultGetFoldingOffset;-><init>(Landroid/icu/impl/Trie$1;)V

    iput-object p2, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    .line 187
    :goto_0
    iget p2, p0, Landroid/icu/impl/Trie;->m_options_:I

    and-int/lit16 p2, p2, 0x200

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    .line 189
    iput-object p1, p0, Landroid/icu/impl/Trie;->m_index_:[C

    .line 190
    iget-object p1, p0, Landroid/icu/impl/Trie;->m_index_:[C

    array-length p1, p1

    iput p1, p0, Landroid/icu/impl/Trie;->m_dataOffset_:I

    return-void
.end method

.method private final checkHeader(I)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0x54726965

    if-eq p1, v1, :cond_0

    return v0

    .line 450
    :cond_0
    iget p0, p0, Landroid/icu/impl/Trie;->m_options_:I

    and-int/lit8 p1, p0, 0xf

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0xf

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 105
    :cond_0
    instance-of v1, p1, Landroid/icu/impl/Trie;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 108
    :cond_1
    check-cast p1, Landroid/icu/impl/Trie;

    .line 109
    iget-boolean v1, p0, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    iget-boolean v3, p1, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/icu/impl/Trie;->m_options_:I

    iget v3, p1, Landroid/icu/impl/Trie;->m_options_:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    iget v3, p1, Landroid/icu/impl/Trie;->m_dataLength_:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroid/icu/impl/Trie;->m_index_:[C

    iget-object p1, p1, Landroid/icu/impl/Trie;->m_index_:[C

    .line 112
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method protected final getBMPOffset(C)I
    .locals 1

    const v0, 0xd800

    if-lt p1, v0, :cond_0

    const v0, 0xdbff

    if-gt p1, v0, :cond_0

    const/16 v0, 0x140

    .line 314
    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Trie;->getRawOffset(IC)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 315
    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Trie;->getRawOffset(IC)I

    move-result p0

    :goto_0
    return p0
.end method

.method protected final getCodePointOffset(I)I
    .locals 2

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    const v1, 0xd800

    if-ge p1, v1, :cond_1

    const/4 v0, 0x0

    int-to-char p1, p1

    .line 347
    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Trie;->getRawOffset(IC)I

    move-result p0

    return p0

    :cond_1
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_2

    int-to-char p1, p1

    .line 350
    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie;->getBMPOffset(C)I

    move-result p0

    return p0

    :cond_2
    const v1, 0x10ffff

    if-gt p1, v1, :cond_3

    .line 354
    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    and-int/lit16 p1, p1, 0x3ff

    int-to-char p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Trie;->getSurrogateOffset(CC)I

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method protected abstract getInitialValue()I
.end method

.method protected final getLeadOffset(C)I
    .locals 1

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Trie;->getRawOffset(IC)I

    move-result p0

    return p0
.end method

.method protected final getRawOffset(IC)I
    .locals 1

    .line 299
    iget-object p0, p0, Landroid/icu/impl/Trie;->m_index_:[C

    shr-int/lit8 v0, p2, 0x5

    add-int/2addr p1, v0

    aget-char p0, p0, p1

    shl-int/lit8 p0, p0, 0x2

    and-int/lit8 p1, p2, 0x1f

    add-int/2addr p0, p1

    return p0
.end method

.method public getSerializedDataSize()I
    .locals 2

    .line 132
    iget v0, p0, Landroid/icu/impl/Trie;->m_dataOffset_:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x10

    .line 133
    invoke-virtual {p0}, Landroid/icu/impl/Trie;->isCharTrie()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget p0, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    shl-int/lit8 p0, p0, 0x1

    :goto_0
    add-int/2addr v0, p0

    goto :goto_1

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/Trie;->isIntTrie()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget p0, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    shl-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method protected abstract getSurrogateOffset(CC)I
.end method

.method protected abstract getValue(I)I
.end method

.method public hashCode()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method protected final isCharTrie()Z
    .locals 0

    .line 388
    iget p0, p0, Landroid/icu/impl/Trie;->m_options_:I

    and-int/lit16 p0, p0, 0x100

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected final isIntTrie()Z
    .locals 0

    .line 379
    iget p0, p0, Landroid/icu/impl/Trie;->m_options_:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLatin1Linear()Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    return p0
.end method

.method protected unserialize(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 370
    iget v0, p0, Landroid/icu/impl/Trie;->m_dataOffset_:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/Trie;->m_index_:[C

    return-void
.end method
