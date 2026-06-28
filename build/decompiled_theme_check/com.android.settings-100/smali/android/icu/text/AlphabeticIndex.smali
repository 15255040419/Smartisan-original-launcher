.class public final Landroid/icu/text/AlphabeticIndex;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/AlphabeticIndex$BucketList;,
        Landroid/icu/text/AlphabeticIndex$Bucket;,
        Landroid/icu/text/AlphabeticIndex$Record;,
        Landroid/icu/text/AlphabeticIndex$ImmutableIndex;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/icu/text/AlphabeticIndex$Bucket<",
        "TV;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BASE:Ljava/lang/String; = "\ufdd0"

.field private static final CGJ:C = '\u034f'

.field private static final GC_CN_MASK:I = 0x1

.field private static final GC_LL_MASK:I = 0x4

.field private static final GC_LM_MASK:I = 0x10

.field private static final GC_LO_MASK:I = 0x20

.field private static final GC_LT_MASK:I = 0x8

.field private static final GC_LU_MASK:I = 0x2

.field private static final GC_L_MASK:I = 0x3e

.field private static final binaryCmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buckets:Landroid/icu/text/AlphabeticIndex$BucketList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/text/AlphabeticIndex$BucketList<",
            "TV;>;"
        }
    .end annotation
.end field

.field private collatorExternal:Landroid/icu/text/RuleBasedCollator;

.field private final collatorOriginal:Landroid/icu/text/RuleBasedCollator;

.field private final collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

.field private final firstCharsInScripts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inflowLabel:Ljava/lang/String;

.field private final initialLabels:Landroid/icu/text/UnicodeSet;

.field private inputList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/AlphabeticIndex$Record<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private maxLabelCount:I

.field private overflowLabel:Ljava/lang/String;

.field private final recordComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/icu/text/AlphabeticIndex$Record<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private underflowLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 135
    new-instance v0, Landroid/icu/text/UTF16$StringComparator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/icu/text/UTF16$StringComparator;-><init>(ZZI)V

    sput-object v0, Landroid/icu/text/AlphabeticIndex;->binaryCmp:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/RuleBasedCollator;)V
    .locals 1

    const/4 v0, 0x0

    .line 256
    invoke-direct {p0, v0, p1}, Landroid/icu/text/AlphabeticIndex;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/RuleBasedCollator;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, p1, v0}, Landroid/icu/text/AlphabeticIndex;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/RuleBasedCollator;)V

    return-void
.end method

.method private constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/RuleBasedCollator;)V
    .locals 3

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Landroid/icu/text/AlphabeticIndex$1;

    invoke-direct {v0, p0}, Landroid/icu/text/AlphabeticIndex$1;-><init>(Landroid/icu/text/AlphabeticIndex;)V

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->recordComparator:Ljava/util/Comparator;

    .line 152
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    const-string/jumbo v0, "\u2026"

    .line 158
    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->overflowLabel:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->underflowLabel:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inflowLabel:Ljava/lang/String;

    const/16 v0, 0x63

    .line 793
    iput v0, p0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    if-eqz p2, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    invoke-static {p1}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object p2

    check-cast p2, Landroid/icu/text/RuleBasedCollator;

    :goto_0
    iput-object p2, p0, Landroid/icu/text/AlphabeticIndex;->collatorOriginal:Landroid/icu/text/RuleBasedCollator;

    .line 265
    :try_start_0
    iget-object p2, p0, Landroid/icu/text/AlphabeticIndex;->collatorOriginal:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {p2}, Landroid/icu/text/RuleBasedCollator;->cloneAsThawed()Landroid/icu/text/RuleBasedCollator;

    move-result-object p2

    iput-object p2, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    iget-object p2, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/icu/text/RuleBasedCollator;->setStrength(I)V

    .line 271
    iget-object p2, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {p2}, Landroid/icu/text/RuleBasedCollator;->freeze()Landroid/icu/text/Collator;

    .line 273
    invoke-virtual {p0}, Landroid/icu/text/AlphabeticIndex;->getFirstCharactersInScripts()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    .line 274
    iget-object p2, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-static {p2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 278
    :goto_1
    iget-object p2, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 282
    iget-object p2, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    .line 283
    iget-object p2, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 291
    :cond_1
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->addChineseIndexCharacters()Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    .line 292
    invoke-direct {p0, p1}, Landroid/icu/text/AlphabeticIndex;->addIndexExemplars(Landroid/icu/util/ULocale;)V

    :cond_2
    return-void

    .line 279
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AlphabeticIndex requires some non-ignorable script boundary strings"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 268
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Collator cannot be cloned"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 240
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/AlphabeticIndex;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/RuleBasedCollator;)V

    return-void
