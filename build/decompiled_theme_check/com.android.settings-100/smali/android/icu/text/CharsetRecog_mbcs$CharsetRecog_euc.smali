.class abstract Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc;
.super Landroid/icu/text/CharsetRecog_mbcs;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CharsetRecog_euc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;,
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 321
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_mbcs;-><init>()V

    return-void
.end method


# virtual methods
.method nextChar(Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;Landroid/icu/text/CharsetDetector;)Z
    .locals 4

    const/4 p0, 0x0

    .line 331
    iput-boolean p0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 338
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result p0

    iput p0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    const/4 v0, 0x1

    if-gez p0, :cond_0

    .line 341
    iput-boolean v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    goto :goto_0

    :cond_0
    const/16 v1, 0x8d

    if-gt p0, v1, :cond_1

    goto :goto_0

    .line 349
    :cond_1
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v1

    .line 350
    iget v2, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v1

    iput v2, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    const/16 v2, 0xa1

    if-lt p0, v2, :cond_2

    const/16 v3, 0xfe

    if-gt p0, v3, :cond_2

    if-ge v1, v2, :cond_4

    .line 355
    iput-boolean v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    goto :goto_0

    :cond_2
    const/16 v3, 0x8e

    if-ne p0, v3, :cond_3

    if-ge v1, v2, :cond_4

    .line 367
    iput-boolean v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    goto :goto_0

    :cond_3
    const/16 v1, 0x8f

    if-ne p0, v1, :cond_4

    .line 375
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result p0

    .line 376
    iget p2, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, p0

    iput p2, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    if-ge p0, v2, :cond_4

    .line 378
    iput-boolean v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 383
    :cond_4
    :goto_0
    iget-boolean p0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    xor-int/2addr p0, v0

    return p0
.end method
