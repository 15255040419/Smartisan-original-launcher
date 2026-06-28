.class Landroid/icu/text/RuleBasedBreakIterator$BreakCache;
.super Ljava/lang/Object;
.source "RuleBasedBreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedBreakIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BreakCache"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final CACHE_SIZE:I = 0x80

.field static final RetainCachePosition:Z = false

.field static final UpdateCachePosition:Z = true


# instance fields
.field fBoundaries:[I

.field fBufIdx:I

.field fEndBufIdx:I

.field fSideBuffer:Landroid/icu/text/DictionaryBreakEngine$DequeI;

.field fStartBufIdx:I

.field fStatuses:[S

.field fTextIdx:I

.field final synthetic this$0:Landroid/icu/text/RuleBasedBreakIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1384
    const-class v0, Landroid/icu/text/RuleBasedBreakIterator;

    return-void
.end method

.method constructor <init>(Landroid/icu/text/RuleBasedBreakIterator;)V
    .locals 1

    .line 1386
    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x80

    new-array v0, p1, [I

    .line 1855
    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    new-array p1, p1, [S

    .line 1856
    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    .line 1858
    new-instance p1, Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-direct {p1}, Landroid/icu/text/DictionaryBreakEngine$DequeI;-><init>()V

    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    .line 1387
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->reset()V

    return-void
.end method

.method constructor <init>(Landroid/icu/text/RuleBasedBreakIterator;Landroid/icu/text/RuleBasedBreakIterator$BreakCache;)V
    .locals 1

    .line 1824
    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x80

    new-array v0, p1, [I

    .line 1855
    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    new-array p1, p1, [S

    .line 1856
    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    .line 1858
    new-instance p1, Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-direct {p1}, Landroid/icu/text/DictionaryBreakEngine$DequeI;-><init>()V

    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    .line 1825
    iget p1, p2, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    .line 1826
    iget p1, p2, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    .line 1827
    iget p1, p2, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1828
    iget p1, p2, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1829
    iget-object p1, p2, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    .line 1830
    iget-object p1, p2, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    invoke-virtual {p1}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    .line 1831
    new-instance p1, Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-direct {p1}, Landroid/icu/text/DictionaryBreakEngine$DequeI;-><init>()V

    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    return-void
.end method

.method private final modChunkSize(I)I
    .locals 0

    and-int/lit8 p0, p1, 0x7f

    return p0
.end method


# virtual methods
.method addFollowing(IIZ)V
    .locals 3

    .line 1725
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v0

    .line 1726
    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    if-ne v0, v2, :cond_0

    add-int/lit8 v2, v2, 0x6

    .line 1727
    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v2

    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    .line 1729
    :cond_0
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    aput p1, v2, v0

    .line 1730
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    int-to-short p2, p2

    aput-short p2, v2, v0

    .line 1731
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    if-ne p3, v1, :cond_1

    .line 1734
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1735
    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    :cond_1
    return-void
.end method

.method addPreceding(IIZ)Z
    .locals 4

    .line 1754
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v0

    .line 1755
    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    if-ne v0, v2, :cond_1

    .line 1756
    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    if-ne v3, v2, :cond_0

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1762
    :cond_0
    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v2

    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    .line 1764
    :cond_1
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    aput p1, v2, v0

    .line 1765
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    int-to-short p2, p2

    aput-short p2, v2, v0

    .line 1766
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    if-ne p3, v1, :cond_2

    .line 1768
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1769
    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    :cond_2
    return v1
.end method

.method current()I
    .locals 3

    .line 1464
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    invoke-static {v0, v1}, Landroid/icu/text/RuleBasedBreakIterator;->access$402(Landroid/icu/text/RuleBasedBreakIterator;I)I

    .line 1465
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget-short v1, v1, v2

    invoke-static {v0, v1}, Landroid/icu/text/RuleBasedBreakIterator;->access$502(Landroid/icu/text/RuleBasedBreakIterator;I)I

    .line 1466
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/RuleBasedBreakIterator;->access$302(Landroid/icu/text/RuleBasedBreakIterator;Z)Z

    .line 1467
    iget p0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    return p0
.end method

.method dumpCache()V
    .locals 7

    .line 1835
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "fTextIdx:%d   fBufIdx:%d%n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1836
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    .line 1837
    :goto_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "%d  %d%n"

    invoke-virtual {v2, v6, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1838
    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1836
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v0

    goto :goto_0
.end method

.method following(I)V
    .locals 1

    .line 1432
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->seek(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->populateNear(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1438
    :cond_0
    iget-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/icu/text/RuleBasedBreakIterator;->access$302(Landroid/icu/text/RuleBasedBreakIterator;Z)Z

    .line 1439
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->next()V

    :cond_1
    return-void
.end method

.method next()V
    .locals 3

    .line 1402
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    if-ne v0, v1, :cond_0

    .line 1403
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->populateFollowing()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/icu/text/RuleBasedBreakIterator;->access$302(Landroid/icu/text/RuleBasedBreakIterator;Z)Z

    .line 1404
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    invoke-static {v0, v1}, Landroid/icu/text/RuleBasedBreakIterator;->access$402(Landroid/icu/text/RuleBasedBreakIterator;I)I

    .line 1405
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    iget p0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget-short p0, v1, p0

    invoke-static {v0, p0}, Landroid/icu/text/RuleBasedBreakIterator;->access$502(Landroid/icu/text/RuleBasedBreakIterator;I)I

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1407
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v0

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1408
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/icu/text/RuleBasedBreakIterator;->access$402(Landroid/icu/text/RuleBasedBreakIterator;I)I

    move-result v0

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1409
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    iget p0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget-short p0, v1, p0

    invoke-static {v0, p0}, Landroid/icu/text/RuleBasedBreakIterator;->access$502(Landroid/icu/text/RuleBasedBreakIterator;I)I

    :goto_0
    return-void
.end method

.method populateFollowing()Z
    .locals 8

    .line 1558
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget v0, v0, v1

    .line 1559
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    aget-short v1, v2, v1

    .line 1563
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v2}, Landroid/icu/text/RuleBasedBreakIterator;->access$800(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->following(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1564
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v0}, Landroid/icu/text/RuleBasedBreakIterator;->access$800(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v0

    iget v0, v0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v1}, Landroid/icu/text/RuleBasedBreakIterator;->access$800(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v1

    iget v1, v1, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    invoke-virtual {p0, v0, v1, v3}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->addFollowing(IIZ)V

    return v3

    .line 1568
    :cond_0
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v2, v0}, Landroid/icu/text/RuleBasedBreakIterator;->access$402(Landroid/icu/text/RuleBasedBreakIterator;I)I

    .line 1569
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v2}, Landroid/icu/text/RuleBasedBreakIterator;->access$700(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    return v5

    .line 1574
    :cond_1
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v6}, Landroid/icu/text/RuleBasedBreakIterator;->access$500(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v6

    .line 1575
    iget-object v7, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v7}, Landroid/icu/text/RuleBasedBreakIterator;->access$900(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v7

    if-lez v7, :cond_2

    .line 1578
    iget-object v7, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v7}, Landroid/icu/text/RuleBasedBreakIterator;->access$800(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v7

    invoke-virtual {v7, v0, v2, v1, v6}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->populateDictionary(IIII)V

    .line 1579
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v1}, Landroid/icu/text/RuleBasedBreakIterator;->access$800(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->following(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1580
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v0}, Landroid/icu/text/RuleBasedBreakIterator;->access$800(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v0

    iget v0, v0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v1}, Landroid/icu/text/RuleBasedBreakIterator;->access$800(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v1

    iget v1, v1, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    invoke-virtual {p0, v0, v1, v3}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->addFollowing(IIZ)V

    return v3

    .line 1591
    :cond_2
    invoke-virtual {p0, v2, v6, v3}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->addFollowing(IIZ)V

    move v0, v5

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_4

    .line 1597
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v1}, Landroid/icu/text/RuleBasedBreakIterator;->access$700(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 1598
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v2}, Landroid/icu/text/RuleBasedBreakIterator;->access$900(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_1

    .line 1601
    :cond_3
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v2}, Landroid/icu/text/RuleBasedBreakIterator;->access$500(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v2

    invoke-virtual {p0, v1, v2, v5}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->addFollowing(IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v3
.end method

.method populateNear(I)Z
    .locals 5

    .line 1496
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    aget v1, v0, v1

    add-int/lit8 v1, v1, -0xf

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0xf

    if-le p1, v0, :cond_2

    .line 1497
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v0}, Landroid/icu/text/RuleBasedBreakIterator;->access$000(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    add-int/lit8 v1, v0, 0x14

    if-le p1, v1, :cond_1

    .line 1501
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v0, p1}, Landroid/icu/text/RuleBasedBreakIterator;->access$600(Landroid/icu/text/RuleBasedBreakIterator;I)I

    move-result v0

    .line 1502
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v1, v0}, Landroid/icu/text/RuleBasedBreakIterator;->access$402(Landroid/icu/text/RuleBasedBreakIterator;I)I

    .line 1503
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v0}, Landroid/icu/text/RuleBasedBreakIterator;->access$700(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v0

    .line 1504
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v1}, Landroid/icu/text/RuleBasedBreakIterator;->access$500(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1506
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->reset(II)V

    .line 1511
    :cond_2
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget v1, v0, v1

    const/4 v3, 0x1

    if-ge v1, p1, :cond_6

    .line 1514
    :cond_3
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget v4, v0, v1

    if-ge v4, p1, :cond_4

    .line 1515
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->populateFollowing()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 1520
    :cond_4
    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1521
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget v0, v0, v1

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1522
    :goto_1
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    if-le v0, p1, :cond_5

    .line 1523
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->previous()V

    goto :goto_1

    :cond_5
    return v3

    .line 1528
    :cond_6
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    aget v0, v0, v1

    if-le v0, p1, :cond_9

    .line 1531
    :goto_2
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    aget v2, v0, v1

    if-le v2, p1, :cond_7

    .line 1532
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->populatePreceding()Z

    goto :goto_2

    .line 1534
    :cond_7
    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1535
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget v0, v0, v1

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1536
    :goto_3
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    if-ge v0, p1, :cond_8

    .line 1537
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->next()V

    goto :goto_3

    :cond_8
    if-le v0, p1, :cond_9

    .line 1542
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->previous()V

    :cond_9
    return v3
.end method

.method populatePreceding()Z
    .locals 9

    .line 1612
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v0}, Landroid/icu/text/RuleBasedBreakIterator;->access$000(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    .line 1613
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    aget v1, v1, v2

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    return v2

    .line 1621
    :cond_0
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v3}, Landroid/icu/text/RuleBasedBreakIterator;->access$800(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->preceding(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1622
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v0}, Landroid/icu/text/RuleBasedBreakIterator;->access$800(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v0

    iget v0, v0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v1}, Landroid/icu/text/RuleBasedBreakIterator;->access$800(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v1

    iget v1, v1, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    invoke-virtual {p0, v0, v1, v4}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->addPreceding(IIZ)Z

    return v4

    :cond_1
    move v3, v1

    :cond_2
    add-int/lit8 v3, v3, -0x1e

    if-gt v3, v0, :cond_3

    move v3, v0

    goto :goto_0

    .line 1634
    :cond_3
    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v5, v3}, Landroid/icu/text/RuleBasedBreakIterator;->access$600(Landroid/icu/text/RuleBasedBreakIterator;I)I

    move-result v3

    :goto_0
    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    if-ne v3, v0, :cond_4

    goto :goto_1

    .line 1640
    :cond_4
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v6, v3}, Landroid/icu/text/RuleBasedBreakIterator;->access$402(Landroid/icu/text/RuleBasedBreakIterator;I)I

    .line 1641
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v6}, Landroid/icu/text/RuleBasedBreakIterator;->access$700(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v6

    .line 1642
    iget-object v7, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v7}, Landroid/icu/text/RuleBasedBreakIterator;->access$500(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v7

    goto :goto_2

    :cond_5
    :goto_1
    move v6, v0

    move v7, v2

    :goto_2
    if-ge v6, v1, :cond_2

    .line 1650
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->removeAllElements()V

    .line 1651
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0, v6}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    .line 1652
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0, v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    .line 1655
    :goto_3
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v0, v6}, Landroid/icu/text/RuleBasedBreakIterator;->access$402(Landroid/icu/text/RuleBasedBreakIterator;I)I

    move-result v0

    .line 1657
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v3}, Landroid/icu/text/RuleBasedBreakIterator;->access$700(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v3

    .line 1658
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v6}, Landroid/icu/text/RuleBasedBreakIterator;->access$500(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v6

    if-ne v3, v5, :cond_6

    goto :goto_6

    .line 1664
    :cond_6
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Landroid/icu/text/RuleBasedBreakIterator;->access$900(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v8

    if-eqz v8, :cond_8

    .line 1668
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Landroid/icu/text/RuleBasedBreakIterator;->access$800(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v8

    invoke-virtual {v8, v0, v3, v7, v6}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->populateDictionary(IIII)V

    move v7, v6

    move v6, v2

    .line 1669
    :goto_4
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Landroid/icu/text/RuleBasedBreakIterator;->access$800(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->following(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1670
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v0}, Landroid/icu/text/RuleBasedBreakIterator;->access$800(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v0

    iget v3, v0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    .line 1671
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v0}, Landroid/icu/text/RuleBasedBreakIterator;->access$800(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v0

    iget v7, v0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    if-lt v3, v1, :cond_7

    move v6, v4

    goto :goto_5

    .line 1678
    :cond_7
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0, v3}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    .line 1679
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0, v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    move v0, v3

    move v6, v4

    goto :goto_4

    :cond_8
    move v7, v6

    move v6, v2

    :cond_9
    :goto_5
    if-nez v6, :cond_a

    if-ge v3, v1, :cond_a

    .line 1686
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0, v3}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    .line 1687
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0, v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    :cond_a
    if-lt v3, v1, :cond_e

    .line 1693
    :goto_6
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1694
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    move-result v0

    .line 1695
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v1}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    move-result v1

    .line 1696
    invoke-virtual {p0, v1, v0, v4}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->addPreceding(IIZ)Z

    goto :goto_7

    :cond_b
    move v4, v2

    .line 1700
    :cond_c
    :goto_7
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1701
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    move-result v0

    .line 1702
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v1}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    move-result v1

    .line 1703
    invoke-virtual {p0, v1, v0, v2}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->addPreceding(IIZ)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_d
    return v4

    :cond_e
    move v6, v3

    goto/16 :goto_3
.end method

.method preceding(I)V
    .locals 1

    .line 1445
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->seek(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->populateNear(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1446
    :cond_0
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    if-ne p1, v0, :cond_1

    .line 1447
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->previous()V

    goto :goto_0

    .line 1453
    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->current()I

    :cond_2
    :goto_0
    return-void
.end method

.method previous()V
    .locals 3

    .line 1414
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1415
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    if-ne v0, v1, :cond_0

    .line 1417
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->populatePreceding()Z

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 1420
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v1

    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1421
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget v1, v1, v2

    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1423
    :goto_0
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    if-ne v2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v0}, Landroid/icu/text/RuleBasedBreakIterator;->access$302(Landroid/icu/text/RuleBasedBreakIterator;Z)Z

    .line 1424
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    invoke-static {v0, v1}, Landroid/icu/text/RuleBasedBreakIterator;->access$402(Landroid/icu/text/RuleBasedBreakIterator;I)I

    .line 1425
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    iget p0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget-short p0, v1, p0

    invoke-static {v0, p0}, Landroid/icu/text/RuleBasedBreakIterator;->access$502(Landroid/icu/text/RuleBasedBreakIterator;I)I

    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1399
    invoke-virtual {p0, v0, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->reset(II)V

    return-void
.end method

.method reset(II)V
    .locals 2

    const/4 v0, 0x0

    .line 1391
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    .line 1392
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    .line 1393
    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1394
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1395
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    aput p1, v1, v0

    .line 1396
    iget-object p0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    int-to-short p1, p2

    aput-short p1, p0, v0

    return-void
.end method

.method seek(I)Z
    .locals 6

    .line 1784
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    aget v2, v0, v1

    const/4 v3, 0x0

    if-lt p1, v2, :cond_6

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget v4, v0, v2

    if-le p1, v4, :cond_0

    goto :goto_2

    .line 1787
    :cond_0
    aget v4, v0, v1

    const/4 v5, 0x1

    if-ne p1, v4, :cond_1

    .line 1789
    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1790
    iget p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget p1, v0, p1

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    return v5

    .line 1793
    :cond_1
    aget v4, v0, v2

    if-ne p1, v4, :cond_2

    .line 1794
    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1795
    iget p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget p1, v0, p1

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    return v5

    :cond_2
    :goto_0
    if-eq v1, v2, :cond_5

    add-int v0, v1, v2

    if-le v1, v2, :cond_3

    const/16 v4, 0x80

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    add-int/2addr v0, v4

    .line 1802
    div-int/lit8 v0, v0, 0x2

    .line 1803
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v0

    .line 1804
    iget-object v4, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    aget v4, v4, v0

    if-le v4, p1, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 1807
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_5
    sub-int/2addr v2, v5

    .line 1811
    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result p1

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1812
    iget-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget p1, p1, v0

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    return v5

    :cond_6
    :goto_2
    return v3
.end method
