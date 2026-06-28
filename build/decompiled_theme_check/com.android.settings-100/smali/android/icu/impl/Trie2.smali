.class public abstract Landroid/icu/impl/Trie2;
.super Ljava/lang/Object;
.source "Trie2.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Trie2$Trie2Iterator;,
        Landroid/icu/impl/Trie2$UTrie2Header;,
        Landroid/icu/impl/Trie2$ValueWidth;,
        Landroid/icu/impl/Trie2$CharSequenceIterator;,
        Landroid/icu/impl/Trie2$CharSequenceValues;,
        Landroid/icu/impl/Trie2$ValueMapper;,
        Landroid/icu/impl/Trie2$Range;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/icu/impl/Trie2$Range;",
        ">;"
    }
.end annotation


# static fields
.field static final UNEWTRIE2_INDEX_1_LENGTH:I = 0x220

.field static final UNEWTRIE2_INDEX_GAP_LENGTH:I = 0x240

.field static final UNEWTRIE2_INDEX_GAP_OFFSET:I = 0x820

.field static final UNEWTRIE2_MAX_DATA_LENGTH:I = 0x110480

.field static final UNEWTRIE2_MAX_INDEX_2_LENGTH:I = 0x8aa0

.field static final UTRIE2_BAD_UTF8_DATA_OFFSET:I = 0x80

.field static final UTRIE2_CP_PER_INDEX_1_ENTRY:I = 0x800

.field static final UTRIE2_DATA_BLOCK_LENGTH:I = 0x20

.field static final UTRIE2_DATA_GRANULARITY:I = 0x4

.field static final UTRIE2_DATA_MASK:I = 0x1f

.field static final UTRIE2_DATA_START_OFFSET:I = 0xc0

.field static final UTRIE2_INDEX_1_OFFSET:I = 0x840

.field static final UTRIE2_INDEX_2_BLOCK_LENGTH:I = 0x40

.field static final UTRIE2_INDEX_2_BMP_LENGTH:I = 0x820

.field static final UTRIE2_INDEX_2_MASK:I = 0x3f

.field static final UTRIE2_INDEX_2_OFFSET:I = 0x0

.field static final UTRIE2_INDEX_SHIFT:I = 0x2

.field static final UTRIE2_LSCP_INDEX_2_LENGTH:I = 0x20

.field static final UTRIE2_LSCP_INDEX_2_OFFSET:I = 0x800

.field static final UTRIE2_MAX_INDEX_1_LENGTH:I = 0x200

.field static final UTRIE2_OMITTED_BMP_INDEX_1_LENGTH:I = 0x20

.field static final UTRIE2_OPTIONS_VALUE_BITS_MASK:I = 0xf

.field static final UTRIE2_SHIFT_1:I = 0xb

.field static final UTRIE2_SHIFT_1_2:I = 0x6

.field static final UTRIE2_SHIFT_2:I = 0x5

.field static final UTRIE2_UTF8_2B_INDEX_2_LENGTH:I = 0x20

.field static final UTRIE2_UTF8_2B_INDEX_2_OFFSET:I = 0x820

.field private static defaultValueMapper:Landroid/icu/impl/Trie2$ValueMapper;


# instance fields
.field data16:I

