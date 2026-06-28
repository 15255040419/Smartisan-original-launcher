.class public Landroid/icu/text/PluralRules;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/PluralRules$KeywordStatus;,
        Landroid/icu/text/PluralRules$RuleList;,
        Landroid/icu/text/PluralRules$Rule;,
        Landroid/icu/text/PluralRules$OrConstraint;,
        Landroid/icu/text/PluralRules$AndConstraint;,
        Landroid/icu/text/PluralRules$BinaryConstraint;,
        Landroid/icu/text/PluralRules$RangeConstraint;,
        Landroid/icu/text/PluralRules$SimpleTokenizer;,
        Landroid/icu/text/PluralRules$Constraint;,
        Landroid/icu/text/PluralRules$FixedDecimalSamples;,
        Landroid/icu/text/PluralRules$FixedDecimalRange;,
        Landroid/icu/text/PluralRules$SampleType;,
        Landroid/icu/text/PluralRules$FixedDecimal;,
        Landroid/icu/text/PluralRules$IFixedDecimal;,
        Landroid/icu/text/PluralRules$Operand;,
        Landroid/icu/text/PluralRules$PluralType;,
        Landroid/icu/text/PluralRules$Factory;
    }
.end annotation


# static fields
.field static final ALLOWED_ID:Landroid/icu/text/UnicodeSet;

.field static final AND_SEPARATED:Ljava/util/regex/Pattern;

.field static final AT_SEPARATED:Ljava/util/regex/Pattern;

.field public static final CATEGORY_SEPARATOR:Ljava/lang/String; = ";  "
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final COMMA_SEPARATED:Ljava/util/regex/Pattern;

.field public static final DEFAULT:Landroid/icu/text/PluralRules;

.field private static final DEFAULT_RULE:Landroid/icu/text/PluralRules$Rule;

.field static final DOTDOT_SEPARATED:Ljava/util/regex/Pattern;

.field public static final KEYWORD_FEW:Ljava/lang/String; = "few"

.field public static final KEYWORD_MANY:Ljava/lang/String; = "many"

.field public static final KEYWORD_ONE:Ljava/lang/String; = "one"

.field public static final KEYWORD_OTHER:Ljava/lang/String; = "other"

.field public static final KEYWORD_RULE_SEPARATOR:Ljava/lang/String; = ": "
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEYWORD_TWO:Ljava/lang/String; = "two"

.field public static final KEYWORD_ZERO:Ljava/lang/String; = "zero"

.field private static final NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

.field public static final NO_UNIQUE_VALUE:D = -0.00123456777

.field static final OR_SEPARATED:Ljava/util/regex/Pattern;

.field static final SEMI_SEPARATED:Ljava/util/regex/Pattern;

