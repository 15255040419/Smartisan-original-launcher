.class public abstract Lcom/google/common/escape/ArrayBasedCharEscaper;
.super Lcom/google/common/escape/CharEscaper;
.source "ArrayBasedCharEscaper.java"


# instance fields
.field private final replacements:[[C

.field private final replacementsLength:I

.field private final safeMax:C

.field private final safeMin:C


# direct methods
.method protected constructor <init>(Lcom/google/common/escape/ArrayBasedEscaperMap;CC)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/google/common/escape/CharEscaper;-><init>()V

    .line 87
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p1}, Lcom/google/common/escape/ArrayBasedEscaperMap;->getReplacementArray()[[C

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacements:[[C

    .line 89
    iget-object p1, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacements:[[C

    array-length p1, p1

    iput p1, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacementsLength:I

    if-ge p3, p2, :cond_0

    const/4 p3, 0x0

    const p2, 0xffff

    .line 96
    :cond_0
    iput-char p2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->safeMin:C

    .line 97
    iput-char p3, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->safeMax:C

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;CC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;CC)V"
        }
    .end annotation

    .line 69
    invoke-static {p1}, Lcom/google/common/escape/ArrayBasedEscaperMap;->create(Ljava/util/Map;)Lcom/google/common/escape/ArrayBasedEscaperMap;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/escape/ArrayBasedCharEscaper;-><init>(Lcom/google/common/escape/ArrayBasedEscaperMap;CC)V

    return-void
.end method


# virtual methods
.method public final escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 106
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 107
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 109
    iget v2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacementsLength:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacements:[[C

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    :cond_0
    iget-char v2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->safeMax:C

    if-gt v1, v2, :cond_2

    iget-char v2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->safeMin:C

    if-ge v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/google/common/escape/ArrayBasedCharEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p1
.end method

.method protected final escape(C)[C
    .locals 1

    .line 123
    iget v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacementsLength:I

    if-ge p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacements:[[C

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    .line 129
    :cond_0
    iget-char v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->safeMin:C

    if-lt p1, v0, :cond_1

    iget-char v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->safeMax:C

    if-gt p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 132
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/escape/ArrayBasedCharEscaper;->escapeUnsafe(C)[C

    move-result-object p0

    return-object p0
.end method

.method protected abstract escapeUnsafe(C)[C
.end method
