.class public Landroid/icu/text/MessageFormat;
.super Landroid/icu/text/UFormat;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MessageFormat$AttributeAndPosition;,
        Landroid/icu/text/MessageFormat$AppendableWrapper;,
        Landroid/icu/text/MessageFormat$PluralSelectorProvider;,
        Landroid/icu/text/MessageFormat$PluralSelectorContext;,
        Landroid/icu/text/MessageFormat$Field;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CURLY_BRACE_LEFT:C = '{'

.field private static final CURLY_BRACE_RIGHT:C = '}'

.field private static final DATE_MODIFIER_EMPTY:I = 0x0

.field private static final DATE_MODIFIER_FULL:I = 0x4

.field private static final DATE_MODIFIER_LONG:I = 0x3

.field private static final DATE_MODIFIER_MEDIUM:I = 0x2

.field private static final DATE_MODIFIER_SHORT:I = 0x1

.field private static final MODIFIER_CURRENCY:I = 0x1

.field private static final MODIFIER_EMPTY:I = 0x0

.field private static final MODIFIER_INTEGER:I = 0x3

.field private static final MODIFIER_PERCENT:I = 0x2

.field private static final SINGLE_QUOTE:C = '\''

.field private static final STATE_INITIAL:I = 0x0

.field private static final STATE_IN_QUOTE:I = 0x2

.field private static final STATE_MSG_ELEMENT:I = 0x3

.field private static final STATE_SINGLE_QUOTE:I = 0x1

.field private static final TYPE_DATE:I = 0x1

.field private static final TYPE_DURATION:I = 0x5

.field private static final TYPE_NUMBER:I = 0x0

.field private static final TYPE_ORDINAL:I = 0x4

.field private static final TYPE_SPELLOUT:I = 0x3

.field private static final TYPE_TIME:I = 0x2

