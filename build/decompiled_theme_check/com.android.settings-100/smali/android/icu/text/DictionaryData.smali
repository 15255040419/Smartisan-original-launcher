.class final Landroid/icu/text/DictionaryData;
.super Ljava/lang/Object;
.source "DictionaryData.java"


# static fields
.field private static final DATA_FORMAT_ID:I = 0x44696374

.field public static final IX_COUNT:I = 0x8

.field public static final IX_RESERVED1_OFFSET:I = 0x1

.field public static final IX_RESERVED2_OFFSET:I = 0x2

.field public static final IX_RESERVED6:I = 0x6

.field public static final IX_RESERVED7:I = 0x7

.field public static final IX_STRING_TRIE_OFFSET:I = 0x0

.field public static final IX_TOTAL_SIZE:I = 0x3

.field public static final IX_TRANSFORM:I = 0x5

.field public static final IX_TRIE_TYPE:I = 0x4

.field public static final TRANSFORM_NONE:I = 0x0

.field public static final TRANSFORM_OFFSET_MASK:I = 0x1fffff

.field public static final TRANSFORM_TYPE_MASK:I = 0x7f000000

.field public static final TRANSFORM_TYPE_OFFSET:I = 0x1000000

.field public static final TRIE_HAS_VALUES:I = 0x8

.field public static final TRIE_TYPE_BYTES:I = 0x0

.field public static final TRIE_TYPE_MASK:I = 0x7

.field public static final TRIE_TYPE_UCHARS:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadDictionaryFor(Ljava/lang/String;)Landroid/icu/text/DictionaryMatcher;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "android/icu/impl/data/icudt60b/brkitr"

    .line 48
    invoke-static {v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dictionaries/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "brkitr/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 51
    invoke-static {p0}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x0

    const v1, 0x44696374

    .line 52
    invoke-static {p0, v1, v0}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    const/16 v1, 0x8

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    :cond_0
    aget v1, v2, v3

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-lt v1, v4, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v3

    .line 59
    :goto_1
    invoke-static {v6}, Landroid/icu/impl/Assert;->assrt(Z)V

    if-le v1, v4, :cond_2

    add-int/lit8 v4, v1, -0x20

    .line 62
    invoke-static {p0, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    :cond_2
    const/4 v4, 0x4

    .line 64
    aget v4, v2, v4

    and-int/lit8 v4, v4, 0x7

    const/4 v6, 0x3

    .line 65
    aget v6, v2, v6

    sub-int/2addr v6, v1

    if-nez v4, :cond_3

    const/4 v0, 0x5

    .line 68
    aget v0, v2, v0

    .line 69
    new-array v1, v6, [B

    .line 70
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 71
    new-instance p0, Landroid/icu/text/BytesDictionaryMatcher;

    invoke-direct {p0, v1, v0}, Landroid/icu/text/BytesDictionaryMatcher;-><init>([BI)V

    move-object v0, p0

    goto :goto_2

    :cond_3
    if-ne v4, v5, :cond_5

    .line 73
    rem-int/lit8 v0, v6, 0x2

    if-nez v0, :cond_4

    move v3, v5

    :cond_4
    invoke-static {v3}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 74
    div-int/lit8 v0, v6, 0x2

    and-int/lit8 v1, v6, 0x1

    invoke-static {p0, v0, v1}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p0

    .line 75
    new-instance v0, Landroid/icu/text/CharsDictionaryMatcher;

    invoke-direct {v0, p0}, Landroid/icu/text/CharsDictionaryMatcher;-><init>(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-object v0
.end method
