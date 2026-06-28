.class Landroid/icu/text/LowercaseTransliterator;
.super Landroid/icu/text/Transliterator;
.source "LowercaseTransliterator.java"


# static fields
.field static final _ID:Ljava/lang/String; = "Any-Lower"


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

    const-string v1, "Any-Lower"

    .line 55
    invoke-direct {p0, v1, v0}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 119
    iput-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    .line 56
    iput-object p1, p0, Landroid/icu/text/LowercaseTransliterator;->locale:Landroid/icu/util/ULocale;

    .line 57
    sget-object p1, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    iput-object p1, p0, Landroid/icu/text/LowercaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    .line 58
    new-instance p1, Landroid/icu/text/ReplaceableContextIterator;

    invoke-direct {p1}, Landroid/icu/text/ReplaceableContextIterator;-><init>()V

    iput-object p1, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Landroid/icu/text/LowercaseTransliterator;->result:Ljava/lang/StringBuilder;

    .line 60
    iget-object p1, p0, Landroid/icu/text/LowercaseTransliterator;->locale:Landroid/icu/util/ULocale;

    invoke-static {p1}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Landroid/icu/util/ULocale;)I

    move-result p1

    iput p1, p0, Landroid/icu/text/LowercaseTransliterator;->caseLocale:I

    return-void
.end method

.method static synthetic access$000(Landroid/icu/text/LowercaseTransliterator;)Landroid/icu/util/ULocale;
    .locals 0

    .line 20
    iget-object p0, p0, Landroid/icu/text/LowercaseTransliterator;->locale:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method static register()V
    .locals 3

    .line 33
    new-instance v0, Landroid/icu/text/LowercaseTransliterator$1;

    invoke-direct {v0}, Landroid/icu/text/LowercaseTransliterator$1;-><init>()V

    const-string v1, "Any-Lower"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string v0, "Lower"

    const-string v1, "Upper"

    const/4 v2, 0x1

    .line 40
    invoke-static {v0, v1, v2}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 2

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Landroid/icu/text/SourceTargetUtility;

    new-instance v1, Landroid/icu/text/LowercaseTransliterator$2;

    invoke-direct {v1, p0}, Landroid/icu/text/LowercaseTransliterator$2;-><init>(Landroid/icu/text/LowercaseTransliterator;)V

    invoke-direct {v0, v1}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;)V

    iput-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    .line 135
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/icu/text/SourceTargetUtility;->addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    return-void

    :catchall_0
    move-exception p1

    .line 135
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 5

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 70
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_1
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v1, :cond_1

    .line 74
    monitor-exit p0

    return-void

    .line 77
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/ReplaceableContextIterator;->setText(Landroid/icu/text/Replaceable;)V

    .line 78
    iget-object p1, p0, Landroid/icu/text/LowercaseTransliterator;->result:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 84
    iget-object p1, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {p1, v1}, Landroid/icu/text/ReplaceableContextIterator;->setIndex(I)V

    .line 85
    iget-object p1, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {p1, v1}, Landroid/icu/text/ReplaceableContextIterator;->setLimit(I)V

    .line 86
    iget-object p1, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {p1, v1, v2}, Landroid/icu/text/ReplaceableContextIterator;->setContextLimits(II)V

    .line 87
    :cond_2
    :goto_0
    iget-object p1, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {p1}, Landroid/icu/text/ReplaceableContextIterator;->nextCaseMapCP()I

    move-result p1

    if-ltz p1, :cond_6

    .line 88
    iget-object v1, p0, Landroid/icu/text/LowercaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    iget-object v2, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget-object v3, p0, Landroid/icu/text/LowercaseTransliterator;->result:Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/icu/text/LowercaseTransliterator;->caseLocale:I

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p1

    .line 90
    iget-object v1, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v1}, Landroid/icu/text/ReplaceableContextIterator;->didReachLimit()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    .line 93
    iget-object p1, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {p1}, Landroid/icu/text/ReplaceableContextIterator;->getCaseMapCPStart()I

    move-result p1

    iput p1, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    :cond_3
    if-gez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x1f

    if-gt p1, v1, :cond_5

    .line 103
    :try_start_3
    iget-object p1, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget-object v1, p0, Landroid/icu/text/LowercaseTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result p1

    .line 104
    iget-object v1, p0, Landroid/icu/text/LowercaseTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 107
    :cond_5
    iget-object v1, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result p1

    :goto_1
    if-eqz p1, :cond_2

    .line 111
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    add-int/2addr v1, p1

    iput v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 112
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr v1, p1

    iput v1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    goto :goto_0

    .line 115
    :cond_6
    iget p1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iput p1, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
