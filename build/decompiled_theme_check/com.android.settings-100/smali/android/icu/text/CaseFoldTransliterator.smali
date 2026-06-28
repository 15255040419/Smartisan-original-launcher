.class Landroid/icu/text/CaseFoldTransliterator;
.super Landroid/icu/text/Transliterator;
.source "CaseFoldTransliterator.java"


# static fields
.field static final _ID:Ljava/lang/String; = "Any-CaseFold"

.field static sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;


# instance fields
.field private final csp:Landroid/icu/impl/UCaseProps;

.field private iter:Landroid/icu/text/ReplaceableContextIterator;

.field private result:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "Any-CaseFold"

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, v0, v1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 52
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    iput-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    .line 53
    new-instance v0, Landroid/icu/text/ReplaceableContextIterator;

    invoke-direct {v0}, Landroid/icu/text/ReplaceableContextIterator;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    return-void
.end method

.method static register()V
    .locals 3

    .line 32
    new-instance v0, Landroid/icu/text/CaseFoldTransliterator$1;

    invoke-direct {v0}, Landroid/icu/text/CaseFoldTransliterator$1;-><init>()V

    const-string v1, "Any-CaseFold"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string v0, "CaseFold"

    const-string v1, "Upper"

    const/4 v2, 0x0

    .line 39
    invoke-static {v0, v1, v2}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 3

    .line 119
    const-class v0, Landroid/icu/text/UppercaseTransliterator;

    monitor-enter v0

    .line 120
    :try_start_0
    sget-object v1, Landroid/icu/text/CaseFoldTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Landroid/icu/text/SourceTargetUtility;

    new-instance v2, Landroid/icu/text/CaseFoldTransliterator$2;

    invoke-direct {v2, p0}, Landroid/icu/text/CaseFoldTransliterator$2;-><init>(Landroid/icu/text/CaseFoldTransliterator;)V

    invoke-direct {v1, v2}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;)V

    sput-object v1, Landroid/icu/text/CaseFoldTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    .line 128
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    sget-object v0, Landroid/icu/text/CaseFoldTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/icu/text/SourceTargetUtility;->addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    return-void

    :catchall_0
    move-exception p0

    .line 128
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected declared-synchronized handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 3

    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->csp:Landroid/icu/impl/UCaseProps;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 64
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    :try_start_1
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v1, :cond_1

    .line 68
    monitor-exit p0

    return-void

    .line 71
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/ReplaceableContextIterator;->setText(Landroid/icu/text/Replaceable;)V

    .line 72
    iget-object p1, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 78
    iget-object p1, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {p1, v1}, Landroid/icu/text/ReplaceableContextIterator;->setIndex(I)V

    .line 79
    iget-object p1, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {p1, v1}, Landroid/icu/text/ReplaceableContextIterator;->setLimit(I)V

    .line 80
    iget-object p1, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {p1, v1, v2}, Landroid/icu/text/ReplaceableContextIterator;->setContextLimits(II)V

    .line 81
    :cond_2
    :goto_0
    iget-object p1, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {p1}, Landroid/icu/text/ReplaceableContextIterator;->nextCaseMapCP()I

    move-result p1

    if-ltz p1, :cond_6

    .line 82
    iget-object v1, p0, Landroid/icu/text/CaseFoldTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, v2, v0}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result p1

    .line 84
    iget-object v1, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v1}, Landroid/icu/text/ReplaceableContextIterator;->didReachLimit()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    .line 87
    iget-object p1, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {p1}, Landroid/icu/text/ReplaceableContextIterator;->getCaseMapCPStart()I

    move-result p1

    iput p1, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :cond_3
    if-gez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x1f

    if-gt p1, v1, :cond_5

    .line 97
    :try_start_3
    iget-object p1, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget-object v1, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result p1

    .line 98
    iget-object v1, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 101
    :cond_5
    iget-object v1, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result p1

    :goto_1
    if-eqz p1, :cond_2

    .line 105
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    add-int/2addr v1, p1

    iput v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 106
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr v1, p1

    iput v1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    goto :goto_0

    .line 109
    :cond_6
    iget p1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iput p1, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
