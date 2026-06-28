.class Landroid/icu/text/RuleBasedTransliterator$Data;
.super Ljava/lang/Object;
.source "RuleBasedTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedTransliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Data"
.end annotation


# instance fields
.field public ruleSet:Landroid/icu/text/TransliterationRuleSet;

.field variableNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation
.end field

.field variables:[Ljava/lang/Object;

.field variablesBase:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variableNames:Ljava/util/Map;

    .line 375
    new-instance v0, Landroid/icu/text/TransliterationRuleSet;

    invoke-direct {v0}, Landroid/icu/text/TransliterationRuleSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    return-void
.end method


# virtual methods
.method public lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;
    .locals 1

    .line 417
    iget-char v0, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 418
    iget-object p0, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 419
    aget-object p0, p0, p1

    check-cast p0, Landroid/icu/text/UnicodeMatcher;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public lookupReplacer(I)Landroid/icu/text/UnicodeReplacer;
    .locals 1

    .line 427
    iget-char v0, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 428
    iget-object p0, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 429
    aget-object p0, p0, p1

    check-cast p0, Landroid/icu/text/UnicodeReplacer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