.field private static final dateModifierList:[Ljava/lang/String;

.field private static final modifierList:[Ljava/lang/String;

.field private static final rootLocale:Ljava/util/Locale;

.field static final serialVersionUID:J = 0x6308eb804ceb42dcL

.field private static final typeList:[Ljava/lang/String;


# instance fields
.field private transient cachedFormatters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/text/Format;",
            ">;"
        }
    .end annotation
.end field

.field private transient customFormatArgStarts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient msgPattern:Landroid/icu/text/MessagePattern;

.field private transient ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

.field private transient pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

.field private transient stockDateFormatter:Landroid/icu/text/DateFormat;

.field private transient stockNumberFormatter:Landroid/icu/text/NumberFormat;

.field private transient ulocale:Landroid/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "number"

    const-string v1, "date"

    const-string/jumbo v2, "time"

    const-string/jumbo v3, "spellout"

    const-string/jumbo v4, "ordinal"

    const-string v5, "duration"

    .line 2114
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/MessageFormat;->typeList:[Ljava/lang/String;

    const-string v0, ""

    const-string v1, "currency"

    const-string/jumbo v2, "percent"

    const-string v3, "integer"

    .line 2124
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/icu/text/MessageFormat;->modifierList:[Ljava/lang/String;

    const-string/jumbo v1, "short"

    const-string v2, "medium"

    const-string v3, "long"

    const-string v4, "full"

    .line 2133
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    .line 2267
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/icu/text/MessageFormat;->rootLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 349
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 350
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 351
    invoke-virtual {p0, p1}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 0

    .line 376
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 377
    iput-object p2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 378
    invoke-virtual {p0, p1}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 364
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/icu/text/MessageFormat;)Ljava/util/Map;
    .locals 0

    .line 335
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1100(Landroid/icu/text/MessageFormat;)Landroid/icu/text/NumberFormat;
    .locals 0

    .line 335
    invoke-direct {p0}, Landroid/icu/text/MessageFormat;->getStockNumberFormatter()Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Landroid/icu/text/MessageFormat;)Landroid/icu/util/ULocale;
    .locals 0

    .line 335
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method static synthetic access$800(Landroid/icu/text/MessageFormat;I)I
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Landroid/icu/text/MessageFormat;->findOtherSubMessage(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Landroid/icu/text/MessageFormat;ILjava/lang/String;)I
    .locals 0

    .line 335
    invoke-direct {p0, p1, p2}, Landroid/icu/text/MessageFormat;->findFirstPluralNumberArg(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private argNameMatches(ILjava/lang/String;I)Z
    .locals 2

    .line 537
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p1

    .line 538
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_0

    .line 539
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    .line 540
    :cond_0
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result p0

    if-ne p0, p3, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static autoQuoteApostrophe(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 2443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2446
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    const/16 v7, 0x27

    const/4 v8, 0x1

    if-ge v4, v1, :cond_b

    .line 2447
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x3

    const/16 v11, 0x7b

    if-eqz v5, :cond_7

    const/16 v12, 0x7d

    if-eq v5, v8, :cond_4

    if-eq v5, v2, :cond_3

    if-eq v5, v10, :cond_0

    goto :goto_2

    :cond_0
    if-eq v9, v11, :cond_2

    if-eq v9, v12, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_a

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    if-eq v9, v7, :cond_5

    goto :goto_2

    :cond_4
    if-eq v9, v7, :cond_5

    if-eq v9, v11, :cond_6

    if-eq v9, v12, :cond_6

    .line 2470
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    move v5, v3

    goto :goto_2

    :cond_6
    move v5, v2

    goto :goto_2

    :cond_7
    if-eq v9, v7, :cond_9

    if-eq v9, v11, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v6, v6, 0x1

    move v5, v10

    goto :goto_2

    :cond_9
    move v5, v8

    .line 2499
    :cond_a
    :goto_2
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_b
    if-eq v5, v8, :cond_c

    if-ne v5, v2, :cond_d

    .line 2503
    :cond_c
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2505
    :cond_d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method private cacheExplicitFormats()V
    .locals 8

    .line 2353
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2354
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 2356
    iput-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 2359
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 2363
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v3, v2}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 2364
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v4, v5, :cond_1

    goto :goto_2

    .line 2367
    :cond_1
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v3

    .line 2368
    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v2, 0x2

    .line 2373
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v3

    .line 2375
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v4, v5}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v6

    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v6, v7, :cond_3

    .line 2376
    iget-object v6, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v6, v4}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const-string v4, ""

    .line 2379
    :goto_1
    invoke-direct {p0, v3, v4}, Landroid/icu/text/MessageFormat;->createAppropriateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/Format;

    move-result-object v3

    .line 2380
    invoke-direct {p0, v2, v3}, Landroid/icu/text/MessageFormat;->setArgStartFormat(ILjava/text/Format;)V

    move v2, v5

    :goto_2
    add-int/2addr v2, v1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private createAppropriateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/Format;
    .locals 6

    .line 2147
    sget-object v0, Landroid/icu/text/MessageFormat;->typeList:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_f

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eq v0, v2, :cond_9

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v5, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 2247
    new-instance p1, Landroid/icu/text/RuleBasedNumberFormat;

    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {p1, p0, v1}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    .line 2249
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2250
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_14

    .line 2252
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2262
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown format type \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2231
    :cond_1
    new-instance p1, Landroid/icu/text/RuleBasedNumberFormat;

    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {p1, p0, v3}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    .line 2233
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2234
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_14

    .line 2236
    :try_start_1
    invoke-virtual {p1, p0}, Landroid/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2215
    :cond_2
    new-instance p1, Landroid/icu/text/RuleBasedNumberFormat;

    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {p1, p0, v2}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    .line 2217
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2218
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_14

    .line 2220
    :try_start_2
    invoke-virtual {p1, p0}, Landroid/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2192
    :cond_3
    sget-object p1, Landroid/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v2, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v5, :cond_4

    .line 2209
    new-instance p1, Landroid/icu/text/SimpleDateFormat;

    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {p1, p2, p0}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    goto/16 :goto_0

    .line 2206
    :cond_4
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v4, p0}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    goto/16 :goto_0

    .line 2203
    :cond_5
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v2, p0}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    goto/16 :goto_0

    .line 2200
    :cond_6
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v3, p0}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    goto/16 :goto_0

    .line 2197
    :cond_7
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v1, p0}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    goto/16 :goto_0

    .line 2194
    :cond_8
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v3, p0}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    goto/16 :goto_0

    .line 2170
    :cond_9
    sget-object p1, Landroid/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_e

    if-eq p1, v2, :cond_d

    if-eq p1, v3, :cond_c

    if-eq p1, v1, :cond_b

    if-eq p1, v5, :cond_a

    .line 2187
    new-instance p1, Landroid/icu/text/SimpleDateFormat;

    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {p1, p2, p0}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    goto :goto_0

    .line 2184
    :cond_a
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v4, p0}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    goto :goto_0

    .line 2181
    :cond_b
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v2, p0}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    goto :goto_0

    .line 2178
    :cond_c
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v3, p0}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    goto :goto_0

    .line 2175
    :cond_d
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v1, p0}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    goto :goto_0

    .line 2172
    :cond_e
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v3, p0}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    goto :goto_0

    .line 2150
    :cond_f
    sget-object p1, Landroid/icu/text/MessageFormat;->modifierList:[Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_13

    if-eq p1, v2, :cond_12

    if-eq p1, v3, :cond_11

    if-eq p1, v1, :cond_10

    .line 2164
    new-instance p1, Landroid/icu/text/DecimalFormat;

    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    invoke-direct {p1, p2, v0}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    goto :goto_0

    .line 2161
    :cond_10
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getIntegerInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object p1

    goto :goto_0

    .line 2158
    :cond_11
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getPercentInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object p1

    goto :goto_0

    .line 2155
    :cond_12
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getCurrencyInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object p1

    goto :goto_0

    .line 2152
    :cond_13
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object p1

    :catch_0
    :cond_14
    :goto_0
    return-object p1
.end method

.method private static findChoiceSubMessage(Landroid/icu/text/MessagePattern;ID)I
    .locals 6

    .line 1829
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    add-int/lit8 p1, p1, 0x2

    .line 1838
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 1844
    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 1845
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v3

    .line 1846
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 1853
    :cond_1
    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v3

    add-int/lit8 v1, v2, 0x1

    .line 1855
    invoke-virtual {p0, v2}, Landroid/icu/text/MessagePattern;->getPatternIndex(I)I

    move-result v2

    .line 1856
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x3c

    if-ne v2, v5, :cond_2

    cmpl-double v2, p2, v3

    if-gtz v2, :cond_3

    goto :goto_1

    :cond_2
    cmpl-double v2, p2, v3

    if-gez v2, :cond_3

    :goto_1
    return p1

    :cond_3
    move p1, v1

    goto :goto_0
.end method

.method private findFirstPluralNumberArg(ILjava/lang/String;)I
    .locals 3

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 1972
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v0

    .line 1973
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    .line 1974
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v1, v2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1977
    :cond_1
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v1, v2, :cond_2

    const/4 p0, -0x1

    return p0

    .line 1980
    :cond_2
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v1, v2, :cond_0

    .line 1981
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v0

    .line 1982
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    if-eq v0, v1, :cond_3

    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v0, v1, :cond_4

    .line 1983
    :cond_3
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v0

    .line 1984
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, v0, p2}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return p1

    .line 1988
    :cond_4
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    goto :goto_0
.end method

