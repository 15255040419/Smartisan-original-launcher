.class public Landroid/icu/impl/number/LongNameHandler;
.super Ljava/lang/Object;
.source "LongNameHandler.java"

# interfaces
.implements Landroid/icu/impl/number/MicroPropsGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/LongNameHandler$PluralTableSink;
    }
.end annotation


# instance fields
.field private final modifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/impl/StandardPlural;",
            "Landroid/icu/impl/number/SimpleModifier;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Landroid/icu/impl/number/MicroPropsGenerator;

.field private final rules:Landroid/icu/text/PluralRules;


# direct methods
.method private constructor <init>(Ljava/util/Map;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/icu/impl/StandardPlural;",
            "Landroid/icu/impl/number/SimpleModifier;",
            ">;",
            "Landroid/icu/text/PluralRules;",
            "Landroid/icu/impl/number/MicroPropsGenerator;",
            ")V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/icu/impl/number/LongNameHandler;->modifiers:Ljava/util/Map;

    .line 106
    iput-object p2, p0, Landroid/icu/impl/number/LongNameHandler;->rules:Landroid/icu/text/PluralRules;

    .line 107
    iput-object p3, p0, Landroid/icu/impl/number/LongNameHandler;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    return-void
.end method

.method public static forCurrencyLongNames(Landroid/icu/util/ULocale;Landroid/icu/util/Currency;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/LongNameHandler;
    .locals 2

    .line 112
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/icu/impl/StandardPlural;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 113
    invoke-static {p0, p1, v0}, Landroid/icu/impl/number/LongNameHandler;->getCurrencyLongNameData(Landroid/icu/util/ULocale;Landroid/icu/util/Currency;Ljava/util/Map;)V

    .line 115
    new-instance p0, Ljava/util/EnumMap;

    const-class p1, Landroid/icu/impl/StandardPlural;

    invoke-direct {p0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 117
    invoke-static {v0, p1, p0}, Landroid/icu/impl/number/LongNameHandler;->simpleFormatsToModifiers(Ljava/util/Map;Landroid/icu/text/NumberFormat$Field;Ljava/util/Map;)V

    .line 118
    new-instance p1, Landroid/icu/impl/number/LongNameHandler;

    invoke-direct {p1, p0, p2, p3}, Landroid/icu/impl/number/LongNameHandler;-><init>(Ljava/util/Map;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)V

    return-object p1
.end method

.method public static forMeasureUnit(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/LongNameHandler;
    .locals 2

    .line 123
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/icu/impl/StandardPlural;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 124
    invoke-static {p0, p1, p2, v0}, Landroid/icu/impl/number/LongNameHandler;->getMeasureData(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/util/Map;)V

    .line 127
    new-instance p0, Ljava/util/EnumMap;

    const-class p1, Landroid/icu/impl/StandardPlural;

    invoke-direct {p0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 129
    invoke-static {v0, p1, p0}, Landroid/icu/impl/number/LongNameHandler;->simpleFormatsToModifiers(Ljava/util/Map;Landroid/icu/text/NumberFormat$Field;Ljava/util/Map;)V

    .line 130
    new-instance p1, Landroid/icu/impl/number/LongNameHandler;

    invoke-direct {p1, p0, p3, p4}, Landroid/icu/impl/number/LongNameHandler;-><init>(Ljava/util/Map;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)V

    return-object p1
.end method

.method private static getCurrencyLongNameData(Landroid/icu/util/ULocale;Landroid/icu/util/Currency;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/Currency;",
            "Ljava/util/Map<",
            "Landroid/icu/impl/StandardPlural;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    sget-object v0, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getUnitPatterns()Ljava/util/Map;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 84
    invoke-virtual {p1, p0, v4, v2, v5}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "{1}"

    .line 88
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-interface {p2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getMeasureData(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/MeasureUnit;",
            "Landroid/icu/number/NumberFormatter$UnitWidth;",
            "Ljava/util/Map<",
            "Landroid/icu/impl/StandardPlural;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    new-instance v0, Landroid/icu/impl/number/LongNameHandler$PluralTableSink;

    invoke-direct {v0, p3}, Landroid/icu/impl/number/LongNameHandler$PluralTableSink;-><init>(Ljava/util/Map;)V

    const-string p3, "android/icu/impl/data/icudt60b/unit"

    .line 62
    invoke-static {p3, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "units"

    .line 64
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    sget-object v1, Landroid/icu/number/NumberFormatter$UnitWidth;->NARROW:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, v1, :cond_0

    const-string p2, "Narrow"

    .line 66
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 67
    :cond_0
    sget-object v1, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, v1, :cond_1

    const-string p2, "Short"

    .line 68
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const-string p2, "/"

    .line 70
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Landroid/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Landroid/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    return-void
.end method

.method private static simpleFormatsToModifiers(Ljava/util/Map;Landroid/icu/text/NumberFormat$Field;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/icu/impl/StandardPlural;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/text/NumberFormat$Field;",
            "Ljava/util/Map<",
            "Landroid/icu/impl/StandardPlural;",
            "Landroid/icu/impl/number/SimpleModifier;",
            ">;)V"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    sget-object v1, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/StandardPlural;

    .line 137
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 139
    sget-object v3, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_0
    if-eqz v3, :cond_1

    const/4 v4, 0x1

    .line 145
    invoke-static {v3, v0, v4, v4}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v3

    .line 146
    new-instance v4, Landroid/icu/impl/number/SimpleModifier;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Landroid/icu/impl/number/SimpleModifier;-><init>(Ljava/lang/String;Landroid/icu/text/NumberFormat$Field;Z)V

    invoke-interface {p2, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_1
    new-instance p0, Landroid/icu/util/ICUException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find data in \'other\' plural variant with field "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method


# virtual methods
.method public processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .locals 2

    .line 152
    iget-object v0, p0, Landroid/icu/impl/number/LongNameHandler;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 154
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->createCopy()Landroid/icu/impl/number/DecimalQuantity;

    move-result-object p1

    .line 155
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->rounding:Landroid/icu/number/Rounder;

    invoke-virtual {v1, p1}, Landroid/icu/number/Rounder;->apply(Landroid/icu/impl/number/DecimalQuantity;)V

    .line 156
    iget-object v1, p0, Landroid/icu/impl/number/LongNameHandler;->modifiers:Ljava/util/Map;

    iget-object p0, p0, Landroid/icu/impl/number/LongNameHandler;->rules:Landroid/icu/text/PluralRules;

    invoke-interface {p1, p0}, Landroid/icu/impl/number/DecimalQuantity;->getStandardPlural(Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/number/Modifier;

    iput-object p0, v0, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    return-object v0
.end method
