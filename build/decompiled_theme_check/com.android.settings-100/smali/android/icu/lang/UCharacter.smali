.class public final Landroid/icu/lang/UCharacter;
.super Ljava/lang/Object;
.source "UCharacter.java"

# interfaces
.implements Landroid/icu/lang/UCharacterEnums$ECharacterCategory;
.implements Landroid/icu/lang/UCharacterEnums$ECharacterDirection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/lang/UCharacter$DummyValueIterator;,
        Landroid/icu/lang/UCharacter$UCharacterTypeIterator;,
        Landroid/icu/lang/UCharacter$BidiPairedBracketType;,
        Landroid/icu/lang/UCharacter$HangulSyllableType;,
        Landroid/icu/lang/UCharacter$NumericType;,
        Landroid/icu/lang/UCharacter$LineBreak;,
        Landroid/icu/lang/UCharacter$SentenceBreak;,
        Landroid/icu/lang/UCharacter$WordBreak;,
        Landroid/icu/lang/UCharacter$GraphemeClusterBreak;,
        Landroid/icu/lang/UCharacter$JoiningGroup;,
        Landroid/icu/lang/UCharacter$JoiningType;,
        Landroid/icu/lang/UCharacter$DecompositionType;,
        Landroid/icu/lang/UCharacter$EastAsianWidth;,
        Landroid/icu/lang/UCharacter$UnicodeBlock;
    }
.end annotation


# static fields
.field private static final APPLICATION_PROGRAM_COMMAND_:I = 0x9f

.field private static final CJK_IDEOGRAPH_COMPLEX_EIGHT_:I = 0x634c

.field private static final CJK_IDEOGRAPH_COMPLEX_FIVE_:I = 0x4f0d

.field private static final CJK_IDEOGRAPH_COMPLEX_FOUR_:I = 0x8086

.field private static final CJK_IDEOGRAPH_COMPLEX_HUNDRED_:I = 0x4f70

.field private static final CJK_IDEOGRAPH_COMPLEX_NINE_:I = 0x7396

.field private static final CJK_IDEOGRAPH_COMPLEX_ONE_:I = 0x58f9

.field private static final CJK_IDEOGRAPH_COMPLEX_SEVEN_:I = 0x67d2

.field private static final CJK_IDEOGRAPH_COMPLEX_SIX_:I = 0x9678

.field private static final CJK_IDEOGRAPH_COMPLEX_TEN_:I = 0x62fe

.field private static final CJK_IDEOGRAPH_COMPLEX_THOUSAND_:I = 0x4edf

.field private static final CJK_IDEOGRAPH_COMPLEX_THREE_:I = 0x53c3

.field private static final CJK_IDEOGRAPH_COMPLEX_TWO_:I = 0x8cb3

.field private static final CJK_IDEOGRAPH_COMPLEX_ZERO_:I = 0x96f6

.field private static final CJK_IDEOGRAPH_EIGHTH_:I = 0x516b

.field private static final CJK_IDEOGRAPH_FIFTH_:I = 0x4e94

.field private static final CJK_IDEOGRAPH_FIRST_:I = 0x4e00

.field private static final CJK_IDEOGRAPH_FOURTH_:I = 0x56db

.field private static final CJK_IDEOGRAPH_HUNDRED_:I = 0x767e

.field private static final CJK_IDEOGRAPH_HUNDRED_MILLION_:I = 0x5104

.field private static final CJK_IDEOGRAPH_NINETH_:I = 0x4e5d

.field private static final CJK_IDEOGRAPH_SECOND_:I = 0x4e8c

.field private static final CJK_IDEOGRAPH_SEVENTH_:I = 0x4e03

.field private static final CJK_IDEOGRAPH_SIXTH_:I = 0x516d

.field private static final CJK_IDEOGRAPH_TEN_:I = 0x5341

.field private static final CJK_IDEOGRAPH_TEN_THOUSAND_:I = 0x824c

.field private static final CJK_IDEOGRAPH_THIRD_:I = 0x4e09

.field private static final CJK_IDEOGRAPH_THOUSAND_:I = 0x5343

