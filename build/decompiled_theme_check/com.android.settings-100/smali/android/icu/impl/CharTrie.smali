.class public Landroid/icu/impl/CharTrie;
.super Landroid/icu/impl/Trie;
.source "CharTrie.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private m_data_:[C

.field private m_initialValue_:C


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILandroid/icu/impl/Trie$DataManipulate;)V
    .locals 4

    const/16 v0, 0x820

    new-array v0, v0, [C

    const/16 v1, 0x200

    .line 63
    invoke-direct {p0, v0, v1, p3}, Landroid/icu/impl/Trie;-><init>([CILandroid/icu/impl/Trie$DataManipulate;)V

    const/16 p3, 0x120

    const/16 v0, 0x100

    if-eq p2, p1, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    move v1, v0

    .line 75
    :goto_0
    new-array v2, v1, [C

    iput-object v2, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    .line 76
    iput v1, p0, Landroid/icu/impl/CharTrie;->m_dataLength_:I

    int-to-char v1, p1

    .line 78
    iput-char v1, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 86
    iget-object v3, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    aput-char v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-eq p2, p1, :cond_3

    const/16 p1, 0x40

    int-to-char p1, p1

    const/16 v1, 0x6c0

    const/16 v2, 0x6e0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 95
    iget-object v3, p0, Landroid/icu/impl/CharTrie;->m_index_:[C

    aput-char p1, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v0, p3, :cond_3

    .line 101
    iget-object p1, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    int-to-char v1, p2

    aput-char v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Trie;-><init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V

    .line 41
    invoke-virtual {p0}, Landroid/icu/impl/CharTrie;->isCharTrie()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Data given does not belong to a char trie."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 220
    invoke-super {p0, p1}, Landroid/icu/impl/Trie;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 221
    instance-of v0, p1, Landroid/icu/impl/CharTrie;

    if-eqz v0, :cond_0

    .line 222
    check-cast p1, Landroid/icu/impl/CharTrie;

    .line 223
    iget-char p0, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    iget-char p1, p1, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getBMPValue(C)C
    .locals 1

    .line 158
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    invoke-virtual {p0, p1}, Landroid/icu/impl/CharTrie;->getBMPOffset(C)I

    move-result p0

    aget-char p0, v0, p0

    return p0
.end method

.method public final getCodePointValue(I)C
    .locals 2

    if-ltz p1, :cond_0

    const v0, 0xd800

    if-ge p1, v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_index_:[C

    shr-int/lit8 v1, p1, 0x5

    aget-char v0, v0, v1

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 p1, p1, 0x1f

    add-int/2addr v0, p1

    .line 124
    iget-object p0, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    aget-char p0, p0, v0

    return p0

    .line 128
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/CharTrie;->getCodePointOffset(I)I

    move-result p1

    if-ltz p1, :cond_1

    .line 132
    iget-object p0, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    aget-char p0, p0, p1

    goto :goto_0

    :cond_1
    iget-char p0, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    :goto_0
    return p0
.end method

.method protected final getInitialValue()I
    .locals 0

    .line 298
    iget-char p0, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    return p0
.end method

.method public final getLatin1LinearValue(C)C
    .locals 1

    .line 207
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    iget p0, p0, Landroid/icu/impl/CharTrie;->m_dataOffset_:I

    add-int/lit8 p0, p0, 0x20

    add-int/2addr p0, p1

    aget-char p0, v0, p0

    return p0
.end method

.method public final getLeadValue(C)C
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    invoke-virtual {p0, p1}, Landroid/icu/impl/CharTrie;->getLeadOffset(C)I

    move-result p0

    aget-char p0, v0, p0

    return p0
.end method

.method protected final getSurrogateOffset(CC)I
    .locals 1

    .line 260
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    invoke-virtual {p0, p1}, Landroid/icu/impl/CharTrie;->getLeadValue(C)C

    move-result p1

    invoke-interface {v0, p1}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result p1

    if-lez p1, :cond_0

    and-int/lit16 p2, p2, 0x3ff

    int-to-char p2, p2

    .line 270
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/CharTrie;->getRawOffset(IC)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    .line 261
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The field DataManipulate in this Trie is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSurrogateValue(CC)C
    .locals 0

    .line 168
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/CharTrie;->getSurrogateOffset(CC)I

    move-result p1

    if-lez p1, :cond_0

    .line 170
    iget-object p0, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    aget-char p0, p0, p1

    return p0

    .line 172
    :cond_0
    iget-char p0, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    return p0
.end method

.method public final getTrailValue(IC)C
    .locals 1

    .line 186
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    invoke-interface {v0, p1}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result p1

    if-lez p1, :cond_0

    .line 192
    iget-object v0, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    and-int/lit16 p2, p2, 0x3ff

    int-to-char p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/CharTrie;->getRawOffset(IC)I

    move-result p0

    aget-char p0, v0, p0

    return p0

    .line 195
    :cond_0
    iget-char p0, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    return p0

    .line 187
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The field DataManipulate in this Trie is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final getValue(I)I
    .locals 0

    .line 288
    iget-object p0, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    aget-char p0, p0, p1

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method protected final unserialize(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 245
    iget v0, p0, Landroid/icu/impl/CharTrie;->m_dataOffset_:I

    iget v1, p0, Landroid/icu/impl/CharTrie;->m_dataLength_:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 246
    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/CharTrie;->m_index_:[C

    .line 247
    iget-object p1, p0, Landroid/icu/impl/CharTrie;->m_index_:[C

    iput-object p1, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    .line 248
    iget-object p1, p0, Landroid/icu/impl/CharTrie;->m_data_:[C

    iget v0, p0, Landroid/icu/impl/CharTrie;->m_dataOffset_:I

    aget-char p1, p1, v0

    iput-char p1, p0, Landroid/icu/impl/CharTrie;->m_initialValue_:C

    return-void
.end method
