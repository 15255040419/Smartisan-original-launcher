.class public final Landroid/icu/impl/IDNA2003;
.super Ljava/lang/Object;
.source "IDNA2003.java"


# static fields
.field private static ACE_PREFIX:[C = null

.field private static final CAPITAL_A:I = 0x41

.field private static final CAPITAL_Z:I = 0x5a

.field private static final FULL_STOP:I = 0x2e

.field private static final HYPHEN:I = 0x2d

.field private static final LOWER_CASE_DELTA:I = 0x20

.field private static final MAX_DOMAIN_NAME_LENGTH:I = 0xff

.field private static final MAX_LABEL_LENGTH:I = 0x3f

.field private static final namePrep:Landroid/icu/text/StringPrep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 25
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    const/4 v0, 0x0

    .line 37
    invoke-static {v0}, Landroid/icu/text/StringPrep;->getInstance(I)Landroid/icu/text/StringPrep;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/IDNA2003;->namePrep:Landroid/icu/text/StringPrep;

    return-void

    :array_0
    .array-data 2
        0x78s
        0x6es
        0x2ds
        0x2ds
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .line 435
    invoke-static {p0, p2}, Landroid/icu/impl/IDNA2003;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 436
    invoke-static {p1, p2}, Landroid/icu/impl/IDNA2003;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 437
    invoke-static {p0, p1}, Landroid/icu/impl/IDNA2003;->compareCaseInsensitiveASCII(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result p0

    return p0
.end method

.method private static compareCaseInsensitiveASCII(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 73
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    return v0

    .line 77
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 82
    invoke-static {v2}, Landroid/icu/impl/IDNA2003;->toASCIILower(C)C

    move-result v2

    invoke-static {v3}, Landroid/icu/impl/IDNA2003;->toASCIILower(C)C

    move-result v3

    sub-int/2addr v2, v3

    if-eqz v2, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 268
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 272
    :goto_0
    array-length v3, p0

    invoke-static {p0, v1, v3}, Landroid/icu/impl/IDNA2003;->getSeparatorIndex([CII)I

    move-result v1

    .line 273
    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-direct {v3, p0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 275
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 276
    :cond_0
    invoke-static {v3}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object v2

    .line 277
    invoke-static {v2, p1}, Landroid/icu/impl/IDNA2003;->convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 279
    :cond_1
    array-length v2, p0

    if-ne v1, v2, :cond_3

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    const/16 p1, 0xff

    if-gt p0, p1, :cond_2

    return-object v0

    .line 289
    :cond_2
    new-instance p0, Landroid/icu/text/StringPrepParseException;

    const/16 p1, 0xb

    const-string v0, "The output exceed the max allowed length."

    invoke-direct {p0, v0, p1}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    add-int/lit8 v2, v1, 0x1

    const/16 v1, 0x2e

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    goto :goto_0
.end method

.method public static convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .line 407
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 408
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 412
    :goto_0
    array-length v3, p0

    invoke-static {p0, v1, v3}, Landroid/icu/impl/IDNA2003;->getSeparatorIndex([CII)I

    move-result v1

    .line 413
    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-direct {v3, p0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 414
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    array-length v2, p0

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 415
    :cond_0
    new-instance p0, Landroid/icu/text/StringPrepParseException;

    const/16 p1, 0xa

    const-string v0, "Found zero length lable after NamePrep."

    invoke-direct {p0, v0, p1}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 417
    :cond_1
    :goto_1
    invoke-static {v3}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object v2

    .line 418
    invoke-static {v2, p1}, Landroid/icu/impl/IDNA2003;->convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 419
    array-length v2, p0

    if-ne v1, v2, :cond_3

    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    const/16 p1, 0xff

    if-gt p0, p1, :cond_2

    return-object v0

    .line 429
    :cond_2
    new-instance p0, Landroid/icu/text/StringPrepParseException;

    const/16 p1, 0xb

    const-string v0, "The output exceed the max allowed length."

    invoke-direct {p0, v0, p1}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 423
    :cond_3
    aget-char v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v1, 0x1

    move v1, v2

    goto :goto_0
.end method

.method public static convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v3, v1

    .line 169
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v4

    const/16 v5, 0x7f

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    if-le v4, v5, :cond_1

    move v3, v2

    goto :goto_1

    .line 175
    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    if-nez v3, :cond_3

    .line 180
    sget-object v3, Landroid/icu/impl/IDNA2003;->namePrep:Landroid/icu/text/StringPrep;

    invoke-virtual {v3, p0, p1}, Landroid/icu/text/StringPrep;->prepare(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object p0

    goto :goto_2

    .line 182
    :cond_3
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    .line 184
    :goto_2
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-eqz p1, :cond_10

    .line 189
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v7, v1

    move v4, v2

    move v8, v6

    move v6, v7

    :goto_3
    if-ge v4, p1, :cond_6

    .line 196
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    if-le v9, v5, :cond_4

    move v7, v2

    goto :goto_4

    .line 199
    :cond_4
    invoke-static {v9}, Landroid/icu/impl/IDNA2003;->isLDHChar(I)Z

    move-result v9

    if-nez v9, :cond_5

    move v6, v2

    move v8, v4

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    if-ne v0, v1, :cond_c

    const/16 v0, 0x2d

    if-eqz v6, :cond_7

    .line 211
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-eq v4, v0, :cond_7

    .line 212
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_c

    :cond_7
    const/4 v1, 0x5

    const-string v3, "The input does not conform to the STD 3 ASCII rules"

    if-nez v6, :cond_9

    .line 216
    new-instance p1, Landroid/icu/text/StringPrepParseException;

    .line 218
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    if-lez v8, :cond_8

    add-int/lit8 v8, v8, -0x1

    .line 219
    :cond_8
    invoke-direct {p1, v3, v1, p0, v8}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw p1

    .line 220
    :cond_9
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-eq v4, v0, :cond_b

    .line 225
    new-instance v0, Landroid/icu/text/StringPrepParseException;

    .line 227
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    if-lez p1, :cond_a

    add-int/lit8 p1, p1, -0x1

    .line 228
    :cond_a
    invoke-direct {v0, v3, v1, p0, p1}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v0

    .line 221
    :cond_b
    new-instance p1, Landroid/icu/text/StringPrepParseException;

    .line 222
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v3, v1, p0, v2}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw p1

    :cond_c
    if-eqz v7, :cond_d

    goto :goto_5

    .line 237
    :cond_d
    invoke-static {p0}, Landroid/icu/impl/IDNA2003;->startsWithPrefix(Ljava/lang/StringBuffer;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 240
    new-array p1, p1, [Z

    .line 242
    invoke-static {p0, p1}, Landroid/icu/impl/Punycode;->encode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 245
    invoke-static {p0}, Landroid/icu/impl/IDNA2003;->toASCIILower(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 248
    sget-object p1, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    array-length v0, p1

    invoke-virtual {v3, p1, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 250
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-object p0, v3

    .line 257
    :goto_5
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_e

    return-object p0

    .line 258
    :cond_e
    new-instance p1, Landroid/icu/text/StringPrepParseException;

    const/16 v0, 0x8

    .line 259
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "The labels in the input are too long. Length > 63."

    invoke-direct {p1, v1, v0, p0, v2}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw p1

    .line 253
    :cond_f
    new-instance p1, Landroid/icu/text/StringPrepParseException;

    const/4 v0, 0x6

    .line 254
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "The input does not start with the ACE Prefix."

    invoke-direct {p1, v1, v0, p0, v2}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw p1

    .line 187
    :cond_10
    new-instance p0, Landroid/icu/text/StringPrepParseException;

    const/16 p1, 0xa

    const-string v0, "Found zero length lable after NamePrep."

    invoke-direct {p0, v0, p1}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    const/4 v1, 0x1

    .line 311
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 323
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    .line 324
    sget-object v0, Landroid/icu/impl/IDNA2003;->namePrep:Landroid/icu/text/StringPrep;

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/StringPrep;->prepare(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v0
    :try_end_0
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 326
    :catch_0
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 331
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 341
    :goto_1
    invoke-static {v0}, Landroid/icu/impl/IDNA2003;->startsWithPrefix(Ljava/lang/StringBuffer;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 345
    sget-object v1, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    array-length v1, v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 349
    :try_start_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {v1, v2}, Landroid/icu/impl/Punycode;->decode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_3

    .line 356
    invoke-static {v3}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/icu/impl/IDNA2003;->convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 359
    invoke-static {v0, p1}, Landroid/icu/impl/IDNA2003;->compareCaseInsensitiveASCII(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_4

    return-object v2

    .line 401
    :cond_4
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private static getSeparatorIndex([CII)I
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_1

    .line 92
    aget-char v0, p0, p1

    invoke-static {v0}, Landroid/icu/impl/IDNA2003;->isLabelSeparator(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private static isLDHChar(I)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x7a

    if-le p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v2, 0x2d

    if-eq p0, v2, :cond_4

    const/16 v2, 0x30

    if-gt v2, p0, :cond_1

    const/16 v2, 0x39

    if-le p0, v2, :cond_4

    :cond_1
    const/16 v2, 0x41

    if-gt v2, p0, :cond_2

    const/16 v2, 0x5a

    if-le p0, v2, :cond_4

    :cond_2
    const/16 v2, 0x61

    if-gt v2, p0, :cond_3

    if-gt p0, v1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isLabelSeparator(I)Z
    .locals 1

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3002

    if-eq p0, v0, :cond_0

    const v0, 0xff0e

    if-eq p0, v0, :cond_0

    const v0, 0xff61

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static startsWithPrefix(Ljava/lang/StringBuffer;)Z
    .locals 5

    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sget-object v1, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    move v0, v2

    .line 45
    :goto_0
    sget-object v3, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/IDNA2003;->toASCIILower(C)C

    move-result v3

    sget-object v4, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    aget-char v4, v4, v0

    if-eq v3, v4, :cond_1

    move v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static toASCIILower(C)C
    .locals 1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    :cond_0
    return p0
.end method

.method private static toASCIILower(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 62
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 63
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/IDNA2003;->toASCIILower(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
