.class abstract Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;
.super Landroid/icu/text/CharsetRecog_Unicode;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_Unicode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CharsetRecog_UTF_32"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_Unicode;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getChar([BI)I
.end method

.method abstract getName()Ljava/lang/String;
.end method

.method match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 10

    .line 137
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    .line 138
    iget v1, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    .line 147
    invoke-virtual {p0, v0, v3}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;->getChar([BI)I

    move-result v4

    const v5, 0xfeff

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    move v5, v3

    move v6, v5

    move v7, v6

    :goto_1
    if-ge v5, v1, :cond_4

    .line 152
    invoke-virtual {p0, v0, v5}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;->getChar([BI)I

    move-result v8

    if-ltz v8, :cond_3

    const v9, 0x10ffff

    if-ge v8, v9, :cond_3

    const v9, 0xd800

    if-lt v8, v9, :cond_2

    const v9, 0xdfff

    if-gt v8, v9, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    :goto_3
    add-int/lit8 v5, v5, 0x4

    goto :goto_1

    :cond_4
    const/16 v0, 0x50

    const/16 v1, 0x64

    if-eqz v4, :cond_5

    if-nez v6, :cond_5

    :goto_4
    move v0, v1

    goto :goto_5

    :cond_5
    if-eqz v4, :cond_6

    mul-int/lit8 v4, v6, 0xa

    if-le v7, v4, :cond_6

    goto :goto_5

    :cond_6
    const/4 v4, 0x3

    if-le v7, v4, :cond_7

    if-nez v6, :cond_7

    goto :goto_4

    :cond_7
    if-lez v7, :cond_8

    if-nez v6, :cond_8

    goto :goto_5

    :cond_8
    mul-int/lit8 v6, v6, 0xa

    if-le v7, v6, :cond_9

    const/16 v3, 0x19

    :cond_9
    move v0, v3

    :goto_5
    if-nez v0, :cond_a

    goto :goto_6

    .line 177
    :cond_a
    new-instance v2, Landroid/icu/text/CharsetMatch;

    invoke-direct {v2, p1, p0, v0}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    :goto_6
    return-object v2
.end method
