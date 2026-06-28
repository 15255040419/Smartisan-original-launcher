.class public Landroid/icu/impl/number/CurrencySpacingEnabledModifier;
.super Landroid/icu/impl/number/ConstantMultiFieldModifier;
.source "CurrencySpacingEnabledModifier.java"


# static fields
.field static final IN_CURRENCY:S = 0x0s

.field static final IN_NUMBER:S = 0x1s

.field static final PREFIX:B = 0x0t

.field static final SUFFIX:B = 0x1t

.field private static final UNISET_DIGIT:Landroid/icu/text/UnicodeSet;

.field private static final UNISET_NOTS:Landroid/icu/text/UnicodeSet;


# instance fields
.field private final afterPrefixInsert:Ljava/lang/String;

.field private final afterPrefixUnicodeSet:Landroid/icu/text/UnicodeSet;

.field private final beforeSuffixInsert:Ljava/lang/String;

.field private final beforeSuffixUnicodeSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[:digit:]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->UNISET_DIGIT:Landroid/icu/text/UnicodeSet;

    .line 18
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[:^S:]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->UNISET_NOTS:Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/number/NumberStringBuilder;Landroid/icu/impl/number/NumberStringBuilder;ZLandroid/icu/text/DecimalFormatSymbols;)V
    .locals 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/number/ConstantMultiFieldModifier;-><init>(Landroid/icu/impl/number/NumberStringBuilder;Landroid/icu/impl/number/NumberStringBuilder;Z)V

    .line 38
    invoke-virtual {p1}, Landroid/icu/impl/number/NumberStringBuilder;->length()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p3, :cond_1

    invoke-virtual {p1}, Landroid/icu/impl/number/NumberStringBuilder;->length()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-virtual {p1, p3}, Landroid/icu/impl/number/NumberStringBuilder;->fieldAt(I)Landroid/icu/text/NumberFormat$Field;

    move-result-object p3

    sget-object v3, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    if-ne p3, v3, :cond_1

    .line 39
    invoke-virtual {p1}, Landroid/icu/impl/number/NumberStringBuilder;->getLastCodePoint()I

    move-result p1

    .line 40
    invoke-static {p4, v0, v0}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->getUnicodeSet(Landroid/icu/text/DecimalFormatSymbols;SB)Landroid/icu/text/UnicodeSet;

    move-result-object p3

    .line 41
    invoke-virtual {p3, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    invoke-static {p4, v1, v0}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->getUnicodeSet(Landroid/icu/text/DecimalFormatSymbols;SB)Landroid/icu/text/UnicodeSet;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixUnicodeSet:Landroid/icu/text/UnicodeSet;

    .line 43
    iget-object p1, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixUnicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 44
    invoke-static {p4, v0}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->getInsertString(Landroid/icu/text/DecimalFormatSymbols;B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixInsert:Ljava/lang/String;

    goto :goto_0

    .line 46
    :cond_0
    iput-object v2, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixUnicodeSet:Landroid/icu/text/UnicodeSet;

    .line 47
    iput-object v2, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixInsert:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_1
    iput-object v2, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixUnicodeSet:Landroid/icu/text/UnicodeSet;

    .line 51
    iput-object v2, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixInsert:Ljava/lang/String;

    .line 53
    :goto_0
    invoke-virtual {p2}, Landroid/icu/impl/number/NumberStringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p2, v0}, Landroid/icu/impl/number/NumberStringBuilder;->fieldAt(I)Landroid/icu/text/NumberFormat$Field;

    move-result-object p1

    sget-object p3, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, p3, :cond_3

    .line 54
    invoke-virtual {p2}, Landroid/icu/impl/number/NumberStringBuilder;->getLastCodePoint()I

    move-result p1

    .line 55
    invoke-static {p4, v0, v1}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->getUnicodeSet(Landroid/icu/text/DecimalFormatSymbols;SB)Landroid/icu/text/UnicodeSet;

    move-result-object p2

    .line 56
    invoke-virtual {p2, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 57
    invoke-static {p4, v1, v1}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->getUnicodeSet(Landroid/icu/text/DecimalFormatSymbols;SB)Landroid/icu/text/UnicodeSet;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixUnicodeSet:Landroid/icu/text/UnicodeSet;

    .line 58
    iget-object p1, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixUnicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 59
    invoke-static {p4, v1}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->getInsertString(Landroid/icu/text/DecimalFormatSymbols;B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixInsert:Ljava/lang/String;

    goto :goto_1

    .line 61
    :cond_2
    iput-object v2, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixUnicodeSet:Landroid/icu/text/UnicodeSet;

    .line 62
    iput-object v2, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixInsert:Ljava/lang/String;

    goto :goto_1

    .line 65
    :cond_3
    iput-object v2, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixUnicodeSet:Landroid/icu/text/UnicodeSet;

    .line 66
    iput-object v2, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixInsert:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public static applyCurrencySpacing(Landroid/icu/impl/number/NumberStringBuilder;IIIILandroid/icu/text/DecimalFormatSymbols;)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez p4, :cond_1

    move p4, v0

    goto :goto_1

    :cond_1
    move p4, v1

    :goto_1
    sub-int v3, p3, p1

    sub-int/2addr v3, p2

    if-lez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    add-int/2addr p1, p2

    .line 99
    invoke-static {p0, p1, v1, p5}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->applyCurrencySpacingAffix(Landroid/icu/impl/number/NumberStringBuilder;IBLandroid/icu/text/DecimalFormatSymbols;)I

    move-result p1

    add-int/2addr v1, p1

    :cond_3
    if-eqz p4, :cond_4

    if-eqz v3, :cond_4

    add-int/2addr p3, v1

    .line 102
    invoke-static {p0, p3, v0, p5}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->applyCurrencySpacingAffix(Landroid/icu/impl/number/NumberStringBuilder;IBLandroid/icu/text/DecimalFormatSymbols;)I

    move-result p0

    add-int/2addr v1, p0

    :cond_4
    return v1
.end method

.method private static applyCurrencySpacingAffix(Landroid/icu/impl/number/NumberStringBuilder;IBLandroid/icu/text/DecimalFormatSymbols;)I
    .locals 3

    if-nez p2, :cond_0

    add-int/lit8 v0, p1, -0x1

    .line 113
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/NumberStringBuilder;->fieldAt(I)Landroid/icu/text/NumberFormat$Field;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/NumberStringBuilder;->fieldAt(I)Landroid/icu/text/NumberFormat$Field;

    move-result-object v0

    .line 114
    :goto_0
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    if-nez p2, :cond_2

    .line 117
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/NumberStringBuilder;->codePointBefore(I)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/NumberStringBuilder;->codePointAt(I)I

    move-result v0

    .line 118
    :goto_1
    invoke-static {p3, v2, p2}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->getUnicodeSet(Landroid/icu/text/DecimalFormatSymbols;SB)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-nez p2, :cond_4

    .line 122
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/NumberStringBuilder;->codePointAt(I)I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/NumberStringBuilder;->codePointBefore(I)I

    move-result v0

    :goto_2
    const/4 v1, 0x1

    .line 123
    invoke-static {p3, v1, p2}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->getUnicodeSet(Landroid/icu/text/DecimalFormatSymbols;SB)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 124
    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 127
    :cond_5
    invoke-static {p3, p2}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->getInsertString(Landroid/icu/text/DecimalFormatSymbols;B)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I

    move-result p0

    return p0
.end method

.method private static getInsertString(Landroid/icu/text/DecimalFormatSymbols;B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 p1, 0x2

    .line 152
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DecimalFormatSymbols;->getPatternForCurrencySpacing(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUnicodeSet(Landroid/icu/text/DecimalFormatSymbols;SB)Landroid/icu/text/UnicodeSet;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne p2, v1, :cond_1

    move v0, v1

    .line 140
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DecimalFormatSymbols;->getPatternForCurrencySpacing(IZ)Ljava/lang/String;

    move-result-object p0

    const-string p1, "[:digit:]"

    .line 142
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 143
    sget-object p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->UNISET_DIGIT:Landroid/icu/text/UnicodeSet;

    return-object p0

    :cond_2
    const-string p1, "[:^S:]"

    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 145
    sget-object p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->UNISET_NOTS:Landroid/icu/text/UnicodeSet;

    return-object p0

    .line 147
    :cond_3
    new-instance p1, Landroid/icu/text/UnicodeSet;

    invoke-direct {p1, p0}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public apply(Landroid/icu/impl/number/NumberStringBuilder;II)I
    .locals 5

    sub-int v0, p3, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 75
    iget-object v3, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixUnicodeSet:Landroid/icu/text/UnicodeSet;

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {p1, p2}, Landroid/icu/impl/number/NumberStringBuilder;->codePointAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    iget-object v3, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixInsert:Ljava/lang/String;

    invoke-virtual {p1, p2, v3, v1}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    if-lez v0, :cond_1

    .line 80
    iget-object v0, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixUnicodeSet:Landroid/icu/text/UnicodeSet;

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p1, p3}, Landroid/icu/impl/number/NumberStringBuilder;->codePointBefore(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int v0, p3, v2

    .line 83
    iget-object v3, p0, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixInsert:Ljava/lang/String;

    invoke-virtual {p1, v0, v3, v1}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    add-int/2addr p3, v2

    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/icu/impl/number/ConstantMultiFieldModifier;->apply(Landroid/icu/impl/number/NumberStringBuilder;II)I

    move-result p0

    add-int/2addr v2, p0

    return v2
.end method
