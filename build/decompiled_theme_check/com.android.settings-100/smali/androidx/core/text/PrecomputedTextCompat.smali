.class public Landroidx/core/text/PrecomputedTextCompat;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask;,
        Landroidx/core/text/PrecomputedTextCompat$Params;
    }
.end annotation


# static fields
.field private static final LINE_FEED:C = '\n'

.field private static sExecutor:Ljava/util/concurrent/Executor;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mParagraphEnds:[I

.field private final mParams:Landroidx/core/text/PrecomputedTextCompat$Params;

.field private final mText:Landroid/text/Spannable;

.field private final mWrapped:Landroid/text/PrecomputedText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/text/PrecomputedTextCompat;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 73
    sput-object v0, Landroidx/core/text/PrecomputedTextCompat;->sExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Landroid/text/PrecomputedText;Landroidx/core/text/PrecomputedTextCompat$Params;)V
    .locals 0

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-object p1, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    .line 489
    iput-object p2, p0, Landroidx/core/text/PrecomputedTextCompat;->mParams:Landroidx/core/text/PrecomputedTextCompat$Params;

    const/4 p1, 0x0

    .line 490
    iput-object p1, p0, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    .line 491
    iput-object p1, p0, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;[I)V
    .locals 1

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    .line 481
    iput-object p2, p0, Landroidx/core/text/PrecomputedTextCompat;->mParams:Landroidx/core/text/PrecomputedTextCompat$Params;

    .line 482
    iput-object p3, p0, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    const/4 p1, 0x0

    .line 483
    iput-object p1, p0, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    return-void
.end method

.method public static create(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;)Landroidx/core/text/PrecomputedTextCompat;
    .locals 11

    .line 426
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v0, "PrecomputedText"

    .line 430
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 435
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    const/16 v4, 0xa

    .line 437
    invoke-static {p0, v4, v3, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    if-gez v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 446
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 448
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    move v3, v2

    .line 449
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 450
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 456
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_3

    .line 457
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    const v4, 0x7fffffff

    invoke-static {p0, v2, v0, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 459
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getBreakStrategy()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 460
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getHyphenationFrequency()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 461
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    goto :goto_3

    .line 463
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    .line 464
    new-instance v3, Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v5

    const v6, 0x7fffffff

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 471
    :cond_4
    :goto_3
    new-instance v0, Landroidx/core/text/PrecomputedTextCompat;

    invoke-direct {v0, p0, p1, v1}, Landroidx/core/text/PrecomputedTextCompat;-><init>(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw p0
.end method

.method public static getTextFuture(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroidx/core/text/PrecomputedTextCompat$Params;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Landroidx/core/text/PrecomputedTextCompat;",
            ">;"
        }
    .end annotation

    .line 627
    new-instance v0, Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask;

    invoke-direct {v0, p1, p0}, Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask;-><init>(Landroidx/core/text/PrecomputedTextCompat$Params;Ljava/lang/CharSequence;)V

    if-nez p2, :cond_1

    .line 629
    sget-object p0, Landroidx/core/text/PrecomputedTextCompat;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 630
    :try_start_0
    sget-object p1, Landroidx/core/text/PrecomputedTextCompat;->sExecutor:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 631
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    sput-object p1, Landroidx/core/text/PrecomputedTextCompat;->sExecutor:Ljava/util/concurrent/Executor;

    .line 633
    :cond_0
    sget-object p2, Landroidx/core/text/PrecomputedTextCompat;->sExecutor:Ljava/util/concurrent/Executor;

    .line 634
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 636
    :cond_1
    :goto_0
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public charAt(I)C
    .locals 0

    .line 712
    iget-object p0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {p0, p1}, Landroid/text/Spannable;->charAt(I)C

    move-result p0

    return p0
.end method

.method public getParagraphCount()I
    .locals 0

    .line 519
    iget-object p0, p0, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    array-length p0, p0

    return p0
.end method

.method public getParagraphEnd(I)I
    .locals 3

    .line 534
    invoke-virtual {p0}, Landroidx/core/text/PrecomputedTextCompat;->getParagraphCount()I

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "paraIndex"

    invoke-static {p1, v1, v0, v2}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 535
    iget-object p0, p0, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    aget p0, p0, p1

    return p0
.end method

.method public getParagraphStart(I)I
    .locals 3

    .line 526
    invoke-virtual {p0}, Landroidx/core/text/PrecomputedTextCompat;->getParagraphCount()I

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "paraIndex"

    invoke-static {p1, v1, v0, v2}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    if-nez p1, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    iget-object p0, p0, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    add-int/lit8 p1, p1, -0x1

    aget v1, p0, p1

    :goto_0
    return v1
.end method

.method public getParams()Landroidx/core/text/PrecomputedTextCompat$Params;
    .locals 0

    .line 512
    iget-object p0, p0, Landroidx/core/text/PrecomputedTextCompat;->mParams:Landroidx/core/text/PrecomputedTextCompat$Params;

    return-object p0
.end method

.method public getPrecomputedText()Landroid/text/PrecomputedText;
    .locals 1

    .line 501
    iget-object p0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    instance-of v0, p0, Landroid/text/PrecomputedText;

    if-eqz v0, :cond_0

    .line 502
    check-cast p0, Landroid/text/PrecomputedText;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 0

    .line 687
    iget-object p0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 0

    .line 692
    iget-object p0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 0

    .line 682
    iget-object p0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 677
    iget-object p0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public length()I
    .locals 0

    .line 707
    iget-object p0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p0

    return p0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 0

    .line 697
    iget-object p0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spannable;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 1

    .line 663
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_0

    .line 667
    iget-object p0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void

    .line 664
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MetricAffectingSpan can not be removed from PrecomputedText."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 1

    .line 651
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_0

    .line 655
    iget-object p0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void

    .line 652
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MetricAffectingSpan can not be set to PrecomputedText."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 717
    iget-object p0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {p0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 722
    iget-object p0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
