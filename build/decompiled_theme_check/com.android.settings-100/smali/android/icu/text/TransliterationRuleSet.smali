.class Landroid/icu/text/TransliterationRuleSet;
.super Ljava/lang/Object;
.source "TransliterationRuleSet.java"


# instance fields
.field private index:[I

.field private maxContextLength:I

.field private ruleVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/TransliterationRule;",
            ">;"
        }
    .end annotation
.end field

.field private rules:[Landroid/icu/text/TransliterationRule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Landroid/icu/text/TransliterationRuleSet;->maxContextLength:I

    return-void
.end method


# virtual methods
.method public addRule(Landroid/icu/text/TransliterationRule;)V
    .locals 1

    .line 79
    iget-object v0, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {p1}, Landroid/icu/text/TransliterationRule;->getAnteContextLength()I

    move-result p1

    iget v0, p0, Landroid/icu/text/TransliterationRuleSet;->maxContextLength:I

    if-le p1, v0, :cond_0

    .line 82
    iput p1, p0, Landroid/icu/text/TransliterationRuleSet;->maxContextLength:I

    :cond_0
    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    return-void
.end method

.method addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 5

    .line 247
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, p1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 248
    new-instance p1, Landroid/icu/text/UnicodeSet;

    invoke-direct {p1}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 249
    iget-object v1, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 251
    iget-object v3, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/TransliterationRule;

    .line 252
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    move-result-object v4

    invoke-virtual {v3, v0, p2, p3, v4}, Landroid/icu/text/TransliterationRule;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    .line 253
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public freeze()V
    .locals 10

    .line 110
    iget-object v0, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x101

    new-array v1, v1, [I

    .line 111
    iput-object v1, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 118
    iget-object v5, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/TransliterationRule;

    .line 119
    invoke-virtual {v5}, Landroid/icu/text/TransliterationRule;->getIndexValue()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_1
    const/16 v5, 0x100

    if-ge v4, v5, :cond_4

    .line 122
    iget-object v5, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    aput v6, v5, v4

    move v5, v3

    :goto_2
    if-ge v5, v0, :cond_3

    .line 124
    aget v6, v2, v5

    if-ltz v6, :cond_1

    .line 125
    aget v6, v2, v5

    if-ne v6, v4, :cond_2

    .line 126
    iget-object v6, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/text/TransliterationRule;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 133
    :cond_1
    iget-object v6, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/text/TransliterationRule;

    .line 134
    invoke-virtual {v6, v4}, Landroid/icu/text/TransliterationRule;->matchesIndexValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 135
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 140
    :cond_4
    iget-object v0, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    aput v2, v0, v5

    .line 144
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/icu/text/TransliterationRule;

    iput-object v0, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    .line 145
    iget-object v0, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_4
    if-ge v3, v5, :cond_9

    .line 157
    iget-object v1, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    aget v1, v1, v3

    :goto_5
    iget-object v2, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    add-int/lit8 v4, v3, 0x1

    aget v2, v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    .line 158
    iget-object v2, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    aget-object v2, v2, v1

    add-int/lit8 v1, v1, 0x1

    move-object v6, v0

    move v0, v1

    .line 159
    :goto_6
    iget-object v7, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    aget v7, v7, v4

    if-ge v0, v7, :cond_7

    .line 160
    iget-object v7, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    aget-object v7, v7, v0

    .line 161
    invoke-virtual {v2, v7}, Landroid/icu/text/TransliterationRule;->masks(Landroid/icu/text/TransliterationRule;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v6, :cond_5

    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :cond_5
    const-string v8, "\n"

    .line 165
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :goto_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rule "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " masks "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    move-object v0, v6

    goto :goto_5

    :cond_8
    move v3, v4

    goto :goto_4

    :cond_9
    if-nez v0, :cond_a

    return-void

    .line 174
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMaximumContextLength()I
    .locals 0

    .line 70
    iget p0, p0, Landroid/icu/text/TransliterationRuleSet;->maxContextLength:I

    return p0
.end method

.method toRules(Z)Ljava/lang/String;
    .locals 4

    .line 232
    iget-object v0, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz v2, :cond_0

    const/16 v3, 0xa

    .line 236
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    :cond_0
    iget-object v3, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/TransliterationRule;

    .line 239
    invoke-virtual {v3, p1}, Landroid/icu/text/TransliterationRule;->toRule(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)Z
    .locals 5

    .line 194
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-interface {p1, v0}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 195
    iget-object v1, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    aget v1, v1, v0

    :goto_0
    iget-object v2, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    const/4 v3, 0x1

    add-int/lit8 v4, v0, 0x1

    aget v2, v2, v4

    if-ge v1, v2, :cond_2

    .line 196
    iget-object v2, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, p3}, Landroid/icu/text/TransliterationRule;->matchAndReplace(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)I

    move-result v2

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 219
    :cond_2
    iget p0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget p3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-interface {p1, p3}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result p1

    invoke-static {p1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    return v3
.end method
