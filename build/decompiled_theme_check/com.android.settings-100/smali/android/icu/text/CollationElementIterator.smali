.class public final Landroid/icu/text/CollationElementIterator;
.super Ljava/lang/Object;
.source "CollationElementIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CollationElementIterator$MaxExpSink;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final IGNORABLE:I = 0x0

.field public static final NULLORDER:I = -0x1


# instance fields
.field private dir_:B

.field private iter_:Landroid/icu/impl/coll/CollationIterator;

.field private offsets_:Landroid/icu/impl/coll/UVector32;

.field private otherHalf_:I

.field private rbc_:Landroid/icu/text/RuleBasedCollator;

.field private string_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/icu/text/RuleBasedCollator;)V
    .locals 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    .line 194
    iput-object p1, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    const/4 p1, 0x0

    .line 195
    iput p1, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    .line 196
    iput-byte p1, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    .line 197
    iput-object v0, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    return-void
.end method

.method constructor <init>(Landroid/icu/text/UCharacterIterator;Landroid/icu/text/RuleBasedCollator;)V
    .locals 0

    .line 249
    invoke-direct {p0, p2}, Landroid/icu/text/CollationElementIterator;-><init>(Landroid/icu/text/RuleBasedCollator;)V

    .line 250
    invoke-virtual {p0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Landroid/icu/text/UCharacterIterator;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V
    .locals 0

    .line 211
    invoke-direct {p0, p2}, Landroid/icu/text/CollationElementIterator;-><init>(Landroid/icu/text/RuleBasedCollator;)V

    .line 212
    invoke-virtual {p0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;)V
    .locals 0

    .line 234
    invoke-direct {p0, p2}, Landroid/icu/text/CollationElementIterator;-><init>(Landroid/icu/text/RuleBasedCollator;)V

    .line 235
    invoke-virtual {p0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method

.method static synthetic access$000(J)Z
    .locals 0

    .line 108
    invoke-static {p0, p1}, Landroid/icu/text/CollationElementIterator;->ceNeedsTwoParts(J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(JI)I
    .locals 0

    .line 108
    invoke-static {p0, p1, p2}, Landroid/icu/text/CollationElementIterator;->getSecondHalf(JI)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(JI)I
    .locals 0

    .line 108
    invoke-static {p0, p1, p2}, Landroid/icu/text/CollationElementIterator;->getFirstHalf(JI)I

    move-result p0

    return p0
.end method

.method private static final ceNeedsTwoParts(J)Z
    .locals 2

    const-wide v0, 0xffff00ff003fL

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static final computeMaxExpansions(Landroid/icu/impl/coll/CollationData;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/coll/CollationData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 610
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 611
    new-instance v1, Landroid/icu/text/CollationElementIterator$MaxExpSink;

    invoke-direct {v1, v0}, Landroid/icu/text/CollationElementIterator$MaxExpSink;-><init>(Ljava/util/Map;)V

    .line 612
    new-instance v2, Landroid/icu/impl/coll/ContractionsAndExpansions;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v3, v1, v4}, Landroid/icu/impl/coll/ContractionsAndExpansions;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V

    invoke-virtual {v2, p0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->forData(Landroid/icu/impl/coll/CollationData;)V

    return-object v0
.end method

.method private static final getFirstHalf(JI)I
    .locals 1

    long-to-int p0, p0

    const/high16 p1, -0x10000

    and-int/2addr p0, p1

    shr-int/lit8 p1, p2, 0x10

    const v0, 0xff00

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method static getMaxExpansion(Ljava/util/Map;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    .line 634
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 635
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/16 p0, 0xc0

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    return v0
.end method

.method private static final getSecondHalf(JI)I
    .locals 1

    long-to-int p0, p0

    shl-int/lit8 p0, p0, 0x10

    shr-int/lit8 p1, p2, 0x8

    const v0, 0xff00

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x3f

    or-int/2addr p0, p1

    return p0
.end method

.method private normalizeDir()B
    .locals 1

    .line 647
    iget-byte p0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public static final primaryOrder(I)I
    .locals 1

    ushr-int/lit8 p0, p0, 0x10

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static final secondaryOrder(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static final tertiaryOrder(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 662
    :cond_0
    instance-of v1, p1, Landroid/icu/text/CollationElementIterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 663
    check-cast p1, Landroid/icu/text/CollationElementIterator;

    .line 664
    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v3, p1, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v1, v3}, Landroid/icu/text/RuleBasedCollator;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    iget v3, p1, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    if-ne v1, v3, :cond_1

    .line 666
    invoke-direct {p0}, Landroid/icu/text/CollationElementIterator;->normalizeDir()B

    move-result v1

    invoke-direct {p1}, Landroid/icu/text/CollationElementIterator;->normalizeDir()B

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    .line 667
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    iget-object p1, p1, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    .line 668
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationIterator;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getMaxExpansion(I)I
    .locals 0

    .line 626
    iget-object p0, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object p0, p0, Landroid/icu/impl/coll/CollationTailoring;->maxExpansions:Ljava/util/Map;

    invoke-static {p0, p1}, Landroid/icu/text/CollationElementIterator;->getMaxExpansion(Ljava/util/Map;I)I

    move-result p0

    return p0
.end method

.method public getOffset()I
    .locals 2

    .line 280
    iget-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    if-gez v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector32;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator;->getCEsLength()I

    move-result v0

    .line 284
    iget v1, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 289
    :cond_0
    iget-object p0, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    move-result p0

    return p0

    .line 291
    :cond_1
    iget-object p0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result p0

    return p0
.end method

.method public getRuleBasedCollator()Landroid/icu/text/RuleBasedCollator;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 694
    iget-object p0, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    return-object p0
.end method

.method public hashCode()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 p0, 0x2a

    return p0
.end method

.method public next()I
    .locals 4

    .line 312
    iget-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 314
    iget v0, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 316
    iput v1, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 321
    iput-byte v2, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    goto :goto_0

    :cond_1
    if-nez v0, :cond_5

    .line 324
    iput-byte v2, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    .line 331
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator;->clearCEsIfNoneRemaining()V

    .line 332
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v0

    const-wide v2, 0x101000100L

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v0, v0

    .line 339
    invoke-static {v2, v3, v0}, Landroid/icu/text/CollationElementIterator;->getFirstHalf(JI)I

    move-result v1

    .line 340
    invoke-static {v2, v3, v0}, Landroid/icu/text/CollationElementIterator;->getSecondHalf(JI)I

    move-result v0

    if-eqz v0, :cond_4

    or-int/lit16 v0, v0, 0xc0

    .line 342
    iput v0, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    :cond_4
    return v1

    .line 327
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal change of direction"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public previous()I
    .locals 7

    .line 366
    iget-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-gez v0, :cond_0

    .line 368
    iget v0, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    if-eqz v0, :cond_2

    .line 370
    iput v1, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    return v0

    :cond_0
    if-nez v0, :cond_1

    .line 374
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    .line 375
    iput-byte v2, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_8

    .line 378
    iput-byte v2, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    .line 384
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    if-nez v0, :cond_3

    .line 385
    new-instance v0, Landroid/icu/impl/coll/UVector32;

    invoke-direct {v0}, Landroid/icu/impl/coll/UVector32;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    .line 390
    :cond_3
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator;->getCEsLength()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v1

    .line 391
    :cond_4
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v0, v3}, Landroid/icu/impl/coll/CollationIterator;->previousCE(Landroid/icu/impl/coll/UVector32;)J

    move-result-wide v3

    const-wide v5, 0x101000100L

    cmp-long v0, v3, v5

    if-nez v0, :cond_5

    return v2

    :cond_5
    const/16 v0, 0x20

    ushr-long v5, v3, v0

    long-to-int v0, v3

    .line 398
    invoke-static {v5, v6, v0}, Landroid/icu/text/CollationElementIterator;->getFirstHalf(JI)I

    move-result v2

    .line 399
    invoke-static {v5, v6, v0}, Landroid/icu/text/CollationElementIterator;->getSecondHalf(JI)I

    move-result v0

    if-eqz v0, :cond_7

    .line 401
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v3}, Landroid/icu/impl/coll/UVector32;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 405
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    iget-object v4, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    .line 406
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v3, v1}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    .line 408
    :cond_6
    iput v2, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    or-int/lit16 p0, v0, 0xc0

    return p0

    :cond_7
    return v2

    .line 381
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal change of direction"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .locals 2

    .line 424
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    .line 425
    iput v1, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    .line 426
    iput-byte v1, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    return-void
.end method

.method public setOffset(I)V
    .locals 3

    if-lez p1, :cond_6

    .line 451
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_6

    move v0, p1

    .line 454
    :cond_0
    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 455
    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v2, v1}, Landroid/icu/text/RuleBasedCollator;->isUnsafe(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/icu/text/RuleBasedCollator;->isUnsafe(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    :cond_2
    :goto_0
    if-ge v0, p1, :cond_6

    .line 470
    :cond_3
    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    .line 472
    :cond_4
    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    .line 473
    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v1

    if-eq v1, v0, :cond_4

    if-gt v1, p1, :cond_5

    move v0, v1

    :cond_5
    if-lt v1, p1, :cond_3

    move p1, v0

    .line 481
    :cond_6
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    const/4 p1, 0x0

    .line 482
    iput p1, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    const/4 p1, 0x1

    .line 483
    iput-byte p1, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    return-void
.end method

.method public setText(Landroid/icu/text/UCharacterIterator;)V
    .locals 4

    .line 515
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    .line 523
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UCharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    .line 532
    iget-object p1, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object p1, p1, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {p1}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result p1

    .line 533
    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v1, v1, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 534
    new-instance v1, Landroid/icu/impl/coll/IterCollationIterator;

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v3, v3, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v1, v3, p1, v0}, Landroid/icu/impl/coll/IterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;)V

    goto :goto_0

    .line 536
    :cond_0
    new-instance v1, Landroid/icu/impl/coll/FCDIterCollationIterator;

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v3, v3, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v1, v3, p1, v0, v2}, Landroid/icu/impl/coll/FCDIterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;I)V

    .line 538
    :goto_0
    iput-object v1, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    .line 539
    iput v2, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    .line 540
    iput-byte v2, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    return-void

    .line 527
    :catch_0
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4

    .line 493
    iput-object p1, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    .line 495
    iget-object p1, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object p1, p1, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {p1}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result p1

    .line 496
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v0, v0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 497
    new-instance v0, Landroid/icu/impl/coll/UTF16CollationIterator;

    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v2, v2, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-direct {v0, v2, p1, v3, v1}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    goto :goto_0

    .line 499
    :cond_0
    new-instance v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v2, v2, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-direct {v0, v2, p1, v3, v1}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    .line 501
    :goto_0
    iput-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    .line 502
    iput v1, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    .line 503
    iput-byte v1, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 4

    .line 555
    new-instance v0, Landroid/icu/impl/CharacterIteratorWrapper;

    invoke-direct {v0, p1}, Landroid/icu/impl/CharacterIteratorWrapper;-><init>(Ljava/text/CharacterIterator;)V

    .line 556
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    .line 557
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    .line 559
    iget-object p1, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object p1, p1, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {p1}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result p1

    .line 560
    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v1, v1, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 561
    new-instance v1, Landroid/icu/impl/coll/IterCollationIterator;

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v3, v3, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v1, v3, p1, v0}, Landroid/icu/impl/coll/IterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;)V

    goto :goto_0

    .line 563
    :cond_0
    new-instance v1, Landroid/icu/impl/coll/FCDIterCollationIterator;

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v3, v3, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v1, v3, p1, v0, v2}, Landroid/icu/impl/coll/FCDIterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;I)V

    .line 565
    :goto_0
    iput-object v1, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    .line 566
    iput v2, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    .line 567
    iput-byte v2, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    return-void
.end method
