.class public Landroid/icu/text/RuleBasedTransliterator;
.super Landroid/icu/text/Transliterator;
.source "RuleBasedTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RuleBasedTransliterator$Data;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final data:Landroid/icu/text/RuleBasedTransliterator$Data;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V
    .locals 0

    .line 318
    invoke-direct {p0, p1, p3}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 319
    iput-object p2, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 320
    iget-object p1, p2, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    invoke-virtual {p1}, Landroid/icu/text/TransliterationRuleSet;->getMaximumContextLength()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedTransliterator;->setMaximumContextLength(I)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 475
    iget-object p0, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-object p0, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/TransliterationRuleSet;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    iget-object v0, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    monitor-enter v0

    const/4 v1, 0x0

    .line 358
    :try_start_0
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    sub-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x4

    if-gez v2, :cond_0

    const v2, 0x7fffffff

    .line 363
    :cond_0
    :goto_0
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ge v3, v4, :cond_1

    if-gt v1, v2, :cond_1

    iget-object v3, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-object v3, v3, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    .line 365
    invoke-virtual {v3, p1, p2, p3}, Landroid/icu/text/TransliterationRuleSet;->transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public safeClone()Landroid/icu/text/Transliterator;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 485
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedTransliterator;->getFilter()Landroid/icu/text/UnicodeFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    instance-of v1, v0, Landroid/icu/text/UnicodeSet;

    if-eqz v1, :cond_0

    .line 487
    new-instance v1, Landroid/icu/text/UnicodeSet;

    check-cast v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1, v0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    move-object v0, v1

    .line 489
    :cond_0
    new-instance v1, Landroid/icu/text/RuleBasedTransliterator;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedTransliterator;->getID()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-direct {v1, v2, p0, v0}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    return-object v1
.end method

.method public toRules(Z)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 449
    iget-object p0, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-object p0, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    invoke-virtual {p0, p1}, Landroid/icu/text/TransliterationRuleSet;->toRules(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
