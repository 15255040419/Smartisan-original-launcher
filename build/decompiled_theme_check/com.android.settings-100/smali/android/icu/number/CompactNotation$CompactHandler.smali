.class Landroid/icu/number/CompactNotation$CompactHandler;
.super Ljava/lang/Object;
.source "CompactNotation.java"

# interfaces
.implements Landroid/icu/impl/number/MicroPropsGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/CompactNotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompactHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/number/CompactNotation$CompactHandler$CompactModInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final data:Landroid/icu/impl/number/CompactData;

.field final parent:Landroid/icu/impl/number/MicroPropsGenerator;

.field final precomputedMods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/number/CompactNotation$CompactHandler$CompactModInfo;",
            ">;"
        }
    .end annotation
.end field

.field final rules:Landroid/icu/text/PluralRules;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Landroid/icu/number/CompactNotation;

    return-void
.end method

.method private constructor <init>(Landroid/icu/number/CompactNotation;Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/impl/number/CompactData$CompactType;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MutablePatternModifier;Landroid/icu/impl/number/MicroPropsGenerator;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p5, p0, Landroid/icu/number/CompactNotation$CompactHandler;->rules:Landroid/icu/text/PluralRules;

    .line 73
    iput-object p7, p0, Landroid/icu/number/CompactNotation$CompactHandler;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    .line 74
    new-instance p5, Landroid/icu/impl/number/CompactData;

    invoke-direct {p5}, Landroid/icu/impl/number/CompactData;-><init>()V

    iput-object p5, p0, Landroid/icu/number/CompactNotation$CompactHandler;->data:Landroid/icu/impl/number/CompactData;

    .line 75
    iget-object p5, p1, Landroid/icu/number/CompactNotation;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    if-eqz p5, :cond_0

    .line 76
    iget-object p5, p0, Landroid/icu/number/CompactNotation$CompactHandler;->data:Landroid/icu/impl/number/CompactData;

    iget-object p1, p1, Landroid/icu/number/CompactNotation;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-virtual {p5, p2, p3, p1, p4}, Landroid/icu/impl/number/CompactData;->populate(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/CompactDecimalFormat$CompactStyle;Landroid/icu/impl/number/CompactData$CompactType;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p2, p0, Landroid/icu/number/CompactNotation$CompactHandler;->data:Landroid/icu/impl/number/CompactData;

    iget-object p1, p1, Landroid/icu/number/CompactNotation;->compactCustomData:Ljava/util/Map;

    invoke-virtual {p2, p1}, Landroid/icu/impl/number/CompactData;->populate(Ljava/util/Map;)V

    :goto_0
    if-eqz p6, :cond_1

    .line 82
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/icu/number/CompactNotation$CompactHandler;->precomputedMods:Ljava/util/Map;

    .line 83
    invoke-direct {p0, p6}, Landroid/icu/number/CompactNotation$CompactHandler;->precomputeAllModifiers(Landroid/icu/impl/number/MutablePatternModifier;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Landroid/icu/number/CompactNotation$CompactHandler;->precomputedMods:Ljava/util/Map;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/number/CompactNotation;Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/impl/number/CompactData$CompactType;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MutablePatternModifier;Landroid/icu/impl/number/MicroPropsGenerator;Landroid/icu/number/CompactNotation$1;)V
    .locals 0

    .line 58
    invoke-direct/range {p0 .. p7}, Landroid/icu/number/CompactNotation$CompactHandler;-><init>(Landroid/icu/number/CompactNotation;Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/impl/number/CompactData$CompactType;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MutablePatternModifier;Landroid/icu/impl/number/MicroPropsGenerator;)V

    return-void
.end method

.method private precomputeAllModifiers(Landroid/icu/impl/number/MutablePatternModifier;)V
    .locals 5

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 93
    iget-object v1, p0, Landroid/icu/number/CompactNotation$CompactHandler;->data:Landroid/icu/impl/number/CompactData;

    invoke-virtual {v1, v0}, Landroid/icu/impl/number/CompactData;->getUniquePatterns(Ljava/util/Set;)V

    .line 95
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    new-instance v2, Landroid/icu/number/CompactNotation$CompactHandler$CompactModInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/icu/number/CompactNotation$CompactHandler$CompactModInfo;-><init>(Landroid/icu/number/CompactNotation$1;)V

    .line 97
    invoke-static {v1}, Landroid/icu/impl/number/PatternStringParser;->parseToPatternInfo(Ljava/lang/String;)Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    move-result-object v3

    .line 98
    invoke-virtual {p1, v3}, Landroid/icu/impl/number/MutablePatternModifier;->setPatternInfo(Landroid/icu/impl/number/AffixPatternProvider;)V

    .line 99
    invoke-virtual {p1}, Landroid/icu/impl/number/MutablePatternModifier;->createImmutable()Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    move-result-object v4

    iput-object v4, v2, Landroid/icu/number/CompactNotation$CompactHandler$CompactModInfo;->mod:Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    .line 100
    iget-object v3, v3, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget v3, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    iput v3, v2, Landroid/icu/number/CompactNotation$CompactHandler$CompactModInfo;->numDigits:I

    .line 101
    iget-object v3, p0, Landroid/icu/number/CompactNotation$CompactHandler;->precomputedMods:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .locals 4

    .line 107
    iget-object v0, p0, Landroid/icu/number/CompactNotation$CompactHandler;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 112
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isZero()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->rounding:Landroid/icu/number/Rounder;

    invoke-virtual {v1, p1}, Landroid/icu/number/Rounder;->apply(Landroid/icu/impl/number/DecimalQuantity;)V

    goto :goto_1

    .line 117
    :cond_0
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->rounding:Landroid/icu/number/Rounder;

    iget-object v3, p0, Landroid/icu/number/CompactNotation$CompactHandler;->data:Landroid/icu/impl/number/CompactData;

    invoke-virtual {v1, p1, v3}, Landroid/icu/number/Rounder;->chooseMultiplierAndApply(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/MultiplierProducer;)I

    move-result v1

    .line 118
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result v2

    :goto_0
    sub-int/2addr v2, v1

    .line 122
    :goto_1
    iget-object v1, p0, Landroid/icu/number/CompactNotation$CompactHandler;->rules:Landroid/icu/text/PluralRules;

    invoke-interface {p1, v1}, Landroid/icu/impl/number/DecimalQuantity;->getStandardPlural(Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;

    move-result-object v1

    .line 123
    iget-object v3, p0, Landroid/icu/number/CompactNotation$CompactHandler;->data:Landroid/icu/impl/number/CompactData;

    invoke-virtual {v3, v2, v1}, Landroid/icu/impl/number/CompactData;->getPattern(ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 129
    :cond_2
    iget-object p0, p0, Landroid/icu/number/CompactNotation$CompactHandler;->precomputedMods:Ljava/util/Map;

    if-eqz p0, :cond_3

    .line 132
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/number/CompactNotation$CompactHandler$CompactModInfo;

    .line 133
    iget-object v1, p0, Landroid/icu/number/CompactNotation$CompactHandler$CompactModInfo;->mod:Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    invoke-virtual {v1, v0, p1}, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->applyToMicros(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;)V

    .line 134
    iget p0, p0, Landroid/icu/number/CompactNotation$CompactHandler$CompactModInfo;->numDigits:I

    goto :goto_2

    .line 139
    :cond_3
    invoke-static {v1}, Landroid/icu/impl/number/PatternStringParser;->parseToPatternInfo(Ljava/lang/String;)Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    move-result-object p0

    .line 140
    iget-object p1, v0, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    check-cast p1, Landroid/icu/impl/number/MutablePatternModifier;

    invoke-virtual {p1, p0}, Landroid/icu/impl/number/MutablePatternModifier;->setPatternInfo(Landroid/icu/impl/number/AffixPatternProvider;)V

    .line 141
    iget-object p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    .line 147
    :goto_2
    invoke-static {}, Landroid/icu/number/Rounder;->constructPassThrough()Landroid/icu/number/Rounder;

    move-result-object p0

    iput-object p0, v0, Landroid/icu/impl/number/MicroProps;->rounding:Landroid/icu/number/Rounder;

    return-object v0
.end method
