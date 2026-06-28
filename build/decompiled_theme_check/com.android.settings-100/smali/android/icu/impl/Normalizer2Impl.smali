.class public final Landroid/icu/impl/Normalizer2Impl;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Normalizer2Impl$IsAcceptable;,
        Landroid/icu/impl/Normalizer2Impl$UTF16Plus;,
        Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;,
        Landroid/icu/impl/Normalizer2Impl$Hangul;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CANON_HAS_COMPOSITIONS:I = 0x40000000

.field private static final CANON_HAS_SET:I = 0x200000

.field private static final CANON_NOT_SEGMENT_STARTER:I = -0x80000000

.field private static final CANON_VALUE_MASK:I = 0x1fffff

.field public static final COMP_1_LAST_TUPLE:I = 0x8000

.field public static final COMP_1_TRAIL_LIMIT:I = 0x3400

.field public static final COMP_1_TRAIL_MASK:I = 0x7ffe

.field public static final COMP_1_TRAIL_SHIFT:I = 0x9

.field public static final COMP_1_TRIPLE:I = 0x1

.field public static final COMP_2_TRAIL_MASK:I = 0xffc0

.field public static final COMP_2_TRAIL_SHIFT:I = 0x6

.field private static final DATA_FORMAT:I = 0x4e726d32

.field public static final DELTA_SHIFT:I = 0x3

.field public static final DELTA_TCCC_0:I = 0x0

.field public static final DELTA_TCCC_1:I = 0x2

.field public static final DELTA_TCCC_GT_1:I = 0x4

.field public static final DELTA_TCCC_MASK:I = 0x6

.field public static final HAS_COMP_BOUNDARY_AFTER:I = 0x1

.field public static final INERT:I = 0x1

.field private static final IS_ACCEPTABLE:Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

.field public static final IX_COUNT:I = 0x14

.field public static final IX_EXTRA_DATA_OFFSET:I = 0x1

.field public static final IX_LIMIT_NO_NO:I = 0xc

.field public static final IX_MIN_COMP_NO_MAYBE_CP:I = 0x9

.field public static final IX_MIN_DECOMP_NO_CP:I = 0x8

.field public static final IX_MIN_LCCC_CP:I = 0x12

.field public static final IX_MIN_MAYBE_YES:I = 0xd

.field public static final IX_MIN_NO_NO:I = 0xb

.field public static final IX_MIN_NO_NO_COMP_BOUNDARY_BEFORE:I = 0xf

.field public static final IX_MIN_NO_NO_COMP_NO_MAYBE_CC:I = 0x10

.field public static final IX_MIN_NO_NO_EMPTY:I = 0x11

.field public static final IX_MIN_YES_NO:I = 0xa

.field public static final IX_MIN_YES_NO_MAPPINGS_ONLY:I = 0xe

.field public static final IX_NORM_TRIE_OFFSET:I = 0x0

.field public static final IX_RESERVED3_OFFSET:I = 0x3

.field public static final IX_SMALL_FCD_OFFSET:I = 0x2

.field public static final IX_TOTAL_SIZE:I = 0x7

.field public static final JAMO_L:I = 0x2

.field public static final JAMO_VT:I = 0xfe00

.field public static final MAPPING_HAS_CCC_LCCC_WORD:I = 0x80

.field public static final MAPPING_HAS_RAW_MAPPING:I = 0x40

.field public static final MAPPING_LENGTH_MASK:I = 0x1f

.field public static final MAX_DELTA:I = 0x40

.field public static final MIN_NORMAL_MAYBE_YES:I = 0xfc00

.field public static final MIN_YES_YES_WITH_CC:I = 0xfe02

.field public static final OFFSET_SHIFT:I = 0x1

.field private static final segmentStarterMapper:Landroid/icu/impl/Trie2$ValueMapper;


# instance fields
.field private canonIterData:Landroid/icu/impl/Trie2_32;

.field private canonStartSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/icu/text/UnicodeSet;",
            ">;"
        }
    .end annotation
.end field

.field private centerNoNoDelta:I

.field private dataVersion:Landroid/icu/util/VersionInfo;

.field private extraData:Ljava/lang/String;

.field private limitNoNo:I

.field private maybeYesCompositions:Ljava/lang/String;

.field private minCompNoMaybeCP:I

.field private minDecompNoCP:I

.field private minLcccCP:I

.field private minMaybeYes:I

.field private minNoNo:I

.field private minNoNoCompBoundaryBefore:I

.field private minNoNoCompNoMaybeCC:I

.field private minNoNoEmpty:I

.field private minYesNo:I

.field private minYesNoMappingsOnly:I

.field private normTrie:Landroid/icu/impl/Trie2_16;

