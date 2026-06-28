.class public final Landroid/icu/impl/ICUResourceBundleReader;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;,
        Landroid/icu/impl/ICUResourceBundleReader$Table32;,
        Landroid/icu/impl/ICUResourceBundleReader$Table16;,
        Landroid/icu/impl/ICUResourceBundleReader$Table1632;,
        Landroid/icu/impl/ICUResourceBundleReader$Table;,
        Landroid/icu/impl/ICUResourceBundleReader$Array16;,
        Landroid/icu/impl/ICUResourceBundleReader$Array32;,
        Landroid/icu/impl/ICUResourceBundleReader$Array;,
        Landroid/icu/impl/ICUResourceBundleReader$Container;,
        Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;,
        Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;,
        Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;,
        Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static CACHE:Landroid/icu/impl/ICUResourceBundleReader$ReaderCache; = null

.field private static final DATA_FORMAT:I = 0x52657342

.field private static final DEBUG:Z = false

.field private static final EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

.field private static final EMPTY_ARRAY:Landroid/icu/impl/ICUResourceBundleReader$Array;

.field private static final EMPTY_TABLE:Landroid/icu/impl/ICUResourceBundleReader$Table;

.field private static final ICU_RESOURCE_SUFFIX:Ljava/lang/String; = ".res"

.field private static final IS_ACCEPTABLE:Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

.field static final LARGE_SIZE:I = 0x18

.field private static final NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

