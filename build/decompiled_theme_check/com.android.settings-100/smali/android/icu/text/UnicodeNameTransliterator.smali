.class Landroid/icu/text/UnicodeNameTransliterator;
.super Landroid/icu/text/Transliterator;
.source "UnicodeNameTransliterator.java"


# static fields
.field static final CLOSE_DELIM:C = '}'

.field static final OPEN_DELIM:Ljava/lang/String; = "\\N{"

.field static final OPEN_DELIM_LEN:I = 0x3

.field static final _ID:Ljava/lang/String; = "Any-Name"


# direct methods
.method public constructor <init>(Landroid/icu/text/UnicodeFilter;)V
    .locals 1

    const-string v0, "Any-Name"

    .line 40
    invoke-direct {p0, v0, p1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    return-void
.end method

.method static register()V
    .locals 2

    .line 28
    new-instance v0, Landroid/icu/text/UnicodeNameTransliterator$1;

    invoke-direct {v0}, Landroid/icu/text/UnicodeNameTransliterator$1;-><init>()V

    const-string v1, "Any-Name"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeNameTransliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 86
    invoke-virtual {p2, p0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x30

    const/16 p1, 0x39

    .line 87
    invoke-virtual {p3, p0, p1}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    const/16 p1, 0x41

    const/16 p2, 0x5a

    .line 88
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    const/16 p1, 0x2d

    .line 89
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    const/16 p1, 0x20

    .line 90
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    const-string p1, "\\N{"

    .line 91
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    const/16 p1, 0x7d

    .line 92
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    const/16 p1, 0x61

    const/16 p2, 0x7a

    .line 93
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    const/16 p1, 0x3c

    .line 94
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    const/16 p1, 0x3e

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    const/16 p1, 0x28

    .line 95
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_0
    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 4

    .line 49
    iget p0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 50
    iget p3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\N{"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-ge p0, p3, :cond_1

    .line 58
    invoke-interface {p1, p0}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v1

    .line 59
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->getExtendedName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int v2, p0, v1

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p0, v2, v3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr p0, v2

    sub-int/2addr v2, v1

    add-int/2addr p3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    iget p1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int v0, p3, v0

    add-int/2addr p1, v0

    iput p1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 75
    iput p3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 76
    iput p0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    return-void
.end method
