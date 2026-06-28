.class Landroid/icu/text/CharsetRecog_sbcs$NGramParser;
.super Ljava/lang/Object;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NGramParser"
.end annotation


# static fields
.field private static final N_GRAM_MASK:I = 0xffffff


# instance fields
.field protected byteIndex:I

.field protected byteMap:[B

.field private hitCount:I

.field private ngram:I

.field private ngramCount:I

.field private ngramList:[I

.field protected spaceChar:B


# direct methods
.method public constructor <init>([I[B)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    .line 32
    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    .line 44
    iput-object p1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramList:[I

    .line 45
    iput-object p2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteMap:[B

    .line 47
    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    .line 49
    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    return-void
.end method

.method private lookup(I)V
    .locals 1

    .line 96
    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    .line 98
    iget-object v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramList:[I

    invoke-static {v0, p1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->search([II)I

    move-result p1

    if-ltz p1, :cond_0

    .line 99
    iget p1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    :cond_0
    return-void
.end method

.method private nextByte(Landroid/icu/text/CharsetDetector;)I
    .locals 2

    .line 112
    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    iget v1, p1, Landroid/icu/text/CharsetDetector;->fInputLen:I

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 116
    :cond_0
    iget-object p1, p1, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    aget-byte p0, p1, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static search([II)I
    .locals 3

    const/16 v0, 0x20

    .line 59
    aget v1, p0, v0

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x10

    .line 63
    aget v2, p0, v1

    if-gt v2, p1, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v1, v0, 0x8

    .line 67
    aget v2, p0, v1

    if-gt v2, p1, :cond_2

    move v0, v1

    :cond_2
    add-int/lit8 v1, v0, 0x4

    .line 71
    aget v2, p0, v1

    if-gt v2, p1, :cond_3

    move v0, v1

    :cond_3
    add-int/lit8 v1, v0, 0x2

    .line 75
    aget v2, p0, v1

    if-gt v2, p1, :cond_4

    move v0, v1

    :cond_4
    add-int/lit8 v1, v0, 0x1

    .line 79
    aget v2, p0, v1

    if-gt v2, p1, :cond_5

    move v0, v1

    .line 83
    :cond_5
    aget v1, p0, v0

    if-le v1, p1, :cond_6

    add-int/lit8 v0, v0, -0x1

    :cond_6
    if-ltz v0, :cond_8

    .line 87
    aget p0, p0, v0

    if-eq p0, p1, :cond_7

    goto :goto_1

    :cond_7
    return v0

    :cond_8
    :goto_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method protected addByte(I)V
    .locals 1

    .line 106
    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    const p1, 0xffffff

    and-int/2addr p1, v0

    iput p1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    .line 107
    iget p1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    invoke-direct {p0, p1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->lookup(I)V

    return-void
.end method

.method public parse(Landroid/icu/text/CharsetDetector;)I
    .locals 1

    const/16 v0, 0x20

    .line 141
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->parse(Landroid/icu/text/CharsetDetector;B)I

    move-result p0

    return p0
.end method

.method public parse(Landroid/icu/text/CharsetDetector;B)I
    .locals 2

    .line 146
    iput-byte p2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    .line 148
    invoke-virtual {p0, p1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->parseCharacters(Landroid/icu/text/CharsetDetector;)V

    .line 151
    iget-byte p1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    invoke-virtual {p0, p1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->addByte(I)V

    .line 153
    iget p1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    int-to-double p1, p1

    iget p0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    int-to-double v0, p0

    div-double/2addr p1, v0

    const-wide v0, 0x3fd51eb851eb851fL    # 0.33

    cmpl-double p0, p1, v0

    if-lez p0, :cond_0

    const/16 p0, 0x62

    return p0

    :cond_0
    const-wide v0, 0x4072c00000000000L    # 300.0

    mul-double/2addr p1, v0

    double-to-int p0, p1

    return p0
.end method

.method protected parseCharacters(Landroid/icu/text/CharsetDetector;)V
    .locals 4

    const/4 v0, 0x0

    :cond_0
    move v1, v0

    .line 124
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v2

    if-ltz v2, :cond_4

    .line 125
    iget-object v3, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteMap:[B

    aget-byte v2, v3, v2

    if-eqz v2, :cond_1

    .line 129
    iget-byte v3, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    if-ne v2, v3, :cond_2

    if-nez v1, :cond_3

    .line 130
    :cond_2
    invoke-virtual {p0, v2}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->addByte(I)V

    .line 133
    :cond_3
    iget-byte v1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
