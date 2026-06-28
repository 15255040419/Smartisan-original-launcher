.class public Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;
.super Landroid/icu/text/FilteredBreakIteratorBuilder;
.source "SimpleFilteredSentenceBreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final AddToForward:I = 0x2

.field static final MATCH:I = 0x2

.field static final PARTIAL:I = 0x1

.field static final SuppressInReverse:I = 0x1


# instance fields
.field private filterSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 310
    invoke-direct {p0}, Landroid/icu/text/FilteredBreakIteratorBuilder;-><init>()V

    .line 278
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 4

    .line 292
    invoke-direct {p0}, Landroid/icu/text/FilteredBreakIteratorBuilder;-><init>()V

    .line 278
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    .line 293
    sget-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    const-string v1, "android/icu/impl/data/icudt60b/brkitr"

    invoke-static {v1, p1, v0}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p1

    const-string v0, "exceptions/SentenceBreak"

    .line 296
    invoke-virtual {p1, v0}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 300
    invoke-virtual {p1, v0}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    .line 301
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    .line 302
    iget-object v3, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 286
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method


# virtual methods
.method public suppressBreakAfter(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 315
    iget-object p0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public unsuppressBreakAfter(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 320
    iget-object p0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public wrapIteratorWithFilter(Landroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 325
    iget-object v2, v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 330
    :cond_0
    new-instance v2, Landroid/icu/util/CharsTrieBuilder;

    invoke-direct {v2}, Landroid/icu/util/CharsTrieBuilder;-><init>()V

    .line 331
    new-instance v3, Landroid/icu/util/CharsTrieBuilder;

    invoke-direct {v3}, Landroid/icu/util/CharsTrieBuilder;-><init>()V

    .line 336
    iget-object v4, v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    .line 337
    new-array v5, v4, [Ljava/lang/CharSequence;

    .line 338
    new-array v6, v4, [I

    .line 344
    iget-object v0, v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    .line 345
    aput-object v9, v5, v8

    .line 346
    aput v7, v6, v8

    add-int/2addr v8, v10

    goto :goto_0

    :cond_1
    move v0, v7

    move v8, v0

    :goto_1
    if-ge v0, v4, :cond_7

    .line 351
    aget-object v9, v5, v0

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x2e

    .line 352
    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, -0x1

    if-le v11, v12, :cond_6

    add-int/lit8 v11, v11, 0x1

    .line 353
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-eq v11, v13, :cond_6

    move v13, v7

    move v14, v12

    :goto_2
    const/4 v15, 0x3

    if-ge v13, v4, :cond_5

    if-ne v13, v0, :cond_2

    goto :goto_3

    .line 360
    :cond_2
    aget-object v16, v5, v13

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v7, v12, v7, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 361
    aget v12, v6, v13

    if-nez v12, :cond_3

    .line 362
    aput v15, v6, v13

    goto :goto_3

    .line 363
    :cond_3
    aget v12, v6, v13

    and-int/2addr v12, v10

    if-eqz v12, :cond_4

    move v14, v13

    :cond_4
    :goto_3
    add-int/lit8 v13, v13, 0x1

    const/4 v12, -0x1

    goto :goto_2

    :cond_5
    if-ne v14, v12, :cond_6

    .line 369
    aget v12, v6, v0

    if-nez v12, :cond_6

    .line 370
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v2, v12, v10}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    add-int/lit8 v8, v8, 0x1

    .line 375
    aput v15, v6, v0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v7

    :goto_4
    if-ge v7, v4, :cond_9

    .line 381
    aget-object v9, v5, v7

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 382
    aget v10, v6, v7

    const/4 v11, 0x2

    if-nez v10, :cond_8

    .line 383
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v9

    .line 384
    invoke-virtual {v2, v9, v11}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 392
    :cond_8
    invoke-virtual {v3, v9, v11}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    add-int/lit8 v0, v0, 0x1

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    if-lez v8, :cond_a

    .line 398
    sget-object v5, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    invoke-virtual {v2, v5}, Landroid/icu/util/CharsTrieBuilder;->build(Landroid/icu/util/StringTrieBuilder$Option;)Landroid/icu/util/CharsTrie;

    move-result-object v2

    goto :goto_6

    :cond_a
    move-object v2, v4

    :goto_6
    if-lez v0, :cond_b

    .line 402
    sget-object v0, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    invoke-virtual {v3, v0}, Landroid/icu/util/CharsTrieBuilder;->build(Landroid/icu/util/StringTrieBuilder$Option;)Landroid/icu/util/CharsTrie;

    move-result-object v4

    .line 404
    :cond_b
    new-instance v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;

    invoke-direct {v0, v1, v4, v2}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;-><init>(Landroid/icu/text/BreakIterator;Landroid/icu/util/CharsTrie;Landroid/icu/util/CharsTrie;)V

    return-object v0
.end method