.field static final TILDE_SEPARATED:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient keywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rules:Landroid/icu/text/PluralRules$RuleList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 171
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[a-z]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->ALLOWED_ID:Landroid/icu/text/UnicodeSet;

    .line 354
    new-instance v0, Landroid/icu/text/PluralRules$1;

    invoke-direct {v0}, Landroid/icu/text/PluralRules$1;-><init>()V

    sput-object v0, Landroid/icu/text/PluralRules;->NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

    .line 376
    new-instance v0, Landroid/icu/text/PluralRules$Rule;

    sget-object v1, Landroid/icu/text/PluralRules;->NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

    const/4 v2, 0x0

    const-string/jumbo v3, "other"

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$FixedDecimalSamples;Landroid/icu/text/PluralRules$FixedDecimalSamples;)V

    sput-object v0, Landroid/icu/text/PluralRules;->DEFAULT_RULE:Landroid/icu/text/PluralRules$Rule;

    .line 409
    new-instance v0, Landroid/icu/text/PluralRules;

    new-instance v1, Landroid/icu/text/PluralRules$RuleList;

    invoke-direct {v1, v2}, Landroid/icu/text/PluralRules$RuleList;-><init>(Landroid/icu/text/PluralRules$1;)V

    sget-object v2, Landroid/icu/text/PluralRules;->DEFAULT_RULE:Landroid/icu/text/PluralRules$Rule;

    invoke-virtual {v1, v2}, Landroid/icu/text/PluralRules$RuleList;->addRule(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$RuleList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/PluralRules;-><init>(Landroid/icu/text/PluralRules$RuleList;)V

    sput-object v0, Landroid/icu/text/PluralRules;->DEFAULT:Landroid/icu/text/PluralRules;

    const-string v0, "\\s*\\Q\\E@\\s*"

    .line 1480
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->AT_SEPARATED:Ljava/util/regex/Pattern;

    const-string v0, "\\s*or\\s*"

    .line 1481
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->OR_SEPARATED:Ljava/util/regex/Pattern;

    const-string v0, "\\s*and\\s*"

    .line 1482
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->AND_SEPARATED:Ljava/util/regex/Pattern;

    const-string v0, "\\s*,\\s*"

    .line 1483
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->COMMA_SEPARATED:Ljava/util/regex/Pattern;

    const-string v0, "\\s*\\Q..\\E\\s*"

    .line 1484
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->DOTDOT_SEPARATED:Ljava/util/regex/Pattern;

    const-string v0, "\\s*~\\s*"

    .line 1485
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->TILDE_SEPARATED:Ljava/util/regex/Pattern;

    const-string v0, "\\s*;\\s*"

    .line 1486
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->SEMI_SEPARATED:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Landroid/icu/text/PluralRules$RuleList;)V
    .locals 0

    .line 2074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2075
    iput-object p1, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    .line 2076
    invoke-virtual {p1}, Landroid/icu/text/PluralRules$RuleList;->getKeywords()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/PluralRules;->keywords:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$500(Ljava/lang/StringBuilder;DDZ)V
    .locals 0

    .line 169
    invoke-static/range {p0 .. p5}, Landroid/icu/text/PluralRules;->addRange(Ljava/lang/StringBuilder;DDZ)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 169
    invoke-static {p0}, Landroid/icu/text/PluralRules;->parseRule(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;

    move-result-object p0

    return-object p0
.end method

.method private addConditional(Ljava/util/Set;Ljava/util/Set;D)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/text/PluralRules$IFixedDecimal;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/icu/text/PluralRules$IFixedDecimal;",
            ">;D)Z"
        }
    .end annotation

    .line 1961
    new-instance p0, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-direct {p0, p3, p4}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    .line 1962
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1963
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static addRange(Ljava/lang/StringBuilder;DDZ)V
    .locals 0

    if-eqz p5, :cond_0

    const-string p5, ","

    .line 1689
    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    cmpl-double p5, p1, p3

    if-nez p5, :cond_1

    .line 1692
    invoke-static {p1, p2}, Landroid/icu/text/PluralRules;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1694
    :cond_1
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Landroid/icu/text/PluralRules;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Landroid/icu/text/PluralRules;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public static createRules(Ljava/lang/String;)Landroid/icu/text/PluralRules;
    .locals 0

    .line 399
    :try_start_0
    invoke-static {p0}, Landroid/icu/text/PluralRules;->parseDescription(Ljava/lang/String;)Landroid/icu/text/PluralRules;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;
    .locals 2

    .line 1995
    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    move-result-object v0

    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/PluralRulesLoader;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object p0

    return-object p0
.end method

.method public static forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;
    .locals 1

    .line 2037
    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/PluralRulesLoader;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object p0

    return-object p0
.end method

.method public static forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;
    .locals 0

    .line 2016
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object p0

    return-object p0
.end method

