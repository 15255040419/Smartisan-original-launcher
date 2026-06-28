.class Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;
.super Landroid/icu/impl/SoftCache;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReaderCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;",
        "Landroid/icu/impl/ICUResourceBundleReader;",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/ICUResourceBundleReader$1;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;
    .locals 7

    .line 185
    iget-object p0, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->localeID:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 188
    :try_start_0
    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    const-string v1, "android/icu/impl/data/icudt60b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {p2, p0, v0}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 192
    invoke-static {}, Landroid/icu/impl/ICUResourceBundleReader;->access$200()Landroid/icu/impl/ICUResourceBundleReader;

    move-result-object p0

    return-object p0

    .line 196
    :cond_0
    invoke-static {p2, p0}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 198
    invoke-static {}, Landroid/icu/impl/ICUResourceBundleReader;->access$200()Landroid/icu/impl/ICUResourceBundleReader;

    move-result-object p0

    return-object p0

    .line 200
    :cond_1
    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_2
    move-object v2, v0

    .line 202
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v3, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    iget-object v4, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->localeID:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/ICUResourceBundleReader;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundleReader$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 204
    new-instance p2, Landroid/icu/util/ICUUncheckedIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is corrupt - "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 179
    check-cast p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;

    check-cast p2, Ljava/lang/ClassLoader;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;->createInstance(Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;

    move-result-object p0

    return-object p0
.end method
