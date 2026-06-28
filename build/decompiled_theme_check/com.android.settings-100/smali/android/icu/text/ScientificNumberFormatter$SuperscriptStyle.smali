.class Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;
.super Landroid/icu/text/ScientificNumberFormatter$Style;
.source "ScientificNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ScientificNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuperscriptStyle"
.end annotation


# static fields
.field private static final SUPERSCRIPT_DIGITS:[C

.field private static final SUPERSCRIPT_MINUS_SIGN:C = '\u207b'

.field private static final SUPERSCRIPT_PLUS_SIGN:C = '\u207a'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [C

    .line 191
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->SUPERSCRIPT_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x2070s
        0xb9s
        0xb2s
        0xb3s
        0x2074s
        0x2075s
        0x2076s
        0x2077s
        0x2078s
        0x2079s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, v0}, Landroid/icu/text/ScientificNumberFormatter$Style;-><init>(Landroid/icu/text/ScientificNumberFormatter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/ScientificNumberFormatter$1;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;-><init>()V

    return-void
.end method

.method private static char32AtAndAdvance(Ljava/text/AttributedCharacterIterator;)I
    .locals 3

    .line 276
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v0

    .line 277
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v1

    .line 278
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->next()C

    .line 283
    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private static copyAsSuperscript(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V
    .locals 2

    .line 262
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v0

    .line 263
    invoke-interface {p0, p1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 264
    :goto_0
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result p1

    if-ge p1, p2, :cond_1

    .line 265
    invoke-static {p0}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->char32AtAndAdvance(Ljava/text/AttributedCharacterIterator;)I

    move-result p1

    .line 266
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->digit(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 270
    sget-object v1, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->SUPERSCRIPT_DIGITS:[C

    aget-char p1, v1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 268
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 272
    :cond_1
    invoke-interface {p0, v0}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    return-void
.end method


# virtual methods
.method format(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 203
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->first()C

    const/4 v0, 0x0

    .line 206
    :goto_0
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v1

    const v2, 0xffff

    if-eq v1, v2, :cond_5

    .line 208
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v1

    .line 209
    sget-object v2, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    .line 213
    invoke-interface {p1, v1}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v1

    .line 210
    invoke-static {p1, v0, v1, p0}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 215
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v0

    .line 216
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 217
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 218
    :cond_0
    sget-object v2, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 219
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v1}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v1

    .line 220
    sget-object v2, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v2}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v2

    .line 221
    invoke-static {p1}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->char32AtAndAdvance(Ljava/text/AttributedCharacterIterator;)I

    move-result v3

    .line 222
    sget-object v4, Landroid/icu/impl/number/Parse;->UNISET_MINUS:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    invoke-static {p1, v0, v1, p0}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    const/16 v0, 0x207b

    .line 228
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 229
    :cond_1
    sget-object v4, Landroid/icu/impl/number/Parse;->UNISET_PLUS:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    invoke-static {p1, v0, v1, p0}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    const/16 v0, 0x207a

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    :goto_1
    invoke-interface {p1, v2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto :goto_2

    .line 237
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 241
    :cond_3
    sget-object v2, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v1}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v1

    .line 243
    sget-object v2, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v2}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v2

    .line 244
    invoke-static {p1, v0, v1, p0}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 249
    invoke-static {p1, v1, v2, p0}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->copyAsSuperscript(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 251
    invoke-interface {p1, v2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    :goto_2
    move v0, v2

    goto/16 :goto_0

    .line 253
    :cond_4
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    goto/16 :goto_0

    .line 256
    :cond_5
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result p2

    invoke-static {p1, v0, p2, p0}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 257
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