.field private static PUBLIC_TYPES:[I = null

.field private static final URES_ATT_IS_POOL_BUNDLE:I = 0x2

.field private static final URES_ATT_NO_FALLBACK:I = 0x1

.field private static final URES_ATT_USES_POOL_BUNDLE:I = 0x4

.field private static final URES_INDEX_16BIT_TOP:I = 0x6

.field private static final URES_INDEX_ATTRIBUTES:I = 0x5

.field private static final URES_INDEX_BUNDLE_TOP:I = 0x3

.field private static final URES_INDEX_KEYS_TOP:I = 0x1

.field private static final URES_INDEX_LENGTH:I = 0x0

.field private static final URES_INDEX_MAX_TABLE_LENGTH:I = 0x4

.field private static final URES_INDEX_POOL_CHECKSUM:I = 0x7

.field private static final emptyByteBuffer:Ljava/nio/ByteBuffer;

.field private static final emptyBytes:[B

.field private static final emptyChars:[C

.field private static final emptyInts:[I

.field private static final emptyString:Ljava/lang/String; = ""


# instance fields
.field private b16BitUnits:Ljava/nio/CharBuffer;

.field private bytes:Ljava/nio/ByteBuffer;

.field private dataVersion:I

.field private isPoolBundle:Z

.field private keyBytes:[B

.field private localKeyLimit:I

.field private noFallback:Z

.field private poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

.field private poolCheckSum:I

.field private poolStringIndex16Limit:I

.field private poolStringIndexLimit:I

.field private resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

.field private rootRes:I

.field private usesPoolBundle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;-><init>(Landroid/icu/impl/ICUResourceBundleReader$1;)V

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->IS_ACCEPTABLE:Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

    const-string v0, "\u0000"

    .line 115
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    .line 148
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;

    invoke-direct {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;-><init>(Landroid/icu/impl/ICUResourceBundleReader$1;)V

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->CACHE:Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;

    .line 149
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundleReader;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 375
    sput-object v1, Landroid/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    .line 376
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Landroid/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    new-array v1, v0, [C

    .line 377
    sput-object v1, Landroid/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    new-array v0, v0, [I

    .line 378
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    .line 380
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Array;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundleReader$Array;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_ARRAY:Landroid/icu/impl/ICUResourceBundleReader$Array;

    .line 381
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Table;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_TABLE:Landroid/icu/impl/ICUResourceBundleReader$Table;

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 781
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->PUBLIC_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x2
        0x2
        0x0
        0x7
        0x8
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0xe
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->init(Ljava/nio/ByteBuffer;)V

    .line 221
    iget-boolean p1, p0, Landroid/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    if-eqz p1, :cond_2

    const-string/jumbo p1, "pool"

    .line 222
    invoke-static {p2, p1, p4}, Landroid/icu/impl/ICUResourceBundleReader;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 223
    iget-object p1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    if-eqz p1, :cond_1

    iget-boolean p2, p1, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    if-eqz p2, :cond_1

    .line 226
    iget p1, p1, Landroid/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "pool.res has a different checksum than this bundle"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "pool.res is not a pool bundle"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundleReader$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/ICUResourceBundleReader;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static RES_GET_INT(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x4

    shr-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private static RES_GET_OFFSET(I)I
    .locals 1

    const v0, 0xfffffff

    and-int/2addr p0, v0

    return p0
.end method

.method static RES_GET_TYPE(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x1c

    return p0
.end method

.method static RES_GET_UINT(I)I
    .locals 1

    const v0, 0xfffffff

    and-int/2addr p0, v0

    return p0
.end method

.method static URES_IS_ARRAY(I)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static URES_IS_TABLE(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic access$1000(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getKey16String(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getKey32String(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;C)I
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->compareKeys(Ljava/lang/CharSequence;C)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;I)I
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->compareKeys32(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Landroid/icu/impl/ICUResourceBundleReader;ILandroid/icu/impl/UResource$Key;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->setKeyFromKey16(ILandroid/icu/impl/UResource$Key;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/icu/impl/ICUResourceBundleReader;ILandroid/icu/impl/UResource$Key;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->setKeyFromKey32(ILandroid/icu/impl/UResource$Key;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/icu/impl/ICUResourceBundleReader;I)[C
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getTableKeyOffsets(I)[C

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Landroid/icu/impl/ICUResourceBundleReader;I)[C
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getTable16KeyOffsets(I)[C

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Landroid/icu/impl/ICUResourceBundleReader;I)[I
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getTable32KeyOffsets(I)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Landroid/icu/impl/ICUResourceBundleReader;
    .locals 1

    .line 32
    sget-object v0, Landroid/icu/impl/ICUResourceBundleReader;->NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

    return-object v0
.end method

.method static synthetic access$2200(I)I
    .locals 0

    .line 32
    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400()[I
    .locals 1

    .line 32
    sget-object v0, Landroid/icu/impl/ICUResourceBundleReader;->PUBLIC_TYPES:[I

    return-object v0
.end method

.method static synthetic access$500(Landroid/icu/impl/ICUResourceBundleReader;I)Z
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->isNoInheritanceMarker(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Landroid/icu/impl/ICUResourceBundleReader;)Ljava/nio/CharBuffer;
    .locals 0

    .line 32
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    return-object p0
.end method

.method static synthetic access$700(Landroid/icu/impl/ICUResourceBundleReader;)I
    .locals 0

    .line 32
    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndex16Limit:I

    return p0
.end method

.method static synthetic access$800(Landroid/icu/impl/ICUResourceBundleReader;)I
    .locals 0

    .line 32
    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    return p0
.end method

.method static synthetic access$900(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result p0

    return p0
.end method

.method private compareKeys(Ljava/lang/CharSequence;C)I
    .locals 1

    .line 485
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    if-ge p2, v0, :cond_0

    .line 486
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {p1, p0, p2}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result p0

    return p0

    .line 488
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    sub-int/2addr p2, v0

    invoke-static {p1, p0, p2}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result p0

    return p0
.end method

.method private compareKeys32(Ljava/lang/CharSequence;I)I
    .locals 1

    if-ltz p2, :cond_0

    .line 493
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {p1, p0, p2}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result p0

    return p0

    .line 495
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    const v0, 0x7fffffff

    and-int/2addr p2, v0

    invoke-static {p1, p0, p2}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result p0

    return p0
.end method

.method private getChars(II)[C
    .locals 3

    .line 384
    new-array v0, p2, [C

    const/16 v1, 0x10

    if-gt p2, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 387
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object p0

    .line 391
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 392
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    :cond_1
    return-object v0
.end method

.method public static getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ".res"

    if-eqz p0, :cond_4

    .line 1376
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2e

    .line 1382
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x2f

    if-ne v2, v3, :cond_2

    .line 1383
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_1

    .line 1384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1386
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1389
    :cond_2
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1390
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1393
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1377
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_5

    .line 1378
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1380
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIndexesInt(I)I
    .locals 0

    .line 335
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    return p0
.end method

.method private getInt(I)I
    .locals 0

    .line 397
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    return p0
.end method

.method private getInts(II)[I
    .locals 3

    .line 400
    new-array v0, p2, [I

    const/16 v1, 0x10

    if-gt p2, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 403
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    .line 407
    div-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 408
    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    :cond_1
    return-object v0
.end method

.method private getKey16String(I)Ljava/lang/String;
    .locals 1

    .line 457
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    if-ge p1, v0, :cond_0

    .line 458
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 460
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    sub-int/2addr p1, v0

    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getKey32String(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 465
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 467
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;
    .locals 1

    .line 233
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object p0, Landroid/icu/impl/ICUResourceBundleReader;->CACHE:Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;

    invoke-virtual {p0, v0, p2}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundleReader;

    .line 235
    sget-object p1, Landroid/icu/impl/ICUResourceBundleReader;->NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private getResourceByteOffset(I)I
    .locals 0

    shl-int/lit8 p0, p1, 0x2

    return p0
.end method

.method private getTable16KeyOffsets(I)[C
    .locals 5

    .line 413
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result p1

    if-lez p1, :cond_2

    .line 415
    new-array v0, p1, [C

    const/16 v2, 0x10

    if-gt p1, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 418
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v1

    aput-char v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_0

    .line 421
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object p0

    .line 422
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 423
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    :cond_1
    return-object v0

    .line 427
    :cond_2
    sget-object p0, Landroid/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    return-object p0
.end method

.method private getTable32KeyOffsets(I)[I
    .locals 1

    .line 439
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 p1, p1, 0x4

    .line 441
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInts(II)[I

    move-result-object p0

    return-object p0

    .line 443
    :cond_0
    sget-object p0, Landroid/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    return-object p0
.end method

.method private getTableKeyOffsets(I)[C
    .locals 1

    .line 431
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 p1, p1, 0x2

    .line 433
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getChars(II)[C

    move-result-object p0

    return-object p0

    .line 435
    :cond_0
    sget-object p0, Landroid/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    return-object p0
.end method

.method private init(Ljava/nio/ByteBuffer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    sget-object v0, Landroid/icu/impl/ICUResourceBundleReader;->IS_ACCEPTABLE:Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

    const v1, 0x52657342

    invoke-static {p1, v1, v0}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->dataVersion:I

    const/16 v0, 0x10

    .line 244
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 245
    invoke-static {p1}, Landroid/icu/impl/ICUBinary;->sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    .line 246
    iget-object p1, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    .line 251
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->rootRes:I

    .line 257
    invoke-direct {p0, v3}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v2

    and-int/lit16 v4, v2, 0xff

    const/4 v5, 0x4

    if-le v4, v5, :cond_d

    add-int/lit8 v5, v4, 0x1

    shl-int/lit8 v6, v5, 0x2

    if-lt p1, v6, :cond_c

    const/4 v7, 0x3

    .line 264
    invoke-direct {p0, v7}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v8

    shl-int/lit8 v9, v8, 0x2

    if-lt p1, v9, :cond_c

    const/4 p1, 0x1

    sub-int/2addr v8, p1

    if-lt v1, v7, :cond_0

    ushr-int/lit8 v1, v2, 0x8

    .line 274
    iput v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    :cond_0
    const/4 v1, 0x5

    if-le v4, v1, :cond_4

    .line 279
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 280
    :goto_0
    iput-boolean v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->noFallback:Z

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    move v2, p1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 281
    :goto_1
    iput-boolean v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_3

    move v2, p1

    goto :goto_2

    :cond_3
    move v2, v3

    .line 282
    :goto_2
    iput-boolean v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    .line 283
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    const v7, 0xf000

    and-int/2addr v7, v1

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr v2, v7

    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    ushr-int/lit8 v0, v1, 0x10

    .line 284
    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndex16Limit:I

    .line 288
    :cond_4
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v0

    if-le v0, v5, :cond_6

    .line 292
    iget-boolean v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    if-eqz v1, :cond_5

    sub-int v1, v0, v5

    shl-int/lit8 v1, v1, 0x2

    .line 297
    new-array v1, v1, [B

    iput-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    .line 298
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    :cond_5
    shl-int/lit8 v1, v0, 0x2

    .line 300
    iput v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    .line 301
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    .line 303
    :goto_3
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_6
    const/4 v1, 0x6

    if-le v4, v1, :cond_8

    .line 308
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v1

    if-le v1, v0, :cond_7

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 311
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    shl-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 312
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    .line 313
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v1, p1

    or-int/2addr v8, v1

    goto :goto_4

    .line 316
    :cond_7
    sget-object v0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    goto :goto_4

    .line 319
    :cond_8
    sget-object v0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    :goto_4
    const/4 v0, 0x7

    if-le v4, v0, :cond_9

    .line 323
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    .line 326
    :cond_9
    iget-boolean v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->length()I

    move-result v0

    if-le v0, p1, :cond_b

    .line 327
    :cond_a
    new-instance p1, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-direct {p1, v8}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;-><init>(I)V

    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    .line 331
    :cond_b
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 265
    :cond_c
    new-instance p0, Landroid/icu/util/ICUException;

    const-string p1, "not enough bytes"

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 260
    :cond_d
    new-instance p0, Landroid/icu/util/ICUException;

    const-string p1, "not enough indexes"

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isNoInheritanceMarker(I)Z
    .locals 4

    .line 591
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_2

    .line 595
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result p1

    .line 596
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    const/16 v2, 0x2205

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, p1, 0x6

    .line 597
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result p0

    if-ne p0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 598
    :cond_2
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result p1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_4

    .line 599
    iget p1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    if-ge v0, p1, :cond_3

    .line 600
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->isStringV2NoInheritanceMarker(I)Z

    move-result p0

    return p0

    :cond_3
    sub-int/2addr v0, p1

    .line 602
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->isStringV2NoInheritanceMarker(I)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method private isStringV2NoInheritanceMarker(I)Z
    .locals 5

    .line 609
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x2205

    if-ne v0, v3, :cond_1

    .line 611
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, p1, 0x2

    .line 612
    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 p1, p1, 0x3

    .line 613
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result p0

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    const v4, 0xdc03

    if-ne v0, v4, :cond_2

    .line 615
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, p1, 0x2

    .line 616
    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 p1, p1, 0x3

    .line 617
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result p0

    if-ne p0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private static makeKeyStringFromBytes([BI)Ljava/lang/String;
    .locals 2

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    :goto_0
    aget-byte v1, p0, p1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    int-to-char v1, v1

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private makeStringFromBytes(II)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x10

    if-gt p2, v0, :cond_1

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 551
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 555
    :cond_1
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object p0

    .line 556
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    .line 557
    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setKeyFromKey16(ILandroid/icu/impl/UResource$Key;)V
    .locals 1

    .line 471
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    if-ge p1, v0, :cond_0

    .line 472
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-virtual {p2, p0, p1}, Landroid/icu/impl/UResource$Key;->setBytes([BI)Landroid/icu/impl/UResource$Key;

    goto :goto_0

    .line 474
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    sub-int/2addr p1, v0

    invoke-virtual {p2, p0, p1}, Landroid/icu/impl/UResource$Key;->setBytes([BI)Landroid/icu/impl/UResource$Key;

    :goto_0
    return-void
.end method

.method private setKeyFromKey32(ILandroid/icu/impl/UResource$Key;)V
    .locals 1

    if-ltz p1, :cond_0

    .line 479
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-virtual {p2, p0, p1}, Landroid/icu/impl/UResource$Key;->setBytes([BI)Landroid/icu/impl/UResource$Key;

    goto :goto_0

    .line 481
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-virtual {p2, p0, p1}, Landroid/icu/impl/UResource$Key;->setBytes([BI)Landroid/icu/impl/UResource$Key;

    :goto_0
    return-void
.end method


# virtual methods
.method getAlias(I)Ljava/lang/String;
    .locals 3

    .line 625
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 627
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 631
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 633
    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 635
    :cond_1
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    .line 636
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    .line 637
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->makeStringFromBytes(II)Ljava/lang/String;

    move-result-object v0

    .line 638
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;
    .locals 3

    .line 731
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    .line 732
    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_ARRAY(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 735
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 737
    sget-object p0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_ARRAY:Landroid/icu/impl/ICUResourceBundleReader$Array;

    return-object p0

    .line 739
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v2, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 741
    check-cast v2, Landroid/icu/impl/ICUResourceBundleReader$Array;

    return-object v2

    :cond_2
    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 744
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Array32;

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/ICUResourceBundleReader$Array32;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Array16;

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/ICUResourceBundleReader$Array16;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    .line 745
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundleReader$Array;

    return-object p0
.end method

.method getBinary(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 680
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 682
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    if-nez v0, :cond_0

    .line 687
    sget-object p0, Landroid/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 693
    :cond_0
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result p1

    .line 694
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 696
    sget-object p0, Landroid/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 p1, p1, 0x4

    .line 699
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 700
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 701
    invoke-static {p0}, Landroid/icu/impl/ICUBinary;->sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 702
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result p1

    if-nez p1, :cond_2

    .line 703
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method getBinary(I[B)[B
    .locals 4

    .line 646
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 648
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    if-nez v0, :cond_0

    .line 650
    sget-object p0, Landroid/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    return-object p0

    .line 652
    :cond_0
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result p1

    .line 653
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 655
    sget-object p0, Landroid/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 659
    array-length v1, p2

    if-eq v1, v0, :cond_3

    .line 660
    :cond_2
    new-array p2, v0, [B

    :cond_3
    add-int/lit8 p1, p1, 0x4

    const/16 v1, 0x10

    if-gt v0, v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 665
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    aput-byte p1, p2, v1

    add-int/lit8 v1, v1, 0x1

    move p1, v3

    goto :goto_0

    .line 668
    :cond_4
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 669
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 670
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_5
    return-object p2

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method getIntVector(I)[I
    .locals 2

    .line 713
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 715
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result p1

    const/16 v1, 0xe

    if-ne p1, v1, :cond_1

    if-nez v0, :cond_0

    .line 717
    sget-object p0, Landroid/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    return-object p0

    .line 721
    :cond_0
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result p1

    .line 722
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    .line 723
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInts(II)[I

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getNoFallback()Z
    .locals 0

    .line 346
    iget-boolean p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->noFallback:Z

    return p0
.end method

.method getRootResource()I
    .locals 0

    .line 343
    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->rootRes:I

    return p0
.end method

.method getString(I)Ljava/lang/String;
    .locals 3

    .line 562
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 564
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    if-eq p1, v0, :cond_3

    .line 571
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    if-ge v0, v1, :cond_2

    .line 572
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getStringV2(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sub-int/2addr p1, v1

    .line 574
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getStringV2(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 577
    :cond_3
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 579
    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 581
    :cond_4
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    .line 582
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    .line 583
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->makeStringFromBytes(II)Ljava/lang/String;

    move-result-object v0

    .line 584
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method getStringV2(I)Ljava/lang/String;
    .locals 4

    .line 509
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 511
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 513
    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 516
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v1

    and-int/lit16 v2, v1, -0x400

    const v3, 0xdc00

    if-eq v2, v3, :cond_3

    if-nez v1, :cond_1

    const-string p0, ""

    return-object p0

    .line 521
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v1, v1

    .line 522
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_2

    .line 525
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 527
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const v2, 0xdfef

    if-ge v1, v2, :cond_4

    and-int/lit16 v1, v1, 0x3ff

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const v3, 0xdfff

    if-ge v1, v3, :cond_5

    sub-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x10

    .line 534
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 537
    :cond_5
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x3

    .line 542
    :goto_1
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/2addr v1, v0

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    :goto_2
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;
    .locals 4

    .line 749
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    .line 750
    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 753
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 755
    sget-object p0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_TABLE:Landroid/icu/impl/ICUResourceBundleReader$Table;

    return-object p0

    .line 757
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v2, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 759
    check-cast v2, Landroid/icu/impl/ICUResourceBundleReader$Table;

    return-object v2

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 764
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Table1632;

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/ICUResourceBundleReader$Table1632;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    .line 765
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v1

    :goto_0
    mul-int/2addr v1, v2

    goto :goto_1

    :cond_3
    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 767
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Table16;

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/ICUResourceBundleReader$Table16;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    .line 768
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v1

    goto :goto_0

    .line 770
    :cond_4
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Table32;

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/ICUResourceBundleReader$Table32;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    .line 771
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 773
    :goto_1
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundleReader$Table;

    return-object p0
.end method

.method getUsesPoolBundle()Z
    .locals 0

    .line 349
    iget-boolean p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    return p0
.end method

.method getVersion()Landroid/icu/util/VersionInfo;
    .locals 0

    .line 339
    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->dataVersion:I

    invoke-static {p0}, Landroid/icu/impl/ICUBinary;->getVersionInfoFromCompactInt(I)Landroid/icu/util/VersionInfo;

    move-result-object p0

    return-object p0
.end method
