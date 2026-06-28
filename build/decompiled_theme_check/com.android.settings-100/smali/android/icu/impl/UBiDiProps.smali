.class public final Landroid/icu/impl/UBiDiProps;
.super Ljava/lang/Object;
.source "UBiDiProps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UBiDiProps$IsAcceptable;
    }
.end annotation


# static fields
.field private static final BIDI_CONTROL_SHIFT:I = 0xb

.field private static final BPT_MASK:I = 0x300

.field private static final BPT_SHIFT:I = 0x8

.field private static final CLASS_MASK:I = 0x1f

.field private static final DATA_FILE_NAME:Ljava/lang/String; = "ubidi.icu"

.field private static final DATA_NAME:Ljava/lang/String; = "ubidi"

.field private static final DATA_TYPE:Ljava/lang/String; = "icu"

.field private static final ESC_MIRROR_DELTA:I = -0x4

.field private static final FMT:I = 0x42694469

.field public static final INSTANCE:Landroid/icu/impl/UBiDiProps;

.field private static final IS_MIRRORED_SHIFT:I = 0xc

.field private static final IX_JG_LIMIT:I = 0x5

.field private static final IX_JG_LIMIT2:I = 0x7

.field private static final IX_JG_START:I = 0x4

.field private static final IX_JG_START2:I = 0x6

.field private static final IX_MAX_VALUES:I = 0xf

.field private static final IX_MIRROR_LENGTH:I = 0x3

.field private static final IX_TOP:I = 0x10

.field private static final IX_TRIE_SIZE:I = 0x2

.field private static final JOIN_CONTROL_SHIFT:I = 0xa

.field private static final JT_MASK:I = 0xe0

.field private static final JT_SHIFT:I = 0x5

.field private static final MAX_JG_MASK:I = 0xff0000

.field private static final MAX_JG_SHIFT:I = 0x10

.field private static final MIRROR_DELTA_SHIFT:I = 0xd

.field private static final MIRROR_INDEX_SHIFT:I = 0x15


