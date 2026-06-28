.class public Landroid/icu/impl/TextTrieMap;
.super Ljava/lang/Object;
.source "TextTrieMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TextTrieMap$Node;,
        Landroid/icu/impl/TextTrieMap$LongestMatchHandler;,
        Landroid/icu/impl/TextTrieMap$ResultHandler;,
        Landroid/icu/impl/TextTrieMap$CharIterator;,
        Landroid/icu/impl/TextTrieMap$ParseState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field _ignoreCase:Z

.field private _root:Landroid/icu/impl/TextTrieMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "TV;>.Node;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/icu/impl/TextTrieMap$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/TextTrieMap$Node;-><init>(Landroid/icu/impl/TextTrieMap;Landroid/icu/impl/TextTrieMap$1;)V

    iput-object v0, p0, Landroid/icu/impl/TextTrieMap;->_root:Landroid/icu/impl/TextTrieMap$Node;

    .line 36
    iput-boolean p1, p0, Landroid/icu/impl/TextTrieMap;->_ignoreCase:Z

    return-void
.end method

.method static synthetic access$300(Ljava/lang/CharSequence;)[C
    .locals 0

    .line 25
    invoke-static {p0}, Landroid/icu/impl/TextTrieMap;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400([CI)[C
    .locals 0

    .line 25
    invoke-static {p0, p1}, Landroid/icu/impl/TextTrieMap;->subArray([CI)[C

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500([CII)[C
    .locals 0

    .line 25
    invoke-static {p0, p1, p2}, Landroid/icu/impl/TextTrieMap;->subArray([CII)[C

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized find(Landroid/icu/impl/TextTrieMap$Node;Landroid/icu/impl/TextTrieMap$CharIterator;Landroid/icu/impl/TextTrieMap$ResultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/TextTrieMap<",
            "TV;>.Node;",
            "Landroid/icu/impl/TextTrieMap$CharIterator;",
            "Landroid/icu/impl/TextTrieMap$ResultHandler<",
            "TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 98
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$Node;->values()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p2}, Landroid/icu/impl/TextTrieMap$CharIterator;->processedLength()I

    move-result v1

    invoke-interface {p3, v1, v0}, Landroid/icu/impl/TextTrieMap$ResultHandler;->handlePrefixMatch(ILjava/util/Iterator;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 101
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/icu/impl/TextTrieMap$Node;->findMatch(Landroid/icu/impl/TextTrieMap$CharIterator;)Landroid/icu/impl/TextTrieMap$Node;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TextTrieMap;->find(Landroid/icu/impl/TextTrieMap$Node;Landroid/icu/impl/TextTrieMap$CharIterator;Landroid/icu/impl/TextTrieMap$ResultHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static subArray([CI)[C
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 506
    :cond_0
    array-length v0, p0

    sub-int/2addr v0, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 507
    array-length v2, v0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static subArray([CII)[C
    .locals 2

    if-nez p1, :cond_0

    .line 512
    array-length v0, p0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    sub-int/2addr p2, p1

    .line 515
    new-array v0, p2, [C

    const/4 v1, 0x0

    .line 516
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static toCharArray(Ljava/lang/CharSequence;)[C
    .locals 3

    .line 495
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 496
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 497
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/icu/impl/TextTrieMap$ResultHandler<",
            "TV;>;)V"
        }
    .end annotation

    .line 93
    new-instance v0, Landroid/icu/impl/TextTrieMap$CharIterator;

    iget-boolean v1, p0, Landroid/icu/impl/TextTrieMap;->_ignoreCase:Z

    invoke-direct {v0, p1, p2, v1}, Landroid/icu/impl/TextTrieMap$CharIterator;-><init>(Ljava/lang/CharSequence;IZ)V

    .line 94
    iget-object p1, p0, Landroid/icu/impl/TextTrieMap;->_root:Landroid/icu/impl/TextTrieMap$Node;

    invoke-direct {p0, p1, v0, p3}, Landroid/icu/impl/TextTrieMap;->find(Landroid/icu/impl/TextTrieMap$Node;Landroid/icu/impl/TextTrieMap$CharIterator;Landroid/icu/impl/TextTrieMap$ResultHandler;)V

    return-void
.end method

.method public find(Ljava/lang/CharSequence;Landroid/icu/impl/TextTrieMap$ResultHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/icu/impl/TextTrieMap$ResultHandler<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    return-void
.end method

.method public get(Ljava/lang/CharSequence;I)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;I[I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/CharSequence;I[I)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I[I)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 80
    new-instance v0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;-><init>(Landroid/icu/impl/TextTrieMap$1;)V

    .line 81
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    if-eqz p3, :cond_0

    .line 82
    array-length p0, p3

    if-lez p0, :cond_0

    const/4 p0, 0x0

    .line 83
    invoke-virtual {v0}, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->getMatchLength()I

    move-result p1

    aput p1, p3, p0

    .line 85
    :cond_0
    invoke-virtual {v0}, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->getMatches()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public openParseState(I)Landroid/icu/impl/TextTrieMap$ParseState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/icu/impl/TextTrieMap<",
            "TV;>.ParseState;"
        }
    .end annotation

    .line 120
    iget-boolean v0, p0, Landroid/icu/impl/TextTrieMap;->_ignoreCase:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->foldCase(IZ)I

    move-result p1

    .line 123
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    int-to-char p1, p1

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result p1

    .line 125
    :goto_0
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap;->_root:Landroid/icu/impl/TextTrieMap$Node;

    invoke-virtual {v0, p1}, Landroid/icu/impl/TextTrieMap$Node;->hasChildFor(C)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 129
    :cond_2
    new-instance p1, Landroid/icu/impl/TextTrieMap$ParseState;

    iget-object v0, p0, Landroid/icu/impl/TextTrieMap;->_root:Landroid/icu/impl/TextTrieMap$Node;

    invoke-direct {p1, p0, v0}, Landroid/icu/impl/TextTrieMap$ParseState;-><init>(Landroid/icu/impl/TextTrieMap;Landroid/icu/impl/TextTrieMap$Node;)V

    return-object p1
.end method

.method public put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "TV;)",
            "Landroid/icu/impl/TextTrieMap<",
            "TV;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Landroid/icu/impl/TextTrieMap$CharIterator;

    iget-boolean v1, p0, Landroid/icu/impl/TextTrieMap;->_ignoreCase:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Landroid/icu/impl/TextTrieMap$CharIterator;-><init>(Ljava/lang/CharSequence;IZ)V

    .line 47
    iget-object p1, p0, Landroid/icu/impl/TextTrieMap;->_root:Landroid/icu/impl/TextTrieMap$Node;

    invoke-virtual {p1, v0, p2}, Landroid/icu/impl/TextTrieMap$Node;->add(Landroid/icu/impl/TextTrieMap$CharIterator;Ljava/lang/Object;)V

    return-object p0
.end method
