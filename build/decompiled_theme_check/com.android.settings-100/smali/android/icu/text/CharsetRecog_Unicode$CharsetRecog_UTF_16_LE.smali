.class Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;
.super Landroid/icu/text/CharsetRecog_Unicode;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_Unicode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_UTF_16_LE"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_Unicode;-><init>()V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 0

    const-string p0, "UTF-16LE"

    return-object p0
.end method

.method match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 8

    .line 102
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    .line 105
    array-length v1, v0

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    move v4, v3

    move v3, v2

    :goto_0
    add-int/lit8 v5, v1, -0x1

    const/16 v6, 0x64

    if-ge v3, v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    .line 107
    aget-byte v5, v0, v5

    aget-byte v7, v0, v3

    invoke-static {v5, v7}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;->codeUnit16FromBytes(BB)I

    move-result v5

    if-nez v3, :cond_0

    const v7, 0xfeff

    if-ne v5, v7, :cond_0

    move v4, v6

    goto :goto_1

    .line 112
    :cond_0
    invoke-static {v5, v4}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;->adjustConfidence(II)I

    move-result v4

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x4

    if-ge v1, v0, :cond_3

    if-ge v4, v6, :cond_3

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    if-lez v2, :cond_4

    .line 121
    new-instance v0, Landroid/icu/text/CharsetMatch;

    invoke-direct {v0, p1, p0, v2}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method
