.class Landroid/icu/text/EscapeTransliterator;
.super Landroid/icu/text/Transliterator;
.source "EscapeTransliterator.java"


# instance fields
.field private grokSupplementals:Z

.field private minDigits:I

.field private prefix:Ljava/lang/String;

.field private radix:I

.field private suffix:Ljava/lang/String;

.field private supplementalHandler:Landroid/icu/text/EscapeTransliterator;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/icu/text/EscapeTransliterator;)V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1, v0}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 167
    iput-object p2, p0, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Landroid/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    .line 169
    iput p4, p0, Landroid/icu/text/EscapeTransliterator;->radix:I

    .line 170
    iput p5, p0, Landroid/icu/text/EscapeTransliterator;->minDigits:I

    .line 171
    iput-boolean p6, p0, Landroid/icu/text/EscapeTransliterator;->grokSupplementals:Z

    .line 172
    iput-object p7, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    return-void
.end method

.method static register()V
    .locals 2

    .line 85
    new-instance v0, Landroid/icu/text/EscapeTransliterator$1;

    invoke-direct {v0}, Landroid/icu/text/EscapeTransliterator$1;-><init>()V

    const-string v1, "Any-Hex/Unicode"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 94
    new-instance v0, Landroid/icu/text/EscapeTransliterator$2;

    invoke-direct {v0}, Landroid/icu/text/EscapeTransliterator$2;-><init>()V

    const-string v1, "Any-Hex/Java"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 103
    new-instance v0, Landroid/icu/text/EscapeTransliterator$3;

    invoke-direct {v0}, Landroid/icu/text/EscapeTransliterator$3;-><init>()V

    const-string v1, "Any-Hex/C"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 113
    new-instance v0, Landroid/icu/text/EscapeTransliterator$4;

    invoke-direct {v0}, Landroid/icu/text/EscapeTransliterator$4;-><init>()V

    const-string v1, "Any-Hex/XML"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 122
    new-instance v0, Landroid/icu/text/EscapeTransliterator$5;

    invoke-direct {v0}, Landroid/icu/text/EscapeTransliterator$5;-><init>()V

    const-string v1, "Any-Hex/XML10"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 131
    new-instance v0, Landroid/icu/text/EscapeTransliterator$6;

    invoke-direct {v0}, Landroid/icu/text/EscapeTransliterator$6;-><init>()V

    const-string v1, "Any-Hex/Perl"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 140
    new-instance v0, Landroid/icu/text/EscapeTransliterator$7;

    invoke-direct {v0}, Landroid/icu/text/EscapeTransliterator$7;-><init>()V

    const-string v1, "Any-Hex/Plain"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 149
    new-instance v0, Landroid/icu/text/EscapeTransliterator$8;

    invoke-direct {v0}, Landroid/icu/text/EscapeTransliterator$8;-><init>()V

    const-string v1, "Any-Hex"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 3

    .line 226
    invoke-virtual {p0, p1}, Landroid/icu/text/EscapeTransliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    :goto_0
    if-eqz p0, :cond_2

    .line 228
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->size()I

    move-result p2

    if-eqz p2, :cond_1

    .line 229
    iget-object p2, p0, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 230
    iget-object p2, p0, Landroid/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 232
    :goto_1
    iget v1, p0, Landroid/icu/text/EscapeTransliterator;->radix:I

    if-ge v0, v1, :cond_0

    .line 233
    iget v2, p0, Landroid/icu/text/EscapeTransliterator;->minDigits:I

    invoke-static {p2, v0, v1, v2}, Landroid/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 227
    :cond_1
    iget-object p0, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 9

    .line 181
    iget p3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 182
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge p3, v0, :cond_4

    .line 189
    iget-boolean v5, p0, Landroid/icu/text/EscapeTransliterator;->grokSupplementals:Z

    if-eqz v5, :cond_0

    invoke-interface {p1, p3}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v5

    goto :goto_1

    :cond_0
    invoke-interface {p1, p3}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v5

    .line 190
    :goto_1
    iget-boolean v6, p0, Landroid/icu/text/EscapeTransliterator;->grokSupplementals:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    invoke-static {v5}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v6

    goto :goto_2

    :cond_1
    move v6, v7

    :goto_2
    const/high16 v8, -0x10000

    and-int/2addr v8, v5

    if-eqz v8, :cond_2

    .line 192
    iget-object v8, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    if-eqz v8, :cond_2

    .line 193
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 194
    iget-object v4, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    iget-object v4, v4, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v4, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    iget v8, v4, Landroid/icu/text/EscapeTransliterator;->radix:I

    iget v4, v4, Landroid/icu/text/EscapeTransliterator;->minDigits:I

    invoke-static {v1, v5, v8, v4}, Landroid/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    .line 197
    iget-object v4, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    iget-object v4, v4, Landroid/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v7

    goto :goto_4

    :cond_2
    if-eqz v4, :cond_3

    .line 201
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 202
    iget-object v4, p0, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    goto :goto_3

    .line 205
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 207
    :goto_3
    iget v7, p0, Landroid/icu/text/EscapeTransliterator;->radix:I

    iget v8, p0, Landroid/icu/text/EscapeTransliterator;->minDigits:I

    invoke-static {v1, v5, v7, v8}, Landroid/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    .line 208
    iget-object v5, p0, Landroid/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int v5, p3, v6

    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, p3, v5, v7}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/2addr p3, v5

    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v6

    add-int/2addr v0, v5

    goto :goto_0

    .line 216
    :cond_4
    iget p0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget p1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int p1, v0, p1

    add-int/2addr p0, p1

    iput p0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 217
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 218
    iput p3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    return-void
.end method