.method public static forLocale(Ljava/util/Locale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;
    .locals 0

    .line 2058
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object p0

    return-object p0
.end method

.method private static format(D)Ljava/lang/String;
    .locals 4

    double-to-long v0, p0

    long-to-double v2, v0

    cmpl-double v2, p0, v2

    if-nez v2, :cond_0

    .line 1700
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    .line 2309
    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/PluralRulesLoader;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static getFunctionalEquivalent(Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .locals 1

    .line 2329
    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/PluralRulesLoader;->getFunctionalEquivalent(Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method private static isValidKeyword(Ljava/lang/String;)Z
    .locals 1

    .line 2068
    sget-object v0, Landroid/icu/text/PluralRules;->ALLOWED_ID:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1500
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 1501
    aget-object p0, p0, p1

    return-object p0

    .line 1503
    :cond_0
    new-instance p0, Ljava/text/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "missing token at end of \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-direct {p0, p1, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static parseConstraint(Ljava/lang/String;)Landroid/icu/text/PluralRules$Constraint;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1333
    sget-object v0, Landroid/icu/text/PluralRules;->OR_SEPARATED:Ljava/util/regex/Pattern;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    const/4 v4, 0x0

    .line 1334
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_21

    .line 1336
    sget-object v5, Landroid/icu/text/PluralRules;->AND_SEPARATED:Ljava/util/regex/Pattern;

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    move v6, v2

    const/4 v7, 0x0

    .line 1337
    :goto_1
    array-length v8, v5

    if-ge v6, v8, :cond_1f

    .line 1338
    sget-object v8, Landroid/icu/text/PluralRules;->NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

    .line 1340
    aget-object v9, v5, v6

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1341
    invoke-static {v9}, Landroid/icu/text/PluralRules$SimpleTokenizer;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1351
    aget-object v15, v10, v2

    .line 1355
    :try_start_0
    invoke-static {v15}, Landroid/icu/text/PluralRules$FixedDecimal;->getOperand(Ljava/lang/String;)Landroid/icu/text/PluralRules$Operand;

    move-result-object v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1359
    array-length v15, v10

    const/4 v1, 0x1

    if-ge v1, v15, :cond_1d

    .line 1360
    aget-object v8, v10, v1

    const-string v15, "mod"

    .line 1361
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/4 v1, 0x2

    if-nez v15, :cond_1

    const-string v15, "%"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    goto :goto_2

    :cond_0
    move v15, v1

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v8, 0x3

    .line 1362
    aget-object v15, v10, v1

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v17, 0x4

    .line 1363
    invoke-static {v10, v8, v9}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v2, v15

    move/from16 v15, v17

    :goto_3
    const-string v11, "not"

    .line 1365
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "="

    if-eqz v12, :cond_3

    add-int/lit8 v8, v15, 0x1

    .line 1367
    invoke-static {v10, v15, v9}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1368
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    :goto_4
    move v15, v8

    const/4 v8, 0x0

    goto :goto_5

    .line 1369
    :cond_2
    invoke-static {v12, v9}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_3
    const-string v12, "!"

    .line 1371
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    add-int/lit8 v8, v15, 0x1

    .line 1373
    invoke-static {v10, v15, v9}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1374
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_4

    .line 1375
    :cond_4
    invoke-static {v12, v9}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_5
    move-object v12, v8

    const/4 v8, 0x1

    :goto_5
    const-string v14, "is"

    .line 1378
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string v1, "in"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    const-string/jumbo v1, "within"

    .line 1384
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v1, v15, 0x1

    .line 1386
    invoke-static {v10, v15, v9}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move v13, v1

    const/4 v1, 0x0

    const/4 v14, 0x0

    goto :goto_8

    .line 1388
    :cond_7
    invoke-static {v12, v9}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1379
    :cond_8
    :goto_6
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v8, :cond_9

    goto :goto_7

    .line 1381
    :cond_9
    invoke-static {v12, v9}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_a
    :goto_7
    add-int/lit8 v12, v15, 0x1

    .line 1383
    invoke-static {v10, v15, v9}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v32, v13

    move v13, v12

    move-object/from16 v12, v32

    .line 1390
    :goto_8
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    if-nez v1, :cond_c

    if-eqz v8, :cond_b

    goto :goto_9

    .line 1392
    :cond_b
    invoke-static {v12, v9}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_c
    :goto_9
    xor-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v13, 0x1

    .line 1395
    invoke-static {v10, v13, v9}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :cond_d
    move v11, v13

    .line 1398
    :goto_a
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v20, v14

    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    const-wide/high16 v5, -0x3c20000000000000L    # -9.223372036854776E18

    .line 1402
    :goto_b
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v30, v0

    .line 1404
    array-length v0, v10

    move-object/from16 v16, v12

    const-string v12, ","

    if-ge v11, v0, :cond_13

    add-int/lit8 v0, v11, 0x1

    .line 1405
    invoke-static {v10, v11, v9}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v31, v7

    const-string v7, "."

    .line 1406
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    add-int/lit8 v11, v0, 0x1

    .line 1407
    invoke-static {v10, v0, v9}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1408
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    add-int/lit8 v0, v11, 0x1

    .line 1411
    invoke-static {v10, v11, v9}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1412
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 1413
    array-length v11, v10

    if-ge v0, v11, :cond_f

    add-int/lit8 v11, v0, 0x1

    .line 1414
    invoke-static {v10, v0, v9}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1415
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_c

    .line 1417
    :cond_e
    invoke-static {v0, v9}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_f
    move v11, v0

    move-object v0, v7

    :goto_c
    move/from16 v18, v8

    move-wide/from16 v7, v16

    goto :goto_d

    .line 1409
    :cond_10
    invoke-static {v0, v9}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1420
    :cond_11
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    move/from16 v18, v8

    move-wide v7, v14

    move-object/from16 v32, v11

    move v11, v0

    move-object/from16 v0, v32

    goto :goto_d

    .line 1422
    :cond_12
    invoke-static {v11, v9}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_13
    move-object/from16 v31, v7

    move/from16 v18, v8

    move-wide v7, v14

    move-object/from16 v0, v16

    :goto_d
    cmp-long v16, v14, v7

    if-gtz v16, :cond_1c

    move-object/from16 v17, v0

    move/from16 v16, v1

    if-eqz v2, :cond_15

    int-to-long v0, v2

    cmp-long v0, v7, v0

    if-gez v0, :cond_14

    goto :goto_e

    .line 1429
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ">mod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1431
    :cond_15
    :goto_e
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1432
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    long-to-double v0, v14

    .line 1433
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    long-to-double v0, v7

    .line 1434
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 1435
    array-length v0, v10

    if-lt v11, v0, :cond_1b

    move-object/from16 v0, v17

    .line 1441
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1445
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    const/16 v25, 0x0

    goto :goto_10

    .line 1448
    :cond_16
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [J

    const/4 v0, 0x0

    .line 1449
    :goto_f
    array-length v7, v1

    if-ge v0, v7, :cond_17

    .line 1450
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_17
    move-object/from16 v25, v1

    :goto_10
    cmpl-double v0, v3, v5

    if-eqz v0, :cond_19

    if-eqz v16, :cond_19

    if-eqz v18, :cond_18

    goto :goto_11

    :cond_18
    const-string v0, "is not <range>"

    .line 1456
    invoke-static {v0, v9}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1459
    :cond_19
    :goto_11
    new-instance v0, Landroid/icu/text/PluralRules$RangeConstraint;

    move-object/from16 v16, v0

    move/from16 v17, v2

    move-wide/from16 v21, v3

    move-wide/from16 v23, v5

    invoke-direct/range {v16 .. v25}, Landroid/icu/text/PluralRules$RangeConstraint;-><init>(IZLandroid/icu/text/PluralRules$Operand;ZDD[J)V

    goto :goto_12

    .line 1442
    :cond_1a
    invoke-static {v0, v9}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_1b
    const/4 v1, 0x2

    add-int/lit8 v0, v11, 0x1

    .line 1438
    invoke-static {v10, v11, v9}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move v11, v0

    move/from16 v1, v16

    move/from16 v8, v18

    move-object/from16 v0, v30

    move-object/from16 v7, v31

    goto/16 :goto_b

    .line 1427
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_1d
    move-object/from16 v30, v0

    move/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move/from16 v29, v6

    move-object/from16 v31, v7

    move-object v0, v8

    :goto_12
    if-nez v31, :cond_1e

    move-object v7, v0

    goto :goto_13

    .line 1466
    :cond_1e
    new-instance v1, Landroid/icu/text/PluralRules$AndConstraint;

    move-object/from16 v2, v31

    invoke-direct {v1, v2, v0}, Landroid/icu/text/PluralRules$AndConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    move-object v7, v1

    :goto_13
    add-int/lit8 v6, v29, 0x1

    move/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    move-object/from16 v0, v30

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1357
    :catch_0
    invoke-static {v15, v9}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_1f
    move-object/from16 v30, v0

    move/from16 v26, v3

    move-object/from16 v27, v4

    move-object v2, v7

    if-nez v27, :cond_20

    move-object v4, v2

    goto :goto_14

    .line 1474
    :cond_20
    new-instance v0, Landroid/icu/text/PluralRules$OrConstraint;

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$OrConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    move-object v4, v0

    :goto_14
    add-int/lit8 v3, v26, 0x1

    move-object/from16 v0, v30

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_21
    move-object v1, v4

    return-object v1
.end method

.method public static parseDescription(Ljava/lang/String;)Landroid/icu/text/PluralRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 388
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Landroid/icu/text/PluralRules;->DEFAULT:Landroid/icu/text/PluralRules;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/icu/text/PluralRules;

    invoke-static {p0}, Landroid/icu/text/PluralRules;->parseRuleChain(Ljava/lang/String;)Landroid/icu/text/PluralRules$RuleList;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/icu/text/PluralRules;-><init>(Landroid/icu/text/PluralRules$RuleList;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static parseRule(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1512
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1513
    sget-object p0, Landroid/icu/text/PluralRules;->DEFAULT_RULE:Landroid/icu/text/PluralRules$Rule;

    return-object p0

    .line 1516
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3a

    .line 1518
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 1524
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1525
    invoke-static {v1}, Landroid/icu/text/PluralRules;->isValidKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 1530
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1531
    sget-object v0, Landroid/icu/text/PluralRules;->AT_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 1534
    array-length v4, v0

    const/4 v5, 0x0

    if-eq v4, v3, :cond_5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 1544
    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->parse(Ljava/lang/String;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v5

    .line 1545
    aget-object v4, v0, v6

    invoke-static {v4}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->parse(Ljava/lang/String;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v4

    .line 1546
    iget-object v6, v5, Landroid/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    sget-object v7, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    if-ne v6, v7, :cond_1

    iget-object v6, v4, Landroid/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    sget-object v7, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    if-ne v6, v7, :cond_1

    move-object p0, v4

    goto :goto_0

    .line 1547
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must have @integer then @decimal in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1551
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many samples in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1537
    :cond_3
    aget-object p0, v0, v3

    invoke-static {p0}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->parse(Ljava/lang/String;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object p0

    .line 1538
    iget-object v4, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    sget-object v6, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    if-ne v4, v6, :cond_4

    goto :goto_0

    :cond_4
    move-object v8, v5

    move-object v5, p0

    move-object p0, v8

    goto :goto_0

    :cond_5
    move-object p0, v5

    :goto_0
    const-string/jumbo v4, "other"

    .line 1558
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1559
    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    move v3, v2

    :goto_1
    if-ne v4, v3, :cond_8

    if-eqz v4, :cond_7

    .line 1565
    sget-object v0, Landroid/icu/text/PluralRules;->NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

    goto :goto_2

    .line 1567
    :cond_7
    aget-object v0, v0, v2

    invoke-static {v0}, Landroid/icu/text/PluralRules;->parseConstraint(Ljava/lang/String;)Landroid/icu/text/PluralRules$Constraint;

    move-result-object v0

    .line 1569
    :goto_2
    new-instance v2, Landroid/icu/text/PluralRules$Rule;

    invoke-direct {v2, v1, v0, v5, p0}, Landroid/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$FixedDecimalSamples;Landroid/icu/text/PluralRules$FixedDecimalSamples;)V

    return-object v2

    .line 1560
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The keyword \'other\' must have no constraints, just samples."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1526
    :cond_9
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyword \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not valid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 1520
    :cond_a
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing \':\' in rule description \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static parseRuleChain(Ljava/lang/String;)Landroid/icu/text/PluralRules$RuleList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1580
    new-instance v0, Landroid/icu/text/PluralRules$RuleList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/PluralRules$RuleList;-><init>(Landroid/icu/text/PluralRules$1;)V

    const-string v1, ";"

    .line 1582
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1583
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1585
    :cond_0
    sget-object v1, Landroid/icu/text/PluralRules;->SEMI_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    move v1, v3

    .line 1586
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 1587
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/text/PluralRules;->parseRule(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;

    move-result-object v4

    .line 1588
    invoke-static {v4}, Landroid/icu/text/PluralRules$Rule;->access$300(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/icu/text/PluralRules$Rule;->access$400(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v2

    :goto_2
    invoke-static {v0, v5}, Landroid/icu/text/PluralRules$RuleList;->access$276(Landroid/icu/text/PluralRules$RuleList;I)Z

    .line 1589
    invoke-virtual {v0, v4}, Landroid/icu/text/PluralRules$RuleList;->addRule(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$RuleList;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1591
    :cond_3
    invoke-virtual {v0}, Landroid/icu/text/PluralRules$RuleList;->finish()Landroid/icu/text/PluralRules$RuleList;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2504
    new-instance p0, Ljava/io/NotSerializableException;

    invoke-direct {p0}, Ljava/io/NotSerializableException;-><init>()V

    throw p0
.end method

.method private static unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;
    .locals 3

    .line 1491
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' in \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-direct {v0, p0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2499
    new-instance p0, Ljava/io/NotSerializableException;

    invoke-direct {p0}, Ljava/io/NotSerializableException;-><init>()V

    throw p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 2508
    new-instance v0, Landroid/icu/text/PluralRulesSerialProxy;

    invoke-virtual {p0}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/icu/text/PluralRulesSerialProxy;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2274
    instance-of v0, p2, Landroid/icu/text/PluralRules$FixedDecimal;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {p0, v0}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object p0

    .line 2275
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2276
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public compareTo(Landroid/icu/text/PluralRules;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2518
    invoke-virtual {p0}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public computeLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2548
    iget-object p0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->computeLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result p0

    return p0
.end method

.method public equals(Landroid/icu/text/PluralRules;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 2355
    invoke-virtual {p0}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 2345
    instance-of v0, p1, Landroid/icu/text/PluralRules;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/icu/text/PluralRules;

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRules;->equals(Landroid/icu/text/PluralRules;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAllKeywordValues(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2177
    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/PluralRules;->getAllKeywordValues(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getAllKeywordValues(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRules$SampleType;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2195
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2198
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules;->getSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 2199
    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2300
    iget-object p0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object p0

    return-object p0
.end method

.method public getKeywordStatus(Ljava/lang/String;ILjava/util/Set;Landroid/icu/util/Output;)Landroid/icu/text/PluralRules$KeywordStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Double;",
            ">;",
            "Landroid/icu/util/Output<",
            "Ljava/lang/Double;",
            ">;)",
            "Landroid/icu/text/PluralRules$KeywordStatus;"
        }
    .end annotation

    .line 2413
    sget-object v5, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/PluralRules;->getKeywordStatus(Ljava/lang/String;ILjava/util/Set;Landroid/icu/util/Output;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$KeywordStatus;

    move-result-object p0

    return-object p0
.end method

.method public getKeywordStatus(Ljava/lang/String;ILjava/util/Set;Landroid/icu/util/Output;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$KeywordStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Double;",
            ">;",
            "Landroid/icu/util/Output<",
            "Ljava/lang/Double;",
            ">;",
            "Landroid/icu/text/PluralRules$SampleType;",
            ")",
            "Landroid/icu/text/PluralRules$KeywordStatus;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    .line 2438
    iput-object v0, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 2441
    :cond_0
    iget-object v0, p0, Landroid/icu/text/PluralRules;->keywords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2442
    sget-object p0, Landroid/icu/text/PluralRules$KeywordStatus;->INVALID:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object p0

    .line 2445
    :cond_1
    invoke-virtual {p0, p1, p5}, Landroid/icu/text/PluralRules;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2446
    sget-object p0, Landroid/icu/text/PluralRules$KeywordStatus;->UNBOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object p0

    .line 2449
    :cond_2
    invoke-virtual {p0, p1, p5}, Landroid/icu/text/PluralRules;->getSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    move-result-object p0

    .line 2451
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p3, :cond_3

    .line 2454
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p3

    .line 2459
    :cond_3
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p5

    const/4 v0, 0x1

    if-le p1, p5, :cond_6

    if-ne p1, v0, :cond_5

    if-eqz p4, :cond_4

    .line 2462
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 2464
    :cond_4
    sget-object p0, Landroid/icu/text/PluralRules$KeywordStatus;->UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object p0

    .line 2466
    :cond_5
    sget-object p0, Landroid/icu/text/PluralRules$KeywordStatus;->BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object p0

    .line 2471
    :cond_6
    new-instance p5, Ljava/util/HashSet;

    invoke-direct {p5, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2472
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    .line 2473
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    int-to-double v3, p2

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2475
    :cond_7
    invoke-virtual {p5}, Ljava/util/HashSet;->size()I

    move-result p0

    if-nez p0, :cond_8

    .line 2476
    sget-object p0, Landroid/icu/text/PluralRules$KeywordStatus;->SUPPRESSED:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object p0

    :cond_8
    if-eqz p4, :cond_9

    .line 2479
    invoke-virtual {p5}, Ljava/util/HashSet;->size()I

    move-result p0

    if-ne p0, v0, :cond_9

    .line 2480
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_9
    if-ne p1, v0, :cond_a

    .line 2483
    sget-object p0, Landroid/icu/text/PluralRules$KeywordStatus;->UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;

    goto :goto_1

    :cond_a
    sget-object p0, Landroid/icu/text/PluralRules$KeywordStatus;->BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    :goto_1
    return-object p0
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2150
    iget-object p0, p0, Landroid/icu/text/PluralRules;->keywords:Ljava/util/Set;

    return-object p0
.end method

.method public getRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2493
    iget-object p0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRules$RuleList;->getRules(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSamples(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2212
    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/PluralRules;->getSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRules$SampleType;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2232
    iget-object v0, p0, Landroid/icu/text/PluralRules;->keywords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2235
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 2237
    iget-object v2, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-static {v2}, Landroid/icu/text/PluralRules$RuleList;->access$200(Landroid/icu/text/PluralRules$RuleList;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2238
    iget-object p0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object p0

    if-nez p0, :cond_1

    .line 2239
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    .line 2240
    :cond_1
    invoke-virtual {p0, v0}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->addSamples(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0

    .line 2244
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7fffffff

    goto :goto_1

    :cond_3
    const/16 v2, 0x14

    .line 2246
    :goto_1
    sget-object v3, Landroid/icu/text/PluralRules$2;->$SwitchMap$android$icu$text$PluralRules$SampleType:[I

    invoke-virtual {p2}, Landroid/icu/text/PluralRules$SampleType;->ordinal()I

    move-result p2

    aget p2, v3, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v4, :cond_7

    const/4 v5, 0x2

    if-eq p2, v5, :cond_4

    goto :goto_6

    :cond_4
    :goto_2
    const/16 p2, 0x7d0

    if-ge v3, p2, :cond_6

    .line 2257
    new-instance p2, Landroid/icu/text/PluralRules$FixedDecimal;

    int-to-double v5, v3

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v7

    invoke-direct {p2, v5, v6, v4}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    invoke-virtual {p0, p1, p2, v2, v0}, Landroid/icu/text/PluralRules;->addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2261
    :cond_6
    :goto_3
    new-instance p2, Landroid/icu/text/PluralRules$FixedDecimal;

    const-wide v5, 0x412e848000000000L    # 1000000.0

    invoke-direct {p2, v5, v6, v4}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    invoke-virtual {p0, p1, p2, v2, v0}, Landroid/icu/text/PluralRules;->addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z

    goto :goto_6

    :cond_7
    :goto_4
    const/16 p2, 0xc8

    if-ge v3, p2, :cond_9

    .line 2249
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v2, v0}, Landroid/icu/text/PluralRules;->addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    const p2, 0xf4240

    .line 2253
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v2, v0}, Landroid/icu/text/PluralRules;->addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z

    .line 2264
    :goto_6
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    if-nez p0, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    :goto_7
    return-object v1
.end method

.method public getUniqueKeywordValue(Ljava/lang/String;)D
    .locals 1

    .line 2161
    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRules;->getAllKeywordValues(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2162
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2163
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide p0, -0x40abc5d8f366e181L    # -0.00123456777

    return-wide p0
.end method

.method public hashCode()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2087
    iget-object p0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isLimited(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2528
    iget-object p0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/PluralRules$RuleList;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2538
    iget-object p0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result p0

    return p0
.end method

.method public matches(Landroid/icu/text/PluralRules$FixedDecimal;Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2140
    iget-object p0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->select(Landroid/icu/text/PluralRules$IFixedDecimal;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public select(D)Ljava/lang/String;
    .locals 1

    .line 2097
    iget-object p0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    new-instance v0, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-direct {v0, p1, p2}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    invoke-virtual {p0, v0}, Landroid/icu/text/PluralRules$RuleList;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public select(DIJ)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2112
    iget-object p0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    new-instance v6, Landroid/icu/text/PluralRules$FixedDecimal;

    move-object v0, v6

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    invoke-virtual {p0, v6}, Landroid/icu/text/PluralRules$RuleList;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2126
    iget-object p0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRules$RuleList;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 2337
    iget-object p0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {p0}, Landroid/icu/text/PluralRules$RuleList;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