.method private static final findKeyword(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 2270
    invoke-static {p0}, Landroid/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Landroid/icu/text/MessageFormat;->rootLocale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 2271
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2272
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private findOtherSubMessage(I)I
    .locals 4

    .line 1939
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    .line 1940
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 1941
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 1947
    :cond_0
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p1

    .line 1948
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    .line 1949
    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 1954
    :cond_1
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    const-string/jumbo v3, "other"

    invoke-virtual {v1, p1, v3}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    .line 1957
    :cond_2
    iget-object p1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {p1, v2}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result p1

    if-eqz p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 1960
    :cond_3
    iget-object p1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {p1, v2}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v0, :cond_0

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static format(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 991
    new-instance v0, Landroid/icu/text/MessageFormat;

    invoke-direct {v0, p0}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 992
    invoke-virtual {v0, p1}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 974
    new-instance v0, Landroid/icu/text/MessageFormat;

    invoke-direct {v0, p0}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v0, p1}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/icu/text/MessageFormat$PluralSelectorContext;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/icu/text/MessageFormat$AppendableWrapper;",
            "Ljava/text/FieldPosition;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v15, p3

    move-object/from16 v5, p4

    move-object/from16 v4, p5

    .line 1568
    iget-object v1, v6, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v3

    .line 1569
    iget-object v1, v6, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, v0}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p6

    .line 1571
    :goto_0
    iget-object v8, v6, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v8, v0}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v8

    .line 1572
    invoke-virtual {v8}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v9

    .line 1573
    invoke-virtual {v8}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v10

    .line 1574
    invoke-virtual {v4, v3, v1, v10}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;II)V

    .line 1575
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v9, v1, :cond_0

    return-void

    .line 1578
    :cond_0
    invoke-virtual {v8}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    .line 1579
    sget-object v10, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v9, v10, :cond_2

    .line 1580
    iget-boolean v8, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    if-eqz v8, :cond_1

    .line 1582
    iget-object v8, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    iget-object v9, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    iget-object v10, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    invoke-virtual {v4, v8, v9, v10}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1585
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessageFormat;->getStockNumberFormatter()Landroid/icu/text/NumberFormat;

    move-result-object v8

    iget-object v9, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    invoke-virtual {v4, v8, v9}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_1

    .line 1589
    :cond_2
    sget-object v10, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v9, v10, :cond_3

    :goto_1
    move v14, v0

    move-object v9, v3

    move-object v10, v4

    goto/16 :goto_e

    .line 1592
    :cond_3
    iget-object v1, v6, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, v0}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v1

    .line 1593
    invoke-virtual {v8}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v8

    .line 1594
    iget-object v9, v6, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v9

    const/4 v10, 0x0

    .line 1598
    iget-object v11, v6, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v11, v9}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v15, :cond_6

    .line 1600
    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v9

    .line 1601
    invoke-static/range {p5 .. p5}, Landroid/icu/text/MessageFormat$AppendableWrapper;->access$000(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 1603
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_2

    :cond_4
    move-object v13, v12

    :goto_2
    if-ltz v9, :cond_5

    .line 1605
    array-length v14, v15

    if-ge v9, v14, :cond_5

    .line 1606
    aget-object v9, v15, v9

    move-object v12, v9

    goto :goto_3

    :cond_5
    move/from16 v10, v16

    :goto_3
    move-object v14, v13

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_7

    .line 1613
    invoke-interface {v5, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1614
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v14, v11

    goto :goto_4

    :cond_7
    move-object v14, v11

    move/from16 v10, v16

    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 1621
    invoke-static/range {p5 .. p5}, Landroid/icu/text/MessageFormat$AppendableWrapper;->access$500(Landroid/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v13

    if-eqz v10, :cond_8

    .line 1624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "{"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "}"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    :goto_5
    move-object v11, v2

    move-object v9, v3

    move-object v10, v4

    move v0, v13

    move-object v13, v14

    move v14, v1

    goto/16 :goto_d

    :cond_8
    if-nez v12, :cond_9

    const-string v0, "null"

    .line 1626
    invoke-virtual {v4, v0}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_9
    if-eqz v7, :cond_b

    .line 1627
    iget v9, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    add-int/lit8 v10, v0, -0x2

    if-ne v9, v10, :cond_b

    .line 1628
    iget-wide v8, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->offset:D

    const-wide/16 v10, 0x0

    cmpl-double v0, v8, v10

    if-nez v0, :cond_a

    .line 1630
    iget-object v0, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    iget-object v8, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    iget-object v9, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    invoke-virtual {v4, v0, v8, v9}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 1634
    :cond_a
    iget-object v0, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    invoke-virtual {v4, v0, v12}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_5

    .line 1636
    :cond_b
    iget-object v9, v6, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v9, :cond_11

    add-int/lit8 v10, v0, -0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/text/Format;

    if-eqz v9, :cond_11

    .line 1638
    instance-of v0, v9, Ljava/text/ChoiceFormat;

    if-nez v0, :cond_d

    instance-of v0, v9, Landroid/icu/text/PluralFormat;

    if-nez v0, :cond_d

    instance-of v0, v9, Landroid/icu/text/SelectFormat;

    if-eqz v0, :cond_c

    goto :goto_6

    .line 1660
    :cond_c
    invoke-virtual {v4, v9, v12}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_5

    .line 1643
    :cond_d
    :goto_6
    invoke-virtual {v9, v12}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x7b

    .line 1644
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_10

    const/16 v8, 0x27

    .line 1645
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_e

    iget-object v8, v6, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v8}, Landroid/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_8

    .line 1648
    :cond_e
    invoke-static/range {p5 .. p5}, Landroid/icu/text/MessageFormat$AppendableWrapper;->access$000(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_f

    .line 1649
    invoke-virtual {v4, v0}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1657
    :cond_f
    invoke-virtual {v4, v9, v12}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    :goto_7
    move/from16 v24, v13

    move-object/from16 v25, v14

    goto :goto_9

    .line 1646
    :cond_10
    :goto_8
    new-instance v8, Landroid/icu/text/MessageFormat;

    iget-object v9, v6, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {v8, v0, v9}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v24, v13

    move-object/from16 v13, p5

    move-object/from16 v25, v14

    move-object v14, v0

    .line 1647
    invoke-direct/range {v8 .. v14}, Landroid/icu/text/MessageFormat;->format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    :goto_9
    move v14, v1

    move-object v11, v2

    move-object v9, v3

    move-object v10, v4

    goto/16 :goto_c

    :cond_11
    move/from16 v24, v13

    move-object/from16 v25, v14

    .line 1662
    sget-object v9, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    if-eq v8, v9, :cond_1b

    iget-object v9, v6, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v9, :cond_12

    add-int/lit8 v10, v0, -0x2

    .line 1664
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    goto/16 :goto_b

    .line 1676
    :cond_12
    sget-object v9, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    const-string v10, "\' is not a Number"

    const-string v13, "\'"

    if-ne v8, v9, :cond_14

    .line 1677
    instance-of v8, v12, Ljava/lang/Number;

    if-eqz v8, :cond_13

    .line 1680
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    .line 1681
    iget-object v10, v6, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-static {v10, v0, v8, v9}, Landroid/icu/text/MessageFormat;->findChoiceSubMessage(Landroid/icu/text/MessagePattern;ID)I

    move-result v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v14, v1

    move v1, v8

    move-object v8, v2

    move-object v2, v9

    move-object v9, v3

    move-object/from16 v3, p3

    move-object v11, v4

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 1682
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessageFormat;->formatComplexSubMessage(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;)V

    move-object v10, v11

    move/from16 v0, v24

    move-object/from16 v13, v25

    move-object v11, v8

    goto/16 :goto_d

    .line 1678
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move v14, v1

    move-object v9, v3

    move-object v5, v4

    move-object v4, v2

    .line 1683
    invoke-virtual {v8}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1684
    instance-of v1, v12, Ljava/lang/Number;

    if-eqz v1, :cond_18

    .line 1688
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v8, v1, :cond_16

    .line 1689
    iget-object v1, v6, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    if-nez v1, :cond_15

    .line 1690
    new-instance v1, Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    sget-object v2, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {v1, v6, v2}, Landroid/icu/text/MessageFormat$PluralSelectorProvider;-><init>(Landroid/icu/text/MessageFormat;Landroid/icu/text/PluralRules$PluralType;)V

    iput-object v1, v6, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1692
    :cond_15
    iget-object v1, v6, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    goto :goto_a

    .line 1694
    :cond_16
    iget-object v1, v6, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    if-nez v1, :cond_17

    .line 1695
    new-instance v1, Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    sget-object v2, Landroid/icu/text/PluralRules$PluralType;->ORDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {v1, v6, v2}, Landroid/icu/text/MessageFormat$PluralSelectorProvider;-><init>(Landroid/icu/text/MessageFormat;Landroid/icu/text/PluralRules$PluralType;)V

    iput-object v1, v6, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1697
    :cond_17
    iget-object v1, v6, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1699
    :goto_a
    move-object v2, v12

    check-cast v2, Ljava/lang/Number;

    .line 1700
    iget-object v3, v6, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v3, v0}, Landroid/icu/text/MessagePattern;->getPluralOffset(I)D

    move-result-wide v21

    .line 1701
    new-instance v3, Landroid/icu/text/MessageFormat$PluralSelectorContext;

    const/16 v23, 0x0

    move-object/from16 v17, v3

    move/from16 v18, v0

    move-object/from16 v19, v11

    move-object/from16 v20, v2

    invoke-direct/range {v17 .. v23}, Landroid/icu/text/MessageFormat$PluralSelectorContext;-><init>(ILjava/lang/String;Ljava/lang/Number;DLandroid/icu/text/MessageFormat$1;)V

    .line 1703
    iget-object v8, v6, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 1704
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v21

    move-object/from16 v17, v8

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    .line 1703
    invoke-static/range {v17 .. v22}, Landroid/icu/text/PluralFormat;->findSubMessage(Landroid/icu/text/MessagePattern;ILandroid/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I

    move-result v1

    move-object/from16 v0, p0

    move-object v2, v3

    move-object/from16 v3, p3

    move-object v11, v4

    move-object/from16 v4, p4

    move-object v8, v5

    move-object/from16 v5, p5

    .line 1705
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessageFormat;->formatComplexSubMessage(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;)V

    move-object v10, v8

    goto :goto_c

    .line 1685
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object v11, v4

    move-object v10, v5

    .line 1706
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v8, v1, :cond_1a

    .line 1707
    iget-object v1, v6, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/icu/text/SelectFormat;->findSubMessage(Landroid/icu/text/MessagePattern;ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 1708
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessageFormat;->formatComplexSubMessage(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;)V

    goto :goto_c

    .line 1711
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected argType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_b
    move v14, v1

    move-object v11, v2

    move-object v9, v3

    move-object v10, v4

    .line 1667
    instance-of v0, v12, Ljava/lang/Number;

    if-eqz v0, :cond_1c

    .line 1669
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessageFormat;->getStockNumberFormatter()Landroid/icu/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v10, v0, v12}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    :goto_c
    move/from16 v0, v24

    move-object/from16 v13, v25

    goto :goto_d

    .line 1670
    :cond_1c
    instance-of v0, v12, Ljava/util/Date;

    if-eqz v0, :cond_1d

    .line 1672
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessageFormat;->getStockDateFormatter()Landroid/icu/text/DateFormat;

    move-result-object v0

    invoke-virtual {v10, v0, v12}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_c

    .line 1674
    :cond_1d
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 1713
    :goto_d
    invoke-direct {v6, v10, v0, v11, v13}, Landroid/icu/text/MessageFormat;->updateMetaData(Landroid/icu/text/MessageFormat$AppendableWrapper;ILjava/text/FieldPosition;Ljava/lang/Object;)Ljava/text/FieldPosition;

    move-result-object v0

    .line 1714
    iget-object v1, v6, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, v14}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    move-object v2, v0

    :goto_e
    add-int/lit8 v0, v14, 0x1

    move-object/from16 v5, p4

    move-object v3, v9

    move-object v4, v10

    goto/16 :goto_0
.end method

.method private format(Ljava/lang/Object;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2080
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2083
    :cond_0
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    goto :goto_1

    .line 2081
    :cond_1
    :goto_0
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    :goto_1
    return-void
.end method

.method private format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/icu/text/MessageFormat$AppendableWrapper;",
            "Ljava/text/FieldPosition;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2096
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2097
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2101
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/MessageFormat;->format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-void
.end method

.method private formatComplexSubMessage(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/icu/text/MessageFormat$PluralSelectorContext;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/icu/text/MessageFormat$AppendableWrapper;",
            ")V"
        }
    .end annotation

    .line 1723
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1724
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/MessageFormat;->format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-void

    .line 1732
    :cond_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1735
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    .line 1737
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v3, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 1738
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    .line 1739
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v5

    .line 1740
    sget-object v6, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v4, v6, :cond_4

    if-nez v1, :cond_2

    .line 1742
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1744
    :cond_2
    invoke-virtual {v1, v0, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/16 p2, 0x7b

    .line 1773
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ltz p2, :cond_3

    .line 1774
    new-instance v0, Landroid/icu/text/MessageFormat;

    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    const-string p2, ""

    invoke-direct {v0, p2, p0}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 1775
    sget-object p0, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    invoke-virtual {v0, p1, p0}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;Landroid/icu/text/MessagePattern$ApostropheMode;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1776
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/MessageFormat;->format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    goto :goto_2

    .line 1778
    :cond_3
    invoke-virtual {p5, p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    .line 1747
    :cond_4
    sget-object v6, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v4, v6, :cond_7

    sget-object v6, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v4, v6, :cond_5

    goto :goto_3

    .line 1761
    :cond_5
    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v4, v3, :cond_1

    if-nez v1, :cond_6

    .line 1763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1765
    :cond_6
    invoke-virtual {v1, v0, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1767
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    .line 1768
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    .line 1769
    invoke-static {v0, v5, v2, v1}, Landroid/icu/text/MessagePattern;->appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_0

    :cond_7
    :goto_3
    if-nez v1, :cond_8

    .line 1749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1751
    :cond_8
    invoke-virtual {v1, v0, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1752
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v4, v2, :cond_a

    .line 1753
    iget-boolean v2, p2, Landroid/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    if-eqz v2, :cond_9

    .line 1755
    iget-object v2, p2, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1757
    :cond_9
    invoke-direct {p0}, Landroid/icu/text/MessageFormat;->getStockNumberFormatter()Landroid/icu/text/NumberFormat;

    move-result-object v2

    iget-object v4, p2, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    invoke-virtual {v2, v4}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1760
    :cond_a
    :goto_4
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    goto/16 :goto_0
.end method

.method private getArgName(I)Ljava/lang/String;
    .locals 2

    .line 544
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p1

    .line 545
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_0

    .line 546
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 548
    :cond_0
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLiteralStringUntilNextArgument(I)Ljava/lang/String;
    .locals 6

    .line 1790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1791
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v1

    .line 1792
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 1794
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v3, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 1795
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    .line 1796
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v5

    .line 1797
    invoke-virtual {v0, v1, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1798
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v4, v2, :cond_1

    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v4, v2, :cond_0

    goto :goto_1

    .line 1803
    :cond_0
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    goto :goto_0

    .line 1799
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStockDateFormatter()Landroid/icu/text/DateFormat;
    .locals 2

    .line 1534
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    if-nez v0, :cond_0

    .line 1535
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    const/4 v1, 0x3

    invoke-static {v1, v1, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    .line 1538
    :cond_0
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    return-object p0
.end method

.method private getStockNumberFormatter()Landroid/icu/text/NumberFormat;
    .locals 1

    .line 1541
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    if-nez v0, :cond_0

    .line 1542
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    .line 1544
    :cond_0
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    return-object p0
.end method

.method private static matchStringUntilLimitPart(Landroid/icu/text/MessagePattern;IILjava/lang/String;I)I
    .locals 6

    .line 1914
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v0

    .line 1915
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 1917
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    if-eq p1, p2, :cond_1

    .line 1918
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v4, v5, :cond_0

    .line 1919
    :cond_1
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v4

    sub-int/2addr v4, v1

    if-eqz v4, :cond_2

    .line 1921
    invoke-virtual {p3, p4, v0, v1, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    add-int/2addr v2, v4

    if-ne p1, p2, :cond_3

    return v2

    .line 1928
    :cond_3
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    goto :goto_0
.end method

.method private nextTopLevelArgStart(I)I
    .locals 2

    if-eqz p1, :cond_0

    .line 523
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    .line 526
    :cond_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    .line 527
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_1

    return p1

    .line 530
    :cond_1
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0
.end method

.method private parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    if-nez v2, :cond_0

    return-void

    .line 1209
    :cond_0
    iget-object v5, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v5}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v5

    .line 1210
    iget-object v6, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v6, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v6

    .line 1211
    invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    .line 1212
    new-instance v8, Ljava/text/ParsePosition;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v10, 0x1

    add-int/2addr v1, v10

    .line 1215
    :goto_0
    iget-object v11, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v11, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v11

    .line 1216
    invoke-virtual {v11}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v12

    .line 1217
    invoke-virtual {v11}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v13

    sub-int/2addr v13, v6

    if-eqz v13, :cond_2

    .line 1220
    invoke-virtual {v5, v6, v2, v7, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 1224
    :cond_1
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    :cond_2
    :goto_1
    add-int/2addr v7, v13

    .line 1227
    sget-object v6, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v12, v6, :cond_3

    .line 1229
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    return-void

    .line 1232
    :cond_3
    sget-object v6, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v12, v6, :cond_14

    sget-object v6, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v12, v6, :cond_4

    goto/16 :goto_b

    .line 1238
    :cond_4
    iget-object v6, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v6, v1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v6

    .line 1240
    invoke-virtual {v11}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v11

    .line 1241
    iget-object v12, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v12, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v12

    if-eqz p4, :cond_5

    .line 1247
    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v12

    .line 1248
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v17, v14

    move v14, v12

    move-object/from16 v12, v17

    goto :goto_3

    .line 1250
    :cond_5
    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v14

    sget-object v15, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v14, v15, :cond_6

    .line 1251
    iget-object v14, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v14, v12}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 1253
    :cond_6
    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    :goto_2
    move v14, v9

    move-object v15, v12

    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 1262
    iget-object v9, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v9, :cond_8

    add-int/lit8 v16, v1, -0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/text/Format;

    if-eqz v9, :cond_8

    .line 1264
    invoke-virtual {v8, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1265
    invoke-virtual {v9, v2, v8}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v1

    .line 1266
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    if-ne v9, v7, :cond_7

    .line 1267
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    .line 1271
    :cond_7
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    :goto_4
    move v9, v7

    move v7, v10

    goto/16 :goto_9

    .line 1272
    :cond_8
    sget-object v9, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    if-eq v11, v9, :cond_e

    iget-object v9, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v9, :cond_9

    add-int/lit8 v13, v1, -0x2

    .line 1274
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_6

    .line 1297
    :cond_9
    sget-object v9, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v11, v9, :cond_b

    .line 1298
    invoke-virtual {v8, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1299
    iget-object v9, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-static {v9, v1, v2, v8}, Landroid/icu/text/MessageFormat;->parseChoiceArgument(Landroid/icu/text/MessagePattern;ILjava/lang/String;Ljava/text/ParsePosition;)D

    move-result-wide v11

    .line 1300
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-ne v1, v7, :cond_a

    .line 1301
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    .line 1304
    :cond_a
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1306
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    goto :goto_4

    .line 1307
    :cond_b
    invoke-virtual {v11}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v11, v0, :cond_c

    goto :goto_5

    .line 1313
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected argType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1309
    :cond_d
    :goto_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsing of plural/select/selectordinal argument is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1279
    :cond_e
    :goto_6
    invoke-direct {v0, v6}, Landroid/icu/text/MessageFormat;->getLiteralStringUntilNextArgument(I)Ljava/lang/String;

    move-result-object v1

    .line 1281
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_f

    .line 1282
    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_7

    .line 1284
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_7
    if-gez v1, :cond_10

    .line 1287
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    .line 1290
    :cond_10
    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1291
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "{"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "}"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_8

    :cond_11
    const/4 v13, 0x0

    :goto_8
    xor-int/lit8 v7, v7, 0x1

    move v9, v1

    move-object v1, v13

    :goto_9
    if-eqz v7, :cond_13

    if-eqz p4, :cond_12

    .line 1317
    aput-object v1, p4, v14

    goto :goto_a

    :cond_12
    if-eqz v4, :cond_13

    .line 1319
    invoke-interface {v4, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    :cond_13
    :goto_a
    iget-object v1, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, v6}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    move v7, v9

    move/from16 v17, v6

    move v6, v1

    move/from16 v1, v17

    goto :goto_c

    .line 1233
    :cond_14
    :goto_b
    invoke-virtual {v11}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v6

    :goto_c
    add-int/2addr v1, v10

    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private static parseChoiceArgument(Landroid/icu/text/MessagePattern;ILjava/lang/String;Ljava/text/ParsePosition;)D
    .locals 7

    .line 1873
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    move-wide v2, v1

    move v1, v0

    .line 1877
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v4, v5, :cond_2

    .line 1878
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v4

    add-int/lit8 p1, p1, 0x2

    .line 1880
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v6

    .line 1881
    invoke-static {p0, p1, v6, p2, v0}, Landroid/icu/text/MessageFormat;->matchStringUntilLimitPart(Landroid/icu/text/MessagePattern;IILjava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_1

    add-int/2addr p1, v0

    if-le p1, v1, :cond_1

    .line 1887
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne p1, v1, :cond_0

    move-wide v2, v4

    goto :goto_1

    :cond_0
    move v1, p1

    move-wide v2, v4

    :cond_1
    add-int/lit8 p1, v6, 0x1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_1
    if-ne p1, v0, :cond_3

    .line 1895
    invoke-virtual {p3, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_2

    .line 1897
    :cond_3
    invoke-virtual {p3, p1}, Ljava/text/ParsePosition;->setIndex(I)V

    :goto_2
    return-wide v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2327
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2329
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2330
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 2331
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$ApostropheMode;

    .line 2332
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern;->getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2333
    :cond_0
    new-instance v1, Landroid/icu/text/MessagePattern;

    invoke-direct {v1, v0}, Landroid/icu/text/MessagePattern;-><init>(Landroid/icu/text/MessagePattern$ApostropheMode;)V

    iput-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 2335
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2337
    invoke-virtual {p0, v0}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 2340
    :cond_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    :goto_0
    if-lez v0, :cond_3

    .line 2341
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 2342
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    .line 2343
    invoke-virtual {p0, v1, v2}, Landroid/icu/text/MessageFormat;->setFormat(ILjava/text/Format;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2346
    :cond_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    :goto_1
    if-lez p0, :cond_4

    .line 2347
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 2348
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private resetPattern()V
    .locals 1

    .line 2105
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v0, :cond_0

    .line 2106
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->clear()V

    .line 2108
    :cond_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2109
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 2111
    iput-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    return-void
.end method

.method private setArgStartFormat(ILjava/text/Format;)V
    .locals 1

    .line 2388
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 2391
    :cond_0
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setCustomArgStartFormat(ILjava/text/Format;)V
    .locals 0

    .line 2399
    invoke-direct {p0, p1, p2}, Landroid/icu/text/MessageFormat;->setArgStartFormat(ILjava/text/Format;)V

    .line 2400
    iget-object p2, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    if-nez p2, :cond_0

    .line 2401
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 2403
    :cond_0
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateMetaData(Landroid/icu/text/MessageFormat$AppendableWrapper;ILjava/text/FieldPosition;Ljava/lang/Object;)Ljava/text/FieldPosition;
    .locals 2

    .line 1809
    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->access$000(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->access$500(Landroid/icu/text/MessageFormat$AppendableWrapper;)I

    move-result p0

    if-ge p2, p0, :cond_0

    .line 1810
    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->access$000(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Landroid/icu/text/MessageFormat$AttributeAndPosition;

    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->access$500(Landroid/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v1

    invoke-direct {v0, p4, p2, v1}, Landroid/icu/text/MessageFormat$AttributeAndPosition;-><init>(Ljava/lang/Object;II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    .line 1812
    sget-object p0, Landroid/icu/text/MessageFormat$Field;->ARGUMENT:Landroid/icu/text/MessageFormat$Field;

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/icu/text/MessageFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1813
    invoke-virtual {p3, p2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1814
    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->access$500(Landroid/icu/text/MessageFormat$AppendableWrapper;)I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object p3
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2293
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2296
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2298
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v0, :cond_0

    .line 2299
    new-instance v0, Landroid/icu/text/MessagePattern;

    invoke-direct {v0}, Landroid/icu/text/MessagePattern;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 2301
    :cond_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2303
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2305
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2308
    :cond_1
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    move v0, v1

    move v2, v0

    .line 2310
    :goto_0
    invoke-direct {p0, v0}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v0

    if-ltz v0, :cond_4

    .line 2311
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2312
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2313
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2306
    :cond_3
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2319
    :cond_4
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 1

    .line 445
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Landroid/icu/text/MessagePattern;

    invoke-direct {v0, p1}, Landroid/icu/text/MessagePattern;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Landroid/icu/text/MessagePattern;->parse(Ljava/lang/String;)Landroid/icu/text/MessagePattern;

    .line 451
    :goto_0
    invoke-direct {p0}, Landroid/icu/text/MessageFormat;->cacheExplicitFormats()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 453
    invoke-direct {p0}, Landroid/icu/text/MessageFormat;->resetPattern()V

    .line 454
    throw p1
.end method

.method public applyPattern(Ljava/lang/String;Landroid/icu/text/MessagePattern$ApostropheMode;)V
    .locals 1

    .line 473
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Landroid/icu/text/MessagePattern;

    invoke-direct {v0, p2}, Landroid/icu/text/MessagePattern;-><init>(Landroid/icu/text/MessagePattern$ApostropheMode;)V

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    goto :goto_0

    .line 475
    :cond_0
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    if-eq p2, v0, :cond_1

    .line 476
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, p2}, Landroid/icu/text/MessagePattern;->clearPatternAndSetApostropheMode(Landroid/icu/text/MessagePattern$ApostropheMode;)V

    .line 478
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .line 1391
    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessageFormat;

    .line 1393
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1394
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 1395
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1396
    iget-object v4, v0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1399
    :cond_0
    iput-object v2, v0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 1402
    :cond_1
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 1403
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 1404
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1405
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1406
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1407
    iget-object v4, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/Format;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1410
    :cond_2
    iput-object v2, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 1413
    :cond_3
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/MessagePattern;

    :goto_2
    iput-object v1, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 1415
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    if-nez v1, :cond_5

    move-object v1, v2

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateFormat;

    :goto_3
    iput-object v1, v0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    .line 1417
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    if-nez p0, :cond_6

    move-object p0, v2

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/NumberFormat;

    :goto_4
    iput-object p0, v0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    .line 1419
    iput-object v2, v0, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1420
    iput-object v2, v0, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1431
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1433
    :cond_1
    check-cast p1, Landroid/icu/text/MessageFormat;

    .line 1434
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    iget-object v3, p1, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    iget-object v3, p1, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 1435
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    iget-object v3, p1, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 1436
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    iget-object p1, p1, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 1437
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 1033
    new-instance v0, Landroid/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v0, p2}, Landroid/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    invoke-direct {p0, p1, v0, p3}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-object p2
.end method

.method public final format(Ljava/util/Map;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            ")",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .line 954
    new-instance v0, Landroid/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v0, p2}, Landroid/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0, p3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-object p2
.end method

.method public final format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 921
    new-instance v0, Landroid/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v0, p2}, Landroid/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-object p2
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 4

    if-eqz p1, :cond_1

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1079
    new-instance v1, Landroid/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v1, v0}, Landroid/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuilder;)V

    .line 1080
    invoke-virtual {v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->useAttributes()V

    const/4 v2, 0x0

    .line 1081
    invoke-direct {p0, p1, v1, v2}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    .line 1082
    new-instance p0, Ljava/text/AttributedString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 1083
    invoke-static {v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->access$000(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessageFormat$AttributeAndPosition;

    .line 1084
    invoke-static {v0}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->access$100(Landroid/icu/text/MessageFormat$AttributeAndPosition;)Ljava/text/AttributedCharacterIterator$Attribute;

    move-result-object v1

    invoke-static {v0}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->access$200(Landroid/icu/text/MessageFormat$AttributeAndPosition;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->access$300(Landroid/icu/text/MessageFormat$AttributeAndPosition;)I

    move-result v3

    invoke-static {v0}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->access$400(Landroid/icu/text/MessageFormat$AttributeAndPosition;)I

    move-result v0

    invoke-virtual {p0, v1, v2, v3, v0}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    .line 1086
    :cond_0
    invoke-virtual {p0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    return-object p0

    .line 1075
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "formatToCharacterIterator must be passed non-null object"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;
    .locals 1

    .line 486
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v0, :cond_0

    .line 487
    new-instance v0, Landroid/icu/text/MessagePattern;

    invoke-direct {v0}, Landroid/icu/text/MessagePattern;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 489
    :cond_0
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;

    move-result-object p0

    return-object p0
.end method

.method public getArgumentNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 820
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 821
    :goto_0
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 822
    invoke-direct {p0, v2}, Landroid/icu/text/MessageFormat;->getArgName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getFormatByArgumentName(Ljava/lang/String;)Ljava/text/Format;
    .locals 4

    .line 834
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 837
    :cond_0
    invoke-static {p1}, Landroid/icu/text/MessagePattern;->validateArgumentName(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ge v0, v2, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    .line 841
    :cond_2
    invoke-direct {p0, v2}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v2

    if-ltz v2, :cond_3

    add-int/lit8 v3, v2, 0x1

    .line 842
    invoke-direct {p0, v3, p1, v0}, Landroid/icu/text/MessageFormat;->argNameMatches(ILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 843
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/Format;

    return-object p0

    :cond_3
    return-object v1
.end method

.method public getFormats()[Ljava/text/Format;
    .locals 4

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 808
    :goto_0
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 809
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 811
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/text/Format;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/text/Format;

    return-object p0
.end method

.method public getFormatsByArgumentIndex()[Ljava/text/Format;
    .locals 5

    .line 770
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_3

    .line 775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 776
    :goto_0
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 777
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v2

    .line 778
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    .line 779
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 781
    :cond_0
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/text/Format;

    :goto_2
    invoke-virtual {v0, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 783
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/text/Format;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/text/Format;

    return-object p0

    .line 771
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    .line 422
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getULocale()Landroid/icu/util/ULocale;
    .locals 0

    .line 431
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1447
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public parse(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1180
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1181
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object p0

    .line 1182
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 1183
    :cond_0
    new-instance p0, Ljava/text/ParseException;

    .line 1184
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result p1

    const-string v0, "MessageFormat parse error!"

    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .locals 8

    .line 1119
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1127
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 1128
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1133
    new-array v0, v0, [Ljava/lang/Object;

    .line 1135
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    .line 1136
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 1137
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    if-ne p0, v7, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object v0

    .line 1120
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This method is not available in MessageFormat objects that use named argument."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    .line 1379
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1380
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1382
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MessageFormat;->parseToMap(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public parseToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1341
    new-instance v6, Ljava/text/ParsePosition;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1342
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v6

    move-object v5, v7

    .line 1343
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 1344
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    if-eqz p0, :cond_0

    return-object v7

    .line 1345
    :cond_0
    new-instance p0, Ljava/text/ParseException;

    .line 1346
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result p1

    const-string v0, "MessageFormat parse error!"

    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public parseToMap(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1157
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1158
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v6

    .line 1159
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 1160
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    if-ne p0, v7, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v6
.end method

.method public setFormat(ILjava/text/Format;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    .line 736
    :goto_0
    invoke-direct {p0, v0}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v0

    if-ltz v0, :cond_1

    if-ne v1, p1, :cond_0

    .line 738
    invoke-direct {p0, v0, p2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 743
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .locals 3

    .line 675
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 680
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 681
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 682
    invoke-direct {p0, v0, p2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    goto :goto_0

    :cond_1
    return-void

    .line 676
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFormatByArgumentName(Ljava/lang/String;Ljava/text/Format;)V
    .locals 3

    .line 706
    invoke-static {p1}, Landroid/icu/text/MessagePattern;->validateArgumentName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 710
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 711
    invoke-direct {p0, v2, p1, v0}, Landroid/icu/text/MessageFormat;->argNameMatches(ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 712
    invoke-direct {p0, v1, p2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFormats([Ljava/text/Format;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 646
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 647
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 648
    aget-object v2, p1, v0

    invoke-direct {p0, v1, v2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .locals 3

    .line 579
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 584
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 585
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v1

    .line 586
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 587
    aget-object v1, p1, v1

    invoke-direct {p0, v0, v1}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    goto :goto_0

    :cond_1
    return-void

    .line 580
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFormatsByArgumentName(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/text/Format;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 613
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 614
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->getArgName(I)Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/Format;

    invoke-direct {p0, v0, v1}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLocale(Landroid/icu/util/ULocale;)V
    .locals 1

    .line 405
    invoke-virtual {p0}, Landroid/icu/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 406
    iput-object p1, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    const/4 p1, 0x0

    .line 409
    iput-object p1, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    .line 410
    iput-object p1, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    .line 411
    iput-object p1, p0, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    .line 412
    iput-object p1, p0, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    .line 413
    invoke-virtual {p0, v0}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 390
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/MessageFormat;->setLocale(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .line 505
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 510
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 513
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0

    .line 506
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "toPattern() is not supported after custom Format objects have been set via setFormat() or similar APIs"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public usesNamedArguments()Z
    .locals 0

    .line 1002
    iget-object p0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result p0

    return p0
.end method