# instance fields
.field private indexes:[I

.field private jgArray:[B

.field private jgArray2:[B

.field private mirrors:[I

.field private trie:Landroid/icu/impl/Trie2_16;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 345
    :try_start_0
    new-instance v0, Landroid/icu/impl/UBiDiProps;

    invoke-direct {v0}, Landroid/icu/impl/UBiDiProps;-><init>()V

    sput-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 347
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ubidi.icu"

    .line 42
    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Landroid/icu/impl/UBiDiProps;->readData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static final getClassFromProps(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private static final getFlagFromProps(II)Z
    .locals 0

    shr-int/2addr p0, p1

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final getMirror(II)I
    .locals 3

    .line 183
    invoke-static {p2}, Landroid/icu/impl/UBiDiProps;->getMirrorDeltaFromProps(I)I

    move-result p2

    const/4 v0, -0x4

    if-eq p2, v0, :cond_0

    add-int/2addr p1, p2

    return p1

    .line 192
    :cond_0
    iget-object p2, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v0, 0x3

    aget p2, p2, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    .line 196
    iget-object v1, p0, Landroid/icu/impl/UBiDiProps;->mirrors:[I

    aget v1, v1, v0

    .line 197
    invoke-static {v1}, Landroid/icu/impl/UBiDiProps;->getMirrorCodePoint(I)I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 200
    iget-object p0, p0, Landroid/icu/impl/UBiDiProps;->mirrors:[I

    invoke-static {v1}, Landroid/icu/impl/UBiDiProps;->getMirrorIndex(I)I

    move-result p1

    aget p0, p0, p1

    invoke-static {p0}, Landroid/icu/impl/UBiDiProps;->getMirrorCodePoint(I)I

    move-result p0

    return p0

    :cond_1
    if-ge p1, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return p1
.end method

.method private static final getMirrorCodePoint(I)I
    .locals 1

    const v0, 0x1fffff

    and-int/2addr p0, v0

    return p0
.end method

.method private static final getMirrorDeltaFromProps(I)I
    .locals 0

    int-to-short p0, p0

    shr-int/lit8 p0, p0, 0xd

    return p0
.end method

.method private static final getMirrorIndex(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x15

    return p0
.end method

.method private readData(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Landroid/icu/impl/UBiDiProps$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/UBiDiProps$IsAcceptable;-><init>(Landroid/icu/impl/UBiDiProps$1;)V

    const v1, 0x42694469

    invoke-static {p1, v1, v0}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    .line 52
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 56
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    .line 58
    iget-object v1, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 60
    iget-object v3, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    .line 65
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 66
    iget-object v1, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v1}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v1

    if-gt v1, v0, :cond_2

    sub-int/2addr v0, v1

    .line 71
    invoke-static {p1, v0}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 74
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-lez v0, :cond_1

    .line 76
    invoke-static {p1, v0, v2}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/UBiDiProps;->mirrors:[I

    .line 80
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v1, 0x5

    aget v1, v0, v1

    const/4 v2, 0x4

    aget v0, v0, v2

    sub-int/2addr v1, v0

    .line 81
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/icu/impl/UBiDiProps;->jgArray:[B

    .line 82
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->jgArray:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 85
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v2, 0x6

    aget v0, v0, v2

    sub-int/2addr v1, v0

    .line 86
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/icu/impl/UBiDiProps;->jgArray2:[B

    .line 87
    iget-object p0, p0, Landroid/icu/impl/UBiDiProps;->jgArray2:[B

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void

    .line 68
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "ubidi.icu: not enough bytes for the trie"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "indexes[0] too small in ubidi.icu"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .locals 10

    .line 107
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 109
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Trie2$Range;

    iget-boolean v2, v1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_0

    .line 110
    iget v1, v1, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 116
    iget-object v3, p0, Landroid/icu/impl/UBiDiProps;->mirrors:[I

    aget v3, v3, v2

    invoke-static {v3}, Landroid/icu/impl/UBiDiProps;->getMirrorCodePoint(I)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 117
    invoke-virtual {p1, v3, v4}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 121
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v2, 0x4

    aget v2, v0, v2

    const/4 v3, 0x5

    .line 122
    aget v0, v0, v3

    .line 123
    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->jgArray:[B

    :goto_2
    sub-int v5, v0, v2

    move v6, v1

    move v7, v2

    move v2, v6

    :goto_3
    if-ge v2, v5, :cond_3

    .line 128
    aget-byte v8, v4, v2

    if-eq v8, v6, :cond_2

    .line 130
    invoke-virtual {p1, v7}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move v6, v8

    :cond_2
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    if-eqz v6, :cond_4

    .line 137
    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 139
    :cond_4
    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    aget v4, v2, v3

    if-ne v0, v4, :cond_5

    const/4 v0, 0x6

    .line 141
    aget v0, v2, v0

    const/4 v4, 0x7

    .line 142
    aget v2, v2, v4

    .line 143
    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->jgArray2:[B

    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final getClass(I)I
    .locals 0

    .line 175
    iget-object p0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/impl/UBiDiProps;->getClassFromProps(I)I

    move-result p0

    return p0
.end method

.method public final getJoiningGroup(I)I
    .locals 3

    .line 231
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v1, 0x4

    aget v1, v0, v1

    const/4 v2, 0x5

    .line 232
    aget v0, v0, v2

    if-gt v1, p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 234
    iget-object p0, p0, Landroid/icu/impl/UBiDiProps;->jgArray:[B

    sub-int/2addr p1, v1

    aget-byte p0, p0, p1

    :goto_0
    and-int/lit16 p0, p0, 0xff

    return p0

    .line 236
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v1, 0x6

    aget v1, v0, v1

    const/4 v2, 0x7

    .line 237
    aget v0, v0, v2

    if-gt v1, p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 239
    iget-object p0, p0, Landroid/icu/impl/UBiDiProps;->jgArray2:[B

    sub-int/2addr p1, v1

    aget-byte p0, p0, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getJoiningType(I)I
    .locals 0

    .line 225
    iget-object p0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result p0

    and-int/lit16 p0, p0, 0xe0

    shr-int/lit8 p0, p0, 0x5

    return p0
.end method

.method public final getMaxValue(I)I
    .locals 1

    .line 159
    iget-object p0, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/16 v0, 0xf

    aget p0, p0, v0

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1015

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1006

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1007

    if-eq p1, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    and-int/lit16 p0, p0, 0xe0

    shr-int/lit8 p0, p0, 0x5

    return p0

    :cond_1
    const/high16 p1, 0xff0000

    and-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x10

    return p0

    :cond_2
    and-int/lit16 p0, p0, 0x300

    shr-int/lit8 p0, p0, 0x8

    return p0

    :cond_3
    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public final getMirror(I)I
    .locals 1

    .line 212
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 213
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UBiDiProps;->getMirror(II)I

    move-result p0

    return p0
.end method

.method public final getPairedBracket(I)I
    .locals 2

    .line 249
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    and-int/lit16 v1, v0, 0x300

    if-nez v1, :cond_0

    return p1

    .line 253
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UBiDiProps;->getMirror(II)I

    move-result p0

    return p0
.end method

.method public final getPairedBracketType(I)I
    .locals 0

    .line 245
    iget-object p0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result p0

    and-int/lit16 p0, p0, 0x300

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public final isBidiControl(I)Z
    .locals 0

    .line 217
    iget-object p0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result p0

    const/16 p1, 0xb

    invoke-static {p0, p1}, Landroid/icu/impl/UBiDiProps;->getFlagFromProps(II)Z

    move-result p0

    return p0
.end method

.method public final isJoinControl(I)Z
    .locals 0

    .line 221
    iget-object p0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result p0

    const/16 p1, 0xa

    invoke-static {p0, p1}, Landroid/icu/impl/UBiDiProps;->getFlagFromProps(II)Z

    move-result p0

    return p0
.end method

.method public final isMirrored(I)Z
    .locals 0

    .line 179
    iget-object p0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result p0

    const/16 p1, 0xc

    invoke-static {p0, p1}, Landroid/icu/impl/UBiDiProps;->getFlagFromProps(II)Z

    move-result p0

    return p0
.end method
