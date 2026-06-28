.class public abstract Landroid/icu/text/SearchIterator;
.super Ljava/lang/Object;
.source "SearchIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SearchIterator$ElementComparisonType;,
        Landroid/icu/text/SearchIterator$Search;
    }
.end annotation


# static fields
.field public static final DONE:I = -0x1


# instance fields
.field protected breakIterator:Landroid/icu/text/BreakIterator;

.field protected matchLength:I

.field search_:Landroid/icu/text/SearchIterator$Search;

.field protected targetText:Ljava/text/CharacterIterator;


# direct methods
.method protected constructor <init>(Ljava/text/CharacterIterator;Landroid/icu/text/BreakIterator;)V
    .locals 2

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Landroid/icu/text/SearchIterator$Search;

    invoke-direct {v0, p0}, Landroid/icu/text/SearchIterator$Search;-><init>(Landroid/icu/text/SearchIterator;)V

    iput-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    if-eqz p1, :cond_1

    .line 611
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p1}, Landroid/icu/text/SearchIterator$Search;->setTarget(Ljava/text/CharacterIterator;)V

    .line 618
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p2}, Landroid/icu/text/SearchIterator$Search;->setBreakIter(Landroid/icu/text/BreakIterator;)V

    .line 619
    iget-object p2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {p2}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 620
    iget-object p2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {p2}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object p2

    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/CharacterIterator;

    invoke-virtual {p2, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 622
    :cond_0
    iget-object p1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    .line 623
    iput-boolean p2, p1, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    .line 624
    sget-object v0, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    iput-object v0, p1, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    .line 625
    iget-object p0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 626
    iput-boolean p1, p0, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    const/4 p1, -0x1

    .line 627
    iput p1, p0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 628
    invoke-virtual {p0, p2}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    return-void

    .line 612
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal argument target.  Argument can not be null or of length 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final first()I
    .locals 1

    .line 523
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v0

    .line 524
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    .line 525
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->handleNext(I)I

    move-result p0

    return p0
.end method

.method public final following(I)I
    .locals 0

    .line 544
    invoke-virtual {p0, p1}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    .line 545
    invoke-virtual {p0, p1}, Landroid/icu/text/SearchIterator;->handleNext(I)I

    move-result p0

    return p0
.end method

.method public getBreakIterator()Landroid/icu/text/BreakIterator;
    .locals 0

    .line 329
    iget-object p0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {p0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public getElementComparisonType()Landroid/icu/text/SearchIterator$ElementComparisonType;
    .locals 0

    .line 765
    iget-object p0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object p0, p0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    return-object p0
.end method

.method public abstract getIndex()I
.end method

.method public getMatchLength()I
    .locals 0

    .line 314
    iget-object p0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {p0}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result p0

    return p0
.end method

.method public getMatchStart()I
    .locals 0

    .line 286
    iget-object p0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget p0, p0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    return p0
.end method

.method public getMatchedText()Ljava/lang/String;
    .locals 4

    .line 355
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 356
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v2}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 358
    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v2}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v2

    .line 359
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v3, v3, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-interface {v2, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 360
    :goto_0
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 361
    invoke-interface {v2}, Ljava/text/CharacterIterator;->current()C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    invoke-interface {v2}, Ljava/text/CharacterIterator;->next()C

    goto :goto_0

    .line 364
    :cond_0
    iget-object p0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget p0, p0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-interface {v2, p0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 365
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTarget()Ljava/text/CharacterIterator;
    .locals 0

    .line 337
    iget-object p0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {p0}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object p0

    return-object p0
.end method

.method protected abstract handleNext(I)I
.end method

.method protected abstract handlePrevious(I)I
.end method

.method public isOverlapping()Z
    .locals 0

    .line 486
    iget-object p0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean p0, p0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    return p0
.end method

.method public final last()I
    .locals 1

    .line 561
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    .line 562
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    .line 563
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->handlePrevious(I)I

    move-result p0

    return p0
.end method

.method public next()I
    .locals 6

    .line 386
    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->getIndex()I

    move-result v0

    .line 387
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v1, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 388
    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v2}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v2

    .line 389
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    .line 390
    iget-boolean v3, v3, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    .line 391
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v3

    if-eq v0, v3, :cond_0

    if-eq v1, v3, :cond_0

    if-eq v1, v4, :cond_2

    add-int/2addr v1, v2

    if-lt v1, v3, :cond_2

    .line 395
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->setMatchNotFound()V

    return v4

    .line 404
    :cond_1
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 405
    iget v3, v3, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    if-lez v2, :cond_4

    .line 414
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v1, v1, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v0, v2

    .line 421
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->handleNext(I)I

    move-result p0

    return p0
.end method

.method public final preceding(I)I
    .locals 0

    .line 588
    invoke-virtual {p0, p1}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    .line 589
    invoke-virtual {p0, p1}, Landroid/icu/text/SearchIterator;->handlePrevious(I)I

    move-result p0

    return p0
.end method

.method public previous()I
    .locals 5

    .line 438
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    .line 440
    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v1, v2, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 441
    iput-boolean v1, v2, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    .line 442
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->getIndex()I

    move-result v0

    .line 447
    :goto_0
    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v2, v2, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 448
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v3, v3, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    .line 454
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v1, v3, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    if-eq v2, v4, :cond_2

    return v2

    .line 459
    :cond_1
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v1

    if-eq v0, v1, :cond_5

    if-ne v2, v1, :cond_2

    goto :goto_1

    :cond_2
    if-eq v2, v4, :cond_4

    .line 468
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    if-eqz v0, :cond_3

    .line 469
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int/2addr v2, v0

    .line 472
    :cond_3
    invoke-virtual {p0, v2}, Landroid/icu/text/SearchIterator;->handlePrevious(I)I

    move-result p0

    return p0

    .line 475
    :cond_4
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->handlePrevious(I)I

    move-result p0

    return p0

    .line 462
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->setMatchNotFound()V

    return v4
.end method

.method public reset()V
    .locals 2

    .line 500
    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->setMatchNotFound()V

    .line 501
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    .line 502
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    .line 503
    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    .line 504
    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    iput-object v1, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    .line 505
    iget-object p0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 506
    iput-boolean v0, p0, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    return-void
.end method

.method public setBreakIterator(Landroid/icu/text/BreakIterator;)V
    .locals 1

    .line 222
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p1}, Landroid/icu/text/SearchIterator$Search;->setBreakIter(Landroid/icu/text/BreakIterator;)V

    .line 223
    iget-object p1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {p1}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {p1}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 227
    iget-object p1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {p1}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object p1

    iget-object p0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {p0}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/CharacterIterator;

    invoke-virtual {p1, p0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    :cond_0
    return-void
.end method

.method public setElementComparisonType(Landroid/icu/text/SearchIterator$ElementComparisonType;)V
    .locals 0

    .line 755
    iget-object p0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-object p1, p0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    return-void
.end method

.method public setIndex(I)V
    .locals 2

    .line 184
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 185
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 190
    iget-object p1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    .line 191
    invoke-virtual {p1, v0}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 192
    iget-object p0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 p1, -0x1

    iput p1, p0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    return-void

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIndex(int) expected position to be between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 188
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {p0}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setMatchLength(I)V
    .locals 0

    .line 645
    iget-object p0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {p0, p1}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    return-void
.end method

.method protected setMatchNotFound()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 694
    iget-object p0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    const/4 v0, 0x0

    .line 695
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    return-void
.end method

.method public setOverlapping(Z)V
    .locals 0

    .line 205
    iget-object p0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean p1, p0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    return-void
.end method

.method public setTarget(Ljava/text/CharacterIterator;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 244
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 248
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 249
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p1}, Landroid/icu/text/SearchIterator$Search;->setTarget(Ljava/text/CharacterIterator;)V

    .line 250
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, -0x1

    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    const/4 v1, 0x0

    .line 251
    invoke-virtual {v0, v1}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 252
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    .line 253
    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 254
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CharacterIterator;

    invoke-virtual {v0, v1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 259
    :cond_0
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    if-eqz v0, :cond_1

    .line 260
    iget-object p0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object p0, p0, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/CharacterIterator;

    invoke-virtual {p0, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    :cond_1
    return-void

    .line 245
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal null or empty text"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