.end method

.method static synthetic access$100(Landroid/icu/text/AlphabeticIndex;)Landroid/icu/text/RuleBasedCollator;
    .locals 0

    .line 126
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex;->collatorOriginal:Landroid/icu/text/RuleBasedCollator;

    return-object p0
.end method

.method private addChineseIndexCharacters()Z
    .locals 5

    .line 554
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    const/4 v1, 0x0

    .line 556
    :try_start_0
    iget-object v2, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    const-string/jumbo v3, "\ufdd0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/icu/text/RuleBasedCollator;->internalAddContractions(ILandroid/icu/text/UnicodeSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 561
    :cond_0
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 562
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 564
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x41

    if-gt v3, v1, :cond_1

    const/16 v4, 0x5a

    if-gt v1, v4, :cond_1

    .line 567
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v3, v4}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    :cond_2
    return v2

    :catch_0
    return v1
.end method

.method private addIndexExemplars(Landroid/icu/util/ULocale;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 506
    invoke-static {p1, v0, v1}, Landroid/icu/util/LocaleData;->getExemplarSet(Landroid/icu/util/ULocale;II)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 509
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    return-void

    .line 515
    :cond_0
    invoke-static {p1, v0, v0}, Landroid/icu/util/LocaleData;->getExemplarSet(Landroid/icu/util/ULocale;II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->cloneAsThawed()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    const/16 v1, 0x7a

    const/16 v2, 0x61

    .line 519
    invoke-virtual {v0, v2, v1}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 520
    :cond_1
    invoke-virtual {v0, v2, v1}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    :cond_2
    const v1, 0xd7a3

    const v2, 0xac00

    .line 522
    invoke-virtual {v0, v2, v1}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 524
    invoke-virtual {v0, v2, v1}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 525
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xb098

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xb2e4

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xb77c

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xb9c8

    .line 526
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xbc14

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xc0ac

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xc544

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xc790

    .line 527
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xcc28

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xce74

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xd0c0

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xd30c

    .line 528
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xd558

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_3
    const/16 v1, 0x1200

    const/16 v2, 0x137f

    .line 530
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 534
    new-instance v1, Landroid/icu/text/UnicodeSet;

    const-string v2, "[[:Block=Ethiopic:]&[:Script=Ethiopic:]]"

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 535
    new-instance v2, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v2, v1}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 536
    :cond_4
    :goto_0
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v3, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v1, v3, :cond_5

    .line 537
    iget v1, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_4

    .line 538
    iget v1, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->remove(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 545
    :cond_5
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 546
    iget-object v2, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->toUpperCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_1

    :cond_6
    return-void
.end method

.method private createBucketList()Landroid/icu/text/AlphabeticIndex$BucketList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/text/AlphabeticIndex$BucketList<",
            "TV;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 966
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/AlphabeticIndex;->initLabels()Ljava/util/List;

    move-result-object v1

    .line 970
    iget-object v2, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v2}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 971
    iget-object v2, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v2}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    const/16 v4, 0x1a

    new-array v5, v4, [Landroid/icu/text/AlphabeticIndex$Bucket;

    new-array v6, v4, [Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 984
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 987
    new-instance v8, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/AlphabeticIndex;->getUnderflowLabel()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->UNDERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const-string v11, ""

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex$1;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v10, v11

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const/4 v8, 0x1

    if-eqz v16, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;

    .line 994
    iget-object v9, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v9, v4, v10}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_3

    const/4 v9, 0x0

    .line 999
    :goto_2
    iget-object v12, v0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    add-int/2addr v14, v8

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1000
    iget-object v8, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v8, v4, v12}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_2

    if-eqz v9, :cond_1

    .line 1005
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    .line 1008
    new-instance v8, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/AlphabeticIndex;->getInflowLabel()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v17, v1

    sget-object v1, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->INFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-object/from16 v18, v12

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v1, v12}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex$1;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    move-object/from16 v17, v1

    move-object/from16 v18, v12

    const/4 v12, 0x0

    :goto_3
    move-object/from16 v10, v18

    goto :goto_4

    :cond_2
    const/4 v8, 0x1

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v17, v1

    .line 1013
    :goto_4
    new-instance v1, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-static {v4}, Landroid/icu/text/AlphabeticIndex;->fixLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    invoke-direct {v1, v8, v4, v9, v12}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex$1;)V

    .line 1014
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const-string/jumbo v12, "\ufdd0"

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v8, 0x41

    if-gt v8, v9, :cond_4

    const/16 v8, 0x5a

    if-gt v9, v8, :cond_4

    add-int/lit8 v9, v9, -0x41

    .line 1018
    aput-object v1, v5, v9

    goto :goto_5

    .line 1019
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    .line 1020
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v8, 0x41

    if-gt v8, v9, :cond_5

    const/16 v8, 0x5a

    if-gt v9, v8, :cond_5

    add-int/lit8 v9, v9, -0x41

    .line 1021
    aput-object v1, v6, v9

    const/4 v13, 0x1

    .line 1025
    :cond_5
    :goto_5
    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    .line 1026
    invoke-static {v1, v2, v3, v4}, Landroid/icu/text/AlphabeticIndex;->hasMultiplePrimaryWeights(Landroid/icu/text/RuleBasedCollator;JLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "\uffff"

    .line 1027
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1029
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    .line 1030
    :goto_6
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 1031
    invoke-static {v9}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$1200(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-result-object v12

    move-object/from16 v18, v10

    sget-object v10, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    if-eq v12, v10, :cond_6

    goto :goto_7

    .line 1036
    :cond_6
    invoke-static {v9}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$900(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v10

    if-nez v10, :cond_7

    iget-object v10, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    .line 1037
    invoke-static {v9}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$800(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v2, v3, v12}, Landroid/icu/text/AlphabeticIndex;->hasMultiplePrimaryWeights(Landroid/icu/text/RuleBasedCollator;JLjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1042
    new-instance v8, Landroid/icu/text/AlphabeticIndex$Bucket;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const/4 v10, 0x0

    invoke-direct {v8, v11, v1, v4, v10}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex$1;)V

    .line 1043
    invoke-static {v8, v9}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$902(Landroid/icu/text/AlphabeticIndex$Bucket;Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 1044
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v10, v18

    goto :goto_6

    :cond_8
    move-object/from16 v18, v10

    :goto_7
    move-object/from16 v1, v17

    move-object/from16 v10, v18

    const/16 v4, 0x1a

    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1051
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1053
    new-instance v0, Landroid/icu/text/AlphabeticIndex$BucketList;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v7, v1}, Landroid/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/icu/text/AlphabeticIndex$1;)V

    return-object v0

    :cond_a
    const/4 v1, 0x0

    .line 1056
    new-instance v2, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/AlphabeticIndex;->getOverflowLabel()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->OVERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    invoke-direct {v2, v0, v10, v3, v1}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex$1;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v13, :cond_d

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x1a

    :goto_8
    if-ge v0, v2, :cond_d

    .line 1062
    aget-object v3, v5, v0

    if-eqz v3, :cond_b

    .line 1063
    aget-object v1, v5, v0

    .line 1065
    :cond_b
    aget-object v3, v6, v0

    if-eqz v3, :cond_c

    if-eqz v1, :cond_c

    .line 1066
    aget-object v3, v6, v0

    invoke-static {v3, v1}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$902(Landroid/icu/text/AlphabeticIndex$Bucket;Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    const/4 v15, 0x1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_d
    if-nez v15, :cond_e

    .line 1073
    new-instance v0, Landroid/icu/text/AlphabeticIndex$BucketList;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v7, v1}, Landroid/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/icu/text/AlphabeticIndex$1;)V

    return-object v0

    .line 1077
    :cond_e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1078
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/AlphabeticIndex$Bucket;

    const/4 v2, -0x1

    :goto_9
    add-int/2addr v0, v2

    if-lez v0, :cond_11

    .line 1080
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 1081
    invoke-static {v3}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$900(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v4

    if-eqz v4, :cond_f

    goto :goto_9

    .line 1084
    :cond_f
    invoke-static {v3}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$1200(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-result-object v4

    sget-object v5, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->INFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    if-ne v4, v5, :cond_10

    .line 1085
    invoke-static {v1}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$1200(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-result-object v4

    sget-object v5, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    if-eq v4, v5, :cond_10

    .line 1086
    invoke-static {v3, v1}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$902(Landroid/icu/text/AlphabeticIndex$Bucket;Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    goto :goto_9

    :cond_10
    move-object v1, v3

    goto :goto_9

    .line 1093
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1094
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 1095
    invoke-static {v2}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$900(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v3

    if-nez v3, :cond_12

    .line 1096
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1099
    :cond_13
    new-instance v1, Landroid/icu/text/AlphabeticIndex$BucketList;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v0, v2}, Landroid/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/icu/text/AlphabeticIndex$1;)V

    return-object v1
.end method

.method private static fixLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "\ufdd0"

    .line 491
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 494
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2800

    if-ge v2, v1, :cond_1

    const/16 v3, 0x28ff

    if-gt v1, v3, :cond_1

    .line 496
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u5283"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 498
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hasMultiplePrimaryWeights(Landroid/icu/text/RuleBasedCollator;JLjava/lang/String;)Z
    .locals 5

    .line 1159
    invoke-virtual {p0, p3}, Landroid/icu/text/RuleBasedCollator;->internalGetCEs(Ljava/lang/CharSequence;)[J

    move-result-object p0

    const/4 p3, 0x0

    move v0, p3

    move v1, v0

    .line 1161
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 1162
    aget-wide v2, p0, v0

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    cmp-long v2, v2, p1

    const/4 v3, 0x1

    if-lez v2, :cond_1

    if-eqz v1, :cond_0

    return v3

    :cond_0
    move v1, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method private initBuckets()V
    .locals 10

    .line 738
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    if-eqz v0, :cond_0

    return-void

    .line 741
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->createBucketList()Landroid/icu/text/AlphabeticIndex$BucketList;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    .line 742
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 748
    :cond_1
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->recordComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 756
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$BucketList;->access$700(Landroid/icu/text/AlphabeticIndex$BucketList;)Ljava/util/Iterator;

    move-result-object v0

    .line 757
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 760
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 761
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 762
    invoke-static {v2}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$800(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v2, v3

    move-object v4, v2

    .line 767
    :goto_0
    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/text/AlphabeticIndex$Record;

    :goto_2
    if-eqz v4, :cond_4

    .line 770
    iget-object v7, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    .line 771
    invoke-static {v6}, Landroid/icu/text/AlphabeticIndex$Record;->access$000(Landroid/icu/text/AlphabeticIndex$Record;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_4

    .line 774
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 775
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 776
    invoke-static {v1}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$800(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    move-result-object v4

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_2

    :cond_3
    move-object v1, v2

    move-object v4, v3

    goto :goto_2

    .line 783
    :cond_4
    invoke-static {v1}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$900(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 784
    invoke-static {v1}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$900(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v7

    goto :goto_3

    :cond_5
    move-object v7, v1

    .line 786
    :goto_3
    invoke-static {v7}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$1000(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_6

    .line 787
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7, v8}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$1002(Landroid/icu/text/AlphabeticIndex$Bucket;Ljava/util/List;)Ljava/util/List;

    .line 789
    :cond_6
    invoke-static {v7}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$1000(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    :goto_4
    return-void
.end method

.method private initLabels()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 426
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFKDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    .line 427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    iget-object v2, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 430
    iget-object v4, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 436
    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v5}, Landroid/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 438
    invoke-static {v7, v6}, Landroid/icu/text/UTF16;->hasMoreCodePointsThan(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_1

    :goto_1
    move v8, v3

    goto :goto_2

    .line 440
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_2

    .line 441
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_2

    .line 444
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    move v8, v6

    .line 449
    :goto_2
    iget-object v9, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v9, v7, v2}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_3

    goto :goto_0

    .line 451
    :cond_3
    iget-object v9, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v9, v7, v4}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v8, :cond_5

    .line 453
    iget-object v8, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-direct {p0, v7}, Landroid/icu/text/AlphabeticIndex;->separated(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_5

    goto :goto_0

    .line 457
    :cond_5
    iget-object v8, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-static {v1, v7, v8}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v8

    if-gez v8, :cond_6

    not-int v8, v8

    .line 459
    invoke-interface {v1, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 461
    :cond_6
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 462
    invoke-static {v0, v7, v9}, Landroid/icu/text/AlphabeticIndex;->isOneLabelBetterThanOther(Landroid/icu/text/Normalizer2;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 463
    invoke-interface {v1, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 471
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    .line 472
    iget v2, p0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    if-le v0, v2, :cond_9

    const/4 v2, -0x1

    .line 475
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/2addr v3, v6

    .line 477
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 478
    iget v5, p0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    mul-int/2addr v5, v3

    div-int/2addr v5, v0

    if-ne v5, v2, :cond_8

    .line 480
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_8
    move v2, v5

    goto :goto_3

    :cond_9
    return-object v1
.end method

.method private static isOneLabelBetterThanOther(Landroid/icu/text/Normalizer2;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 802
    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-virtual {p0, p2}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 804
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v3

    sub-int/2addr v1, v3

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-gez v1, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 808
    :cond_1
    sget-object v1, Landroid/icu/text/AlphabeticIndex;->binaryCmp:Ljava/util/Comparator;

    invoke-interface {v1, v0, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    if-gez p0, :cond_2

    move v2, v3

    :cond_2
    return v2

    .line 812
    :cond_3
    sget-object p0, Landroid/icu/text/AlphabeticIndex;->binaryCmp:Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method private separated(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 579
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 581
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 582
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 583
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 584
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 585
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x34f

    .line 586
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 588
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_0

    .line 591
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/UnicodeSet;",
            ")",
            "Landroid/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    const/4 p1, 0x0

    .line 303
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method

.method public varargs addLabels([Landroid/icu/util/ULocale;)Landroid/icu/text/AlphabeticIndex;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/icu/util/ULocale;",
            ")",
            "Landroid/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 313
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 314
    invoke-direct {p0, v2}, Landroid/icu/text/AlphabeticIndex;->addIndexExemplars(Landroid/icu/util/ULocale;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 316
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method

.method public varargs addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Locale;",
            ")",
            "Landroid/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 326
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 327
    invoke-static {v2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/icu/text/AlphabeticIndex;->addIndexExemplars(Landroid/icu/util/ULocale;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 329
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method

.method public addRecord(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/text/AlphabeticIndex;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "TV;)",
            "Landroid/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 664
    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    .line 665
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 666
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    .line 668
    :cond_0
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    new-instance v2, Landroid/icu/text/AlphabeticIndex$Record;

    invoke-direct {v2, p1, p2, v0}, Landroid/icu/text/AlphabeticIndex$Record;-><init>(Ljava/lang/CharSequence;Ljava/lang/Object;Landroid/icu/text/AlphabeticIndex$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/text/AlphabeticIndex$ImmutableIndex<",
            "TV;>;"
        }
    .end annotation

    .line 604
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->createBucketList()Landroid/icu/text/AlphabeticIndex$BucketList;

    move-result-object v0

    goto :goto_0

    .line 608
    :cond_0
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    if-nez v0, :cond_1

    .line 609
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->createBucketList()Landroid/icu/text/AlphabeticIndex$BucketList;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    .line 611
    :cond_1
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    .line 613
    :goto_0
    new-instance v1, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;-><init>(Landroid/icu/text/AlphabeticIndex$BucketList;Landroid/icu/text/Collator;Landroid/icu/text/AlphabeticIndex$1;)V

    return-object v1
.end method

.method public clearRecords()Landroid/icu/text/AlphabeticIndex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 697
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 699
    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    :cond_0
    return-object p0
.end method

.method public getBucketCount()I
    .locals 0

    .line 710
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->initBuckets()V

    .line 711
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    invoke-static {p0}, Landroid/icu/text/AlphabeticIndex$BucketList;->access$200(Landroid/icu/text/AlphabeticIndex$BucketList;)I

    move-result p0

    return p0
.end method

.method public getBucketIndex(Ljava/lang/CharSequence;)I
    .locals 1

    .line 687
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->initBuckets()V

    .line 688
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-static {v0, p1, p0}, Landroid/icu/text/AlphabeticIndex$BucketList;->access$300(Landroid/icu/text/AlphabeticIndex$BucketList;Ljava/lang/CharSequence;Landroid/icu/text/Collator;)I

    move-result p0

    return p0
.end method

.method public getBucketLabels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 622
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->initBuckets()V

    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 624
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    invoke-virtual {p0}, Landroid/icu/text/AlphabeticIndex$BucketList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 625
    invoke-virtual {v1}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCollator()Landroid/icu/text/RuleBasedCollator;
    .locals 2

    .line 640
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->collatorExternal:Landroid/icu/text/RuleBasedCollator;

    if-nez v0, :cond_0

    .line 642
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->collatorOriginal:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RuleBasedCollator;

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->collatorExternal:Landroid/icu/text/RuleBasedCollator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 645
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Collator cannot be cloned"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 648
    :cond_0
    :goto_0
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex;->collatorExternal:Landroid/icu/text/RuleBasedCollator;

    return-object p0
.end method

.method public getFirstCharactersInScripts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1195
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1198
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 1199
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    const v2, 0xfdd1

    invoke-virtual {p0, v2, v1}, Landroid/icu/text/RuleBasedCollator;->internalAddContractions(ILandroid/icu/text/UnicodeSet;)V

    .line 1200
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 1204
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    .line 1205
    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v3

    shl-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x3f

    if-nez v2, :cond_0

    goto :goto_0

    .line 1212
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 1201
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "AlphabeticIndex requires script-first-primary contractions"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInflowLabel()Ljava/lang/String;
    .locals 0

    .line 393
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex;->inflowLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxLabelCount()I
    .locals 0

    .line 403
    iget p0, p0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    return p0
.end method

.method public getOverflowLabel()Ljava/lang/String;
    .locals 0

    .line 371
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex;->overflowLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getRecordCount()I
    .locals 0

    .line 720
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getUnderflowLabel()Ljava/lang/String;
    .locals 0

    .line 350
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex;->underflowLabel:Ljava/lang/String;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;>;"
        }
    .end annotation

    .line 730
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->initBuckets()V

    .line 731
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    invoke-virtual {p0}, Landroid/icu/text/AlphabeticIndex$BucketList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public setInflowLabel(Ljava/lang/String;)Landroid/icu/text/AlphabeticIndex;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 381
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->inflowLabel:Ljava/lang/String;

    const/4 p1, 0x0

    .line 382
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method

.method public setMaxLabelCount(I)Landroid/icu/text/AlphabeticIndex;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 416
    iput p1, p0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    const/4 p1, 0x0

    .line 417
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method

.method public setOverflowLabel(Ljava/lang/String;)Landroid/icu/text/AlphabeticIndex;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 339
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->overflowLabel:Ljava/lang/String;

    const/4 p1, 0x0

    .line 340
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method

.method public setUnderflowLabel(Ljava/lang/String;)Landroid/icu/text/AlphabeticIndex;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 360
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->underflowLabel:Ljava/lang/String;

    const/4 p1, 0x0

    .line 361
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method
