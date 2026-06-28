.class Landroid/icu/text/StringSearch$CollationPCE;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/StringSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CollationPCE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;,
        Landroid/icu/text/StringSearch$CollationPCE$RCEI;,
        Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;,
        Landroid/icu/text/StringSearch$CollationPCE$PCEI;,
        Landroid/icu/text/StringSearch$CollationPCE$Range;
    }
.end annotation


# static fields
.field private static final BUFFER_GROW:I = 0x8

.field private static final CONTINUATION_MARKER:I = 0xc0

.field private static final DEFAULT_BUFFER_SIZE:I = 0x10

.field private static final PRIMARYORDERMASK:I = -0x10000

.field public static final PROCESSED_NULLORDER:J = -0x1L


# instance fields
.field private cei_:Landroid/icu/text/CollationElementIterator;

.field private isShifted_:Z

.field private pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

.field private strength_:I

.field private toShift_:Z

.field private variableTop_:I


# direct methods
.method public constructor <init>(Landroid/icu/text/CollationElementIterator;)V
    .locals 2

    .line 1638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1631
    new-instance v0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;-><init>(Landroid/icu/text/StringSearch$1;)V

    iput-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    .line 1639
    invoke-virtual {p0, p1}, Landroid/icu/text/StringSearch$CollationPCE;->init(Landroid/icu/text/CollationElementIterator;)V

    return-void
.end method

.method private init(Landroid/icu/text/RuleBasedCollator;)V
    .locals 1

    .line 1648
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result v0

    iput v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->strength_:I

    .line 1649
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->toShift_:Z

    const/4 v0, 0x0

    .line 1650
    iput-boolean v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->isShifted_:Z

    .line 1651
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result p1

    iput p1, p0, Landroid/icu/text/StringSearch$CollationPCE;->variableTop_:I

    return-void
.end method

.method private static isContinuation(I)Z
    .locals 1

    const/16 v0, 0xc0

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private processCE(I)J
    .locals 13

    .line 1661
    iget v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->strength_:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    .line 1663
    invoke-static {p1}, Landroid/icu/text/CollationElementIterator;->tertiaryOrder(I)I

    move-result v0

    int-to-long v4, v0

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 1667
    :goto_0
    invoke-static {p1}, Landroid/icu/text/CollationElementIterator;->secondaryOrder(I)I

    move-result v0

    int-to-long v6, v0

    goto :goto_1

    :cond_1
    move-wide v4, v2

    move-wide v6, v4

    .line 1671
    :goto_1
    invoke-static {p1}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v0

    int-to-long v8, v0

    .line 1682
    iget-boolean v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->toShift_:Z

    const/4 v10, 0x3

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->variableTop_:I

    if-le v0, p1, :cond_2

    cmp-long p1, v8, v2

    if-nez p1, :cond_3

    :cond_2
    iget-boolean p1, p0, Landroid/icu/text/StringSearch$CollationPCE;->isShifted_:Z

    if-eqz p1, :cond_6

    cmp-long p1, v8, v2

    if-nez p1, :cond_6

    :cond_3
    cmp-long p1, v8, v2

    if-nez p1, :cond_4

    return-wide v2

    .line 1688
    :cond_4
    iget p1, p0, Landroid/icu/text/StringSearch$CollationPCE;->strength_:I

    if-lt p1, v10, :cond_5

    goto :goto_2

    :cond_5
    move-wide v8, v2

    .line 1693
    :goto_2
    iput-boolean v1, p0, Landroid/icu/text/StringSearch$CollationPCE;->isShifted_:Z

    move-wide v4, v2

    move-wide v6, v4

    goto :goto_3

    .line 1695
    :cond_6
    iget p1, p0, Landroid/icu/text/StringSearch$CollationPCE;->strength_:I

    if-lt p1, v10, :cond_7

    const-wide/32 v2, 0xffff

    :cond_7
    const/4 p1, 0x0

    .line 1699
    iput-boolean p1, p0, Landroid/icu/text/StringSearch$CollationPCE;->isShifted_:Z

    move-wide v11, v2

    move-wide v2, v8

    move-wide v8, v11

    :goto_3
    const/16 p0, 0x30

    shl-long p0, v2, p0

    const/16 v0, 0x20

    shl-long v0, v6, v0

    or-long/2addr p0, v0

    const/16 v0, 0x10

    shl-long v0, v4, v0

    or-long/2addr p0, v0

    or-long/2addr p0, v8

    return-wide p0