.field data32:[I

.field dataLength:I

.field dataNullOffset:I

.field errorValue:I

.field fHash:I

.field header:Landroid/icu/impl/Trie2$UTrie2Header;

.field highStart:I

.field highValueIndex:I

.field index:[C

.field index2NullOffset:I

.field indexLength:I

.field initialValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 385
    new-instance v0, Landroid/icu/impl/Trie2$1;

    invoke-direct {v0}, Landroid/icu/impl/Trie2$1;-><init>()V

    sput-object v0, Landroid/icu/impl/Trie2;->defaultValueMapper:Landroid/icu/impl/Trie2$ValueMapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 33
    invoke-static {}, Landroid/icu/impl/Trie2;->initHash()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(II)I
    .locals 0

    .line 33
    invoke-static {p0, p1}, Landroid/icu/impl/Trie2;->hashUChar32(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(II)I
    .locals 0

    .line 33
    invoke-static {p0, p1}, Landroid/icu/impl/Trie2;->hashInt(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(II)I
    .locals 0

    .line 33
    invoke-static {p0, p1}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    return p0
.end method

.method public static createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 99
    :try_start_0
    new-instance v1, Landroid/icu/impl/Trie2$UTrie2Header;

    invoke-direct {v1}, Landroid/icu/impl/Trie2$UTrie2Header;-><init>()V

    .line 102
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    .line 103
    iget v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    const v3, 0x32697254

    const v4, 0x54726932

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_0

    goto :goto_2

    .line 114
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Buffer does not contain a serialized UTrie2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_1
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v6

    :goto_0
    if-eqz v2, :cond_3

    .line 110
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1

    :cond_3
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_1
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 111
    iput v4, v1, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    .line 117
    :goto_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    iput v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    .line 118
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    iput v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    .line 119
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    iput v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    .line 120
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    iput v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    .line 121
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    iput v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    .line 122
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    iput v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    .line 126
    iget v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->options:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, v2, 0xf

    const-string v3, "UTrie2 serialized format error."

    if-gt v2, v5, :cond_a

    .line 131
    :try_start_1
    iget v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    and-int/lit8 v2, v2, 0xf

    if-nez v2, :cond_4

    .line 132
    sget-object v2, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    .line 133
    new-instance v4, Landroid/icu/impl/Trie2_16;

    invoke-direct {v4}, Landroid/icu/impl/Trie2_16;-><init>()V

    goto :goto_3

    .line 135
    :cond_4
    sget-object v2, Landroid/icu/impl/Trie2$ValueWidth;->BITS_32:Landroid/icu/impl/Trie2$ValueWidth;

    .line 136
    new-instance v4, Landroid/icu/impl/Trie2_32;

    invoke-direct {v4}, Landroid/icu/impl/Trie2_32;-><init>()V

    .line 138
    :goto_3
    iput-object v1, v4, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    .line 141
    iget v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    iput v7, v4, Landroid/icu/impl/Trie2;->indexLength:I

    .line 142
    iget v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    const/4 v8, 0x2

    shl-int/2addr v7, v8

    iput v7, v4, Landroid/icu/impl/Trie2;->dataLength:I

    .line 143
    iget v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    iput v7, v4, Landroid/icu/impl/Trie2;->index2NullOffset:I

    .line 144
    iget v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    iput v7, v4, Landroid/icu/impl/Trie2;->dataNullOffset:I

    .line 145
    iget v1, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    shl-int/lit8 v1, v1, 0xb

    iput v1, v4, Landroid/icu/impl/Trie2;->highStart:I

    .line 146
    iget v1, v4, Landroid/icu/impl/Trie2;->dataLength:I

    add-int/lit8 v1, v1, -0x4

    iput v1, v4, Landroid/icu/impl/Trie2;->highValueIndex:I

    .line 147
    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    if-ne v2, v1, :cond_5

    .line 148
    iget v1, v4, Landroid/icu/impl/Trie2;->highValueIndex:I

    iget v7, v4, Landroid/icu/impl/Trie2;->indexLength:I

    add-int/2addr v1, v7

    iput v1, v4, Landroid/icu/impl/Trie2;->highValueIndex:I

    .line 154
    :cond_5
    iget v1, v4, Landroid/icu/impl/Trie2;->indexLength:I

    .line 155
    sget-object v7, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    if-ne v2, v7, :cond_6

    .line 156
    iget v7, v4, Landroid/icu/impl/Trie2;->dataLength:I

    add-int/2addr v1, v7

    .line 160
    :cond_6
    invoke-static {p0, v1, v6}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v1

    iput-object v1, v4, Landroid/icu/impl/Trie2;->index:[C

    .line 165
    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    if-ne v2, v1, :cond_7

    .line 166
    iget v1, v4, Landroid/icu/impl/Trie2;->indexLength:I

    iput v1, v4, Landroid/icu/impl/Trie2;->data16:I

    goto :goto_4

    .line 168
    :cond_7
    iget v1, v4, Landroid/icu/impl/Trie2;->dataLength:I

    invoke-static {p0, v1, v6}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v1

    iput-object v1, v4, Landroid/icu/impl/Trie2;->data32:[I

    .line 171
    :goto_4
    sget-object v1, Landroid/icu/impl/Trie2$2;->$SwitchMap$android$icu$impl$Trie2$ValueWidth:[I

    invoke-virtual {v2}, Landroid/icu/impl/Trie2$ValueWidth;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x80

    if-eq v1, v5, :cond_9

    if-ne v1, v8, :cond_8

    .line 178
    iput v6, v4, Landroid/icu/impl/Trie2;->data16:I

    .line 179
    iget-object v1, v4, Landroid/icu/impl/Trie2;->data32:[I

    iget v3, v4, Landroid/icu/impl/Trie2;->dataNullOffset:I

    aget v1, v1, v3

    iput v1, v4, Landroid/icu/impl/Trie2;->initialValue:I

    .line 180
    iget-object v1, v4, Landroid/icu/impl/Trie2;->data32:[I

    aget v1, v1, v2

    iput v1, v4, Landroid/icu/impl/Trie2;->errorValue:I

    goto :goto_5

    .line 183
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const/4 v1, 0x0

    .line 173
    iput-object v1, v4, Landroid/icu/impl/Trie2;->data32:[I

    .line 174
    iget-object v1, v4, Landroid/icu/impl/Trie2;->index:[C

    iget v3, v4, Landroid/icu/impl/Trie2;->dataNullOffset:I

    aget-char v1, v1, v3

    iput v1, v4, Landroid/icu/impl/Trie2;->initialValue:I

    .line 175
    iget-object v1, v4, Landroid/icu/impl/Trie2;->index:[C

    iget v3, v4, Landroid/icu/impl/Trie2;->data16:I

    add-int/2addr v3, v2

    aget-char v1, v1, v3

    iput v1, v4, Landroid/icu/impl/Trie2;->errorValue:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :goto_5
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v4

    .line 127
    :cond_a
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    .line 188
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw v1
.end method

.method public static getVersion(Ljava/io/InputStream;Z)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    .line 209
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    new-array v0, v0, [B

    .line 211
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 212
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 214
    array-length p0, v0

    const/4 v2, 0x0

    if-eq v1, p0, :cond_0

    return v2

    .line 218
    :cond_0
    aget-byte p0, v0, v2

    const/16 v1, 0x65

    const/4 v3, 0x3

    const/16 v4, 0x69

    const/16 v5, 0x72

    const/16 v6, 0x54

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne p0, v6, :cond_1

    aget-byte p0, v0, v8

    if-ne p0, v5, :cond_1

    aget-byte p0, v0, v7

    if-ne p0, v4, :cond_1

    aget-byte p0, v0, v3

    if-ne p0, v1, :cond_1

    return v8

    .line 221
    :cond_1
    aget-byte p0, v0, v2

    const/16 v9, 0x32

    if-ne p0, v6, :cond_2

    aget-byte p0, v0, v8

    if-ne p0, v5, :cond_2

    aget-byte p0, v0, v7

    if-ne p0, v4, :cond_2

    aget-byte p0, v0, v3

    if-ne p0, v9, :cond_2

    return v7

    :cond_2
    if-eqz p1, :cond_4

    .line 225
    aget-byte p0, v0, v2

    if-ne p0, v1, :cond_3

    aget-byte p0, v0, v8

    if-ne p0, v4, :cond_3

    aget-byte p0, v0, v7

    if-ne p0, v5, :cond_3

    aget-byte p0, v0, v3

    if-ne p0, v6, :cond_3

    return v8

    .line 228
    :cond_3
    aget-byte p0, v0, v2

    if-ne p0, v9, :cond_4

    aget-byte p0, v0, v8

    if-ne p0, v4, :cond_4

    aget-byte p0, v0, v7

    if-ne p0, v5, :cond_4

    aget-byte p0, v0, v3

    if-ne p0, v6, :cond_4

    return v7

    :cond_4
    return v2

    .line 207
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Input stream must support mark()."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static hashByte(II)I
    .locals 1

    const v0, 0x1000193

    mul-int/2addr p0, v0

    xor-int/2addr p0, p1

    return p0
.end method

.method private static hashInt(II)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    .line 1048
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 1049
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 1050
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 1051
    invoke-static {p0, p1}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    return p0
.end method

.method private static hashUChar32(II)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    .line 1041
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 1042
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    shr-int/lit8 p1, p1, 0x10

    .line 1043
    invoke-static {p0, p1}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    return p0
.end method

.method private static initHash()I
    .locals 1

    const v0, -0x7ee3623b

    return v0
.end method


# virtual methods
.method public charSequenceIterator(Ljava/lang/CharSequence;I)Landroid/icu/impl/Trie2$CharSequenceIterator;
    .locals 1

    .line 518
    new-instance v0, Landroid/icu/impl/Trie2$CharSequenceIterator;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/Trie2$CharSequenceIterator;-><init>(Landroid/icu/impl/Trie2;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 290
    instance-of v0, p1, Landroid/icu/impl/Trie2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 293
    :cond_0
    check-cast p1, Landroid/icu/impl/Trie2;

    .line 296
    invoke-virtual {p1}, Landroid/icu/impl/Trie2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 297
    invoke-virtual {p0}, Landroid/icu/impl/Trie2;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/Trie2$Range;

    .line 298
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    .line 301
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/Trie2$Range;

    .line 302
    invoke-virtual {v3, v4}, Landroid/icu/impl/Trie2$Range;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 306
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 310
    :cond_4
    iget v0, p0, Landroid/icu/impl/Trie2;->errorValue:I

    iget v2, p1, Landroid/icu/impl/Trie2;->errorValue:I

    if-ne v0, v2, :cond_6

    iget p0, p0, Landroid/icu/impl/Trie2;->initialValue:I

    iget p1, p1, Landroid/icu/impl/Trie2;->initialValue:I

    if-eq p0, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_0
    return v1
.end method

.method public abstract get(I)I
.end method

.method public abstract getFromU16SingleLead(C)I
.end method

.method public hashCode()I
    .locals 3

    .line 321
    iget v0, p0, Landroid/icu/impl/Trie2;->fHash:I

    if-nez v0, :cond_2

    .line 322
    invoke-static {}, Landroid/icu/impl/Trie2;->initHash()I

    move-result v0

    .line 323
    invoke-virtual {p0}, Landroid/icu/impl/Trie2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/Trie2$Range;

    .line 324
    invoke-virtual {v2}, Landroid/icu/impl/Trie2$Range;->hashCode()I

    move-result v2

    invoke-static {v0, v2}, Landroid/icu/impl/Trie2;->hashInt(II)I

    move-result v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 329
    :cond_1
    iput v0, p0, Landroid/icu/impl/Trie2;->fHash:I

    .line 331
    :cond_2
    iget p0, p0, Landroid/icu/impl/Trie2;->fHash:I

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation

    .line 382
    sget-object v0, Landroid/icu/impl/Trie2;->defaultValueMapper:Landroid/icu/impl/Trie2$ValueMapper;

    invoke-virtual {p0, v0}, Landroid/icu/impl/Trie2;->iterator(Landroid/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public iterator(Landroid/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/Trie2$ValueMapper;",
            ")",
            "Ljava/util/Iterator<",
            "Landroid/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation

    .line 403
    new-instance v0, Landroid/icu/impl/Trie2$Trie2Iterator;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/Trie2$Trie2Iterator;-><init>(Landroid/icu/impl/Trie2;Landroid/icu/impl/Trie2$ValueMapper;)V

    return-object v0
.end method

.method public iteratorForLeadSurrogate(C)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/Iterator<",
            "Landroid/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation

    .line 438
    new-instance v0, Landroid/icu/impl/Trie2$Trie2Iterator;

    sget-object v1, Landroid/icu/impl/Trie2;->defaultValueMapper:Landroid/icu/impl/Trie2$ValueMapper;

    invoke-direct {v0, p0, p1, v1}, Landroid/icu/impl/Trie2$Trie2Iterator;-><init>(Landroid/icu/impl/Trie2;CLandroid/icu/impl/Trie2$ValueMapper;)V

    return-object v0
.end method

.method public iteratorForLeadSurrogate(CLandroid/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Landroid/icu/impl/Trie2$ValueMapper;",
            ")",
            "Ljava/util/Iterator<",
            "Landroid/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation

    .line 421
    new-instance v0, Landroid/icu/impl/Trie2$Trie2Iterator;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/Trie2$Trie2Iterator;-><init>(Landroid/icu/impl/Trie2;CLandroid/icu/impl/Trie2$ValueMapper;)V

    return-object v0
.end method

.method rangeEnd(III)I
    .locals 2

    .line 1013
    iget v0, p0, Landroid/icu/impl/Trie2;->highStart:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_1

    .line 1016
    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie2;->get(I)I

    move-result v1

    if-eq v1, p3, :cond_0

    .line 1020
    :cond_1
    iget p0, p0, Landroid/icu/impl/Trie2;->highStart:I

    if-lt p1, p0, :cond_2

    move p1, p2

    :cond_2
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method protected serializeHeader(Ljava/io/DataOutputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v0, v0, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 476
    iget-object v0, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v0, v0, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 477
    iget-object v0, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v0, v0, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 478
    iget-object v0, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v0, v0, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 479
    iget-object v0, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v0, v0, Landroid/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 480
    iget-object v0, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v0, v0, Landroid/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 481
    iget-object v0, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v0, v0, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x0

    .line 486
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v1, v1, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    if-ge v0, v1, :cond_0

    .line 487
    iget-object v1, p0, Landroid/icu/impl/Trie2;->index:[C

    aget-char v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeChar(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget p0, p0, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    const/16 p1, 0x10

    add-int/2addr p1, p0

    return p1
.end method
