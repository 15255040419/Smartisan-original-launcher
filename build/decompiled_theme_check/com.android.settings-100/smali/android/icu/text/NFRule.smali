.class final Landroid/icu/text/NFRule;
.super Ljava/lang/Object;
.source "NFRule.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final IMPROPER_FRACTION_RULE:I = -0x2

.field static final INFINITY_RULE:I = -0x5

.field static final MASTER_RULE:I = -0x4

.field static final NAN_RULE:I = -0x6

.field static final NEGATIVE_NUMBER_RULE:I = -0x1

.field static final PROPER_FRACTION_RULE:I = -0x3

.field private static final RULE_PREFIXES:[Ljava/lang/String;

.field static final ZERO:Ljava/lang/Long;


# instance fields
.field private baseValue:J

.field private decimalPoint:C

.field private exponent:S

.field private final formatter:Landroid/icu/text/RuleBasedNumberFormat;

.field private radix:I

.field private rulePatternFormat:Landroid/icu/text/PluralFormat;

.field private ruleText:Ljava/lang/String;

.field private sub1:Landroid/icu/text/NFSubstitution;

.field private sub2:Landroid/icu/text/NFSubstitution;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-wide/16 v0, 0x0

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    const-string v1, "<<"

    const-string v2, "<%"

    const-string v3, "<#"

    const-string v4, "<0"

    const-string v5, ">>"

    const-string v6, ">%"

    const-string v7, ">#"

    const-string v8, ">0"

    const-string v9, "=%"

    const-string v10, "=#"

    const-string v11, "=0"

    .line 578
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/NFRule;->RULE_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    .locals 1

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 74
    iput v0, p0, Landroid/icu/text/NFRule;->radix:I

    const/4 v0, 0x0

    .line 80
    iput-short v0, p0, Landroid/icu/text/NFRule;->exponent:S

    .line 85
    iput-char v0, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    .line 105
    iput-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    .line 111
    iput-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    .line 254
    iput-object p1, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    if-nez p2, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    invoke-direct {p0, p2}, Landroid/icu/text/NFRule;->parseRuleDescriptor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    return-void
.end method

.method private allIgnorable(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1309
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1312
    :cond_0
    iget-object p0, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScanner()Landroid/icu/text/RbnfLenientScanner;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1313
    invoke-interface {p0, p1}, Landroid/icu/text/RbnfLenientScanner;->allIgnorable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private expectedExponent()S
    .locals 6

    .line 563
    iget v0, p0, Landroid/icu/text/NFRule;->radix:I

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    long-to-double v0, v0

    .line 570
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iget v2, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    .line 571
    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-long v1, v1

    add-int/lit8 v3, v0, 0x1

    int-to-short v3, v3

    invoke-static {v1, v2, v3}, Landroid/icu/text/NFRule;->power(JS)J

    move-result-wide v1

    iget-wide v4, p0, Landroid/icu/text/NFRule;->baseValue:J

    cmp-long p0, v1, v4

    if-gtz p0, :cond_1

    return v3

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private extractSubstitution(Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;)Landroid/icu/text/NFSubstitution;
    .locals 8

    .line 470
    iget-object v0, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/text/NFRule;->indexOfAnyRulePrefix(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 480
    :cond_0
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v4, ">>>"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x2

    goto :goto_0

    .line 486
    :cond_1
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 487
    iget-object v4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/16 v5, 0x3c

    if-ne v3, v5, :cond_2

    if-eq v4, v2, :cond_2

    .line 489
    iget-object v5, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_2

    move v3, v6

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    if-ne v3, v2, :cond_3

    return-object v1

    .line 508
    :cond_3
    iget-object v5, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v7, v3, 0x1

    .line 509
    invoke-virtual {v1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    .line 508
    invoke-static/range {v1 .. v6}, Landroid/icu/text/NFSubstitution;->makeSubstitution(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)Landroid/icu/text/NFSubstitution;

    move-result-object p1

    .line 512
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    return-object p1
.end method

.method private extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V
    .locals 2

    .line 418
    iput-object p2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 419
    invoke-direct {p0, p1, p3}, Landroid/icu/text/NFRule;->extractSubstitution(Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;)Landroid/icu/text/NFSubstitution;

    move-result-object p2

    iput-object p2, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    .line 420
    iget-object p2, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 422
    iput-object p1, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    goto :goto_0

    .line 425
    :cond_0
    invoke-direct {p0, p1, p3}, Landroid/icu/text/NFRule;->extractSubstitution(Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;)Landroid/icu/text/NFSubstitution;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    .line 427
    :goto_0
    iget-object p1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string p2, "$("

    .line 428
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_1

    const-string p3, ")$"

    .line 429
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p3

    goto :goto_1

    :cond_1
    const/4 p3, -0x1

    :goto_1
    if-ltz p3, :cond_5

    const/16 v0, 0x2c

    .line 431
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_4

    .line 435
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {v1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v1, "cardinal"

    .line 437
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 438
    sget-object p2, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    goto :goto_2

    :cond_2
    const-string/jumbo v1, "ordinal"

    .line 440
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 441
    sget-object p2, Landroid/icu/text/PluralRules$PluralType;->ORDINAL:Landroid/icu/text/PluralRules$PluralType;

    .line 446
    :goto_2
    iget-object v1, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    add-int/lit8 v0, v0, 0x1

    .line 447
    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 446
    invoke-virtual {v1, p2, p1}, Landroid/icu/text/RuleBasedNumberFormat;->createPluralFormat(Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;)Landroid/icu/text/PluralFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    goto :goto_3

    .line 444
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is an unknown type"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 433
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Rule \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" does not have a defined type"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_3
    return-void
.end method

.method private findText(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/PluralFormat;I)[I
    .locals 5

    .line 1268
    iget-object v0, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScanner()Landroid/icu/text/RbnfLenientScanner;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1270
    new-instance p2, Ljava/text/FieldPosition;

    invoke-direct {p2, v3}, Ljava/text/FieldPosition;-><init>(I)V

    .line 1271
    invoke-virtual {p2, p4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1272
    invoke-virtual {p3, p1, v0, p2}, Landroid/icu/text/PluralFormat;->parseType(Ljava/lang/String;Landroid/icu/text/RbnfLenientScanner;Ljava/text/FieldPosition;)Ljava/lang/String;

    .line 1273
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p3

    if-ltz p3, :cond_0

    .line 1275
    iget-object p4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v0, "$("

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    .line 1276
    iget-object v0, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v4, ")$"

    invoke-virtual {v0, v4, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v2

    .line 1277
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p2

    sub-int/2addr p2, p3

    .line 1278
    iget-object v4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v4, v3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 1279
    iget-object p0, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1280
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p3, v0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v0, p4, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int v0, p3, p2

    .line 1281
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v0, p0, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v2, [I

    .line 1283
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p3, v0

    aput p3, p1, v3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p2, p0

    aput p2, p1, v1

    return-object p1

    :cond_0
    new-array p0, v2, [I

    .line 1286
    fill-array-data p0, :array_0

    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    .line 1292
    invoke-interface {v0, p1, p2, p4}, Landroid/icu/text/RbnfLenientScanner;->findText(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object p0

    return-object p0

    :cond_2
    new-array p0, v2, [I

    .line 1296
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    aput p1, p0, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    aput p1, p0, v1

    return-object p0

    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data
.end method

.method private static indexOfAnyRulePrefix(Ljava/lang/String;)I
    .locals 6

    .line 593
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_3

    .line 595
    sget-object v0, Landroid/icu/text/NFRule;->RULE_PREFIXES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    .line 596
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v1, :cond_1

    if-eq v4, v1, :cond_0

    if-ge v5, v4, :cond_1

    :cond_0
    move v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v1, v4

    :cond_3
    return v1
.end method

.method public static makeRules(Ljava/lang/String;Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;Landroid/icu/text/RuleBasedNumberFormat;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/text/NFRuleSet;",
            "Landroid/icu/text/NFRule;",
            "Landroid/icu/text/RuleBasedNumberFormat;",
            "Ljava/util/List<",
            "Landroid/icu/text/NFRule;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 141
    new-instance v4, Landroid/icu/text/NFRule;

    move-object/from16 v5, p0

    invoke-direct {v4, v2, v5}, Landroid/icu/text/NFRule;-><init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    .line 142
    iget-object v5, v4, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const/16 v6, 0x5b

    .line 146
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_0

    const/4 v7, -0x1

    goto :goto_0

    :cond_0
    const/16 v7, 0x5d

    .line 147
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    :goto_0
    const-wide/16 v8, 0x0

    if-ltz v7, :cond_b

    if-gt v6, v7, :cond_b

    .line 153
    iget-wide v10, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v12, -0x3

    cmp-long v14, v10, v12

    if-eqz v14, :cond_b

    const-wide/16 v14, -0x1

    cmp-long v14, v10, v14

    if-eqz v14, :cond_b

    const-wide/16 v14, -0x5

    cmp-long v14, v10, v14

    if-eqz v14, :cond_b

    const-wide/16 v14, -0x6

    cmp-long v10, v10, v14

    if-nez v10, :cond_1

    goto/16 :goto_4

    .line 165
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    iget-wide v14, v4, Landroid/icu/text/NFRule;->baseValue:J

    cmp-long v11, v14, v8

    const-wide/16 v16, -0x4

    if-lez v11, :cond_2

    iget v11, v4, Landroid/icu/text/NFRule;->radix:I

    int-to-long v12, v11

    iget-short v11, v4, Landroid/icu/text/NFRule;->exponent:S

    .line 171
    invoke-static {v12, v13, v11}, Landroid/icu/text/NFRule;->power(JS)J

    move-result-wide v11

    rem-long/2addr v14, v11

    cmp-long v11, v14, v8

    if-eqz v11, :cond_4

    :cond_2
    iget-wide v11, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v13, -0x2

    cmp-long v15, v11, v13

    if-eqz v15, :cond_4

    cmp-long v11, v11, v16

    if-nez v11, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    const/4 v12, 0x0

    goto :goto_3

    .line 181
    :cond_4
    :goto_1
    new-instance v12, Landroid/icu/text/NFRule;

    const/4 v11, 0x0

    invoke-direct {v12, v2, v11}, Landroid/icu/text/NFRule;-><init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    .line 182
    iget-wide v13, v4, Landroid/icu/text/NFRule;->baseValue:J

    cmp-long v2, v13, v8

    if-ltz v2, :cond_5

    .line 183
    iput-wide v13, v12, Landroid/icu/text/NFRule;->baseValue:J

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    move-result v2

    if-nez v2, :cond_7

    .line 185
    iget-wide v13, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    iput-wide v13, v4, Landroid/icu/text/NFRule;->baseValue:J

    goto :goto_2

    :cond_5
    const-wide/16 v8, -0x2

    cmp-long v2, v13, v8

    if-nez v2, :cond_6

    const-wide/16 v8, -0x3

    .line 192
    iput-wide v8, v12, Landroid/icu/text/NFRule;->baseValue:J

    goto :goto_2

    :cond_6
    cmp-long v2, v13, v16

    if-nez v2, :cond_7

    .line 198
    iput-wide v13, v12, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, -0x2

    .line 199
    iput-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    .line 204
    :cond_7
    :goto_2
    iget v2, v4, Landroid/icu/text/NFRule;->radix:I

    iput v2, v12, Landroid/icu/text/NFRule;->radix:I

    .line 205
    iget-short v2, v4, Landroid/icu/text/NFRule;->exponent:S

    iput-short v2, v12, Landroid/icu/text/NFRule;->exponent:S

    const/4 v2, 0x0

    .line 209
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v7, 0x1

    .line 210
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_8

    .line 211
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v0, v2, v1}, Landroid/icu/text/NFRule;->extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V

    const/4 v2, 0x0

    .line 219
    :goto_3
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 220
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    .line 221
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    .line 222
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v7, v2, :cond_9

    .line 223
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_9
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v2, v1}, Landroid/icu/text/NFRule;->extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V

    if-eqz v12, :cond_c

    .line 233
    iget-wide v1, v12, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-ltz v1, :cond_a

    .line 234
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 237
    :cond_a
    invoke-virtual {v0, v12}, Landroid/icu/text/NFRuleSet;->setNonNumericalRule(Landroid/icu/text/NFRule;)V

    goto :goto_5

    .line 159
    :cond_b
    :goto_4
    invoke-direct {v4, v0, v5, v1}, Landroid/icu/text/NFRule;->extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V

    .line 241
    :cond_c
    :goto_5
    iget-wide v1, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-ltz v1, :cond_d

    .line 242
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 245
    :cond_d
    invoke-virtual {v0, v4}, Landroid/icu/text/NFRuleSet;->setNonNumericalRule(Landroid/icu/text/NFRule;)V

    :goto_6
    return-void
.end method

.method private matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Landroid/icu/text/PluralFormat;Ljava/text/ParsePosition;Landroid/icu/text/NFSubstitution;D)Ljava/lang/Number;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v8, p7

    .line 1130
    invoke-direct {v0, v2}, Landroid/icu/text/NFRule;->allIgnorable(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 1131
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v5}, Ljava/text/ParsePosition;-><init>(I)V

    move/from16 v6, p2

    .line 1138
    invoke-direct {v0, v1, v2, v3, v6}, Landroid/icu/text/NFRule;->findText(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/PluralFormat;I)[I

    move-result-object v6

    .line 1139
    aget v7, v6, v5

    const/16 v17, 0x1

    .line 1140
    aget v6, v6, v17

    :goto_0
    if-ltz v7, :cond_1

    .line 1145
    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1146
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 1147
    iget-object v9, v0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    .line 1148
    invoke-virtual {v9}, Landroid/icu/text/RuleBasedNumberFormat;->lenientParseEnabled()Z

    move-result v16

    move-object/from16 v9, p8

    move-object v11, v4

    move-wide/from16 v12, p3

    move-wide/from16 v14, p9

    .line 1147
    invoke-virtual/range {v9 .. v16}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    move-result-object v9

    .line 1156
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-ne v10, v7, :cond_0

    add-int/2addr v7, v6

    .line 1157
    invoke-virtual {v8, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v9

    .line 1173
    :cond_0
    invoke-virtual {v4, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    add-int/2addr v7, v6

    .line 1174
    invoke-direct {v0, v1, v2, v3, v7}, Landroid/icu/text/NFRule;->findText(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/PluralFormat;I)[I

    move-result-object v6

    .line 1175
    aget v7, v6, v5

    .line 1176
    aget v6, v6, v17

    goto :goto_0

    .line 1180
    :cond_1
    invoke-virtual {v8, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1181
    sget-object v0, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    return-object v0

    :cond_2
    if-nez p8, :cond_3

    .line 1189
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1192
    :cond_3
    new-instance v9, Ljava/text/ParsePosition;

    invoke-direct {v9, v5}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1193
    sget-object v10, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    .line 1195
    iget-object v0, v0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    .line 1196
    invoke-virtual {v0}, Landroid/icu/text/RuleBasedNumberFormat;->lenientParseEnabled()Z

    move-result v7

    move-object/from16 v0, p8

    move-object/from16 v1, p1

    move-object v2, v9

    move-wide/from16 v3, p3

    move-wide/from16 v5, p9

    .line 1195
    invoke-virtual/range {v0 .. v7}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    move-result-object v0

    .line 1197
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1202
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    if-eqz v0, :cond_4

    move-object v10, v0

    :cond_4
    return-object v10
.end method

.method private parseRuleDescriptor(Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, ":"

    .line 276
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v2, v5, :cond_14

    .line 281
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v2, v4

    .line 283
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 292
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v2, -0x1

    .line 293
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x78

    const/16 v9, 0x30

    if-lt v6, v9, :cond_e

    const/16 v10, 0x39

    if-gt v6, v10, :cond_e

    if-eq v7, v8, :cond_e

    move v8, v3

    move v13, v8

    const-wide/16 v11, 0x0

    :goto_1
    const-string v14, " in rule descriptor"

    const-string v15, "Illegal character "

    const/16 v6, 0x2e

    const/16 v7, 0x2c

    const-wide/16 v16, 0xa

    const/16 v3, 0x2f

    const/16 v4, 0x3e

    if-ge v8, v2, :cond_5

    .line 306
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v9, :cond_1

    if-gt v13, v10, :cond_1

    mul-long v11, v11, v16

    add-int/lit8 v3, v13, -0x30

    int-to-long v3, v3

    add-long/2addr v11, v3

    goto :goto_2

    :cond_1
    if-eq v13, v3, :cond_5

    if-ne v13, v4, :cond_2

    goto :goto_3

    .line 313
    :cond_2
    invoke-static {v13}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v3

    if-nez v3, :cond_4

    if-eq v13, v7, :cond_4

    if-ne v13, v6, :cond_3

    goto :goto_2

    .line 314
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_1

    .line 320
    :cond_5
    :goto_3
    invoke-virtual {v0, v11, v12}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    if-ne v13, v3, :cond_c

    add-int/lit8 v8, v8, 0x1

    const-wide/16 v11, 0x0

    :goto_4
    if-ge v8, v2, :cond_a

    .line 330
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v9, :cond_6

    if-gt v13, v10, :cond_6

    mul-long v11, v11, v16

    add-int/lit8 v3, v13, -0x30

    int-to-long v9, v3

    add-long/2addr v11, v9

    goto :goto_5

    :cond_6
    if-ne v13, v4, :cond_7

    goto :goto_6

    .line 337
    :cond_7
    invoke-static {v13}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v3

    if-nez v3, :cond_9

    if-eq v13, v7, :cond_9

    if-ne v13, v6, :cond_8

    goto :goto_5

    .line 338
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x30

    const/16 v10, 0x39

    goto :goto_4

    :cond_a
    :goto_6
    long-to-int v3, v11

    .line 345
    iput v3, v0, Landroid/icu/text/NFRule;->radix:I

    .line 346
    iget v3, v0, Landroid/icu/text/NFRule;->radix:I

    if-eqz v3, :cond_b

    .line 349
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/NFRule;->expectedExponent()S

    move-result v3

    iput-short v3, v0, Landroid/icu/text/NFRule;->exponent:S

    goto :goto_7

    .line 347
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rule can\'t have radix of 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_7
    if-ne v13, v4, :cond_14

    :goto_8
    if-ge v8, v2, :cond_14

    .line 359
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_d

    .line 360
    iget-short v3, v0, Landroid/icu/text/NFRule;->exponent:S

    if-lez v3, :cond_d

    add-int/lit8 v3, v3, -0x1

    int-to-short v3, v3

    .line 361
    iput-short v3, v0, Landroid/icu/text/NFRule;->exponent:S

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 363
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in rule descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v3, "-x"

    .line 369
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-wide/16 v2, -0x1

    .line 370
    invoke-virtual {v0, v2, v3}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    goto :goto_9

    :cond_f
    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    const/16 v2, 0x30

    if-ne v6, v2, :cond_10

    if-ne v7, v8, :cond_10

    const-wide/16 v2, -0x3

    .line 374
    invoke-virtual {v0, v2, v3}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    const/4 v2, 0x1

    .line 375
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, v0, Landroid/icu/text/NFRule;->decimalPoint:C

    goto :goto_9

    :cond_10
    const/4 v2, 0x1

    if-ne v6, v8, :cond_11

    if-ne v7, v8, :cond_11

    const-wide/16 v3, -0x2

    .line 378
    invoke-virtual {v0, v3, v4}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    .line 379
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, v0, Landroid/icu/text/NFRule;->decimalPoint:C

    goto :goto_9

    :cond_11
    if-ne v6, v8, :cond_12

    const/16 v3, 0x30

    if-ne v7, v3, :cond_12

    const-wide/16 v3, -0x4

    .line 382
    invoke-virtual {v0, v3, v4}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    .line 383
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, v0, Landroid/icu/text/NFRule;->decimalPoint:C

    goto :goto_9

    :cond_12
    const-string v2, "NaN"

    .line 385
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-wide/16 v2, -0x6

    .line 386
    invoke-virtual {v0, v2, v3}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    goto :goto_9

    :cond_13
    const-string v2, "Inf"

    .line 388
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-wide/16 v2, -0x5

    .line 389
    invoke-virtual {v0, v2, v3}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    .line 398
    :cond_14
    :goto_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x27

    if-ne v0, v2, :cond_15

    const/4 v0, 0x1

    .line 399
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_15
    return-object v1
.end method

.method static power(JS)J
    .locals 4

    if-ltz p2, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_2

    const-wide/16 v0, 0x1

    :goto_0
    if-lez p2, :cond_1

    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    mul-long/2addr v0, p0

    :cond_0
    mul-long/2addr p0, p0

    shr-int/lit8 p2, p2, 0x1

    int-to-short p2, p2

    goto :goto_0

    :cond_1
    return-wide v0

    .line 839
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Base can not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 836
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Exponent can not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private prefixLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1235
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1239
    :cond_0
    iget-object p0, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScanner()Landroid/icu/text/RbnfLenientScanner;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1241
    invoke-interface {p0, p1, p2}, Landroid/icu/text/RbnfLenientScanner;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1246
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1247
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method private stripPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 1

    .line 1077
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 1084
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/text/NFRule;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    .line 1088
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    add-int/2addr p2, p0

    invoke-virtual {p3, p2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1089
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public doFormat(DLjava/lang/StringBuilder;II)V
    .locals 12

    move-object v0, p0

    move-object v7, p3

    move/from16 v8, p4

    .line 792
    iget-object v1, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 794
    iget-object v2, v0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    const/4 v9, 0x0

    if-nez v2, :cond_0

    .line 795
    iget-object v2, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {p3, v8, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v1

    move v11, v9

    goto/16 :goto_1

    .line 798
    :cond_0
    iget-object v1, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v2, "$("

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 799
    iget-object v2, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v3, ")$"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 800
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 801
    iget-object v4, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    .line 802
    iget-object v4, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v8, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-wide/16 v4, 0x0

    cmpg-double v2, v4, p1

    if-gtz v2, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p1, v4

    if-gez v2, :cond_2

    .line 808
    iget v2, v0, Landroid/icu/text/NFRule;->radix:I

    int-to-long v4, v2

    iget-short v2, v0, Landroid/icu/text/NFRule;->exponent:S

    invoke-static {v4, v5, v2}, Landroid/icu/text/NFRule;->power(JS)J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    goto :goto_0

    .line 811
    :cond_2
    iget v2, v0, Landroid/icu/text/NFRule;->radix:I

    int-to-long v4, v2

    iget-short v2, v0, Landroid/icu/text/NFRule;->exponent:S

    invoke-static {v4, v5, v2}, Landroid/icu/text/NFRule;->power(JS)J

    move-result-wide v4

    long-to-double v4, v4

    div-double v4, p1, v4

    .line 813
    :goto_0
    iget-object v2, v0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    double-to-long v4, v4

    long-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/icu/text/PluralFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v8, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v1, :cond_3

    .line 815
    iget-object v2, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v2, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v8, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    :cond_3
    iget-object v2, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v2, v4

    move v10, v1

    move v11, v2

    .line 819
    :goto_1
    iget-object v1, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v1, :cond_5

    .line 820
    invoke-virtual {v1}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v2

    if-le v2, v10, :cond_4

    move v2, v11

    goto :goto_2

    :cond_4
    move v2, v9

    :goto_2
    sub-int v5, v8, v2

    move-wide v2, p1

    move-object v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuilder;II)V

    .line 822
    :cond_5
    iget-object v0, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_7

    .line 823
    invoke-virtual {v0}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v1

    if-le v1, v10, :cond_6

    goto :goto_3

    :cond_6
    move v11, v9

    :goto_3
    sub-int v4, v8, v11

    move-wide v1, p1

    move-object v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuilder;II)V

    :cond_7
    return-void
.end method

.method public doFormat(JLjava/lang/StringBuilder;II)V
    .locals 12

    move-object v0, p0

    move-object v7, p3

    move/from16 v8, p4

    .line 750
    iget-object v1, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 752
    iget-object v2, v0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    const/4 v9, 0x0

    if-nez v2, :cond_0

    .line 753
    iget-object v2, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {p3, v8, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v1

    move v11, v9

    goto :goto_0

    .line 756
    :cond_0
    iget-object v1, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v2, "$("

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 757
    iget-object v2, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v3, ")$"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 758
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 759
    iget-object v4, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    .line 760
    iget-object v4, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v8, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    :cond_1
    iget-object v2, v0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    iget v4, v0, Landroid/icu/text/NFRule;->radix:I

    int-to-long v4, v4

    iget-short v6, v0, Landroid/icu/text/NFRule;->exponent:S

    invoke-static {v4, v5, v6}, Landroid/icu/text/NFRule;->power(JS)J

    move-result-wide v4

    div-long v4, p1, v4

    long-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/icu/text/PluralFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v8, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v1, :cond_2

    .line 764
    iget-object v2, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v2, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v8, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    :cond_2
    iget-object v2, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v2, v4

    move v10, v1

    move v11, v2

    .line 768
    :goto_0
    iget-object v1, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v1, :cond_4

    .line 769
    invoke-virtual {v1}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v2

    if-le v2, v10, :cond_3

    move v2, v11

    goto :goto_1

    :cond_3
    move v2, v9

    :goto_1
    sub-int v5, v8, v2

    move-wide v2, p1

    move-object v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuilder;II)V

    .line 771
    :cond_4
    iget-object v0, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_6

    .line 772
    invoke-virtual {v0}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v1

    if-le v1, v10, :cond_5

    goto :goto_2

    :cond_5
    move v11, v9

    :goto_2
    sub-int v4, v8, v11

    move-wide v1, p1

    move-object v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuilder;II)V

    :cond_6
    return-void
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;
    .locals 27

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    .line 911
    new-instance v13, Ljava/text/ParsePosition;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Ljava/text/ParsePosition;-><init>(I)V

    .line 917
    iget-object v0, v11, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, v11, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    move v15, v0

    .line 918
    iget-object v0, v11, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, v11, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    move v9, v0

    .line 919
    iget-object v0, v11, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-direct {v11, v1, v0, v13}, Landroid/icu/text/NFRule;->stripPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v10

    .line 920
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v16, v0, v1

    .line 922
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz v15, :cond_2

    .line 925
    sget-object v0, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    return-object v0

    .line 927
    :cond_2
    iget-wide v0, v11, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v2, -0x5

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 929
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 930
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_3
    const-wide/16 v2, -0x6

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 934
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 935
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_4
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    .line 970
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-double v7, v0

    move-wide/from16 v18, v2

    move v6, v14

    move/from16 v17, v6

    .line 977
    :goto_2
    invoke-virtual {v13, v14}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 978
    iget-object v0, v11, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 979
    invoke-virtual {v0, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v3, v11, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    iget-object v4, v11, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v17

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-wide v3, v7

    move/from16 v22, v6

    move-object/from16 v6, v20

    move-wide/from16 v23, v7

    move-object v7, v13

    move-object/from16 v8, v21

    move/from16 v25, v9

    move-object v14, v10

    move-wide/from16 v9, p4

    .line 978
    invoke-direct/range {v0 .. v10}, Landroid/icu/text/NFRule;->matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Landroid/icu/text/PluralFormat;Ljava/text/ParsePosition;Landroid/icu/text/NFSubstitution;D)Ljava/lang/Number;

    move-result-object v0

    .line 980
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 986
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v11, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v1, v17

    move/from16 v6, v22

    move/from16 v0, v25

    const/16 v21, 0x0

    goto/16 :goto_7

    .line 987
    :cond_6
    :goto_3
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v17

    .line 989
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 990
    new-instance v9, Ljava/text/ParsePosition;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v2, 0x0

    .line 996
    iget-object v0, v11, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    move/from16 v8, v25

    .line 997
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v11, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    iget-object v7, v11, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    move-object/from16 v0, p0

    move-object/from16 v20, v7

    move-object v7, v9

    move/from16 v26, v8

    move-object/from16 v8, v20

    move-object/from16 v20, v9

    move/from16 v21, v10

    move-wide/from16 v9, p4

    .line 996
    invoke-direct/range {v0 .. v10}, Landroid/icu/text/NFRule;->matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Landroid/icu/text/PluralFormat;Ljava/text/ParsePosition;Landroid/icu/text/NFSubstitution;D)Ljava/lang/Number;

    move-result-object v0

    .line 998
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 1003
    invoke-virtual/range {v20 .. v20}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v11, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    move/from16 v3, v22

    goto :goto_5

    .line 1004
    :cond_8
    :goto_4
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int v2, v16, v2

    invoke-virtual/range {v20 .. v20}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int/2addr v2, v3

    move/from16 v3, v22

    if-le v2, v3, :cond_9

    .line 1005
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int v2, v16, v2

    invoke-virtual/range {v20 .. v20}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int/2addr v2, v3

    move-wide/from16 v18, v0

    move v6, v2

    goto :goto_6

    :cond_9
    :goto_5
    move v6, v3

    :goto_6
    move/from16 v1, v17

    move/from16 v0, v26

    :goto_7
    if-eq v15, v0, :cond_b

    .line 1028
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 1029
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_b

    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-ne v2, v1, :cond_a

    goto :goto_8

    :cond_a
    move v9, v0

    move/from16 v17, v1

    move-object v10, v14

    move/from16 v14, v21

    move-wide/from16 v7, v23

    goto/16 :goto_2

    .line 1035
    :cond_b
    :goto_8
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    if-eqz p3, :cond_c

    if-lez v6, :cond_c

    .line 1047
    iget-object v0, v11, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-nez v0, :cond_c

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double v18, v0, v18

    :cond_c
    move-wide/from16 v0, v18

    double-to-long v2, v0

    long-to-double v4, v2

    cmpl-double v4, v0, v4

    if-nez v4, :cond_d

    .line 1053
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1055
    :cond_d
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 615
    instance-of v0, p1, Landroid/icu/text/NFRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 616
    check-cast p1, Landroid/icu/text/NFRule;

    .line 618
    iget-wide v2, p0, Landroid/icu/text/NFRule;->baseValue:J

    iget-wide v4, p1, Landroid/icu/text/NFRule;->baseValue:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget v0, p0, Landroid/icu/text/NFRule;->radix:I

    iget v2, p1, Landroid/icu/text/NFRule;->radix:I

    if-ne v0, v2, :cond_0

    iget-short v0, p0, Landroid/icu/text/NFRule;->exponent:S

    iget-short v2, p1, Landroid/icu/text/NFRule;->exponent:S

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    iget-object v2, p1, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 621
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    iget-object v2, p1, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    .line 622
    invoke-static {v0, v2}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    iget-object p1, p1, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    .line 623
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getBaseValue()J
    .locals 2

    .line 719
    iget-wide v0, p0, Landroid/icu/text/NFRule;->baseValue:J

    return-wide v0
.end method

.method public final getDecimalPoint()C
    .locals 0

    .line 711
    iget-char p0, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    return p0
.end method

.method public getDivisor()J
    .locals 2

    .line 728
    iget v0, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-long v0, v0

    iget-short p0, p0, Landroid/icu/text/NFRule;->exponent:S

    invoke-static {v0, v1, p0}, Landroid/icu/text/NFRule;->power(JS)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method final setBaseValue(J)V
    .locals 2

    .line 525
    iput-wide p1, p0, Landroid/icu/text/NFRule;->baseValue:J

    const/16 p1, 0xa

    .line 526
    iput p1, p0, Landroid/icu/text/NFRule;->radix:I

    .line 533
    iget-wide p1, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v0, 0x1

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1

    .line 534
    invoke-direct {p0}, Landroid/icu/text/NFRule;->expectedExponent()S

    move-result p1

    iput-short p1, p0, Landroid/icu/text/NFRule;->exponent:S

    .line 540
    iget-object p1, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz p1, :cond_0

    .line 541
    iget p2, p0, Landroid/icu/text/NFRule;->radix:I

    iget-short v0, p0, Landroid/icu/text/NFRule;->exponent:S

    invoke-virtual {p1, p2, v0}, Landroid/icu/text/NFSubstitution;->setDivisor(IS)V

    .line 543
    :cond_0
    iget-object p1, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz p1, :cond_2

    .line 544
    iget p2, p0, Landroid/icu/text/NFRule;->radix:I

    iget-short p0, p0, Landroid/icu/text/NFRule;->exponent:S

    invoke-virtual {p1, p2, p0}, Landroid/icu/text/NFSubstitution;->setDivisor(IS)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 550
    iput-short p1, p0, Landroid/icu/text/NFRule;->exponent:S

    :cond_2
    :goto_0
    return-void
.end method

.method public setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 1

    .line 1317
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_0

    .line 1318
    invoke-virtual {v0, p1}, Landroid/icu/text/NFSubstitution;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    .line 1320
    :cond_0
    iget-object p0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz p0, :cond_1

    .line 1321
    invoke-virtual {p0, p1}, Landroid/icu/text/NFSubstitution;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    :cond_1
    return-void
.end method

.method public shouldRollBack(J)Z
    .locals 6

    .line 877
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/icu/text/NFSubstitution;->isModulusSubstitution()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/icu/text/NFSubstitution;->isModulusSubstitution()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 880
    :cond_1
    iget v0, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-long v2, v0

    iget-short v0, p0, Landroid/icu/text/NFRule;->exponent:S

    invoke-static {v2, v3, v0}, Landroid/icu/text/NFRule;->power(JS)J

    move-result-wide v2

    .line 881
    rem-long/2addr p1, v2

    const-wide/16 v4, 0x0

    cmp-long p1, p1, v4

    if-nez p1, :cond_2

    iget-wide p0, p0, Landroid/icu/text/NFRule;->baseValue:J

    rem-long/2addr p0, v2

    cmp-long p0, p0, v4

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    iget-wide v1, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-string v1, "-x: "

    .line 644
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_0
    const-wide/16 v3, -0x2

    cmp-long v3, v1, v3

    const-string/jumbo v4, "x: "

    const/16 v5, 0x78

    const/16 v6, 0x2e

    if-nez v3, :cond_2

    .line 647
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v1, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    if-nez v1, :cond_1

    move v1, v6

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_2
    const-wide/16 v7, -0x3

    cmp-long v3, v1, v7

    if-nez v3, :cond_4

    const/16 v1, 0x30

    .line 650
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v1, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    if-nez v1, :cond_3

    move v1, v6

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-wide/16 v3, -0x4

    cmp-long v3, v1, v3

    if-nez v3, :cond_6

    .line 653
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v1, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    if-nez v1, :cond_5

    move v1, v6

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-wide/16 v3, -0x5

    cmp-long v3, v1, v3

    if-nez v3, :cond_7

    const-string v1, "Inf: "

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const-wide/16 v3, -0x6

    cmp-long v3, v1, v3

    if-nez v3, :cond_8

    const-string v1, "NaN: "

    .line 659
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 668
    :cond_8
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_9

    const/16 v1, 0x2f

    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 672
    :cond_9
    invoke-direct {p0}, Landroid/icu/text/NFRule;->expectedExponent()S

    move-result v1

    iget-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_a

    const/16 v3, 0x3e

    .line 674
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    const-string v1, ": "

    .line 675
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    :goto_1
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const/16 v1, 0x27

    .line 682
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 687
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 688
    iget-object v2, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v2, :cond_d

    .line 689
    invoke-virtual {v2}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v2

    iget-object v3, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v3}, Landroid/icu/text/NFSubstitution;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    :cond_d
    iget-object v2, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v2, :cond_e

    .line 692
    invoke-virtual {v2}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v2

    iget-object p0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    invoke-virtual {p0}, Landroid/icu/text/NFSubstitution;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    .line 698
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