.end method


# virtual methods
.method public init(Landroid/icu/text/CollationElementIterator;)V
    .locals 0

    .line 1643
    iput-object p1, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    .line 1644
    invoke-virtual {p1}, Landroid/icu/text/CollationElementIterator;->getRuleBasedCollator()Landroid/icu/text/RuleBasedCollator;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/text/StringSearch$CollationPCE;->init(Landroid/icu/text/RuleBasedCollator;)V

    return-void
.end method

.method public nextProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J
    .locals 7

    .line 1720
    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    invoke-virtual {v0}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->reset()V

    .line 1723
    :cond_0
    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    .line 1724
    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v1}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v1

    .line 1725
    iget-object v2, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v2}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const-wide/16 v3, -0x1

    goto :goto_0

    .line 1732
    :cond_1
    invoke-direct {p0, v1}, Landroid/icu/text/StringSearch$CollationPCE;->processCE(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    :goto_0
    if-eqz p1, :cond_2

    .line 1736
    iput v0, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    .line 1737
    iput v2, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    :cond_2
    return-wide v3
.end method

.method public previousProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J
    .locals 6

    .line 1761
    :cond_0
    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    invoke-virtual {v0}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->empty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    .line 1763
    new-instance v0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;-><init>(Landroid/icu/text/StringSearch$1;)V

    const/4 v2, 0x0

    .line 1770
    :cond_1
    iget-object v3, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v3}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v3

    .line 1771
    iget-object v4, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->previous()I

    move-result v4

    .line 1772
    iget-object v5, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v5}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v5

    if-ne v4, v1, :cond_3

    .line 1775
    invoke-virtual {v0}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1783
    :cond_3
    invoke-virtual {v0, v4, v5, v3}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->put(III)V

    const/high16 v3, -0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 1784
    invoke-static {v4}, Landroid/icu/text/StringSearch$CollationPCE;->isContinuation(I)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    if-eqz v2, :cond_4

    goto :goto_2

    .line 1791
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1792
    invoke-virtual {v0}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->get()Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    move-result-object v1

    .line 1794
    iget v2, v1, Landroid/icu/text/StringSearch$CollationPCE$RCEI;->ce_:I

    invoke-direct {p0, v2}, Landroid/icu/text/StringSearch$CollationPCE;->processCE(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4

    .line 1797
    iget-object v4, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    iget v5, v1, Landroid/icu/text/StringSearch$CollationPCE$RCEI;->low_:I

    iget v1, v1, Landroid/icu/text/StringSearch$CollationPCE$RCEI;->high_:I

    invoke-virtual {v4, v2, v3, v5, v1}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->put(JII)V

    goto :goto_1

    .line 1802
    :cond_5
    :goto_2
    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    invoke-virtual {v0}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->empty()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    .line 1805
    iput v1, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    .line 1806
    iput v1, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    :cond_6
    const-wide/16 p0, -0x1

    return-wide p0

    .line 1811
    :cond_7
    iget-object p0, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    invoke-virtual {p0}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->get()Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    move-result-object p0

    if-eqz p1, :cond_8

    .line 1814
    iget v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->low_:I

    iput v0, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    .line 1815
    iget v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->high_:I

    iput v0, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    .line 1818
    :cond_8
    iget-wide p0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->ce_:J

    return-wide p0
.end method