.field private static final DELETE_:I = 0x7f

.field private static final FIGURE_SPACE_:I = 0x2007

.field public static final FOLD_CASE_DEFAULT:I = 0x0

.field public static final FOLD_CASE_EXCLUDE_SPECIAL_I:I = 0x1

.field private static final IDEOGRAPHIC_NUMBER_ZERO_:I = 0x3007

.field private static final LAST_CHAR_MASK_:I = 0xffff

.field public static final MAX_CODE_POINT:I = 0x10ffff

.field public static final MAX_HIGH_SURROGATE:C = '\udbff'

.field public static final MAX_LOW_SURROGATE:C = '\udfff'

.field public static final MAX_RADIX:I = 0x24

.field public static final MAX_SURROGATE:C = '\udfff'

.field public static final MAX_VALUE:I = 0x10ffff

.field public static final MIN_CODE_POINT:I = 0x0

.field public static final MIN_HIGH_SURROGATE:C = '\ud800'

.field public static final MIN_LOW_SURROGATE:C = '\udc00'

.field public static final MIN_RADIX:I = 0x2

.field public static final MIN_SUPPLEMENTARY_CODE_POINT:I = 0x10000

.field public static final MIN_SURROGATE:C = '\ud800'

.field public static final MIN_VALUE:I = 0x0

.field private static final NARROW_NO_BREAK_SPACE_:I = 0x202f

.field private static final NO_BREAK_SPACE_:I = 0xa0

.field public static final NO_NUMERIC_VALUE:D = -1.23456789E8

.field public static final REPLACEMENT_CHAR:I = 0xfffd

.field public static final SUPPLEMENTARY_MIN_VALUE:I = 0x10000

.field public static final TITLECASE_NO_BREAK_ADJUSTMENT:I = 0x200

.field public static final TITLECASE_NO_LOWERCASE:I = 0x100

.field private static final TO_TITLE_WHOLE_STRING_NO_LOWERCASE:Landroid/icu/text/CaseMap$Title;

.field private static final UNIT_SEPARATOR_:I = 0x1f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4548
    invoke-static {}, Landroid/icu/text/CaseMap;->toTitle()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/CaseMap$Title;->wholeString()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/CaseMap$Title;->noLowercase()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    sput-object v0, Landroid/icu/lang/UCharacter;->TO_TITLE_WHOLE_STRING_NO_LOWERCASE:Landroid/icu/text/CaseMap$Title;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charCount(I)I
    .locals 0

    .line 5232
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    return p0
.end method

