.class Landroid/icu/text/QuantityFormatter;
.super Ljava/lang/Object;
.source "QuantityFormatter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final templates:[Landroid/icu/text/SimpleFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    new-array v0, v0, [Landroid/icu/text/SimpleFormatter;

    iput-object v0, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/text/SimpleFormatter;

    return-void
.end method

.method public static format(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 129
    invoke-static {p0, p2, v1, v0}, Landroid/icu/impl/SimpleFormatterImpl;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p0

    if-eqz p0, :cond_2

    .line 131
    :cond_0
    aget p0, v1, v2

    if-ltz p0, :cond_1

    .line 132
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p0

    aget p1, v1, v2

    add-int/2addr p0, p1

    invoke-virtual {p3, p0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 133
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p0

    aget p1, v1, v2

    add-int/2addr p0, p1

    invoke-virtual {p3, p0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p3, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 136
    invoke-virtual {p3, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_2
    :goto_0
    return-object p2
.end method

.method public static selectPlural(DLandroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;
    .locals 1

    .line 97
    instance-of v0, p2, Landroid/icu/text/DecimalFormat;

    if-eqz v0, :cond_0

    .line 98
    check-cast p2, Landroid/icu/text/DecimalFormat;

    invoke-virtual {p2, p0, p1}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(D)Landroid/icu/text/PluralRules$IFixedDecimal;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p3, p0, p1}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object p0

    .line 102
    :goto_0
    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->orOtherFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object p0

    return-object p0
.end method

.method public static selectPlural(Ljava/lang/Number;Landroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Landroid/icu/impl/StandardPlural;
    .locals 9

    .line 111
    new-instance v0, Landroid/icu/text/UFieldPosition;

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getField()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UFieldPosition;-><init>(Ljava/text/Format$Field;I)V

    .line 112
    invoke-virtual {p1, p0, p3, v0}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 114
    new-instance p1, Landroid/icu/text/PluralRules$FixedDecimal;

    .line 115
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 116
    invoke-virtual {v0}, Landroid/icu/text/UFieldPosition;->getCountVisibleFractionDigits()I

    move-result v6

    invoke-virtual {v0}, Landroid/icu/text/UFieldPosition;->getFractionDigits()J

    move-result-wide v7

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    .line 117
    invoke-virtual {p2, p1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-virtual {v0}, Landroid/icu/text/UFieldPosition;->getBeginIndex()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 119
    invoke-virtual {v0}, Landroid/icu/text/UFieldPosition;->getEndIndex()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 120
    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->orOtherFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addIfAbsent(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2

    .line 43
    invoke-static {p1}, Landroid/icu/impl/StandardPlural;->indexFromString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 44
    iget-object p0, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/text/SimpleFormatter;

    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 47
    invoke-static {p2, v0, v1}, Landroid/icu/text/SimpleFormatter;->compileMinMaxArguments(Ljava/lang/CharSequence;II)Landroid/icu/text/SimpleFormatter;

    move-result-object p2

    aput-object p2, p0, p1

    return-void
.end method

.method public format(DLandroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;)Ljava/lang/String;
    .locals 1

    .line 66
    invoke-virtual {p3, p1, p2}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {p1, p2, p3, p4}, Landroid/icu/text/QuantityFormatter;->selectPlural(DLandroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;

    move-result-object p1

    .line 68
    iget-object p2, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/text/SimpleFormatter;

    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result p1

    aget-object p1, p2, p1

    if-nez p1, :cond_0

    .line 70
    iget-object p0, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/text/SimpleFormatter;

    sget p1, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    aget-object p1, p0, p1

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/CharSequence;

    const/4 p2, 0x0

    aput-object v0, p0, p2

    .line 73
    invoke-virtual {p1, p0}, Landroid/icu/text/SimpleFormatter;->format([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getByVariant(Ljava/lang/CharSequence;)Landroid/icu/text/SimpleFormatter;
    .locals 2

    .line 83
    invoke-static {p1}, Landroid/icu/impl/StandardPlural;->indexOrOtherIndexFromString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 84
    iget-object v0, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/text/SimpleFormatter;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 85
    sget v1, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    if-eq p1, v1, :cond_0

    .line 86
    iget-object p0, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/text/SimpleFormatter;

    sget p1, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    aget-object v0, p0, p1

    :cond_0
    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 54
    iget-object p0, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/text/SimpleFormatter;

    sget v0, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
