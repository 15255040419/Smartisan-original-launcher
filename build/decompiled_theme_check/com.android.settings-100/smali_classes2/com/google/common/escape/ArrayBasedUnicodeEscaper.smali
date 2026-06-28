.class public abstract Lcom/google/common/escape/ArrayBasedUnicodeEscaper;
.super Lcom/google/common/escape/UnicodeEscaper;
.source "ArrayBasedUnicodeEscaper.java"


# instance fields
.field private final replacements:[[C

.field private final replacementsLength:I

.field private final safeMax:I

.field private final safeMaxChar:C

.field private final safeMin:I

.field private final safeMinChar:C


# direct methods
.method protected constructor <init>(Lcom/google/common/escape/ArrayBasedEscaperMap;IILjava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 99
    invoke-direct {p0}, Lcom/google/common/escape/UnicodeEscaper;-><init>()V

    .line 100
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p1}, Lcom/google/common/escape/ArrayBasedEscaperMap;->getReplacementArray()[[C

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    .line 102
    iget-object p1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    array-length p1, p1

    iput p1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacementsLength:I

    if-ge p3, p2, :cond_0

    const/4 p3, -0x1

    const p2, 0x7fffffff

    .line 109
    :cond_0
    iput p2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMin:I

    .line 110
    iput p3, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMax:I

    const p1, 0xd800

    if-lt p2, p1, :cond_1

    const p1, 0xffff

    .line 128
    iput-char p1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMinChar:C

    const/4 p1, 0x0

    .line 129
    iput-char p1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMaxChar:C

    goto :goto_0

    :cond_1
    int-to-char p1, p2

    .line 133
    iput-char p1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMinChar:C

    const p1, 0xd7ff

    .line 134
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-char p1, p1

    iput-char p1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMaxChar:C

    :goto_0
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;IILjava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-static {p1}, Lcom/google/common/escape/ArrayBasedEscaperMap;->create(Ljava/util/Map;)Lcom/google/common/escape/ArrayBasedEscaperMap;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;-><init>(Lcom/google/common/escape/ArrayBasedEscaperMap;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 144
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 145
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 147
    iget v2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacementsLength:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    :cond_0
    iget-char v2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMaxChar:C

    if-gt v1, v2, :cond_2

    iget-char v2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMinChar:C

    if-ge v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p1
.end method

.method protected final escape(I)[C
    .locals 1

    .line 163
    iget v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacementsLength:I

    if-ge p1, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    .line 169
    :cond_0
    iget v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMin:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMax:I

    if-gt p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 172
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->escapeUnsafe(I)[C

    move-result-object p0

    return-object p0
.end method

.method protected abstract escapeUnsafe(I)[C
.end method

.method protected final nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_2

    .line 179
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 180
    iget v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacementsLength:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    :cond_0
    iget-char v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMaxChar:C

    if-gt v0, v1, :cond_2

    iget-char v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMinChar:C

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p2
.end method
