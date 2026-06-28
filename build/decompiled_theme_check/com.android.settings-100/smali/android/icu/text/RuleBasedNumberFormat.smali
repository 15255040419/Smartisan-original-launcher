.class public Landroid/icu/text/RuleBasedNumberFormat;
.super Landroid/icu/text/NumberFormat;
.source "RuleBasedNumberFormat.java"


# static fields
.field private static final DEBUG:Z

.field public static final DURATION:I = 0x3

.field private static final MAX_VALUE:Landroid/icu/math/BigDecimal;

.field private static final MIN_VALUE:Landroid/icu/math/BigDecimal;

.field public static final NUMBERING_SYSTEM:I = 0x4

.field public static final ORDINAL:I = 0x2

.field public static final SPELLOUT:I = 0x1

.field private static final locnames:[Ljava/lang/String;

.field private static final rulenames:[Ljava/lang/String;

.field static final serialVersionUID:J = -0x6a5ce54888ed36fcL


# instance fields
.field private transient capitalizationBrkIter:Landroid/icu/text/BreakIterator;

.field private capitalizationForListOrMenu:Z

.field private capitalizationForStandAlone:Z

.field private capitalizationInfoIsSet:Z

.field private transient decimalFormat:Landroid/icu/text/DecimalFormat;

.field private transient decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

.field private transient defaultInfinityRule:Landroid/icu/text/NFRule;

.field private transient defaultNaNRule:Landroid/icu/text/NFRule;

.field private transient defaultRuleSet:Landroid/icu/text/NFRuleSet;

.field private lenientParse:Z

.field private transient lenientParseRules:Ljava/lang/String;

.field private locale:Landroid/icu/util/ULocale;

.field private transient lookedForScanner:Z

.field private transient postProcessRules:Ljava/lang/String;

.field private transient postProcessor:Landroid/icu/text/RBNFPostProcessor;

.field private publicRuleSetNames:[Ljava/lang/String;

.field private roundingMode:I

.field private ruleSetDisplayNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient ruleSets:[Landroid/icu/text/NFRuleSet;

.field private transient ruleSetsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/NFRuleSet;",
            ">;"
        }
    .end annotation
.end field

.field private transient scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "rbnf"

    .line 683
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/text/RuleBasedNumberFormat;->DEBUG:Z

    const-string v0, "SpelloutRules"

    const-string v1, "OrdinalRules"

    const-string v2, "DurationRules"

    const-string v3, "NumberingSystemRules"

    .line 857
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/RuleBasedNumberFormat;->rulenames:[Ljava/lang/String;

    const-string v0, "SpelloutLocalizations"

    const-string v1, "OrdinalLocalizations"

    const-string v2, "DurationLocalizations"

    const-string v3, "NumberingSystemLocalizations"

    .line 860
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/RuleBasedNumberFormat;->locnames:[Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    .line 1231
    invoke-static {v0, v1}, Landroid/icu/math/BigDecimal;->valueOf(J)Landroid/icu/math/BigDecimal;

    move-result-object v0

    sput-object v0, Landroid/icu/text/RuleBasedNumberFormat;->MAX_VALUE:Landroid/icu/math/BigDecimal;

    const-wide/high16 v0, -0x8000000000000000L

    .line 1232
    invoke-static {v0, v1}, Landroid/icu/math/BigDecimal;->valueOf(J)Landroid/icu/math/BigDecimal;

    move-result-object v0

    sput-object v0, Landroid/icu/text/RuleBasedNumberFormat;->MIN_VALUE:Landroid/icu/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 876
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;I)V
    .locals 6

    .line 818
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x0

    .line 577
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    .line 582
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 588
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 595
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    const/4 v1, 0x7

    .line 601
    iput v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    .line 608
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    .line 618
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 625
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    .line 631
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    .line 637
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    const/4 v1, 0x0

    .line 643
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    .line 677
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    .line 678
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    .line 679
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    .line 680
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 819
    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    const-string v2, "android/icu/impl/data/icudt60b/rbnf"

    .line 822
    invoke-static {v2, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/ICUResourceBundle;

    .line 827
    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v2

    .line 828
    invoke-virtual {p0, v2, v2}, Landroid/icu/text/RuleBasedNumberFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 834
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RBNFRules/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/text/RuleBasedNumberFormat;->rulenames:[Ljava/lang/String;

    add-int/lit8 v5, p2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v3

    .line 835
    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v3

    .line 836
    :goto_0
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 837
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 845
    :catch_0
    :cond_0
    sget-object v3, Landroid/icu/text/RuleBasedNumberFormat;->locnames:[Ljava/lang/String;

    add-int/lit8 p2, p2, -0x1

    aget-object p2, v3, p2

    invoke-virtual {p1, p2}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 847
    invoke-virtual {p1}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result p2

    new-array v0, p2, [[Ljava/lang/String;

    .line 848
    :goto_1
    array-length p2, v0

    if-ge v1, p2, :cond_1

    .line 849
    invoke-virtual {p1, v1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 854
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 697
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x0

    .line 577
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    .line 582
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 588
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 595
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    const/4 v1, 0x7

    .line 601
    iput v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    .line 608
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    .line 618
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 625
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    .line 631
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    .line 637
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    const/4 v1, 0x0

    .line 643
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    .line 677
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    .line 678
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    .line 679
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    .line 680
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 698
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    .line 699
    invoke-direct {p0, p1, v0}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 2

    .line 756
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x0

    .line 577
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    .line 582
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 588
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 595
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    const/4 v1, 0x7

    .line 601
    iput v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    .line 608
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    .line 618
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 625
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    .line 631
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    .line 637
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    const/4 v1, 0x0

    .line 643
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    .line 677
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    .line 678
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    .line 679
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    .line 680
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 757
    iput-object p2, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    .line 758
    invoke-direct {p0, p1, v0}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 741
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 2

    .line 723
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x0

    .line 577
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    .line 582
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 588
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 595
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    const/4 v1, 0x7

    .line 601
    iput v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    .line 608
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    .line 618
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 625
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    .line 631
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    .line 637
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    const/4 v1, 0x0

    .line 643
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    .line 677
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    .line 678
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    .line 679
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    .line 680
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 724
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    .line 725
    invoke-direct {p0, p1, p2}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 2

    .line 785
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x0

    .line 577
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    .line 582
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 588
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 595
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    const/4 v1, 0x7

    .line 601
    iput v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    .line 608
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    .line 618
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 625
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    .line 631
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    .line 637
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    const/4 v1, 0x0

    .line 643
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    .line 677
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    .line 678
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    .line 679
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    .line 680
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 786
    iput-object p3, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    .line 787
    invoke-direct {p0, p1, p2}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;I)V
    .locals 0

    .line 802
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    return-void
.end method

.method private adjustForContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1991
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v0

    .line 1992
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    if-eq v0, v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 1993
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1995
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    if-eqz v0, :cond_3

    .line 1998
    :cond_1
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_2

    .line 2000
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 2002
    :cond_2
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    iget-object p0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    const/16 v1, 0x300

    invoke-static {v0, p1, p0, v1}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p1
.end method

.method private extractSpecial(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1628
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_0

    add-int/lit8 v1, p0, -0x1

    .line 1633
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_3

    :cond_0
    const-string v1, ";%"

    .line 1637
    invoke-virtual {p1, v1, p0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1640
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 1642
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p0

    :goto_0
    if-ge p2, v1, :cond_2

    .line 1644
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1649
    :cond_2
    invoke-virtual {p1, p2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v1, v1, 0x1

    .line 1652
    invoke-virtual {p1, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    return-object p2
.end method

.method private format(DLandroid/icu/text/NFRuleSet;)Ljava/lang/String;
    .locals 7

    .line 1916
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1917
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getRoundingMode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1919
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getMaximumFractionDigits()I

    move-result p1

    iget p2, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    invoke-virtual {v0, p1, p2}, Landroid/icu/math/BigDecimal;->setScale(II)Landroid/icu/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    :cond_0
    move-wide v1, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v3, v6

    .line 1921
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRuleSet;->format(DLjava/lang/StringBuilder;II)V

    .line 1922
    invoke-direct {p0, v6, p3}, Landroid/icu/text/RuleBasedNumberFormat;->postProcess(Ljava/lang/StringBuilder;Landroid/icu/text/NFRuleSet;)V

    .line 1923
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private format(JLandroid/icu/text/NFRuleSet;)Ljava/lang/String;
    .locals 7

    .line 1945
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1948
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/icu/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-wide v1, p1

    move-object v3, v6

    .line 1951
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuilder;II)V

    .line 1953
    :goto_0
    invoke-direct {p0, v6, p3}, Landroid/icu/text/RuleBasedNumberFormat;->postProcess(Ljava/lang/StringBuilder;Landroid/icu/text/NFRuleSet;)V

    .line 1954
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNameListForLocale(Landroid/icu/util/ULocale;)[Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_2

    .line 1044
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1045
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object p1, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {p1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 1046
    array-length p1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, v0, v1

    .line 1047
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1048
    iget-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-eqz v3, :cond_0

    return-object v3

    .line 1052
    :cond_0
    invoke-static {v2}, Landroid/icu/util/ULocale;->getFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private init(Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 10

    .line 1667
    invoke-direct {p0, p2}, Landroid/icu/text/RuleBasedNumberFormat;->initLocalizations([[Ljava/lang/String;)V

    .line 1674
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedNumberFormat;->stripWhitespace(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "%%lenient-parse:"

    .line 1681
    invoke-direct {p0, p1, p2}, Landroid/icu/text/RuleBasedNumberFormat;->extractSpecial(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParseRules:Ljava/lang/String;

    const-string p2, "%%post-process:"

    .line 1682
    invoke-direct {p0, p1, p2}, Landroid/icu/text/RuleBasedNumberFormat;->extractSpecial(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    const/4 p2, 0x0

    const/4 v0, 0x1

    move v1, p2

    move v2, v0

    :goto_0
    const-string v3, ";%"

    .line 1689
    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1695
    :cond_0
    new-array v1, v2, [Landroid/icu/text/NFRuleSet;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    .line 1696
    new-instance v1, Ljava/util/HashMap;

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v0

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 1697
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 1710
    new-array v1, v2, [Ljava/lang/String;

    move v2, p2

    move v4, v2

    move v5, v4

    .line 1715
    :goto_1
    iget-object v6, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v7, v6

    const-string v8, "%%"

    if-ge v2, v7, :cond_5

    .line 1716
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-gez v6, :cond_1

    .line 1718
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v0

    :cond_1
    add-int/2addr v6, v0

    .line 1720
    invoke-virtual {p1, v4, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 1721
    new-instance v4, Landroid/icu/text/NFRuleSet;

    invoke-direct {v4, p0, v1, v2}, Landroid/icu/text/NFRuleSet;-><init>(Landroid/icu/text/RuleBasedNumberFormat;[Ljava/lang/String;I)V

    .line 1722
    iget-object v7, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aput-object v4, v7, v2

    .line 1723
    invoke-virtual {v4}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1724
    iget-object v9, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    invoke-interface {v9, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    add-int/lit8 v5, v5, 0x1

    .line 1727
    iget-object v8, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    if-nez v8, :cond_2

    const-string v8, "%spellout-numbering"

    .line 1728
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    const-string v8, "%digits-ordinal"

    .line 1729
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "%duration"

    .line 1730
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1732
    :cond_3
    iput-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v4, v6

    goto :goto_1

    .line 1752
    :cond_5
    iget-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    if-nez p1, :cond_7

    .line 1753
    array-length p1, v6

    sub-int/2addr p1, v0

    :goto_2
    if-ltz p1, :cond_7

    .line 1754
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1755
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object p1, v2, p1

    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    goto :goto_3

    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 1760
    :cond_7
    :goto_3
    iget-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    if-nez p1, :cond_8

    .line 1761
    iget-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v2, p1

    sub-int/2addr v2, v0

    aget-object p1, p1, v2

    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    :cond_8
    move p1, p2

    .line 1766
    :goto_4
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v3, v2

    if-ge p1, v3, :cond_9

    .line 1767
    aget-object v2, v2, p1

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Landroid/icu/text/NFRuleSet;->parseRules(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 1774
    :cond_9
    new-array p1, v5, [Ljava/lang/String;

    .line 1776
    array-length v1, v2

    sub-int/2addr v1, v0

    move v0, p2

    :goto_5
    if-ltz v1, :cond_b

    .line 1777
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    add-int/lit8 v2, v0, 0x1

    .line 1778
    iget-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v0

    move v0, v2

    :cond_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 1782
    :cond_b
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    if-eqz v0, :cond_f

    move v0, p2

    .line 1785
    :goto_6
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 1786
    aget-object v1, v1, v0

    move v2, p2

    .line 1787
    :goto_7
    array-length v3, p1

    if-ge v2, v3, :cond_d

    .line 1788
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1792
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "did not find public rule set: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1795
    :cond_e
    aget-object p1, v1, p2

    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    goto :goto_8

    .line 1797
    :cond_f
    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    :goto_8
    return-void
.end method

.method private initCapitalizationContextInfo(Landroid/icu/util/ULocale;)V
    .locals 3

    const-string v0, "android/icu/impl/data/icudt60b"

    .line 1832
    invoke-static {v0, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/ICUResourceBundle;

    :try_start_0
    const-string v0, "contextTransforms/number-spellout"

    .line 1834
    invoke-virtual {p1, v0}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p1

    .line 1835
    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getIntVector()[I

    move-result-object p1

    .line 1836
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 1837
    aget v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    .line 1838
    aget p1, p1, v2

    if-eqz p1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private initLocalizations([[Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 1807
    aget-object v1, p1, v0

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    .line 1809
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    move v3, v2

    .line 1810
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 1811
    aget-object v4, p1, v3

    .line 1812
    aget-object v5, v4, v0

    .line 1813
    array-length v6, v4

    sub-int/2addr v6, v2

    new-array v6, v6, [Ljava/lang/String;

    .line 1814
    array-length v7, v6

    iget-object v8, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    array-length v8, v8

    if-ne v7, v8, :cond_0

    .line 1818
    array-length v7, v6

    invoke-static {v4, v2, v6, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1819
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1815
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "public name length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " != localized names["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] length: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, v6

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1822
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1823
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    :cond_2
    return-void
.end method

.method private postProcess(Ljava/lang/StringBuilder;Landroid/icu/text/NFRuleSet;)V
    .locals 3

    .line 1961
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1962
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    if-nez v1, :cond_2

    const-string v1, ";"

    .line 1963
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1965
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1967
    :cond_0
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1969
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1970
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RBNFPostProcessor;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    .line 1971
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    invoke-interface {v1, p0, v2}, Landroid/icu/text/RBNFPostProcessor;->init(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1975
    sget-boolean p2, Landroid/icu/text/RuleBasedNumberFormat;->DEBUG:Z

    if-eqz p2, :cond_1

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not locate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", error "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1976
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1975
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 1977
    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    .line 1978
    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    return-void

    .line 1983
    :cond_2
    :goto_0
    iget-object p0, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    invoke-interface {p0, p1, p2}, Landroid/icu/text/RBNFPostProcessor;->process(Ljava/lang/StringBuilder;Landroid/icu/text/NFRuleSet;)V

    :cond_3
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 982
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 986
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 988
    :catch_0
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 991
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    iput p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 999
    :catch_1
    new-instance p1, Landroid/icu/text/RuleBasedNumberFormat;

    invoke-direct {p1, v0, v1}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 1000
    iget-object v0, p1, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    .line 1001
    iget-object v0, p1, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 1002
    iget-object v0, p1, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 1003
    iget-object v0, p1, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    .line 1004
    iget-object v0, p1, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 1005
    iget-object v0, p1, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    .line 1006
    iget-object v0, p1, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    .line 1007
    iget-object v0, p1, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    .line 1008
    iget-object p1, p1, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    return-void
.end method

.method private stripWhitespace(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4

    .line 1855
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1856
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    :goto_1
    if-ge v1, v0, :cond_0

    .line 1863
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/16 v2, 0x3b

    if-ge v1, v0, :cond_1

    .line 1869
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1876
    :cond_1
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1880
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-ge v2, v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 1884
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_3
    :goto_2
    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 969
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 971
    iget p0, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 889
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method createPluralFormat(Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;)Landroid/icu/text/PluralFormat;
    .locals 2

    .line 1586
    new-instance v0, Landroid/icu/text/PluralFormat;

    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    move-result-object p0

    invoke-direct {v0, v1, p1, p2, p0}, Landroid/icu/text/PluralFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;Landroid/icu/text/NumberFormat;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 904
    instance-of v0, p1, Landroid/icu/text/RuleBasedNumberFormat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 909
    :cond_0
    check-cast p1, Landroid/icu/text/RuleBasedNumberFormat;

    .line 912
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    iget-object v2, p1, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v2}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    iget-boolean v2, p1, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 917
    :cond_1
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v0, v0

    iget-object v2, p1, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v2, v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    move v0, v1

    .line 920
    :goto_0
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 921
    aget-object v2, v2, v0

    iget-object v3, p1, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/icu/text/NFRuleSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v1
.end method

.method findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2016
    iget-object p0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/NFRuleSet;

    if-eqz p0, :cond_0

    return-object p0

    .line 2018
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No rule set named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public format(DLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "%%"

    .line 1130
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1133
    invoke-virtual {p0, p3}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/RuleBasedNumberFormat;->format(DLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1131
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t use internal rule set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public format(JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "%%"

    .line 1148
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1151
    invoke-virtual {p0, p3}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/RuleBasedNumberFormat;->format(JLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1149
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t use internal rule set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 1170
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result p4

    if-nez p4, :cond_0

    .line 1171
    iget-object p4, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    invoke-direct {p0, p1, p2, p4}, Landroid/icu/text/RuleBasedNumberFormat;->format(DLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1174
    :cond_0
    iget-object p4, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    invoke-direct {p0, p1, p2, p4}, Landroid/icu/text/RuleBasedNumberFormat;->format(DLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 1198
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result p4

    if-nez p4, :cond_0

    .line 1199
    iget-object p4, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    invoke-direct {p0, p1, p2, p4}, Landroid/icu/text/RuleBasedNumberFormat;->format(JLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1202
    :cond_0
    iget-object p4, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    invoke-direct {p0, p1, p2, p4}, Landroid/icu/text/RuleBasedNumberFormat;->format(JLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-object p3
.end method

.method public format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 1243
    sget-object v0, Landroid/icu/text/RuleBasedNumberFormat;->MIN_VALUE:Landroid/icu/math/BigDecimal;

    invoke-virtual {v0, p1}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v0, Landroid/icu/text/RuleBasedNumberFormat;->MAX_VALUE:Landroid/icu/math/BigDecimal;

    invoke-virtual {v0, p1}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 1248
    :cond_0
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->scale()I

    move-result v0

    if-nez v0, :cond_1

    .line 1249
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/RuleBasedNumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    .line 1251
    :cond_1
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/RuleBasedNumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    .line 1246
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/DecimalFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 1228
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {v0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/RuleBasedNumberFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 1216
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {v0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/RuleBasedNumberFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method getDecimalFormat()Landroid/icu/text/DecimalFormat;
    .locals 3

    .line 1577
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    if-nez v0, :cond_0

    .line 1579
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/RuleBasedNumberFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    .line 1580
    new-instance v1, Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    .line 1582
    :cond_0
    iget-object p0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    return-object p0
.end method

.method getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .locals 2

    .line 1570
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    if-nez v0, :cond_0

    .line 1571
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 1573
    :cond_0
    iget-object p0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    return-object p0
.end method

.method getDefaultInfinityRule()Landroid/icu/text/NFRule;
    .locals 3

    .line 1594
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    if-nez v0, :cond_0

    .line 1595
    new-instance v0, Landroid/icu/text/NFRule;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/icu/text/NFRule;-><init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    .line 1597
    :cond_0
    iget-object p0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    return-object p0
.end method

.method getDefaultNaNRule()Landroid/icu/text/NFRule;
    .locals 3

    .line 1605
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    if-nez v0, :cond_0

    .line 1606
    new-instance v0, Landroid/icu/text/NFRule;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NaN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/icu/text/NFRule;-><init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    .line 1608
    :cond_0
    iget-object p0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    return-object p0
.end method

.method getDefaultRuleSet()Landroid/icu/text/NFRuleSet;
    .locals 0

    .line 1540
    iget-object p0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    return-object p0
.end method

.method public getDefaultRuleSetName()Ljava/lang/String;
    .locals 1

    .line 1437
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/icu/text/NFRuleSet;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1438
    iget-object p0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    invoke-virtual {p0}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method getLenientScanner()Landroid/icu/text/RbnfLenientScanner;
    .locals 2

    .line 1550
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    if-eqz v0, :cond_0

    .line 1551
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScannerProvider()Landroid/icu/text/RbnfLenientScannerProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1553
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    iget-object p0, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParseRules:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/icu/text/RbnfLenientScannerProvider;->get(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/RbnfLenientScanner;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLenientScannerProvider()Landroid/icu/text/RbnfLenientScannerProvider;
    .locals 1

    .line 1378
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->lookedForScanner:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1380
    :try_start_0
    iput-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->lookedForScanner:Z

    const-string v0, "android.icu.impl.text.RbnfScannerProviderImpl"

    .line 1381
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1382
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RbnfLenientScannerProvider;

    .line 1383
    invoke-virtual {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->setLenientScannerProvider(Landroid/icu/text/RbnfLenientScannerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    :catch_0
    :cond_0
    iget-object p0, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    return-object p0
.end method

.method public getRoundingMode()I
    .locals 0

    .line 1506
    iget p0, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    return p0
.end method

.method public getRuleSetDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1119
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/RuleBasedNumberFormat;->getRuleSetDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRuleSetDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 3

    .line 1099
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 1100
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 1101
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1102
    invoke-direct {p0, p2}, Landroid/icu/text/RuleBasedNumberFormat;->getNameListForLocale(Landroid/icu/util/ULocale;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1104
    aget-object p0, p0, v1

    return-object p0

    .line 1106
    :cond_0
    aget-object p0, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1109
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unrecognized rule set name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRuleSetDisplayNameLocales()[Landroid/icu/util/ULocale;
    .locals 4

    .line 1030
    iget-object p0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    if-eqz p0, :cond_1

    .line 1031
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 1032
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 1033
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1034
    array-length v0, p0

    new-array v0, v0, [Landroid/icu/util/ULocale;

    const/4 v1, 0x0

    .line 1035
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1036
    new-instance v2, Landroid/icu/util/ULocale;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRuleSetDisplayNames()[Ljava/lang/String;
    .locals 1

    .line 1087
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->getRuleSetDisplayNames(Landroid/icu/util/ULocale;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRuleSetDisplayNames(Landroid/icu/util/ULocale;)[Ljava/lang/String;
    .locals 2

    .line 1069
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedNumberFormat;->getNameListForLocale(Landroid/icu/util/ULocale;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1071
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 1073
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getRuleSetNames()[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 1074
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 1075
    aget-object v0, p0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public getRuleSetNames()[Ljava/lang/String;
    .locals 0

    .line 1021
    iget-object p0, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 939
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->hashCode()I

    move-result p0

    return p0
.end method

.method public lenientParseEnabled()Z
    .locals 0

    .line 1352
    iget-boolean p0, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    return p0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 8

    .line 1276
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1277
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1282
    sget-object v2, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    .line 1283
    new-instance v3, Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1289
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_4

    .line 1291
    iget-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/icu/text/NFRuleSet;->isPublic()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/icu/text/NFRuleSet;->isParseable()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 1297
    :cond_0
    iget-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v5, v5, v4

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {v5, p1, v0, v6, v7}, Landroid/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;

    move-result-object v5

    .line 1298
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 1300
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v2, v5

    .line 1309
    :cond_1
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_2

    goto :goto_2

    .line 1315
    :cond_2
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1320
    :cond_4
    :goto_2
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    add-int/2addr p0, p1

    invoke-virtual {p2, p0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v2
.end method

.method public setContext(Landroid/icu/text/DisplayContext;)V
    .locals 1

    .line 1483
    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 1484
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    if-nez v0, :cond_1

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_1

    .line 1486
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->initCapitalizationContextInfo(Landroid/icu/util/ULocale;)V

    const/4 v0, 0x1

    .line 1487
    iput-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    .line 1489
    :cond_1
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_4

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-eq p1, v0, :cond_3

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    if-eqz p1, :cond_4

    .line 1492
    :cond_3
    iget-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {p1}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    :cond_4
    return-void
.end method

.method public setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 1452
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/DecimalFormatSymbols;

    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 1453
    iget-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    if-eqz p1, :cond_0

    .line 1454
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p1, v0}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    .line 1456
    :cond_0
    iget-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1457
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    .line 1458
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultInfinityRule()Landroid/icu/text/NFRule;

    .line 1460
    :cond_1
    iget-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    if-eqz p1, :cond_2

    .line 1461
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    .line 1462
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultNaNRule()Landroid/icu/text/NFRule;

    .line 1466
    :cond_2
    iget-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 1467
    iget-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2, v3}, Landroid/icu/text/NFRuleSet;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setDefaultRuleSet(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_5

    .line 1401
    iget-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1402
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1404
    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 1405
    iget-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length p1, p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_3

    .line 1407
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%spellout-numbering"

    .line 1408
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "%digits-ordinal"

    .line 1409
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "%duration"

    .line 1410
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1412
    :cond_2
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object p1, v0, p1

    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    return-void

    .line 1417
    :cond_3
    iget-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length p1, p1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_6

    .line 1419
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/icu/text/NFRuleSet;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1420
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object p1, v0, p1

    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    goto :goto_0

    :cond_5
    const-string v0, "%%"

    .line 1425
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1428
    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    :cond_6
    :goto_0
    return-void

    .line 1426
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot use private rule set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLenientParseMode(Z)V
    .locals 0

    .line 1342
    iput-boolean p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    return-void
.end method

.method public setLenientScannerProvider(Landroid/icu/text/RbnfLenientScannerProvider;)V
    .locals 0

    .line 1364
    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    return-void
.end method

.method public setRoundingMode(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 1525
    iput p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    return-void

    .line 1522
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid rounding mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 955
    iget-object p0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 956
    invoke-virtual {v3}, Landroid/icu/text/NFRuleSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 958
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
