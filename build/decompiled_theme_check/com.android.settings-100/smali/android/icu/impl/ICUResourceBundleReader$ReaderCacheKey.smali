.class Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReaderCacheKey"
.end annotation


# instance fields
.field final baseName:Ljava/lang/String;

.field final localeID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 156
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object p2, v0

    .line 157
    :cond_1
    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->localeID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 165
    :cond_0
    instance-of v1, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 168
    :cond_1
    check-cast p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;

    .line 169
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->localeID:Ljava/lang/String;

    iget-object p1, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->localeID:Ljava/lang/String;

    .line 170
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 175
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->localeID:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