.field private smallFCD:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 428
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/Normalizer2Impl$IsAcceptable;-><init>(Landroid/icu/impl/Normalizer2Impl$1;)V

    sput-object v0, Landroid/icu/impl/Normalizer2Impl;->IS_ACCEPTABLE:Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

    .line 553
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$1;

    invoke-direct {v0}, Landroid/icu/impl/Normalizer2Impl$1;-><init>()V

    sput-object v0, Landroid/icu/impl/Normalizer2Impl;->segmentStarterMapper:Landroid/icu/impl/Trie2$ValueMapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addComposites(ILandroid/icu/text/UnicodeSet;)V
    .locals 4

    .line 1915
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    .line 1917
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 1920
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, -0xffc1

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x2

    .line 1921
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    :goto_0
    shr-int/lit8 v2, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 1926
    invoke-virtual {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForComposite(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Landroid/icu/impl/Normalizer2Impl;->addComposites(ILandroid/icu/text/UnicodeSet;)V

    .line 1928
    :cond_2
    invoke-virtual {p2, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void
.end method

.method private addToStartSet(Landroid/icu/impl/Trie2Writable;II)V
    .locals 4

    .line 2226
    invoke-virtual {p1, p3}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v0

    const v1, 0x3fffff

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    or-int p0, v0, p2

    .line 2230
    invoke-virtual {p1, p3, p0}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    goto :goto_1

    :cond_0
    const/high16 v1, 0x200000

    and-int v2, v0, v1

    const v3, 0x1fffff

    if-nez v2, :cond_1

    and-int v2, v0, v3

    const/high16 v3, -0x200000

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 2236
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    or-int/2addr v0, v1

    .line 2237
    invoke-virtual {p1, p3, v0}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    .line 2238
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    new-instance p1, Landroid/icu/text/UnicodeSet;

    invoke-direct {p1}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_2

    .line 2240
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 2243
    :cond_1
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    and-int p1, v0, v3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/icu/text/UnicodeSet;

    .line 2245
    :cond_2
    :goto_0
    invoke-virtual {p1, p2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :goto_1
    return-void
.end method

.method private static combine(Ljava/lang/String;II)I
    .locals 3

    const/16 v0, 0x3400

    if-ge p2, v0, :cond_2

    shl-int/lit8 p2, p2, 0x1

    .line 1870
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-le p2, v0, :cond_0

    and-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v0, 0x7ffe

    if-ne p2, v1, :cond_6

    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_1

    add-int/lit8 p2, p1, 0x1

    .line 1875
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    or-int/2addr p0, p2

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 1877
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_2
    shr-int/lit8 v1, p2, 0x9

    and-int/lit8 v1, v1, -0x2

    add-int/2addr v1, v0

    shl-int/lit8 p2, p2, 0x6

    const v0, 0xffff

    and-int/2addr p2, v0

    .line 1887
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-le v1, v0, :cond_3

    and-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    goto :goto_1

    :cond_3
    and-int/lit16 v2, v0, 0x7ffe

    if-ne v1, v2, :cond_6

    add-int/lit8 v2, p1, 0x1

    .line 1890
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-le p2, v2, :cond_5

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    :cond_5
    const v0, 0xffc0

    and-int/2addr v0, v2

    if-ne p2, v0, :cond_6

    const p2, -0xffc1

    and-int/2addr p2, v2

    shl-int/lit8 p2, p2, 0x10

    add-int/lit8 p1, p1, 0x2

    .line 1897
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    or-int/2addr p0, p2

    return p0

    :cond_6
    :goto_2
    const/4 p0, -0x1

    return p0
.end method

.method private decompose(IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 8

    .line 1808
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-lt p2, v0, :cond_1

    .line 1809
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1810
    invoke-static {p2}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result p0

    invoke-virtual {p3, p1, p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    return-void

    .line 1814
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    .line 1815
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p2

    .line 1817
    :cond_1
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    const/4 v1, 0x0

    if-ge p2, v0, :cond_2

    .line 1819
    invoke-virtual {p3, p1, v1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    goto :goto_1

    .line 1820
    :cond_2
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isHangulLV(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isHangulLVT(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    shr-int/lit8 p1, p2, 0x1

    .line 1826
    iget-object p2, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    and-int/lit8 v0, p2, 0x1f

    shr-int/lit8 v7, p2, 0x8

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_4

    .line 1831
    iget-object p2, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    shr-int/lit8 v1, p2, 0x8

    :cond_4
    move v6, v1

    add-int/lit8 v4, p1, 0x1

    .line 1836
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int v5, v4, v0

    move-object v2, p3

    invoke-virtual/range {v2 .. v7}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;IIII)V

    goto :goto_1

    .line 1822
    :cond_5
    :goto_0
    invoke-static {p1, p3}, Landroid/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    :goto_1
    return-void
.end method

.method private decomposeShort(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I
    .locals 3

    :cond_0
    if-ge p2, p3, :cond_3

    .line 1790
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eqz p4, :cond_1

    .line 1791
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    if-ge v0, v1, :cond_1

    return p2

    .line 1794
    :cond_1
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    if-eqz p4, :cond_2

    .line 1795
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryBefore(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return p2

    .line 1798
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr p2, v2

    .line 1799
    invoke-direct {p0, v0, v1, p6}, Landroid/icu/impl/Normalizer2Impl;->decompose(IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    if-eqz p4, :cond_0

    .line 1800
    invoke-direct {p0, v1, p5}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    return p2
.end method

.method private enumLcccRange(IIILandroid/icu/text/UnicodeSet;)V
    .locals 1

    const v0, 0xfc00

    if-le p3, v0, :cond_0

    const v0, 0xfe00

    if-eq p3, v0, :cond_0

    .line 494
    invoke-virtual {p4, p1, p2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 495
    :cond_0
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNoCompNoMaybeCC:I

    if-gt v0, p3, :cond_1

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-ge p3, v0, :cond_1

    .line 496
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result p0

    const/16 p3, 0xff

    if-le p0, p3, :cond_1

    .line 497
    invoke-virtual {p4, p1, p2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    :cond_1
    :goto_0
    return-void
.end method

.method private enumNorm16PropertyStartsRange(IIILandroid/icu/text/UnicodeSet;)V
    .locals 1

    .line 503
    invoke-virtual {p4, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    if-eq p1, p2, :cond_1

    .line 504
    invoke-virtual {p0, p3}, Landroid/icu/impl/Normalizer2Impl;->isAlgorithmicNoNo(I)Z

    move-result v0

    if-eqz v0, :cond_1

    and-int/lit8 p3, p3, 0x6

    const/4 v0, 0x2

    if-le p3, v0, :cond_1

    .line 507
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result p3

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-gt p1, p2, :cond_1

    .line 509
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 511
    invoke-virtual {p4, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findNextCompBoundary(Ljava/lang/CharSequence;IIZ)I
    .locals 3

    :cond_0
    if-ge p2, p3, :cond_2

    .line 2176
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2177
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v1

    .line 2178
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2181
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    .line 2182
    invoke-direct {p0, v1, p4}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :goto_0
    return p2
.end method

.method private findNextFCDBoundary(Ljava/lang/CharSequence;II)I
    .locals 3

    :cond_0
    if-ge p2, p3, :cond_2

    .line 2205
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2207
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minLcccCP:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->norm16HasDecompBoundaryBefore(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2210
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    .line 2211
    invoke-virtual {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->norm16HasDecompBoundaryAfter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :goto_0
    return p2
.end method

.method private findPreviousCompBoundary(Ljava/lang/CharSequence;IZ)I
    .locals 3

    :cond_0
    if-lez p2, :cond_2

    .line 2162
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2163
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    .line 2164
    invoke-direct {p0, v1, p3}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2167
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr p2, v2

    .line 2168
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :goto_0
    return p2
.end method

.method private findPreviousFCDBoundary(Ljava/lang/CharSequence;I)I
    .locals 3

    :cond_0
    if-lez p2, :cond_2

    .line 2191
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2193
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->norm16HasDecompBoundaryAfter(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2196
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    sub-int/2addr p2, v0

    .line 2197
    invoke-virtual {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->norm16HasDecompBoundaryBefore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :goto_0
    return p2
.end method

.method private getCCFromNoNo(I)I
    .locals 1

    shr-int/lit8 p1, p1, 0x1

    .line 1716
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 1717
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getCCFromNormalYesOrMaybe(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static getCCFromYesOrMaybe(I)I
    .locals 1

    const v0, 0xfc00

    if-lt p0, v0, :cond_0

    .line 690
    invoke-static {p0}, Landroid/icu/impl/Normalizer2Impl;->getCCFromNormalYesOrMaybe(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getCompositionsList(I)I
    .locals 1

    .line 1775
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1776
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForDecompYes(I)I

    move-result p0

    goto :goto_0

    .line 1777
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForComposite(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getCompositionsListForComposite(I)I
    .locals 2

    .line 1760
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    const v1, 0xfc00

    sub-int/2addr v1, v0

    add-int/2addr v1, p1

    shr-int/lit8 p1, v1, 0x1

    .line 1761
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    add-int/lit8 p1, p1, 0x1

    and-int/lit8 p0, p0, 0x1f

    add-int/2addr p1, p0

    return p1
.end method

.method private getCompositionsListForDecompYes(I)I
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    const v0, 0xfc00

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 1746
    :cond_0
    iget p0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    sub-int/2addr p1, p0

    if-gez p1, :cond_1

    add-int/2addr p1, v0

    :cond_1
    shr-int/lit8 p0, p1, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private getCompositionsListForMaybe(I)I
    .locals 0

    .line 1768
    iget p0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    sub-int/2addr p1, p0

    shr-int/lit8 p0, p1, 0x1

    return p0
.end method

.method private getPreviousTrailCC(Ljava/lang/CharSequence;II)I
    .locals 0

    if-ne p2, p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2222
    :cond_0
    invoke-static {p1, p3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result p0

    return p0
.end method

.method private hangulLVT()I
    .locals 0

    .line 1679
    iget p0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNoMappingsOnly:I

    or-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private hasCompBoundaryAfter(Ljava/lang/CharSequence;IIZ)Z
    .locals 0

    if-eq p2, p3, :cond_1

    .line 2152
    invoke-static {p1, p3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-virtual {p0, p1, p4}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryAfter(IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private hasCompBoundaryBefore(II)Z
    .locals 1

    .line 2139
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    if-lt p1, v0, :cond_1

    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryBefore(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private hasCompBoundaryBefore(Ljava/lang/CharSequence;II)Z
    .locals 0

    if-eq p2, p3, :cond_1

    .line 2145
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isCompYesAndZeroCC(I)Z
    .locals 0

    .line 1684
    iget p0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDecompNoAlgorithmic(I)Z
    .locals 0

    .line 1707
    iget p0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDecompYesAndZeroCC(I)Z
    .locals 1

    .line 1695
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-lt p1, v0, :cond_1

    const v0, 0xfe00

    if-eq p1, v0, :cond_1

    iget p0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt p0, p1, :cond_0

    const p0, 0xfc00

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isHangulLV(I)Z
    .locals 0

    .line 1680
    iget p0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isHangulLVT(I)Z
    .locals 0

    .line 1682
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl;->hangulLVT()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isInert(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isJamoL(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isJamoVT(I)Z
    .locals 1

    const v0, 0xfe00

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMaybe(I)Z
    .locals 0

    .line 1674
    iget p0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt p0, p1, :cond_0

    const p0, 0xfe00

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMaybeOrNonZeroCC(I)Z
    .locals 0

    .line 1675
    iget p0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMostDecompYesAndZeroCC(I)Z
    .locals 0

    .line 1705
    iget p0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-lt p1, p0, :cond_1

    const p0, 0xfc00

    if-eq p1, p0, :cond_1

    const p0, 0xfe00

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isTrailCC01ForCompBoundaryAfter(I)Z
    .locals 2

    .line 2156
    invoke-static {p1}, Landroid/icu/impl/Normalizer2Impl;->isInert(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 p0, p1, 0x6

    const/4 p1, 0x2

    if-gt p0, p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    shr-int/2addr p1, v1

    .line 2157
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x1ff

    if-gt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private mapAlgorithmic(II)I
    .locals 0

    shr-int/lit8 p2, p2, 0x3

    add-int/2addr p1, p2

    .line 1733
    iget p0, p0, Landroid/icu/impl/Normalizer2Impl;->centerNoNoDelta:I

    sub-int/2addr p1, p0

    return p1
.end method

.method private norm16HasCompBoundaryAfter(IZ)Z
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 2149
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->isTrailCC01ForCompBoundaryAfter(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private norm16HasCompBoundaryBefore(I)Z
    .locals 1

    .line 2142
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNoCompNoMaybeCC:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->isAlgorithmicNoNo(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private recompose(Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;IZ)V
    .locals 15

    move-object v0, p0

    .line 1943
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1945
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    move/from16 v3, p2

    if-ne v3, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move v7, v2

    move v8, v7

    move v6, v4

    move v9, v6

    .line 1964
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v10

    .line 1965
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v3, v11

    .line 1966
    invoke-virtual {p0, v10}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v11

    .line 1967
    invoke-static {v11}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v12

    .line 1969
    invoke-direct {p0, v11}, Landroid/icu/impl/Normalizer2Impl;->isMaybe(I)Z

    move-result v13

    const v14, 0xffff

    if-eqz v13, :cond_a

    if-ltz v6, :cond_a

    if-lt v7, v12, :cond_1

    if-nez v7, :cond_a

    .line 1975
    :cond_1
    invoke-static {v11}, Landroid/icu/impl/Normalizer2Impl;->isJamoVT(I)Z

    move-result v13

    if-eqz v13, :cond_5

    const/16 v6, 0x11a7

    if-ge v10, v6, :cond_3

    .line 1979
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    add-int/lit16 v11, v11, -0x1100

    int-to-char v11, v11

    const/16 v12, 0x13

    if-ge v11, v12, :cond_3

    add-int/lit8 v12, v3, -0x1

    const v13, 0xac00

    mul-int/lit8 v11, v11, 0x15

    add-int/lit16 v10, v10, -0x1161

    add-int/2addr v11, v10

    const/16 v10, 0x1c

    mul-int/2addr v11, v10

    add-int/2addr v11, v13

    int-to-char v11, v11

    .line 1987
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-eq v3, v13, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    sub-int/2addr v13, v6

    int-to-char v6, v13

    if-ge v6, v10, :cond_2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v11, v6

    int-to-char v11, v11

    .line 1991
    :cond_2
    invoke-virtual {v1, v9, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1993
    invoke-virtual {v1, v12, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v3, v12

    .line 2003
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ne v3, v6, :cond_4

    goto/16 :goto_2

    :cond_4
    move v6, v4

    goto :goto_0

    .line 2008
    :cond_5
    iget-object v13, v0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    invoke-static {v13, v6, v10}, Landroid/icu/impl/Normalizer2Impl;->combine(Ljava/lang/String;II)I

    move-result v13

    if-ltz v13, :cond_a

    shr-int/lit8 v6, v13, 0x1

    .line 2013
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    sub-int v11, v3, v11

    .line 2014
    invoke-virtual {v1, v11, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_7

    if-le v6, v14, :cond_6

    .line 2020
    invoke-static {v6}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v3

    invoke-virtual {v1, v9, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v3, v9, 0x1

    .line 2021
    invoke-static {v6}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v10

    invoke-virtual {v1, v3, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :cond_6
    int-to-char v3, v10

    .line 2023
    invoke-virtual {v1, v9, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v3, v9, 0x1

    .line 2024
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, -0x1

    move v8, v2

    goto :goto_1

    :cond_7
    if-le v6, v14, :cond_8

    .line 2034
    invoke-static {v6}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v3

    invoke-virtual {v1, v9, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v3, v9, 0x1

    .line 2035
    invoke-static {v6}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v8

    invoke-virtual {v1, v3, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    move v8, v5

    goto :goto_1

    :cond_8
    int-to-char v3, v6

    .line 2039
    invoke-virtual {v1, v9, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_1
    move v3, v11

    .line 2044
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-ne v3, v10, :cond_9

    goto :goto_2

    :cond_9
    and-int/lit8 v10, v13, 0x1

    if-eqz v10, :cond_4

    .line 2050
    invoke-virtual {p0, v6}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForComposite(I)I

    move-result v6

    goto/16 :goto_0

    .line 2062
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ne v3, v7, :cond_b

    .line 2084
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flush()V

    return-void

    :cond_b
    if-nez v12, :cond_d

    .line 2069
    invoke-direct {p0, v11}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForDecompYes(I)I

    move-result v6

    if-ltz v6, :cond_e

    if-gt v10, v14, :cond_c

    add-int/lit8 v9, v3, -0x1

    move v8, v2

    goto :goto_3

    :cond_c
    add-int/lit8 v9, v3, -0x2

    move v8, v5

    goto :goto_3

    :cond_d
    if-eqz p3, :cond_e

    move v6, v4

    :cond_e
    :goto_3
    move v7, v12

    goto/16 :goto_0
.end method


# virtual methods
.method public addCanonIterPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .locals 2

    .line 544
    invoke-virtual {p0}, Landroid/icu/impl/Normalizer2Impl;->ensureCanonIterData()Landroid/icu/impl/Normalizer2Impl;

    .line 546
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/impl/Trie2_32;

    sget-object v0, Landroid/icu/impl/Normalizer2Impl;->segmentStarterMapper:Landroid/icu/impl/Trie2$ValueMapper;

    invoke-virtual {p0, v0}, Landroid/icu/impl/Trie2_32;->iterator(Landroid/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;

    move-result-object p0

    .line 548
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2$Range;

    iget-boolean v1, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v1, :cond_0

    .line 550
    iget v0, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addLcccChars(Landroid/icu/text/UnicodeSet;)V
    .locals 4

    .line 519
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 521
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Trie2$Range;

    iget-boolean v2, v1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_0

    .line 522
    iget v2, v1, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v3, v1, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v1, v1, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-direct {p0, v2, v3, v1, p1}, Landroid/icu/impl/Normalizer2Impl;->enumLcccRange(IIILandroid/icu/text/UnicodeSet;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .locals 4

    .line 528
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 530
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Trie2$Range;

    iget-boolean v2, v1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_0

    .line 531
    iget v2, v1, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v3, v1, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v1, v1, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-direct {p0, v2, v3, v1, p1}, Landroid/icu/impl/Normalizer2Impl;->enumNorm16PropertyStartsRange(IIILandroid/icu/text/UnicodeSet;)V

    goto :goto_0

    :cond_0
    const p0, 0xac00

    :goto_1
    const v0, 0xd7a4

    if-ge p0, v0, :cond_1

    .line 536
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    add-int/lit8 v0, p0, 0x1

    .line 537
    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    add-int/lit8 p0, p0, 0x1c

    goto :goto_1

    .line 539
    :cond_1
    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    .line 1072
    iget v12, v7, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    move/from16 v0, p2

    :goto_0
    move v1, v0

    :cond_0
    :goto_1
    const/4 v2, 0x1

    if-ne v0, v9, :cond_2

    if-eq v1, v9, :cond_1

    if-eqz p5, :cond_1

    .line 1083
    invoke-virtual {v11, v8, v1, v9}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_1
    return v2

    .line 1087
    :cond_2
    invoke-interface {v8, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-lt v3, v12, :cond_24

    iget-object v4, v7, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    int-to-char v5, v3

    .line 1088
    invoke-virtual {v4, v5}, Landroid/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    move-result v4

    invoke-direct {v7, v4}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_7

    :cond_3
    add-int/lit8 v6, v0, 0x1

    .line 1093
    invoke-static {v5}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_3

    .line 1097
    :cond_4
    invoke-static {v3}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eq v6, v9, :cond_6

    .line 1098
    invoke-interface {v8, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v13

    if-eqz v13, :cond_6

    add-int/lit8 v6, v6, 0x1

    .line 1100
    invoke-static {v5, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    goto :goto_2

    :cond_5
    if-ge v1, v0, :cond_6

    add-int/lit8 v4, v0, -0x1

    .line 1103
    invoke-interface {v8, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v13

    if-eqz v13, :cond_6

    add-int/lit8 v0, v0, -0x1

    .line 1105
    invoke-static {v4, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    :cond_6
    :goto_2
    move v4, v0

    move v0, v6

    .line 1108
    invoke-virtual {v7, v3}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v5

    invoke-direct {v7, v5}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v0

    move v0, v4

    move v4, v5

    .line 1121
    :goto_3
    invoke-direct {v7, v4}, Landroid/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v5

    const/4 v13, 0x0

    if-nez v5, :cond_f

    if-nez p5, :cond_7

    return v13

    .line 1127
    :cond_7
    invoke-direct {v7, v4}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1130
    invoke-direct {v7, v4, v10}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1131
    invoke-direct {v7, v8, v6, v9}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_8
    if-eq v1, v0, :cond_9

    .line 1133
    invoke-virtual {v11, v8, v1, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1135
    :cond_9
    invoke-direct {v7, v3, v4}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result v0

    invoke-virtual {v11, v0, v13}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    goto/16 :goto_5

    .line 1139
    :cond_a
    iget v2, v7, Landroid/icu/impl/Normalizer2Impl;->minNoNoCompBoundaryBefore:I

    if-ge v4, v2, :cond_d

    .line 1141
    invoke-direct {v7, v4, v10}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1142
    invoke-direct {v7, v8, v6, v9}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_b
    if-eq v1, v0, :cond_c

    .line 1144
    invoke-virtual {v11, v8, v1, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_c
    shr-int/lit8 v0, v4, 0x1

    .line 1147
    iget-object v1, v7, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    .line 1148
    iget-object v1, v7, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/2addr v0, v2

    invoke-virtual {v11, v1, v2, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto/16 :goto_5

    .line 1152
    :cond_d
    iget v2, v7, Landroid/icu/impl/Normalizer2Impl;->minNoNoEmpty:I

    if-lt v4, v2, :cond_1f

    .line 1156
    invoke-direct {v7, v8, v6, v9}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1157
    invoke-direct {v7, v8, v1, v0, v10}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryAfter(Ljava/lang/CharSequence;IIZ)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_e
    if-eq v1, v0, :cond_17

    .line 1159
    invoke-virtual {v11, v8, v1, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_5

    .line 1167
    :cond_f
    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl;->isJamoVT(I)Z

    move-result v5

    if-eqz v5, :cond_18

    if-eq v1, v0, :cond_18

    add-int/lit8 v2, v0, -0x1

    .line 1168
    invoke-interface {v8, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v5, 0x11a7

    if-ge v3, v5, :cond_14

    add-int/lit16 v2, v2, -0x1100

    int-to-char v2, v2

    const/16 v14, 0x13

    if-ge v2, v14, :cond_1f

    if-nez p5, :cond_10

    return v13

    :cond_10
    const/16 v14, 0x1c

    if-eq v6, v9, :cond_11

    .line 1179
    invoke-interface {v8, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    add-int/lit16 v5, v15, -0x11a7

    if-lez v5, :cond_11

    if-ge v5, v14, :cond_11

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1183
    :cond_11
    invoke-direct {v7, v8, v6, v9}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_12

    move v5, v13

    goto :goto_4

    :cond_12
    const/4 v5, -0x1

    :goto_4
    if-ltz v5, :cond_1f

    const v4, 0xac00

    mul-int/lit8 v2, v2, 0x15

    add-int/lit16 v3, v3, -0x1161

    add-int/2addr v2, v3

    mul-int/2addr v2, v14

    add-int/2addr v2, v4

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_13

    .line 1195
    invoke-virtual {v11, v8, v1, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_13
    int-to-char v0, v2

    .line 1197
    invoke-virtual {v11, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(C)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_5

    .line 1209
    :cond_14
    invoke-static {v2}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isHangulLV(I)Z

    move-result v14

    if-eqz v14, :cond_1f

    if-nez p5, :cond_15

    return v13

    :cond_15
    add-int/2addr v2, v3

    sub-int/2addr v2, v5

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_16

    .line 1218
    invoke-virtual {v11, v8, v1, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_16
    int-to-char v0, v2

    .line 1220
    invoke-virtual {v11, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(C)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_17
    :goto_5
    move v0, v6

    goto/16 :goto_0

    :cond_18
    const v3, 0xfe00

    if-le v4, v3, :cond_1f

    .line 1230
    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl;->getCCFromNormalYesOrMaybe(I)I

    move-result v3

    if-eqz v10, :cond_19

    .line 1231
    invoke-direct {v7, v8, v1, v0}, Landroid/icu/impl/Normalizer2Impl;->getPreviousTrailCC(Ljava/lang/CharSequence;II)I

    move-result v5

    if-le v5, v3, :cond_19

    if-nez p5, :cond_1f

    return v13

    :cond_19
    :goto_6
    if-ne v6, v9, :cond_1b

    if-eqz p5, :cond_1a

    .line 1243
    invoke-virtual {v11, v8, v1, v9}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_1a
    return v2

    .line 1248
    :cond_1b
    invoke-static {v8, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1249
    iget-object v14, v7, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v14, v5}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v14

    const v15, 0xfe02

    if-lt v14, v15, :cond_1d

    .line 1251
    invoke-static {v14}, Landroid/icu/impl/Normalizer2Impl;->getCCFromNormalYesOrMaybe(I)I

    move-result v15

    if-le v3, v15, :cond_1c

    if-nez p5, :cond_1d

    return v13

    .line 1261
    :cond_1c
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v6, v3

    move v3, v15

    goto :goto_6

    .line 1265
    :cond_1d
    invoke-direct {v7, v14}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryBefore(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1266
    invoke-direct {v7, v14}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1267
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v0, v6

    goto/16 :goto_1

    :cond_1e
    move v0, v6

    goto/16 :goto_1

    :cond_1f
    move v14, v6

    if-eq v1, v0, :cond_20

    .line 1277
    invoke-direct {v7, v4}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryBefore(I)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1278
    invoke-static {v8, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1279
    iget-object v3, v7, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v3, v2}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v3

    .line 1280
    invoke-direct {v7, v3, v10}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1281
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v0, v2

    :cond_20
    move v15, v0

    if-eqz p5, :cond_21

    if-eq v1, v15, :cond_21

    .line 1285
    invoke-virtual {v11, v8, v1, v15}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1287
    :cond_21
    invoke-virtual/range {p6 .. p6}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v5, p4

    move v13, v6

    move-object/from16 v6, p6

    .line 1289
    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->decomposeShort(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    const/4 v4, 0x1

    move v2, v14

    move/from16 v3, p3

    .line 1292
    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->decomposeShort(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move-result v1

    .line 1294
    invoke-direct {v7, v11, v13, v10}, Landroid/icu/impl/Normalizer2Impl;->recompose(Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;IZ)V

    if-nez p5, :cond_23

    .line 1296
    invoke-virtual {v11, v8, v15, v1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->equals(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x0

    return v0

    .line 1299
    :cond_22
    invoke-virtual/range {p6 .. p6}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->remove()V

    :cond_23
    move v0, v1

    goto/16 :goto_1

    :cond_24
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public composeAndAppend(Ljava/lang/CharSequence;ZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 11

    .line 1424
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1425
    invoke-virtual {p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1426
    invoke-direct {p0, p1, v1, v3, p3}, Landroid/icu/impl/Normalizer2Impl;->findNextCompBoundary(Ljava/lang/CharSequence;IIZ)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1428
    invoke-virtual {p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1429
    invoke-virtual {p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v4

    .line 1428
    invoke-direct {p0, v2, v4, p3}, Landroid/icu/impl/Normalizer2Impl;->findPreviousCompBoundary(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 1430
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v4

    sub-int/2addr v4, v2

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x10

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1432
    invoke-virtual {p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v6

    invoke-virtual {v5, v4, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1433
    invoke-virtual {p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p4, v4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    .line 1434
    invoke-virtual {v5, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .line 1435
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v9, 0x1

    move-object v4, p0

    move v8, p3

    move-object v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v6, p4

    .line 1440
    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    goto :goto_1

    .line 1442
    :cond_1
    invoke-virtual {p4, p1, v2, v3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :goto_1
    return-void
.end method

.method public composePair(II)I
    .locals 5

    .line 2088
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    .line 2090
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl;->isInert(I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    return v2

    .line 2092
    :cond_0
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNoMappingsOnly:I

    const v3, 0xfc00

    if-ge v0, v1, :cond_5

    .line 2094
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl;->isJamoL(I)Z

    move-result v1

    const/16 v4, 0x1c

    if-eqz v1, :cond_2

    add-int/lit16 p2, p2, -0x1161

    if-ltz p2, :cond_1

    const/16 p0, 0x15

    if-ge p2, p0, :cond_1

    const v0, 0xac00

    add-int/lit16 p1, p1, -0x1100

    mul-int/2addr p1, p0

    add-int/2addr p1, p2

    mul-int/2addr p1, v4

    add-int/2addr p1, v0

    return p1

    :cond_1
    return v2

    .line 2104
    :cond_2
    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->isHangulLV(I)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit16 p2, p2, -0x11a7

    if-lez p2, :cond_3

    if-ge p2, v4, :cond_3

    add-int/2addr p1, p2

    return p1

    :cond_3
    return v2

    .line 2113
    :cond_4
    iget p1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    sub-int/2addr v3, p1

    add-int/2addr v3, v0

    shr-int/lit8 p1, v3, 0x1

    .line 2114
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-le v0, v1, :cond_7

    .line 2115
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    .line 2117
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    goto :goto_0

    .line 2120
    :cond_5
    iget p1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-lt v0, p1, :cond_9

    if-gt v3, v0, :cond_6

    goto :goto_1

    .line 2123
    :cond_6
    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForMaybe(I)I

    move-result p1

    :cond_7
    :goto_0
    if-ltz p2, :cond_9

    const v0, 0x10ffff

    if-ge v0, p2, :cond_8

    goto :goto_1

    .line 2128
    :cond_8
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/icu/impl/Normalizer2Impl;->combine(Ljava/lang/String;II)I

    move-result p0

    shr-int/lit8 p0, p0, 0x1

    return p0

    :cond_9
    :goto_1
    return v2
.end method

.method public composeQuickCheck(Ljava/lang/CharSequence;IIZZ)I
    .locals 9

    .line 1317
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    const/4 v1, 0x0

    move v2, p2

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-ne p2, p3, :cond_1

    shl-int/lit8 p0, p2, 0x1

    :goto_1
    or-int/2addr p0, v1

    return p0

    .line 1329
    :cond_1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-lt v4, v0, :cond_f

    iget-object v5, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    int-to-char v6, v4

    .line 1330
    invoke-virtual {v5, v6}, Landroid/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_9

    :cond_2
    add-int/lit8 v7, p2, 0x1

    .line 1335
    invoke-static {v6}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v8

    if-nez v8, :cond_3

    move v4, v5

    goto :goto_3

    .line 1339
    :cond_3
    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eq v7, p3, :cond_5

    .line 1340
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v7, v7, 0x1

    .line 1342
    invoke-static {v6, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    goto :goto_2

    :cond_4
    if-ge v2, p2, :cond_5

    add-int/lit8 v5, p2, -0x1

    .line 1345
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 p2, p2, -0x1

    .line 1347
    invoke-static {v5, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    :cond_5
    :goto_2
    move v5, p2

    move p2, v7

    .line 1350
    invoke-virtual {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v4

    invoke-direct {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v6

    if-nez v6, :cond_0

    move v7, p2

    move p2, v5

    :goto_3
    if-eq v2, p2, :cond_7

    .line 1365
    invoke-direct {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryBefore(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1366
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1367
    invoke-virtual {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v5

    .line 1368
    invoke-direct {p0, v5, p4}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1369
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int v2, p2, v2

    goto :goto_4

    :cond_6
    move v2, p2

    :cond_7
    move v5, v3

    .line 1375
    :goto_4
    invoke-direct {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 1376
    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result p2

    if-eqz p4, :cond_8

    if-eqz p2, :cond_8

    .line 1378
    invoke-virtual {p0, v5}, Landroid/icu/impl/Normalizer2Impl;->getTrailCCFromCompYesAndZeroCC(I)I

    move-result v5

    if-le v5, p2, :cond_8

    goto :goto_8

    :cond_8
    :goto_5
    const v5, 0xfe02

    if-ge v4, v5, :cond_a

    if-nez p5, :cond_9

    move v1, v3

    goto :goto_6

    :cond_9
    shl-int/lit8 p0, v2, 0x1

    return p0

    :cond_a
    :goto_6
    if-ne v7, p3, :cond_b

    shl-int/lit8 p0, v7, 0x1

    goto/16 :goto_1

    .line 1397
    :cond_b
    invoke-static {p1, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1398
    invoke-virtual {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v5

    .line 1399
    invoke-direct {p0, v5}, Landroid/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1400
    invoke-static {v5}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v6

    if-le p2, v6, :cond_c

    if-eqz v6, :cond_c

    goto :goto_7

    .line 1407
    :cond_c
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    add-int/2addr v7, p2

    move v4, v5

    move p2, v6

    goto :goto_5

    .line 1410
    :cond_d
    :goto_7
    invoke-direct {p0, v5}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 1412
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    add-int/2addr p2, v7

    move v2, v7

    goto/16 :goto_0

    :cond_e
    :goto_8
    shl-int/lit8 p0, v2, 0x1

    return p0

    :cond_f
    :goto_9
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0
.end method

.method public decompose(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I
    .locals 9

    .line 966
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    const/4 v1, 0x0

    move v4, p2

    move v2, v1

    move v3, v2

    move v5, v3

    :goto_0
    move v6, v3

    move v3, v2

    move v2, p2

    :goto_1
    if-eq v2, p3, :cond_5

    .line 979
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-lt v3, v0, :cond_4

    iget-object v6, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    int-to-char v7, v3

    .line 980
    invoke-virtual {v6, v7}, Landroid/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/icu/impl/Normalizer2Impl;->isMostDecompYesAndZeroCC(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_3

    .line 983
    :cond_0
    invoke-static {v7}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_4

    .line 987
    :cond_1
    invoke-static {v3}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v6, v2, 0x1

    if-eq v6, p3, :cond_3

    .line 988
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 989
    invoke-static {v7, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    goto :goto_2

    :cond_2
    if-ge p2, v2, :cond_3

    add-int/lit8 v6, v2, -0x1

    .line 992
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v2, v2, -0x1

    .line 994
    invoke-static {v6, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .line 997
    :cond_3
    :goto_2
    invoke-virtual {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/icu/impl/Normalizer2Impl;->isMostDecompYesAndZeroCC(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 998
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    if-eq v2, p2, :cond_7

    if-eqz p4, :cond_6

    .line 1007
    invoke-virtual {p4, p1, p2, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_5

    :cond_6
    move v5, v1

    move v4, v2

    :cond_7
    :goto_5
    if-ne v2, p3, :cond_8

    return v2

    .line 1018
    :cond_8
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    add-int/2addr p2, v2

    if-eqz p4, :cond_9

    .line 1020
    invoke-direct {p0, v3, v6, p4}, Landroid/icu/impl/Normalizer2Impl;->decompose(IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    :goto_6
    move v2, v3

    move v3, v6

    goto :goto_0

    .line 1022
    :cond_9
    invoke-virtual {p0, v6}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1023
    invoke-static {v6}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v2

    if-le v5, v2, :cond_a

    if-nez v2, :cond_c

    :cond_a
    const/4 v5, 0x1

    if-gt v2, v5, :cond_b

    move v4, p2

    :cond_b
    move v5, v2

    goto :goto_6

    :cond_c
    return v4
.end method

.method public decompose(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/Appendable;
    .locals 6

    .line 943
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V

    return-object p2
.end method

.method public decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V
    .locals 1

    if-gez p5, :cond_0

    sub-int p5, p3, p2

    :cond_0
    const/4 v0, 0x0

    .line 956
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 957
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    invoke-direct {v0, p0, p4, p5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    .line 958
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    return-void
.end method

.method public decomposeAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 10

    .line 1038
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 1043
    invoke-virtual {p0, p1, v1, v0, p3}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    return-void

    .line 1047
    :cond_1
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p2

    .line 1050
    invoke-virtual {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->getCC(I)I

    move-result v7

    move v2, p2

    move p2, v7

    move v3, p2

    :goto_0
    if-eqz p2, :cond_3

    .line 1053
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    if-lt v1, v0, :cond_2

    move v8, p2

    goto :goto_1

    .line 1057
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1058
    invoke-virtual {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->getCC(I)I

    move-result v3

    move v9, v3

    move v3, p2

    move p2, v9

    goto :goto_0

    :cond_3
    move v8, v3

    :goto_1
    const/4 v5, 0x0

    move-object v3, p3

    move-object v4, p1

    move v6, v1

    .line 1060
    invoke-virtual/range {v3 .. v8}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;IIII)V

    .line 1061
    invoke-virtual {p3, p1, v1, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    return-void
.end method

.method public declared-synchronized ensureCanonIterData()Landroid/icu/impl/Normalizer2Impl;
    .locals 13

    monitor-enter p0

    .line 578
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/impl/Trie2_32;

    if-nez v0, :cond_b

    .line 579
    new-instance v0, Landroid/icu/impl/Trie2Writable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/icu/impl/Trie2Writable;-><init>(II)V

    .line 580
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    .line 581
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v1}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 583
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/Trie2$Range;

    iget-boolean v3, v2, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v3, :cond_a

    .line 584
    iget v3, v2, Landroid/icu/impl/Trie2$Range;->value:I

    .line 585
    invoke-static {v3}, Landroid/icu/impl/Normalizer2Impl;->isInert(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt v4, v3, :cond_1

    iget v4, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    if-ge v3, v4, :cond_1

    goto :goto_0

    .line 594
    :cond_1
    iget v4, v2, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    :goto_1
    iget v5, v2, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    if-gt v4, v5, :cond_0

    .line 595
    invoke-virtual {v0, v4}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v5

    .line 597
    invoke-direct {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    if-eqz v6, :cond_2

    or-int v6, v5, v8

    const v8, 0xfc00

    if-ge v3, v8, :cond_8

    or-int/2addr v6, v7

    goto/16 :goto_5

    .line 603
    :cond_2
    iget v6, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-ge v3, v6, :cond_3

    or-int v6, v5, v7

    goto :goto_5

    .line 610
    :cond_3
    invoke-direct {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 612
    invoke-direct {p0, v4, v3}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result v6

    .line 613
    invoke-virtual {p0, v6}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v7

    goto :goto_2

    :cond_4
    move v7, v3

    move v6, v4

    .line 617
    :goto_2
    iget v9, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-le v7, v9, :cond_7

    shr-int/lit8 v9, v7, 0x1

    .line 620
    iget-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    and-int/lit8 v11, v10, 0x1f

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_5

    if-ne v4, v6, :cond_5

    .line 623
    iget-object v6, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    and-int/lit16 v6, v6, 0xff

    if-eqz v6, :cond_5

    or-int v6, v5, v8

    goto :goto_3

    :cond_5
    move v6, v5

    :goto_3
    if-eqz v11, :cond_8

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v11, v9

    .line 632
    iget-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    .line 633
    invoke-direct {p0, v0, v4, v10}, Landroid/icu/impl/Normalizer2Impl;->addToStartSet(Landroid/icu/impl/Trie2Writable;II)V

    .line 637
    iget v12, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt v7, v12, :cond_8

    .line 638
    :cond_6
    :goto_4
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v9, v7

    if-ge v9, v11, :cond_8

    .line 639
    iget-object v7, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    .line 640
    invoke-virtual {v0, v10}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v7

    and-int v12, v7, v8

    if-nez v12, :cond_6

    or-int/2addr v7, v8

    .line 642
    invoke-virtual {v0, v10, v7}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    goto :goto_4

    .line 649
    :cond_7
    invoke-direct {p0, v0, v4, v6}, Landroid/icu/impl/Normalizer2Impl;->addToStartSet(Landroid/icu/impl/Trie2Writable;II)V

    move v6, v5

    :cond_8
    :goto_5
    if-eq v6, v5, :cond_9

    .line 653
    invoke-virtual {v0, v4, v6}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 657
    :cond_a
    invoke-virtual {v0}, Landroid/icu/impl/Trie2Writable;->toTrie2_32()Landroid/icu/impl/Trie2_32;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/impl/Trie2_32;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    :cond_b
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCC(I)I
    .locals 1

    const v0, 0xfc00

    if-lt p1, v0, :cond_0

    .line 679
    invoke-static {p1}, Landroid/icu/impl/Normalizer2Impl;->getCCFromNormalYesOrMaybe(I)I

    move-result p0

    return p0

    .line 681
    :cond_0
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-gt v0, p1, :cond_1

    goto :goto_0

    .line 684
    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getCCFromNoNo(I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCCFromYesOrMaybeCP(I)I
    .locals 1

    .line 693
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    if-ge p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 694
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result p0

    return p0
.end method

.method public getCanonStartSet(ILandroid/icu/text/UnicodeSet;)Z
    .locals 3

    .line 850
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_32;->get(I)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 854
    :cond_0
    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    const v1, 0x1fffff

    and-int/2addr v1, v0

    const/high16 v2, 0x200000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    .line 857
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/UnicodeSet;

    invoke-virtual {p2, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 859
    invoke-virtual {p2, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_2
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 862
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const p0, 0xac00

    add-int/lit16 p1, p1, -0x1100

    mul-int/lit16 p1, p1, 0x24c

    add-int/2addr p1, p0

    add-int/lit16 p0, p1, 0x24c

    sub-int/2addr p0, v1

    .line 865
    invoke-virtual {p2, p1, p0}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    goto :goto_1

    .line 867
    :cond_3
    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsList(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Normalizer2Impl;->addComposites(ILandroid/icu/text/UnicodeSet;)V

    :cond_4
    :goto_1
    return v1
.end method

.method public getCompQuickCheck(I)I
    .locals 1

    .line 665
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt p1, v0, :cond_2

    const v0, 0xfe02

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    iget p0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt p0, p1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getDecomposition(I)Ljava/lang/String;
    .locals 5

    .line 759
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_6

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, -0x1

    .line 764
    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 766
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    .line 768
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    move v2, p1

    goto :goto_0

    :cond_1
    move v4, v2

    move v2, p1

    move p1, v4

    .line 770
    :goto_0
    iget v3, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-ge v0, v3, :cond_3

    if-gez p1, :cond_2

    return-object v1

    .line 774
    :cond_2
    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 776
    :cond_3
    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->isHangulLV(I)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->isHangulLVT(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    shr-int/lit8 p1, v0, 0x1

    .line 784
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    and-int/lit8 p1, p1, 0x1f

    .line 785
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/2addr p1, v1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 778
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 779
    invoke-static {v2, p0}, Landroid/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    .line 780
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    return-object v1
.end method

.method public getFCD16(I)I
    .locals 2

    .line 703
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    const v0, 0xffff

    if-gt p1, v0, :cond_1

    .line 706
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 708
    :cond_1
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result p0

    return p0
.end method

.method public getFCD16FromNormData(I)I
    .locals 4

    .line 720
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    .line 721
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    const v1, 0xfc00

    if-lt v0, v1, :cond_0

    .line 724
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl;->getCCFromNormalYesOrMaybe(I)I

    move-result p0

    shl-int/lit8 p1, p0, 0x8

    or-int/2addr p0, p1

    return p0

    .line 726
    :cond_0
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-lt v0, v1, :cond_1

    return v2

    :cond_1
    and-int/lit8 v1, v0, 0x6

    const/4 v3, 0x2

    if-gt v1, v3, :cond_2

    shr-int/lit8 p0, v1, 0x1

    return p0

    .line 734
    :cond_2
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    .line 735
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    .line 738
    :cond_3
    iget p1, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-le v0, p1, :cond_6

    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->isHangulLVT(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    shr-int/lit8 p1, v0, 0x1

    .line 744
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 747
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const p1, 0xff00

    and-int/2addr p0, p1

    or-int/2addr v1, p0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v2
.end method

.method public getNorm16(I)I
    .locals 0

    .line 662
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result p0

    return p0
.end method

.method public getRawDecomposition(I)Ljava/lang/String;
    .locals 4

    .line 795
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    if-lt p1, v0, :cond_6

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 798
    :cond_0
    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->isHangulLV(I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->isHangulLVT(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 803
    :cond_1
    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 804
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p0

    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    shr-int/lit8 p1, v0, 0x1

    .line 808
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v1, v0, 0x1f

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_4

    shr-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, 0x1

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    .line 814
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_3

    .line 816
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    sub-int p1, v0, v2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 819
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x3

    .line 821
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, p0, p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 825
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/2addr v1, p1

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 800
    :cond_5
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 801
    invoke-static {p1, p0}, Landroid/icu/impl/Normalizer2Impl$Hangul;->getRawDecomposition(ILjava/lang/Appendable;)V

    .line 802
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getTrailCCFromCompYesAndZeroCC(I)I
    .locals 1

    .line 1723
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1727
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    shr-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public hasCompBoundaryAfter(IZ)Z
    .locals 0

    .line 1661
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result p0

    return p0
.end method

.method public hasCompBoundaryBefore(I)Z
    .locals 1

    .line 1658
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryBefore(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hasDecompBoundaryAfter(I)Z
    .locals 2

    .line 1621
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    const v0, 0xffff

    if-gt p1, v0, :cond_1

    .line 1624
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1627
    :cond_1
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->norm16HasDecompBoundaryAfter(I)Z

    move-result p0

    return p0
.end method

.method public hasDecompBoundaryBefore(I)Z
    .locals 1

    .line 1604
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minLcccCP:I

    if-lt p1, v0, :cond_2

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1605
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->norm16HasDecompBoundaryBefore(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hasFCDBoundaryAfter(I)Z
    .locals 0

    .line 1671
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->hasDecompBoundaryAfter(I)Z

    move-result p0

    return p0
.end method

.method public hasFCDBoundaryBefore(I)Z
    .locals 0

    .line 1670
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->hasDecompBoundaryBefore(I)Z

    move-result p0

    return p0
.end method

.method public isAlgorithmicNoNo(I)Z
    .locals 1

    .line 673
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-gt v0, p1, :cond_0

    iget p0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCanonSegmentStarter(I)Z
    .locals 0

    .line 837
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/impl/Trie2_32;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie2_32;->get(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCompInert(IZ)Z
    .locals 2

    .line 1664
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    .line 1665
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 1667
    invoke-static {p1}, Landroid/icu/impl/Normalizer2Impl;->isInert(I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    shr-int/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x1ff

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isCompNo(I)Z
    .locals 1

    .line 674
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    if-gt v0, p1, :cond_0

    iget p0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDecompInert(I)Z
    .locals 0

    .line 1655
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->isDecompYesAndZeroCC(I)Z

    move-result p0

    return p0
.end method

.method public isDecompYes(I)Z
    .locals 1

    .line 675
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-lt p1, v0, :cond_1

    iget p0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFCDInert(I)Z
    .locals 0

    .line 1672
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result p0

    const/4 p1, 0x1

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public load(Ljava/lang/String;)Landroid/icu/impl/Normalizer2Impl;
    .locals 0

    .line 489
    invoke-static {p1}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->load(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Normalizer2Impl;

    move-result-object p0

    return-object p0
.end method

.method public load(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Normalizer2Impl;
    .locals 7

    const v0, 0x4e726d32

    .line 433
    :try_start_0
    sget-object v1, Landroid/icu/impl/Normalizer2Impl;->IS_ACCEPTABLE:Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)Landroid/icu/util/VersionInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->dataVersion:Landroid/icu/util/VersionInfo;

    .line 434
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    const/16 v1, 0x12

    if-le v0, v1, :cond_3

    .line 438
    new-array v2, v0, [I

    mul-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    .line 439
    aput v3, v2, v4

    const/4 v3, 0x1

    move v5, v3

    :goto_0
    if-ge v5, v0, :cond_0

    .line 441
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 444
    aget v0, v2, v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    const/16 v0, 0x9

    .line 445
    aget v0, v2, v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    .line 446
    aget v0, v2, v1

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl;->minLcccCP:I

    const/16 v0, 0xa

    .line 448
    aget v0, v2, v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    const/16 v0, 0xe

    .line 449
    aget v0, v2, v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNoMappingsOnly:I

    const/16 v0, 0xb

    .line 450
    aget v0, v2, v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    const/16 v0, 0xf

    .line 451
    aget v0, v2, v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNoCompBoundaryBefore:I

    const/16 v0, 0x10

    .line 452
    aget v0, v2, v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNoCompNoMaybeCC:I

    const/16 v0, 0x11

    .line 453
    aget v0, v2, v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNoEmpty:I

    const/16 v0, 0xc

    .line 454
    aget v0, v2, v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    const/16 v0, 0xd

    .line 455
    aget v0, v2, v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    .line 457
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    shr-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x40

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl;->centerNoNoDelta:I

    .line 460
    aget v0, v2, v4

    .line 461
    aget v1, v2, v3

    .line 462
    invoke-static {p1}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    move-result-object v5

    iput-object v5, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    .line 463
    iget-object v5, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v5}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v5

    sub-int v0, v1, v0

    if-gt v5, v0, :cond_2

    sub-int/2addr v0, v5

    .line 467
    invoke-static {p1, v0}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/4 v0, 0x2

    .line 471
    aget v2, v2, v0

    sub-int/2addr v2, v1

    .line 472
    div-int/2addr v2, v0

    if-eqz v2, :cond_1

    .line 474
    invoke-static {p1, v2, v4}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    .line 475
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    const v1, 0xfc00

    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    sub-int/2addr v1, v2

    shr-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    :cond_1
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 480
    iput-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->smallFCD:[B

    .line 481
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->smallFCD:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p0

    .line 465
    :cond_2
    new-instance p0, Landroid/icu/util/ICUUncheckedIOException;

    const-string p1, "Normalizer2 data: not enough bytes for normTrie"

    invoke-direct {p0, p1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 436
    :cond_3
    new-instance p0, Landroid/icu/util/ICUUncheckedIOException;

    const-string p1, "Normalizer2 data: not enough indexes"

    invoke-direct {p0, p1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 485
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    move-object/from16 v10, p4

    const/4 v11, 0x0

    move/from16 v0, p2

    move v2, v0

    move v1, v11

    move v3, v1

    move v4, v3

    :goto_0
    move v5, v4

    move v4, v3

    move v3, v1

    move v1, v0

    :goto_1
    const/16 v6, 0xff

    if-eq v1, v9, :cond_4

    .line 1466
    invoke-interface {v8, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iget v12, v7, Landroid/icu/impl/Normalizer2Impl;->minLcccCP:I

    if-ge v4, v12, :cond_0

    not-int v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1469
    :cond_0
    invoke-virtual {v7, v4}, Landroid/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    move-result v12

    if-nez v12, :cond_1

    add-int/lit8 v1, v1, 0x1

    move v3, v11

    goto :goto_1

    :cond_1
    int-to-char v5, v4

    .line 1473
    invoke-static {v5}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1475
    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v12

    if-eqz v12, :cond_2

    add-int/lit8 v12, v1, 0x1

    if-eq v12, v9, :cond_3

    .line 1476
    invoke-interface {v8, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1477
    invoke-static {v5, v12}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    goto :goto_2

    :cond_2
    if-ge v0, v1, :cond_3

    add-int/lit8 v12, v1, -0x1

    .line 1480
    invoke-interface {v8, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v13

    if-eqz v13, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 1482
    invoke-static {v12, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    .line 1486
    :cond_3
    :goto_2
    invoke-virtual {v7, v4}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v5

    if-gt v5, v6, :cond_4

    .line 1488
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    move v3, v5

    goto :goto_1

    :cond_4
    move v12, v4

    move v13, v5

    const/4 v4, 0x1

    if-eq v1, v0, :cond_c

    if-ne v1, v9, :cond_5

    if-eqz v10, :cond_d

    .line 1498
    invoke-virtual {v10, v8, v0, v1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_5

    :cond_5
    if-gez v3, :cond_8

    not-int v2, v3

    .line 1507
    iget v3, v7, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    if-ge v2, v3, :cond_6

    move v3, v1

    move v2, v11

    goto :goto_3

    .line 1510
    :cond_6
    invoke-virtual {v7, v2}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v2

    if-le v2, v4, :cond_7

    add-int/lit8 v3, v1, -0x1

    goto :goto_3

    :cond_7
    move v3, v1

    :goto_3
    move v15, v3

    move v3, v2

    move v2, v15

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v1, -0x1

    .line 1517
    invoke-interface {v8, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_9

    if-ge v0, v2, :cond_9

    add-int/lit8 v5, v2, -0x1

    .line 1518
    invoke-interface {v8, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 v2, v2, -0x1

    .line 1523
    invoke-interface {v8, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v8, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v3

    :cond_9
    if-le v3, v4, :cond_a

    goto :goto_4

    :cond_a
    move v2, v1

    :goto_4
    if-eqz v10, :cond_b

    .line 1533
    invoke-virtual {v10, v8, v0, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1534
    invoke-virtual {v10, v8, v2, v1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_b
    move v0, v1

    goto :goto_6

    :cond_c
    if-ne v1, v9, :cond_e

    :cond_d
    :goto_5
    return v1

    .line 1542
    :cond_e
    :goto_6
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v1, v5

    and-int/2addr v3, v6

    shr-int/lit8 v5, v13, 0x8

    if-gt v3, v5, :cond_11

    and-int/lit16 v0, v13, 0xff

    if-gt v0, v4, :cond_f

    move v2, v1

    :cond_f
    if-eqz v10, :cond_10

    .line 1551
    invoke-virtual {v10, v12}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appendZeroCC(I)V

    :cond_10
    move v0, v1

    move v3, v12

    move v1, v13

    move v4, v1

    goto/16 :goto_0

    :cond_11
    if-nez v10, :cond_12

    return v2

    :cond_12
    sub-int/2addr v0, v2

    .line 1563
    invoke-virtual {v10, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    .line 1568
    invoke-direct {v7, v8, v1, v9}, Landroid/icu/impl/Normalizer2Impl;->findNextFCDBoundary(Ljava/lang/CharSequence;II)I

    move-result v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v14

    move-object/from16 v6, p4

    .line 1573
    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->decomposeShort(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move v1, v11

    move v3, v12

    move v4, v13

    move v0, v14

    move v2, v0

    goto/16 :goto_0
.end method

.method public makeFCDAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 7

    .line 1581
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1582
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1583
    invoke-direct {p0, p1, v2, v0}, Landroid/icu/impl/Normalizer2Impl;->findNextFCDBoundary(Ljava/lang/CharSequence;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1585
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1586
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v4

    .line 1585
    invoke-direct {p0, v3, v4}, Landroid/icu/impl/Normalizer2Impl;->findPreviousFCDBoundary(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1587
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v3

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x10

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1589
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v6

    invoke-virtual {v4, v5, v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1590
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p3, v5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    .line 1591
    invoke-virtual {v4, p1, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1592
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p0, v4, v2, v3, p3}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz p2, :cond_1

    .line 1597
    invoke-virtual {p0, p1, v1, v0, p3}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    goto :goto_1

    .line 1599
    :cond_1
    invoke-virtual {p3, p1, v1, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :goto_1
    return-void
.end method

.method public norm16HasDecompBoundaryAfter(I)Z
    .locals 4

    .line 1630
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    const/4 v1, 0x1

    if-le p1, v0, :cond_9

    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->isHangulLVT(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1633
    :cond_0
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    const/4 v2, 0x0

    if-lt p1, v0, :cond_5

    .line 1634
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0xfc00

    if-le p1, p0, :cond_2

    const p0, 0xfe00

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    and-int/lit8 p0, p1, 0x6

    const/4 p1, 0x2

    if-gt p0, p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    :cond_5
    shr-int/2addr p1, v1

    .line 1642
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x1ff

    if-le v0, v3, :cond_6

    return v2

    :cond_6
    const/16 v3, 0xff

    if-gt v0, v3, :cond_7

    return v1

    :cond_7
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 1653
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const p1, 0xff00

    and-int/2addr p0, p1

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    :cond_9
    :goto_2
    return v1
.end method

.method public norm16HasDecompBoundaryBefore(I)Z
    .locals 3

    .line 1608
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNoCompNoMaybeCC:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    return v1

    .line 1611
    :cond_0
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    const/4 v2, 0x0

    if-lt p1, v0, :cond_3

    const p0, 0xfc00

    if-le p1, p0, :cond_2

    const p0, 0xfe00

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    shr-int/2addr p1, v1

    .line 1616
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 1618
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const p1, 0xff00

    and-int/2addr p0, p1

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    return v1
.end method

.method public singleLeadMightHaveNonZeroFCD16(I)Z
    .locals 1

    .line 713
    iget-object p0, p0, Landroid/icu/impl/Normalizer2Impl;->smallFCD:[B

    shr-int/lit8 v0, p1, 0x8

    aget-byte p0, p0, v0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    shr-int/lit8 p1, p1, 0x5

    and-int/lit8 p1, p1, 0x7

    shr-int/2addr p0, p1

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    return p1
.end method
