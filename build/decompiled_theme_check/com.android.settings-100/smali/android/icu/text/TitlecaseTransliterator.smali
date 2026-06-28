.class Landroid/icu/text/TitlecaseTransliterator;
.super Landroid/icu/text/Transliterator;
.source "TitlecaseTransliterator.java"


# static fields
.field static final _ID:Ljava/lang/String; = "Any-Title"


# instance fields
.field private caseLocale:I

.field private final csp:Landroid/icu/impl/UCaseProps;

.field private iter:Landroid/icu/text/ReplaceableContextIterator;

.field private final locale:Landroid/icu/util/ULocale;

.field private result:Ljava/lang/StringBuilder;

.field sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;


# direct methods
.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Any-Title"

    .line 52
    invoke-direct {p0, v1, v0}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 158
    iput-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    .line 53
    iput-object p1, p0, Landroid/icu/text/TitlecaseTransliterator;->locale:Landroid/icu/util/ULocale;

    const/4 p1, 0x2

    .line 55
    invoke-virtual {p0, p1}, Landroid/icu/text/TitlecaseTransliterator;->setMaximumContextLength(I)V

    .line 56
    sget-object p1, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    iput-object p1, p0, Landroid/icu/text/TitlecaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    .line 57
    new-instance p1, Landroid/icu/text/ReplaceableContextIterator;

    invoke-direct {p1}, Landroid/icu/text/ReplaceableContextIterator;-><init>()V

    iput-object p1, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Landroid/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    .line 59
    iget-object p1, p0, Landroid/icu/text/TitlecaseTransliterator;->locale:Landroid/icu/util/ULocale;

    invoke-static {p1}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Landroid/icu/util/ULocale;)I

    move-result p1

    iput p1, p0, Landroid/icu/text/TitlecaseTransliterator;->caseLocale:I

    return-void
.end method

.method static synthetic access$000(Landroid/icu/text/TitlecaseTransliterator;)Landroid/icu/util/ULocale;
    .locals 0

    .line 22
    iget-object p0, p0, Landroid/icu/text/TitlecaseTransliterator;->locale:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method static register()V
    .locals 3

    .line 31
    new-instance v0, Landroid/icu/text/TitlecaseTransliterator$1;

    invoke-direct {v0}, Landroid/icu/text/TitlecaseTransliterator$1;-><init>()V

    const-string v1, "Any-Title"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string v0, "Title"

    const-string v1, "Lower"

    const/4 v2, 0x0

    .line 38
    invoke-static {v0, v1, v2}, Landroid/icu/text/TitlecaseTransliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 2

    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Landroid/icu/text/SourceTargetUtility;

    new-instance v1, Landroid/icu/text/TitlecaseTransliterator$2;

    invoke-direct {v1, p0}, Landroid/icu/text/TitlecaseTransliterator$2;-><init>(Landroid/icu/text/TitlecaseTransliterator;)V

    invoke-direct {v0, v1}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;)V

    iput-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    .line 174
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/icu/text/SourceTargetUtility;->addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    return-void

    :catchall_0
    move-exception p1

    .line 174
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 7

    monitor-enter p0

    .line 75
    :try_start_0
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 76
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    :try_start_1
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    const/4 v3, 0x0

    if-lt v0, v2, :cond_3

    .line 92
    invoke-interface {p1, v0}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v2

    .line 93
    iget-object v4, p0, Landroid/icu/text/TitlecaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v4, v2}, Landroid/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result v4

    if-lez v4, :cond_1

    move v0, v3

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    .line 91
    :cond_2
    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_3
    :goto_1
    move v0, v1

    .line 107
    :goto_2
    iget-object v2, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v2, p1}, Landroid/icu/text/ReplaceableContextIterator;->setText(Landroid/icu/text/Replaceable;)V

    .line 108
    iget-object p1, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {p1, v2}, Landroid/icu/text/ReplaceableContextIterator;->setIndex(I)V

    .line 109
    iget-object p1, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {p1, v2}, Landroid/icu/text/ReplaceableContextIterator;->setLimit(I)V

    .line 110
    iget-object p1, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {p1, v2, v4}, Landroid/icu/text/ReplaceableContextIterator;->setContextLimits(II)V

    .line 112
    iget-object p1, p0, Landroid/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 118
    :cond_4
    :goto_3
    iget-object p1, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {p1}, Landroid/icu/text/ReplaceableContextIterator;->nextCaseMapCP()I

    move-result p1

    if-ltz p1, :cond_a

    .line 119
    iget-object v2, p0, Landroid/icu/text/TitlecaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v2, p1}, Landroid/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result v2

    if-ltz v2, :cond_4

    if-eqz v0, :cond_5

    .line 122
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    iget-object v4, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget-object v5, p0, Landroid/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/icu/text/TitlecaseTransliterator;->caseLocale:I

    invoke-virtual {v0, p1, v4, v5, v6}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p1

    goto :goto_4

    .line 124
    :cond_5
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    iget-object v4, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget-object v5, p0, Landroid/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/icu/text/TitlecaseTransliterator;->caseLocale:I

    invoke-virtual {v0, p1, v4, v5, v6}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p1

    :goto_4
    if-nez v2, :cond_6

    move v0, v1

    goto :goto_5

    :cond_6
    move v0, v3

    .line 128
    :goto_5
    iget-object v2, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v2}, Landroid/icu/text/ReplaceableContextIterator;->didReachLimit()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p3, :cond_7

    .line 131
    iget-object p1, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {p1}, Landroid/icu/text/ReplaceableContextIterator;->getCaseMapCPStart()I

    move-result p1

    iput p1, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :cond_7
    if-gez p1, :cond_8

    goto :goto_3

    :cond_8
    const/16 v2, 0x1f

    if-gt p1, v2, :cond_9

    .line 141
    :try_start_2
    iget-object p1, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget-object v2, p0, Landroid/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result p1

    .line 142
    iget-object v2, p0, Landroid/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_6

    .line 145
    :cond_9
    iget-object v2, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result p1

    :goto_6
    if-eqz p1, :cond_4

    .line 149
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    add-int/2addr v2, p1

    iput v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 150
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr v2, p1

    iput v2, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    goto :goto_3

    .line 154
    :cond_a
    iget p1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iput p1, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