.method public static final codePointAt(Ljava/lang/CharSequence;I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 5258
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 5259
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5260
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5261
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    .line 5262
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5263
    invoke-static {p1, p0}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static final codePointAt([CI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 5280
    aget-char p1, p0, p1

    .line 5281
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5282
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 5283
    aget-char p0, p0, v0

    .line 5284
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5285
    invoke-static {p1, p0}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static final codePointAt([CII)I
    .locals 2

    if-ge p1, p2, :cond_1

    .line 5303
    array-length v0, p0

    if-gt p2, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 5306
    aget-char p1, p0, p1

    .line 5307
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ge v0, p2, :cond_0

    .line 5309
    aget-char p0, p0, v0

    .line 5310
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5311
    invoke-static {p1, p0}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    return p1

    .line 5304
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static final codePointBefore(Ljava/lang/CharSequence;I)I
    .locals 2

    add-int/lit8 p1, p1, -0x1

    .line 5328
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 5329
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 5331
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    .line 5332
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5333
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static final codePointBefore([CI)I
    .locals 2

    add-int/lit8 p1, p1, -0x1

    .line 5350
    aget-char v0, p0, p1

    .line 5351
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 5353
    aget-char p0, p0, p1

    .line 5354
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5355
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static final codePointBefore([CII)I
    .locals 2

    if-le p1, p2, :cond_1

    if-ltz p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 5376
    aget-char v0, p0, p1

    .line 5377
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    if-le p1, p2, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 5379
    aget-char p0, p0, p1

    .line 5380
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5381
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    return v0

    .line 5374
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static codePointCount(Ljava/lang/CharSequence;II)I
    .locals 3

    if-ltz p1, :cond_3

    if-lt p2, p1, :cond_3

    .line 5446
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    sub-int v0, p2, p1

    :cond_0
    :goto_0
    if-le p2, p1, :cond_2

    add-int/lit8 p2, p2, -0x1

    .line 5454
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    :cond_1
    const v2, 0xdc00

    if-lt v1, v2, :cond_0

    const v2, 0xdfff

    if-gt v1, v2, :cond_0

    if-le p2, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 5456
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xd800

    if-lt v1, v2, :cond_1

    const v2, 0xdbff

    if-gt v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v0

    .line 5447
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") or limit ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") invalid or out of range 0, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5449
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static codePointCount([CII)I
    .locals 3

    if-ltz p1, :cond_3

    if-lt p2, p1, :cond_3

    .line 5475
    array-length v0, p0

    if-gt p2, v0, :cond_3

    sub-int v0, p2, p1

    :cond_0
    :goto_0
    if-le p2, p1, :cond_2

    add-int/lit8 p2, p2, -0x1

    .line 5483
    aget-char v1, p0, p2

    :cond_1
    const v2, 0xdc00

    if-lt v1, v2, :cond_0

    const v2, 0xdfff

    if-gt v1, v2, :cond_0

    if-le p2, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 5485
    aget-char v1, p0, p2

    const v2, 0xd800

    if-lt v1, v2, :cond_1

    const v2, 0xdbff

    if-gt v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v0

    .line 5476
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") or limit ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") invalid or out of range 0, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static digit(I)I
    .locals 1

    .line 3218
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->digit(I)I

    move-result p0

    return p0
.end method

.method public static digit(II)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-gt v1, p1, :cond_2

    const/16 v1, 0x24

    if-gt p1, v1, :cond_2

    .line 3193
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->digit(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 3196
    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->getEuropeanDigit(I)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-ge p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    return p0

    :cond_2
    return v0
.end method

.method public static foldCase(II)I
    .locals 1

    .line 4671
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UCaseProps;->fold(II)I

    move-result p0

    return p0
.end method

.method public static foldCase(IZ)I
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 4606
    invoke-static {p0, p1}, Landroid/icu/lang/UCharacter;->foldCase(II)I

    move-result p0

    return p0
.end method

.method public static final foldCase(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 4689
    invoke-static {p1, p0}, Landroid/icu/impl/CaseMapImpl;->fold(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static foldCase(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 4626
    invoke-static {p0, p1}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static forDigit(II)C
    .locals 0

    .line 5122
    invoke-static {p0, p1}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    return p0
.end method

.method public static getAge(I)Landroid/icu/util/VersionInfo;
    .locals 1

    if-ltz p0, :cond_0

    const v0, 0x10ffff

    if-gt p0, v0, :cond_0

    .line 4906
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getAge(I)Landroid/icu/util/VersionInfo;

    move-result-object p0

    return-object p0

    .line 4904
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Codepoint out of bounds"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBidiPairedBracket(I)I
    .locals 1

    .line 3865
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UBiDiProps;->getPairedBracket(I)I

    move-result p0

    return p0
.end method

.method private static getCaseLocale(Landroid/icu/util/ULocale;)I
    .locals 0

    if-nez p0, :cond_0

    .line 4389
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p0

    .line 4391
    :cond_0
    invoke-static {p0}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Landroid/icu/util/ULocale;)I

    move-result p0

    return p0
.end method

.method private static getCaseLocale(Ljava/util/Locale;)I
    .locals 0

    if-nez p0, :cond_0

    .line 4382
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 4384
    :cond_0
    invoke-static {p0}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Ljava/util/Locale;)I

    move-result p0

    return p0
.end method

.method public static getCharFromExtendedName(Ljava/lang/String;)I
    .locals 2

    .line 4092
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getCharFromName(Ljava/lang/String;)I
    .locals 2

    .line 4053
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getCharFromName1_0(Ljava/lang/String;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public static getCharFromNameAlias(Ljava/lang/String;)I
    .locals 2

    .line 4105
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getCodePoint(C)I
    .locals 1

    .line 4326
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isLegal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    .line 4329
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal codepoint"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCodePoint(CC)I
    .locals 1

    .line 4310
    invoke-static {p0, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4311
    invoke-static {p0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    .line 4313
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal surrogate characters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCombiningClass(I)I
    .locals 1

    .line 3875
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result p0

    return p0
.end method

.method private static getDefaultCaseLocale()I
    .locals 1

    .line 4377
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public static getDirection(I)I
    .locals 1

    .line 3815
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result p0

    return p0
.end method

.method public static getDirectionality(I)B
    .locals 0

    .line 5433
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getDirection(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static getExtendedName(I)Ljava/lang/String;
    .locals 2

    .line 4008
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtendedNameIterator()Landroid/icu/util/ValueIterator;
    .locals 3

    .line 4886
    new-instance v0, Landroid/icu/lang/UCharacterNameIterator;

    sget-object v1, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacterNameIterator;-><init>(Landroid/icu/impl/UCharacterName;I)V

    return-object v0
.end method

.method public static getHanNumericValue(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/16 p0, 0x2710

    return p0

    :sswitch_1
    const/4 p0, 0x4

    return p0

    :sswitch_2
    const/16 p0, 0xa

    return p0

    :sswitch_3
    const/4 p0, 0x6

    return p0

    :sswitch_4
    const/16 p0, 0x8

    return p0

    :sswitch_5
    const p0, 0x5f5e100

    return p0

    :sswitch_6
    const/16 p0, 0x64

    return p0

    :sswitch_7
    const/16 p0, 0x3e8

    return p0

    :sswitch_8
    const/4 p0, 0x5

    return p0

    :sswitch_9
    const/4 p0, 0x2

    return p0

    :sswitch_a
    const/16 p0, 0x9

    return p0

    :sswitch_b
    const/4 p0, 0x3

    return p0

    :sswitch_c
    const/4 p0, 0x7

    return p0

    :sswitch_d
    const/4 p0, 0x1

    return p0

    :sswitch_e
    const/4 p0, 0x0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3007 -> :sswitch_e
        0x4e00 -> :sswitch_d
        0x4e03 -> :sswitch_c
        0x4e09 -> :sswitch_b
        0x4e5d -> :sswitch_a
        0x4e8c -> :sswitch_9
        0x4e94 -> :sswitch_8
        0x4edf -> :sswitch_7
        0x4f0d -> :sswitch_8
        0x4f70 -> :sswitch_6
        0x5104 -> :sswitch_5
        0x516b -> :sswitch_4
        0x516d -> :sswitch_3
        0x5341 -> :sswitch_2
        0x5343 -> :sswitch_7
        0x53c3 -> :sswitch_b
        0x56db -> :sswitch_1
        0x58f9 -> :sswitch_d
        0x62fe -> :sswitch_2
        0x634c -> :sswitch_4
        0x67d2 -> :sswitch_c
        0x7396 -> :sswitch_a
        0x767e -> :sswitch_6
        0x8086 -> :sswitch_1
        0x824c -> :sswitch_0
        0x8cb3 -> :sswitch_9
        0x9678 -> :sswitch_3
        0x96f6 -> :sswitch_e
    .end sparse-switch
.end method

.method public static getISOComment(I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIntPropertyMaxValue(I)I
    .locals 1

    .line 5115
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getIntPropertyMaxValue(I)I

    move-result p0

    return p0
.end method

.method public static getIntPropertyMinValue(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static getIntPropertyValue(II)I
    .locals 1

    .line 5023
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UCharacterProperty;->getIntPropertyValue(II)I

    move-result p0

    return p0
.end method

.method public static getMirror(I)I
    .locals 1

    .line 3846
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UBiDiProps;->getMirror(I)I

    move-result p0

    return p0
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 2

    .line 3953
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 3963
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3964
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3967
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3968
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3969
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    if-eqz v1, :cond_1

    .line 3970
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3971
    :cond_1
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3968
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 3973
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getName1_0(I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getName1_0Iterator()Landroid/icu/util/ValueIterator;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4855
    new-instance v0, Landroid/icu/lang/UCharacter$DummyValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/lang/UCharacter$DummyValueIterator;-><init>(Landroid/icu/lang/UCharacter$1;)V

    return-object v0
.end method

.method public static getNameAlias(I)Ljava/lang/String;
    .locals 2

    .line 4023
    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNameIterator()Landroid/icu/util/ValueIterator;
    .locals 3

    .line 4841
    new-instance v0, Landroid/icu/lang/UCharacterNameIterator;

    sget-object v1, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacterNameIterator;-><init>(Landroid/icu/impl/UCharacterName;I)V

    return-object v0
.end method

.method public static getNumericValue(I)I
    .locals 1

    .line 3236
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getNumericValue(I)I

    move-result p0

    return p0
.end method

.method public static getPropertyEnum(Ljava/lang/CharSequence;)I
    .locals 3

    .line 4167
    sget-object v0, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UPropertyAliases;->getPropertyEnum(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 4169
    :cond_0
    new-instance v0, Landroid/icu/impl/IllegalIcuArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPropertyName(II)Ljava/lang/String;
    .locals 1

    .line 4142
    sget-object v0, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyName(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPropertyValueEnum(ILjava/lang/CharSequence;)I
    .locals 2

    .line 4277
    sget-object v0, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    .line 4279
    :cond_0
    new-instance p0, Landroid/icu/impl/IllegalIcuArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPropertyValueEnumNoThrow(ILjava/lang/CharSequence;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4295
    sget-object v0, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueEnumNoThrow(ILjava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public static getPropertyValueName(III)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x1002

    if-eq p0, v0, :cond_0

    const/16 v1, 0x1010

    if-eq p0, v1, :cond_0

    const/16 v1, 0x1011

    if-ne p0, v1, :cond_1

    .line 4228
    :cond_0
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getIntPropertyMinValue(I)I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 4230
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getIntPropertyMaxValue(I)I

    move-result v0

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_1

    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    .line 4236
    :try_start_0
    sget-object v0, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1, p2}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueName(III)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    .line 4243
    :cond_1
    sget-object v0, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1, p2}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueName(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringPropertyValue(III)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p0, :cond_0

    const/16 v0, 0x40

    if-lt p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x1000

    if-lt p0, v0, :cond_2

    const/16 v0, 0x1016

    if-ge p0, v0, :cond_2

    .line 5040
    :cond_1
    invoke-static {p1, p0}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result p1

    invoke-static {p0, p1, p2}, Landroid/icu/lang/UCharacter;->getPropertyValueName(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p2, 0x3000

    if-ne p0, p2, :cond_3

    .line 5044
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getUnicodeNumericValue(I)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p2, 0x1

    packed-switch p0, :pswitch_data_0

    .line 5062
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal Property Enum"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5060
    :pswitch_0
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toUpperCase(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5059
    :pswitch_1
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getName1_0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5058
    :pswitch_2
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toTitleCase(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5057
    :pswitch_3
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toUpperCase(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5056
    :pswitch_4
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toTitleCase(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5055
    :pswitch_5
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toLowerCase(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5054
    :pswitch_6
    invoke-static {p1, p2}, Landroid/icu/lang/UCharacter;->foldCase(IZ)I

    move-result p0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5053
    :pswitch_7
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5052
    :pswitch_8
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toLowerCase(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5049
    :pswitch_9
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getISOComment(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5051
    :pswitch_a
    invoke-static {p1, p2}, Landroid/icu/lang/UCharacter;->foldCase(IZ)I

    move-result p0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5050
    :pswitch_b
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5048
    :pswitch_c
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getAge(I)Landroid/icu/util/VersionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4000
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getType(I)I
    .locals 1

    .line 3292
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getType(I)I

    move-result p0

    return p0
.end method

.method public static getTypeIterator()Landroid/icu/util/RangeValueIterator;
    .locals 1

    .line 4781
    new-instance v0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;

    invoke-direct {v0}, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;-><init>()V

    return-object v0
.end method

.method public static getUnicodeNumericValue(I)D
    .locals 2

    .line 3257
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getUnicodeNumericValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getUnicodeVersion()Landroid/icu/util/VersionInfo;
    .locals 1

    .line 3938
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    iget-object v0, v0, Landroid/icu/impl/UCharacterProperty;->m_unicodeVersion_:Landroid/icu/util/VersionInfo;

    return-object v0
.end method

.method public static hasBinaryProperty(II)Z
    .locals 1

    .line 4935
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UCharacterProperty;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method

.method public static isBMP(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBaseForm(I)Z
    .locals 2

    .line 3789
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isDefined(I)Z
    .locals 0

    .line 3307
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDigit(I)Z
    .locals 1

    .line 3323
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHighSurrogate(C)Z
    .locals 0

    .line 5199
    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p0

    return p0
.end method

.method public static isISOControl(I)Z
    .locals 1

    if-ltz p0, :cond_1

    const/16 v0, 0x9f

    if-gt p0, v0, :cond_1

    const/16 v0, 0x1f

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-lt p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isIdentifierIgnorable(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x9f

    if-gt p0, v2, :cond_3

    .line 3615
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd

    if-le p0, v2, :cond_1

    :cond_0
    const/16 v2, 0x1c

    if-lt p0, v2, :cond_2

    const/16 v2, 0x1f

    if-le p0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0

    .line 3619
    :cond_3
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/16 v2, 0x10

    if-ne p0, v2, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    return v0
.end method

.method public static isJavaIdentifierPart(I)Z
    .locals 0

    int-to-char p0, p0

    .line 3423
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result p0

    return p0
.end method

.method public static isJavaIdentifierStart(I)Z
    .locals 0

    int-to-char p0, p0

    .line 3412
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result p0

    return p0
.end method

.method public static isJavaLetter(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3387
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isJavaIdentifierStart(I)Z

    move-result p0

    return p0
.end method

.method public static isJavaLetterOrDigit(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3401
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isJavaIdentifierPart(I)Z

    move-result p0

    return p0
.end method

.method public static isLegal(I)Z
    .locals 3

    const/4 v0, 0x0

    if-gez p0, :cond_0

    return v0

    :cond_0
    const v1, 0xd800

    const/4 v2, 0x1

    if-ge p0, v1, :cond_1

    return v2

    :cond_1
    const v1, 0xdfff

    if-gt p0, v1, :cond_2

    return v0

    .line 3900
    :cond_2
    invoke-static {p0}, Landroid/icu/impl/UCharacterUtility;->isNonCharacter(I)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    const v1, 0x10ffff

    if-gt p0, v1, :cond_4

    move v0, v2

    :cond_4
    return v0
.end method

.method public static isLegal(Ljava/lang/String;)Z
    .locals 5

    .line 3920
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3924
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 3925
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->isLegal(I)Z

    move-result v4

    if-nez v4, :cond_0

    return v1

    .line 3922
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isLetter(I)Z
    .locals 1

    .line 3350
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    and-int/lit8 p0, p0, 0x3e

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLetterOrDigit(I)Z
    .locals 1

    .line 3367
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    and-int/lit16 p0, p0, 0x23e

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLowSurrogate(C)Z
    .locals 0

    .line 5209
    invoke-static {p0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p0

    return p0
.end method

.method public static isLowerCase(I)Z
    .locals 1

    .line 3441
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMirrored(I)Z
    .locals 1

    .line 3828
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UBiDiProps;->isMirrored(I)Z

    move-result p0

    return p0
.end method

.method public static isPrintable(I)Z
    .locals 1

    .line 3770
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSpace(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x20

    if-gt p0, v0, :cond_1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSpaceChar(I)Z
    .locals 1

    .line 3496
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    and-int/lit16 p0, p0, 0x7000

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupplementary(I)Z
    .locals 1

    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_0

    const v0, 0x10ffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isSupplementaryCodePoint(I)Z
    .locals 0

    .line 5189
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result p0

    return p0
.end method

.method public static final isSurrogatePair(CC)Z
    .locals 0

    .line 5220
    invoke-static {p0, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p0

    return p0
.end method

.method public static isTitleCase(I)Z
    .locals 1

    .line 3517
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isUAlphabetic(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 4946
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method

.method public static isULowercase(I)Z
    .locals 1

    const/16 v0, 0x16

    .line 4957
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method

.method public static isUUppercase(I)Z
    .locals 1

    const/16 v0, 0x1e

    .line 4968
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method

.method public static isUWhiteSpace(I)Z
    .locals 1

    const/16 v0, 0x1f

    .line 4980
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method

.method public static isUnicodeIdentifierPart(I)Z
    .locals 3

    .line 3550
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const v2, 0x40077e

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 3561
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isIdentifierIgnorable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isUnicodeIdentifierStart(I)Z
    .locals 1

    .line 3587
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    and-int/lit16 p0, p0, 0x43e

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUpperCase(I)Z
    .locals 1

    .line 3641
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isValidCodePoint(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const v0, 0x10ffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWhitespace(I)Z
    .locals 2

    .line 3476
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    and-int/lit16 v0, v0, 0x7000

    if-eqz v0, :cond_0

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2007

    if-eq p0, v0, :cond_0

    const/16 v0, 0x202f

    if-ne p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x9

    if-lt p0, v0, :cond_1

    const/16 v0, 0xd

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_2

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public static offsetByCodePoints(Ljava/lang/CharSequence;II)I
    .locals 7

    if-ltz p1, :cond_8

    .line 5504
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_8

    const v0, 0xdbff

    const v1, 0xd800

    const v2, 0xdfff

    const v3, 0xdc00

    if-gez p2, :cond_3

    :cond_0
    add-int/lit8 p2, p2, 0x1

    if-gtz p2, :cond_7

    add-int/lit8 p1, p1, -0x1

    .line 5511
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    :cond_1
    if-lt v4, v3, :cond_0

    if-gt v4, v2, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 5513
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-lt v4, v1, :cond_2

    if-le v4, v0, :cond_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    if-lez p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 5522
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_7

    add-int/lit8 v5, p1, 0x1

    .line 5524
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    :goto_1
    if-lt p1, v1, :cond_6

    if-gt p1, v0, :cond_6

    if-ge v5, v4, :cond_6

    add-int/lit8 p1, v5, 0x1

    .line 5526
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-lt v5, v3, :cond_4

    if-le v5, v2, :cond_5

    :cond_4
    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_5

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_5
    move v6, v5

    move v5, p1

    move p1, v6

    goto :goto_1

    :cond_6
    move p1, v5

    goto :goto_0

    :cond_7
    return p1

    .line 5505
    :cond_8
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") out of range 0, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5506
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static offsetByCodePoints([CIIII)I
    .locals 7

    add-int/2addr p2, p1

    const-string v0, "index ( "

    if-ltz p1, :cond_a

    if-lt p2, p1, :cond_a

    .line 5553
    array-length v1, p0

    if-gt p2, v1, :cond_a

    if-lt p3, p1, :cond_a

    if-gt p3, p2, :cond_a

    const v1, 0xdbff

    const v2, 0xdfff

    const v3, 0xd800

    const-string v4, ")"

    const v5, 0xdc00

    if-gez p4, :cond_4

    :cond_0
    add-int/lit8 p4, p4, 0x1

    if-gtz p4, :cond_9

    add-int/lit8 p3, p3, -0x1

    .line 5562
    aget-char p2, p0, p3

    if-lt p3, p1, :cond_3

    :cond_1
    if-lt p2, v5, :cond_0

    if-gt p2, v2, :cond_0

    if-le p3, p1, :cond_0

    add-int/lit8 p3, p3, -0x1

    .line 5569
    aget-char p2, p0, p3

    if-lt p2, v3, :cond_2

    if-le p2, v1, :cond_1

    :cond_2
    add-int/lit8 p4, p4, 0x1

    if-lez p4, :cond_1

    add-int/lit8 p3, p3, 0x1

    return p3

    .line 5564
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") < start ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_9

    add-int/lit8 p1, p3, 0x1

    .line 5579
    aget-char p3, p0, p3

    if-gt p1, p2, :cond_8

    :goto_1
    if-lt p3, v3, :cond_7

    if-gt p3, v1, :cond_7

    if-ge p1, p2, :cond_7

    add-int/lit8 p3, p1, 0x1

    .line 5586
    aget-char p1, p0, p1

    if-lt p1, v5, :cond_5

    if-le p1, v2, :cond_6

    :cond_5
    add-int/lit8 p4, p4, -0x1

    if-gez p4, :cond_6

    add-int/lit8 p3, p3, -0x1

    return p3

    :cond_6
    move v6, p3

    move p3, p1

    move p1, v6

    goto :goto_1

    :cond_7
    move p3, p1

    goto :goto_0

    .line 5581
    :cond_8
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") > limit ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    return p3

    .line 5554
    :cond_a
    new-instance p4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") out of range "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in array 0, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method public static final toChars(I[CI)I
    .locals 0

    .line 5400
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->toChars(I[CI)I

    move-result p0

    return p0
.end method

.method public static final toChars(I)[C
    .locals 0

    .line 5412
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    return-object p0
.end method

.method public static final toCodePoint(CC)I
    .locals 0

    .line 5245
    invoke-static {p0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0
.end method

.method public static toLowerCase(I)I
    .locals 1

    .line 3663
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCaseProps;->tolower(I)I

    move-result p0

    return p0
.end method

.method public static toLowerCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4437
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getCaseLocale(Landroid/icu/util/ULocale;)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4351
    invoke-static {}, Landroid/icu/lang/UCharacter;->getDefaultCaseLocale()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Landroid/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toLowerCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4426
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getCaseLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    if-ltz p0, :cond_2

    const v0, 0x10ffff

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_1

    int-to-char p0, p0

    .line 3684
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3687
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toTitleCase(I)I
    .locals 1

    .line 3710
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCaseProps;->totitle(I)I

    move-result p0

    return p0
.end method

.method public static toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 4484
    invoke-static {p0, p1, p2, v0}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    if-nez p0, :cond_0

    .line 4511
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p0

    .line 4513
    :cond_0
    invoke-static {p0, p3, p2}, Landroid/icu/impl/CaseMapImpl;->getTitleBreakIterator(Landroid/icu/util/ULocale;ILandroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;

    move-result-object p2

    .line 4514
    invoke-virtual {p2, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 4515
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getCaseLocale(Landroid/icu/util/ULocale;)I

    move-result p0

    invoke-static {p0, p3, p2, p1}, Landroid/icu/impl/CaseMapImpl;->toTitle(IILandroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toTitleCase(Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;
    .locals 2

    .line 4373
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Landroid/icu/lang/UCharacter;->toTitleCase(Ljava/util/Locale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toTitleCase(Ljava/util/Locale;Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 4461
    invoke-static {p0, p1, p2, v0}, Landroid/icu/lang/UCharacter;->toTitleCase(Ljava/util/Locale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toTitleCase(Ljava/util/Locale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    if-nez p0, :cond_0

    .line 4575
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 4577
    :cond_0
    invoke-static {p0, p3, p2}, Landroid/icu/impl/CaseMapImpl;->getTitleBreakIterator(Ljava/util/Locale;ILandroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;

    move-result-object p2

    .line 4578
    invoke-virtual {p2, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 4579
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getCaseLocale(Ljava/util/Locale;)I

    move-result p0

    invoke-static {p0, p3, p2, p1}, Landroid/icu/impl/CaseMapImpl;->toTitle(IILandroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toTitleFirst(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4544
    sget-object v0, Landroid/icu/lang/UCharacter;->TO_TITLE_WHOLE_STRING_NO_LOWERCASE:Landroid/icu/text/CaseMap$Title;

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/icu/text/CaseMap$Title;->apply(Ljava/util/Locale;Landroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUpperCase(I)I
    .locals 1

    .line 3732
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCaseProps;->toupper(I)I

    move-result p0

    return p0
.end method

.method public static toUpperCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4414
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getCaseLocale(Landroid/icu/util/ULocale;)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4340
    invoke-static {}, Landroid/icu/lang/UCharacter;->getDefaultCaseLocale()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Landroid/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUpperCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4403
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getCaseLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
