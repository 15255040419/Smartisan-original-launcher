.class public final Landroid/icu/impl/ICUBinary;
.super Ljava/lang/Object;
.source "ICUBinary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUBinary$Authenticate;,
        Landroid/icu/impl/ICUBinary$PackageDataFile;,
        Landroid/icu/impl/ICUBinary$SingleDataFile;,
        Landroid/icu/impl/ICUBinary$DataFile;,
        Landroid/icu/impl/ICUBinary$DatPackageReader;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CHAR_SET_:B = 0x0t

.field private static final CHAR_SIZE_:B = 0x2t

.field private static final HEADER_AUTHENTICATION_FAILED_:Ljava/lang/String; = "ICU data file error: Header authentication failed, please check if you have a valid ICU data file"

.field private static final MAGIC1:B = -0x26t

.field private static final MAGIC2:B = 0x27t

.field private static final MAGIC_NUMBER_AUTHENTICATION_FAILED_:Ljava/lang/String; = "ICU data file error: Not an ICU data file"

.field private static final icuDataFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/impl/ICUBinary$DataFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/icu/impl/ICUBinary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".dataPath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    sget-object v1, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->addDataFilesFromPath(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 33
    invoke-static {p0}, Landroid/icu/impl/ICUBinary;->mapFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static addBaseNamesInFileFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 548
    sget-object v0, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUBinary$DataFile;

    .line 549
    invoke-virtual {v1, p0, p1, p2}, Landroid/icu/impl/ICUBinary$DataFile;->addBaseNamesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static addDataFilesFromFolder(Ljava/io/File;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Landroid/icu/impl/ICUBinary$DataFile;",
            ">;)V"
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 326
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_3

    .line 329
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v1, 0x2f

    .line 334
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    .line 337
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, p0, v2

    .line 338
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".txt"

    .line 339
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 342
    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 345
    invoke-static {v3, p1, p2}, Landroid/icu/impl/ICUBinary;->addDataFilesFromFolder(Ljava/io/File;Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_1

    :cond_3
    const-string v5, ".dat"

    .line 346
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 347
    invoke-static {v3}, Landroid/icu/impl/ICUBinary;->mapFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 348
    invoke-static {v3}, Landroid/icu/impl/ICUBinary$DatPackageReader;->validate(Ljava/nio/ByteBuffer;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 349
    new-instance v4, Landroid/icu/impl/ICUBinary$PackageDataFile;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/icu/impl/ICUBinary$PackageDataFile;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 352
    :cond_4
    new-instance v4, Landroid/icu/impl/ICUBinary$SingleDataFile;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/icu/impl/ICUBinary$SingleDataFile;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_5
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method private static addDataFilesFromPath(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/icu/impl/ICUBinary$DataFile;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    move v0, p1

    .line 301
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 302
    sget-char v1, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_0

    move v2, v1

    goto :goto_1

    .line 307
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 309
    :goto_1
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 310
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 313
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    invoke-static {v2, v0, v3}, Landroid/icu/impl/ICUBinary;->addDataFilesFromFolder(Ljava/io/File;Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_2
    if-gez v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method static compareKeys(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 364
    :goto_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-nez v2, :cond_1

    .line 366
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-ne v1, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 371
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v1, v3, :cond_2

    const/4 p0, -0x1

    return p0

    .line 374
    :cond_2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v2

    if-eqz v3, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method static compareKeys(Ljava/lang/CharSequence;[BI)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 383
    :goto_0
    aget-byte v2, p1, p2

    if-nez v2, :cond_1

    .line 385
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-ne v1, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 390
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v1, v3, :cond_2

    const/4 p0, -0x1

    return p0

    .line 393
    :cond_2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v2

    if-eqz v3, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/16 v1, 0x20

    const/16 v2, 0x80

    if-le v0, v1, :cond_0

    .line 715
    new-array v0, v0, [B

    goto :goto_0

    :cond_0
    new-array v0, v2, [B

    :goto_0
    const/4 v1, 0x0

    move-object v3, v0

    move v0, v1

    .line 722
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 723
    array-length v4, v3

    sub-int/2addr v4, v0

    invoke-virtual {p0, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr v0, v4

    goto :goto_1

    .line 730
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    if-gez v4, :cond_3

    .line 747
    :goto_2
    invoke-static {v3, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0

    .line 734
    :cond_3
    :try_start_1
    array-length v5, v3

    mul-int/lit8 v5, v5, 0x2

    if-ge v5, v2, :cond_4

    move v5, v2

    goto :goto_3

    :cond_4
    const/16 v6, 0x4000

    if-ge v5, v6, :cond_5

    mul-int/lit8 v5, v5, 0x2

    .line 741
    :cond_5
    :goto_3
    new-array v5, v5, [B

    .line 742
    invoke-static {v3, v1, v5, v1, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v3, v0, 0x1

    int-to-byte v4, v4

    .line 744
    aput-byte v4, v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    move-object v3, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 749
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static getChars(Ljava/nio/ByteBuffer;II)[C
    .locals 2

    .line 666
    new-array v0, p1, [C

    .line 667
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    .line 668
    invoke-static {p0, p1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method

.method public static getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 441
    invoke-static {p0, p1, p2, v0}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;
    .locals 1

    .line 486
    invoke-static {p2}, Landroid/icu/impl/ICUBinary;->getDataFromFile(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    .line 491
    const-class p0, Landroid/icu/impl/ICUData;

    invoke-static {p0}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    :cond_1
    if-nez p1, :cond_2

    .line 494
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android/icu/impl/data/icudt60b/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 499
    :cond_2
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 503
    :cond_3
    invoke-static {p0}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 505
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 427
    invoke-static {v0, v0, p0, v1}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static getDataFromFile(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 511
    sget-object v0, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUBinary$DataFile;

    .line 512
    invoke-virtual {v1, p0}, Landroid/icu/impl/ICUBinary$DataFile;->getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInts(Ljava/nio/ByteBuffer;II)[I
    .locals 2

    .line 680
    new-array v0, p1, [I

    .line 681
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    .line 682
    invoke-static {p0, p1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method

.method public static getLongs(Ljava/nio/ByteBuffer;II)[J
    .locals 2

    .line 687
    new-array v0, p1, [J

    .line 688
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr p1, p2

    .line 689
    invoke-static {p0, p1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method

.method public static getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 453
    invoke-static {v0, v0, p0, v1}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static getShorts(Ljava/nio/ByteBuffer;II)[S
    .locals 2

    .line 673
    new-array v0, p1, [S

    .line 674
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    .line 675
    invoke-static {p0, p1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method

.method public static getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 2

    .line 659
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 660
    invoke-interface {v0, v1, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    .line 661
    invoke-static {p0, p1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method

.method public static getVersionByteArrayFromCompactInt(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static getVersionInfoFromCompactInt(I)Landroid/icu/util/VersionInfo;
    .locals 3

    ushr-int/lit8 v0, p0, 0x18

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p0, p0, 0xff

    .line 757
    invoke-static {v0, v1, v2, p0}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object p0

    return-object p0
.end method

.method private static mapFile(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 7

    .line 524
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 525
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :try_start_1
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 536
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 534
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    .line 578
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/4 v5, 0x3

    .line 579
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    const/16 v7, -0x26

    if-ne v4, v7, :cond_5

    const/16 v4, 0x27

    if-ne v6, v4, :cond_5

    const/16 v4, 0x8

    .line 584
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    const/16 v7, 0x9

    .line 585
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    const/16 v8, 0xa

    .line 586
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    const-string v9, "ICU data file error: Header authentication failed, please check if you have a valid ICU data file"

    if-ltz v6, :cond_4

    const/4 v10, 0x1

    if-lt v10, v6, :cond_4

    if-nez v7, :cond_4

    if-ne v8, v3, :cond_4

    if-eqz v6, :cond_0

    .line 591
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    .line 593
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v7

    const/4 v8, 0x4

    .line 594
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v11

    const/16 v12, 0x14

    if-lt v11, v12, :cond_3

    add-int/2addr v11, v8

    if-lt v7, v11, :cond_3

    new-array v11, v8, [B

    const/16 v13, 0x10

    .line 601
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v14

    aput-byte v14, v11, v6

    const/16 v14, 0x11

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v14

    aput-byte v14, v11, v10

    const/16 v14, 0x12

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v14

    aput-byte v14, v11, v3

    const/16 v14, 0x13

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v14

    aput-byte v14, v11, v5

    const/16 v14, 0xc

    .line 603
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    shr-int/lit8 v8, v1, 0x18

    int-to-byte v8, v8

    const/16 v5, 0xf

    const/16 v3, 0xe

    const/16 v10, 0xd

    if-ne v15, v8, :cond_2

    .line 604
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    shr-int/lit8 v15, v1, 0x10

    int-to-byte v15, v15

    if-ne v8, v15, :cond_2

    .line 605
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    shr-int/lit8 v15, v1, 0x8

    int-to-byte v15, v15

    if-ne v8, v15, :cond_2

    .line 606
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    int-to-byte v1, v1

    if-ne v8, v1, :cond_2

    if-eqz v2, :cond_1

    .line 607
    invoke-interface {v2, v11}, Landroid/icu/impl/ICUBinary$Authenticate;->isDataVersionAcceptable([B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 615
    :cond_1
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 617
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    const/16 v2, 0x15

    .line 618
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v13

    or-int/2addr v1, v2

    const/16 v2, 0x16

    .line 619
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    const/16 v2, 0x17

    .line 620
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0

    .line 608
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v4, [Ljava/lang/Object;

    .line 610
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v4, v8

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v4, v7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v4, v3

    aget-byte v0, v11, v6

    and-int/lit16 v0, v0, 0xff

    .line 611
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v4, v3

    const/4 v0, 0x5

    const/4 v3, 0x1

    aget-byte v3, v11, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v0

    const/4 v0, 0x6

    const/4 v3, 0x2

    aget-byte v3, v11, v3

    and-int/lit16 v3, v3, 0xff

    .line 612
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v0

    const/4 v0, 0x7

    const/4 v3, 0x3

    aget-byte v3, v11, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v0

    const-string v0, "; data format %02x%02x%02x%02x, format version %d.%d.%d.%d"

    .line 609
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 596
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal Error: Header size error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ICU data file error: Not an ICU data file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)Landroid/icu/util/VersionInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    invoke-static {p0, p1, p2}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    move-result p0

    invoke-static {p0}, Landroid/icu/impl/ICUBinary;->getVersionInfoFromCompactInt(I)Landroid/icu/util/VersionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static skipBytes(Ljava/nio/ByteBuffer;I)V
    .locals 1

    if-lez p1, :cond_0

    .line 654
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public static sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 697
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 698
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static writeHeader(IIILjava/io/DataOutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 633
    invoke-virtual {p3, v0}, Ljava/io/DataOutputStream;->writeChar(I)V

    const/16 v1, -0x26

    .line 634
    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v1, 0x27

    .line 635
    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v1, 0x14

    .line 637
    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeChar(I)V

    const/4 v1, 0x0

    .line 638
    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeChar(I)V

    const/4 v2, 0x1

    .line 639
    invoke-virtual {p3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 640
    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x2

    .line 641
    invoke-virtual {p3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 642
    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 643
    invoke-virtual {p3, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 644
    invoke-virtual {p3, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 645
    invoke-virtual {p3, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-wide/16 p0, 0x0

    .line 647
    invoke-virtual {p3, p0, p1}, Ljava/io/DataOutputStream;->writeLong(J)V

    return v0
.end method
