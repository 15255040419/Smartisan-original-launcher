.class Landroid/icu/text/CharsDictionaryMatcher;
.super Landroid/icu/text/DictionaryMatcher;
.source "CharsDictionaryMatcher.java"


# instance fields
.field private characters:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/icu/text/DictionaryMatcher;-><init>()V

    .line 21
    iput-object p1, p0, Landroid/icu/text/CharsDictionaryMatcher;->characters:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public matches(Ljava/text/CharacterIterator;I[I[II[I)I
    .locals 6

    .line 26
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;

    move-result-object p1

    .line 27
    new-instance v0, Landroid/icu/util/CharsTrie;

    iget-object p0, p0, Landroid/icu/text/CharsDictionaryMatcher;->characters:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    .line 28
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result p0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    return v1

    .line 32
    :cond_0
    invoke-virtual {v0, p0}, Landroid/icu/util/CharsTrie;->firstForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object p0

    const/4 v3, 0x1

    move v4, v3

    move v3, v1

    .line 37
    :goto_0
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ge v3, p5, :cond_2

    if-eqz p6, :cond_1

    .line 40
    invoke-virtual {v0}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result v5

    aput v5, p6, v3

    .line 42
    :cond_1
    aput v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    .line 46
    :cond_2
    sget-object v5, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-ne p0, v5, :cond_4

    goto :goto_1

    .line 49
    :cond_3
    sget-object v5, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    if-ne p0, v5, :cond_4

    goto :goto_1

    :cond_4
    if-lt v4, p2, :cond_5

    goto :goto_1

    .line 56
    :cond_5
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result p0

    if-ne p0, v2, :cond_6

    .line 63
    :goto_1
    aput v3, p4, v1

    return v4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 61
    invoke-virtual {v0, p0}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object p0

    goto :goto_0
.end method
