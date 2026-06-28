.class final Landroid/icu/impl/coll/CollationDataBuilder;
.super Ljava/lang/Object;
.source "CollationDataBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;,
        Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;,
        Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;,
        Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final IS_BUILDER_JAMO_CE32:I = 0x100


# instance fields
.field protected base:Landroid/icu/impl/coll/CollationData;

.field protected baseSettings:Landroid/icu/impl/coll/CollationSettings;

.field protected ce32s:Landroid/icu/impl/coll/UVector32;

.field protected ce64s:Landroid/icu/impl/coll/UVector64;

.field protected collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

.field protected conditionalCE32s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;",
            ">;"
        }
    .end annotation
.end field

.field protected contextChars:Landroid/icu/text/UnicodeSet;

.field protected contexts:Ljava/lang/StringBuilder;

.field protected fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

.field protected fastLatinEnabled:Z

.field protected modified:Z

.field protected nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field protected trie:Landroid/icu/impl/Trie2Writable;

.field protected unsafeBackwardSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1346
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    .line 1349
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    .line 52
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    .line 54
    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->baseSettings:Landroid/icu/impl/coll/CollationSettings;

    .line 55
    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    .line 56
    new-instance v1, Landroid/icu/impl/coll/UVector32;

    invoke-direct {v1}, Landroid/icu/impl/coll/UVector32;-><init>()V

    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    .line 57
    new-instance v1, Landroid/icu/impl/coll/UVector64;

    invoke-direct {v1}, Landroid/icu/impl/coll/UVector64;-><init>()V

    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    .line 60
    iput-boolean v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinEnabled:Z

    .line 61
    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    .line 62
    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    .line 64
    iget-object p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    return-void
.end method

.method protected static encodeOneCEAsCE32(J)I
    .locals 8

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v2, p0

    const v3, 0xffff

    and-int/2addr v3, v2

    const-wide v4, 0xffff00ff00ffL

    and-long/2addr v4, p0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    long-to-int p0, v0

    ushr-int/lit8 p1, v2, 0x10

    or-int/2addr p0, p1

    shr-int/lit8 p1, v3, 0x8

    or-int/2addr p0, p1

    return p0

    :cond_0
    const-wide v4, 0xffffffffffL

    and-long/2addr p0, v4

    const-wide/32 v4, 0x5000500

    cmp-long p0, p0, v4

    if-nez p0, :cond_1

    .line 460
    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->makeLongPrimaryCE32(J)I

    move-result p0

    return p0

    :cond_1
    cmp-long p0, v0, v6

    if-nez p0, :cond_2

    and-int/lit16 p0, v3, 0xff

    if-nez p0, :cond_2

    .line 463
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->makeLongSecondaryCE32(I)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static enumRangeForCopy(IIILandroid/icu/impl/coll/CollationDataBuilder$CopyHelper;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/16 v0, 0xc0

    if-eq p2, v0, :cond_0

    .line 790
    invoke-virtual {p3, p0, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->copyRangeCE32(III)V

    :cond_0
    return-void
.end method

.method protected static isBuilderContextCE32(I)Z
    .locals 1

    const/4 v0, 0x7

    .line 447
    invoke-static {p0, v0}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result p0

    return p0
.end method

.method protected static jamoCpFromIndex(I)I
    .locals 1

    const/16 v0, 0x13

    if-ge p0, v0, :cond_0

    add-int/lit16 p0, p0, 0x1100

    return p0

    :cond_0
    add-int/lit8 p0, p0, -0x13

    const/16 v0, 0x15

    if-ge p0, v0, :cond_1

    add-int/lit16 p0, p0, 0x1161

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x15

    add-int/lit16 p0, p0, 0x11a8

    return p0
.end method

.method protected static makeBuilderContextCE32(I)I
    .locals 1

    const/4 v0, 0x7

    .line 444
    invoke-static {v0, p0}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JI)V
    .locals 0

    .line 121
    invoke-virtual {p0, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeCEs([JI)I

    move-result p3

    .line 122
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->addCE32(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method protected addCE(J)I
    .locals 4

    .line 406
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 408
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2, v1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_1
    iget-object p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    return v0
.end method

.method protected addCE32(I)I
    .locals 3

    .line 415
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 417
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v2, v1}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    :cond_1
    iget-object p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    return v0
.end method

.method addCE32(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 7

    .line 175
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_b

    .line 178
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 181
    invoke-static {p2, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 182
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    .line 183
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v3, v1}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v3

    .line 184
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v4, v2, :cond_1

    :cond_0
    move v0, v5

    :cond_1
    const/16 v4, 0xc0

    if-ne v3, v4, :cond_3

    .line 190
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v4, v1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v4

    if-nez v0, :cond_2

    .line 191
    invoke-static {v4}, Landroid/icu/impl/coll/Collation;->ce32HasContext(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 192
    :cond_2
    invoke-virtual {p0, v1, v4, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v3

    .line 193
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v4, v1, v3}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    :cond_3
    if-nez v0, :cond_5

    .line 198
    invoke-static {v3}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 199
    iget-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {p1, v1, p3}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    goto/16 :goto_2

    .line 201
    :cond_4
    invoke-virtual {p0, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object p1

    .line 202
    iput v5, p1, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    .line 203
    iput p3, p1, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    goto :goto_2

    .line 207
    :cond_5
    invoke-static {v3}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\u0000"

    .line 210
    invoke-virtual {p0, v0, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v0

    .line 211
    invoke-static {v0}, Landroid/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    move-result v3

    .line 212
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v4, v1, v3}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    .line 213
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 214
    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_6
    invoke-virtual {p0, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v0

    .line 217
    iput v5, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    .line 219
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 222
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, p2}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 225
    :goto_1
    iget p2, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    if-gez p2, :cond_7

    .line 228
    invoke-virtual {p0, p1, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result p1

    .line 229
    iput p1, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    goto :goto_2

    .line 232
    :cond_7
    invoke-virtual {p0, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v1

    .line 233
    iget-object v2, v1, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_8

    .line 236
    invoke-virtual {p0, p1, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result p1

    .line 237
    iput p1, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 238
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object p1

    iput p2, p1, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    goto :goto_2

    :cond_8
    if-nez v2, :cond_9

    .line 242
    iput p3, v1, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    .line 248
    :goto_2
    iput-boolean v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    return-void

    :cond_9
    move-object v0, v1

    goto :goto_1

    .line 179
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "attempt to add mappings after build()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mapping from empty string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected addConditionalCE32(Ljava/lang/String;I)I
    .locals 2

    .line 425
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v1, 0x7ffff

    if-gt v0, v1, :cond_0

    .line 431
    new-instance v1, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    invoke-direct {v1, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;-><init>(Ljava/lang/String;I)V

    .line 432
    iget-object p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0

    .line 427
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo p1, "too many context-sensitive mappings"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected addContextTrie(ILandroid/icu/util/CharsTrieBuilder;)I
    .locals 2

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p1, 0x10

    int-to-char v1, v1

    .line 1134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1135
    sget-object p1, Landroid/icu/util/StringTrieBuilder$Option;->SMALL:Landroid/icu/util/StringTrieBuilder$Option;

    invoke-virtual {p2, p1}, Landroid/icu/util/CharsTrieBuilder;->buildCharSequence(Landroid/icu/util/StringTrieBuilder$Option;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1136
    iget-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    .line 1138
    iget-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    .line 1139
    iget-object p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    return p1
.end method

.method build(Landroid/icu/impl/coll/CollationData;)V
    .locals 2

    .line 312
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationDataBuilder;->buildMappings(Landroid/icu/impl/coll/CollationData;)V

    .line 313
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    if-eqz v0, :cond_0

    .line 314
    iget-wide v0, v0, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    iput-wide v0, p1, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    .line 315
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    .line 316
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget v0, v0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    iput v0, p1, Landroid/icu/impl/coll/CollationData;->numScripts:I

    .line 317
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    .line 318
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    .line 320
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationDataBuilder;->buildFastLatinTable(Landroid/icu/impl/coll/CollationData;)V

    return-void
.end method

.method protected buildContext(Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I
    .locals 18

    move-object/from16 v0, p0

    .line 1025
    new-instance v1, Landroid/icu/util/CharsTrieBuilder;

    invoke-direct {v1}, Landroid/icu/util/CharsTrieBuilder;-><init>()V

    .line 1026
    new-instance v2, Landroid/icu/util/CharsTrieBuilder;

    invoke-direct {v2}, Landroid/icu/util/CharsTrieBuilder;-><init>()V

    move-object/from16 v3, p1

    .line 1030
    :goto_0
    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->prefixLength()I

    move-result v4

    .line 1031
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    add-int/lit8 v7, v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1032
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v9, v3

    .line 1036
    :goto_1
    iget v10, v9, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    if-ltz v10, :cond_0

    iget v10, v9, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 1037
    invoke-virtual {v0, v10}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v10

    iget-object v11, v10, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v9, v10

    goto :goto_1

    .line 1042
    :cond_0
    iget-object v10, v9, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const-string/jumbo v11, "too many context-sensitive mappings"

    if-ne v10, v7, :cond_1

    .line 1045
    iget v6, v9, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    goto :goto_5

    .line 1049
    :cond_1
    invoke-virtual {v2}, Landroid/icu/util/CharsTrieBuilder;->clear()Landroid/icu/util/CharsTrieBuilder;

    .line 1053
    iget-object v10, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v7, :cond_2

    .line 1056
    iget v6, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    .line 1057
    iget v10, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-virtual {v0, v10}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v10

    move v14, v6

    move v6, v8

    goto :goto_3

    :cond_2
    move-object/from16 v14, p1

    const/4 v15, 0x1

    .line 1069
    :goto_2
    invoke-virtual {v14}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->prefixLength()I

    move-result v10

    if-ne v10, v4, :cond_a

    move-object v10, v3

    move v14, v15

    const/16 v6, 0x100

    :goto_3
    or-int/lit16 v6, v6, 0x200

    .line 1086
    :goto_4
    iget-object v15, v10, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 1087
    iget-object v13, v0, Landroid/icu/impl/coll/CollationDataBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v15, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    invoke-virtual {v13, v12}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v12

    const/16 v13, 0xff

    if-gt v12, v13, :cond_3

    and-int/lit16 v6, v6, -0x201

    .line 1091
    :cond_3
    iget-object v12, v0, Landroid/icu/impl/coll/CollationDataBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v15, v8}, Ljava/lang/String;->codePointBefore(I)I

    move-result v8

    invoke-virtual {v12, v8}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v8

    if-le v8, v13, :cond_4

    or-int/lit16 v6, v6, 0x400

    .line 1096
    :cond_4
    iget v8, v10, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    invoke-virtual {v2, v15, v8}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    if-ne v10, v9, :cond_9

    .line 1100
    invoke-virtual {v0, v14, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->addContextTrie(ILandroid/icu/util/CharsTrieBuilder;)I

    move-result v7

    const v8, 0x7ffff

    if-gt v7, v8, :cond_8

    const/16 v8, 0x9

    .line 1106
    invoke-static {v8, v7}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v7

    or-int/2addr v6, v7

    move-object v9, v10

    .line 1109
    :goto_5
    iput v6, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    if-nez v4, :cond_5

    .line 1111
    iget v3, v9, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    if-gez v3, :cond_7

    return v6

    :cond_5
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 1116
    invoke-virtual {v5, v8, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 1118
    invoke-virtual {v1, v5, v6}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 1119
    iget v3, v9, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    if-gez v3, :cond_7

    move-object/from16 v12, p1

    .line 1123
    iget v2, v12, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->addContextTrie(ILandroid/icu/util/CharsTrieBuilder;)I

    move-result v0

    const v13, 0x7ffff

    if-gt v0, v13, :cond_6

    const/16 v1, 0x8

    .line 1129
    invoke-static {v1, v0}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v0

    return v0

    .line 1125
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v11}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v12, p1

    .line 1027
    iget v3, v9, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-virtual {v0, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v3

    goto/16 :goto_0

    .line 1102
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v11}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object/from16 v12, p1

    const/4 v8, 0x0

    const v13, 0x7ffff

    .line 1098
    iget v10, v10, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-virtual {v0, v10}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v10

    goto/16 :goto_4

    :cond_a
    move-object/from16 v12, p1

    const v13, 0x7ffff

    .line 1071
    iget v8, v14, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    const/4 v13, 0x1

    if-eq v8, v13, :cond_c

    if-eqz v10, :cond_b

    .line 1073
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v10

    move-object/from16 v16, v1

    iget-object v1, v14, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    .line 1072
    invoke-virtual {v6, v8, v1, v13, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_6

    :cond_b
    move-object/from16 v16, v1

    .line 1075
    :goto_6
    iget v1, v14, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    move v15, v1

    goto :goto_7

    :cond_c
    move-object/from16 v16, v1

    .line 1068
    :cond_d
    :goto_7
    iget v1, v14, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v14

    move-object/from16 v1, v16

    const/4 v8, 0x0

    goto/16 :goto_2
.end method

.method protected buildContexts()V
    .locals 4

    .line 1005
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1006
    new-instance v0, Landroid/icu/text/UnicodeSetIterator;

    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 1007
    :goto_0
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1009
    iget v1, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 1010
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v2, v1}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v2

    .line 1011
    invoke-static {v2}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1014
    invoke-virtual {p0, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v2

    .line 1015
    invoke-virtual {p0, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->buildContext(Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    move-result v2

    .line 1016
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v3, v1, v2}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    goto :goto_0

    .line 1012
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Impossible: No context data for c in contextChars."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    return-void
.end method

.method protected buildFastLatinTable(Landroid/icu/impl/coll/CollationData;)V
    .locals 4

    .line 1145
    iget-boolean v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1147
    :cond_0
    new-instance v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;

    invoke-direct {v0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    .line 1148
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->forData(Landroid/icu/impl/coll/CollationData;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1149
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getHeader()[C

    move-result-object v0

    .line 1150
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getTable()[C

    move-result-object v2

    .line 1151
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    if-eqz v3, :cond_1

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    .line 1152
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    .line 1153
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1155
    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    .line 1156
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    .line 1157
    iget-object p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    .line 1159
    :cond_1
    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    .line 1160
    iput-object v2, p1, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    goto :goto_0

    .line 1162
    :cond_2
    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    :goto_0
    return-void
.end method

.method protected buildMappings(Landroid/icu/impl/coll/CollationData;)V
    .locals 13

    .line 909
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 913
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->buildContexts()V

    const/16 v0, 0x43

    new-array v1, v0, [I

    const/4 v2, -0x1

    .line 917
    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getJamoCE32s([I)Z

    move-result v3

    const v4, 0xac00

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    .line 918
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v2

    move v3, v5

    :goto_0
    if-ge v3, v0, :cond_0

    .line 920
    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    aget v8, v1, v3

    invoke-virtual {v7, v8}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x13

    move v7, v3

    :goto_1
    if-ge v7, v0, :cond_2

    .line 931
    aget v8, v1, v7

    invoke-static {v8}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move v0, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move v0, v5

    :goto_2
    const/16 v7, 0xc

    .line 936
    invoke-static {v7, v5}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v7

    move v8, v4

    move v4, v5

    :goto_3
    if-ge v4, v3, :cond_5

    if-nez v0, :cond_3

    .line 940
    aget v9, v1, v4

    invoke-static {v9}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v9

    if-nez v9, :cond_3

    or-int/lit16 v9, v7, 0x100

    goto :goto_4

    :cond_3
    move v9, v7

    :goto_4
    add-int/lit16 v10, v8, 0x24c

    .line 944
    iget-object v11, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    add-int/lit8 v12, v10, -0x1

    invoke-virtual {v11, v8, v12, v9, v6}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    add-int/lit8 v4, v4, 0x1

    move v8, v10

    goto :goto_3

    :cond_4
    :goto_5
    const v0, 0xd7a4

    if-ge v4, v0, :cond_5

    .line 951
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, v4}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    add-int/lit16 v3, v4, 0x24c

    .line 954
    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v4, v8, v0, v6}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    move v4, v3

    goto :goto_5

    .line 959
    :cond_5
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->setDigitTags()V

    .line 960
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->setLeadSurrogates()V

    .line 963
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v3, v5}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v3

    invoke-virtual {v0, v3, v5}, Landroid/icu/impl/coll/UVector32;->setElementAt(II)V

    .line 964
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    const/16 v3, 0xb

    invoke-static {v3, v5}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    .line 966
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v0}, Landroid/icu/impl/Trie2Writable;->toTrie2_32()Landroid/icu/impl/Trie2_32;

    move-result-object v0

    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    const/high16 v0, 0x10000

    const v3, 0xd800

    :goto_6
    const v4, 0xdc00

    if-ge v3, v4, :cond_7

    .line 972
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    add-int/lit16 v5, v0, 0x3ff

    invoke-virtual {v4, v0, v5}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 973
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    add-int/lit16 v0, v0, 0x400

    goto :goto_6

    .line 976
    :cond_7
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 978
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector32;->getBuffer()[I

    move-result-object v0

    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    .line 979
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v0

    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->ces:[J

    .line 980
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    .line 982
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-ltz v2, :cond_8

    .line 984
    iput-object v1, p1, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    goto :goto_7

    .line 986
    :cond_8
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    .line 988
    :goto_7
    iget-object p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    iput-object p0, p1, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    return-void

    .line 910
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "attempt to build() after build()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected clearContexts()V
    .locals 3

    .line 992
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 993
    new-instance v0, Landroid/icu/text/UnicodeSetIterator;

    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 994
    :goto_0
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 996
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    iget v2, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    invoke-virtual {v1, v2}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v1

    .line 998
    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILandroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I
    .locals 5

    .line 638
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    and-int/lit16 p3, p3, 0x100

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const/4 p3, -0x1

    goto :goto_0

    .line 647
    :cond_0
    iget-object p3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {p3, v0}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p3

    .line 649
    invoke-virtual {p0, p2, p3, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result p3

    .line 650
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result p3

    iput p3, p4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 651
    invoke-virtual {p0, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object p4

    .line 654
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 655
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/icu/util/CharsTrie;->iterator(Ljava/lang/CharSequence;II)Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v0

    .line 656
    :goto_1
    invoke-virtual {v0}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 657
    invoke-virtual {v0}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object p3

    .line 658
    iget-object v3, p3, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 659
    iget p3, p3, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-virtual {p0, p2, p3, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result p3

    .line 660
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result p3

    iput p3, p4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 663
    invoke-virtual {p0, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object p4

    .line 664
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_1
    return p3
.end method

.method copyFrom(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;)V
    .locals 4

    .line 256
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    new-instance v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;

    invoke-direct {v0, p1, p0, p2}, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;-><init>(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;)V

    .line 260
    iget-object p2, p1, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {p2}, Landroid/icu/impl/Trie2Writable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 262
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Trie2$Range;

    iget-boolean v2, v1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_0

    .line 263
    iget v2, v1, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v3, v1, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v1, v1, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-static {v2, v3, v1, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->enumRangeForCopy(IIILandroid/icu/impl/coll/CollationDataBuilder$CopyHelper;)V

    goto :goto_0

    .line 268
    :cond_0
    iget-boolean p2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    iget-boolean p1, p1, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    return-void

    .line 257
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "attempt to copyFrom() after build()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected copyFromBaseCE32(IIZ)I
    .locals 7

    .line 548
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    .line 549
    :cond_0
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    const/4 v3, 0x4

    if-eq v0, v3, :cond_d

    const/4 v3, 0x5

    if-eq v0, v3, :cond_c

    const/4 v3, 0x6

    if-eq v0, v3, :cond_b

    const/16 v3, 0x8

    const-string v4, "\u0000"

    const-string v5, ""

    const/4 v6, 0x0

    if-eq v0, v3, :cond_6

    const/16 v2, 0x9

    if-eq v0, v2, :cond_4

    const/16 p3, 0xc

    if-eq v0, p3, :cond_3

    const/16 p3, 0xe

    if-eq v0, p3, :cond_2

    const/16 p2, 0xf

    if-ne v0, p2, :cond_1

    .line 622
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->unassignedCEFromCodePoint(I)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCE(J)I

    move-result p2

    goto/16 :goto_3

    .line 625
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "copyFromBaseCE32(c, ce32, withContext) requires ce32 == base.getFinalCE32(ce32)"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 619
    :cond_2
    invoke-virtual {p0, v1, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->getCE32FromOffsetCE32(ZII)I

    move-result p2

    goto/16 :goto_3

    .line 617
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "We forbid tailoring of Hangul syllables."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-nez p3, :cond_5

    .line 605
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    .line 606
    iget-object p3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {p3, p2}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p2

    .line 607
    invoke-virtual {p0, p1, p2, v6}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result p0

    return p0

    .line 609
    :cond_5
    new-instance p3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    invoke-direct {p3, v5, v6}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;-><init>(Ljava/lang/String;I)V

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILandroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    .line 612
    iget p2, p3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-static {p2}, Landroid/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    move-result p2

    .line 613
    iget-object p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto/16 :goto_3

    .line 570
    :cond_6
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    .line 571
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p2}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v0

    if-nez p3, :cond_7

    .line 573
    invoke-virtual {p0, p1, v0, v6}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result p0

    return p0

    .line 575
    :cond_7
    new-instance p3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    invoke-direct {p3, v5, v6}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;-><init>(Ljava/lang/String;I)V

    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 579
    invoke-virtual {p0, v3, p1, v0, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILandroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    move-result v0

    goto :goto_0

    .line 581
    :cond_8
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v0

    .line 582
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v0

    iput v0, p3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 584
    :goto_0
    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v0

    .line 585
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v4, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/2addr p2, v2

    invoke-static {v4, p2, v6}, Landroid/icu/util/CharsTrie;->iterator(Ljava/lang/CharSequence;II)Landroid/icu/util/CharsTrie$Iterator;

    move-result-object p2

    .line 586
    :goto_1
    invoke-virtual {p2}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 587
    invoke-virtual {p2}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v2

    .line 588
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 589
    iget-object v4, v2, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 590
    iget v2, v2, Landroid/icu/util/CharsTrie$Entry;->value:I

    .line 591
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 592
    invoke-virtual {p0, v3, p1, v2, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILandroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    move-result v0

    goto :goto_2

    .line 594
    :cond_9
    invoke-virtual {p0, p1, v2, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v2

    .line 595
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    move v0, v2

    .line 597
    :goto_2
    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v0

    goto :goto_1

    .line 599
    :cond_a
    iget p2, p3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-static {p2}, Landroid/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    move-result p2

    .line 600
    iget-object p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_3

    .line 562
    :cond_b
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p1

    .line 563
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result p2

    .line 564
    iget-object p3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object p3, p3, Landroid/icu/impl/coll/CollationData;->ces:[J

    invoke-virtual {p0, p3, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion([JII)I

    move-result p2

    goto :goto_3

    .line 556
    :cond_c
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p1

    .line 557
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result p2

    .line 558
    iget-object p3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object p3, p3, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    invoke-virtual {p0, p3, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion32([III)I

    move-result p2

    :cond_d
    :goto_3
    return p2
.end method

.method enableFastLatin()V
    .locals 1

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinEnabled:Z

    return-void
.end method

.method encodeCEs([JI)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-ltz v2, :cond_6

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_6

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    move-result v4

    if-eqz v4, :cond_5

    const-wide/16 v4, 0x0

    if-nez v2, :cond_0

    .line 141
    invoke-static {v4, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCEAsCE32(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v6, :cond_1

    .line 143
    aget-wide v1, v1, v7

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCE(J)I

    move-result v0

    return v0

    :cond_1
    const/4 v8, 0x2

    if-ne v2, v8, :cond_2

    .line 146
    aget-wide v8, v1, v7

    .line 147
    aget-wide v10, v1, v6

    const/16 v12, 0x20

    ushr-long v12, v8, v12

    const-wide v14, 0xffffffffff00ffL

    and-long/2addr v14, v8

    const-wide/32 v16, 0x5000000

    cmp-long v14, v14, v16

    if-nez v14, :cond_2

    const-wide v14, -0xff000001L

    and-long/2addr v14, v10

    const-wide/16 v16, 0x500

    cmp-long v14, v14, v16

    if-nez v14, :cond_2

    cmp-long v4, v12, v4

    if-eqz v4, :cond_2

    long-to-int v0, v12

    long-to-int v1, v8

    const v2, 0xff00

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    long-to-int v1, v10

    shr-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    or-int/lit16 v0, v0, 0xc0

    or-int/lit8 v0, v0, 0x4

    return v0

    :cond_2
    new-array v3, v3, [I

    move v4, v7

    :goto_0
    if-ne v4, v2, :cond_3

    .line 165
    invoke-virtual {v0, v3, v7, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion32([III)I

    move-result v0

    return v0

    .line 167
    :cond_3
    aget-wide v8, v1, v4

    invoke-static {v8, v9}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCEAsCE32(J)I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 171
    invoke-virtual {v0, v1, v7, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion([JII)I

    move-result v0

    return v0

    .line 169
    :cond_4
    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 136
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to add mappings after build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mapping to too many CEs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected encodeExpansion([JII)I
    .locals 11

    .line 483
    aget-wide v0, p1, p2

    .line 484
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v2

    sub-int/2addr v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x6

    const-string/jumbo v6, "too many mappings"

    const v7, 0x7ffff

    if-gt v4, v2, :cond_4

    .line 486
    iget-object v8, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v8, v4}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v8

    cmp-long v8, v0, v8

    if-nez v8, :cond_3

    if-gt v4, v7, :cond_2

    const/4 v6, 0x1

    :goto_1
    if-ne v6, p3, :cond_0

    .line 494
    invoke-static {v5, v4, p3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result p0

    return p0

    .line 497
    :cond_0
    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    add-int v8, v4, v6

    invoke-virtual {v7, v8}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v7

    add-int v9, p2, v6

    aget-wide v9, p1, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 488
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 502
    :cond_4
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v0

    if-gt v0, v7, :cond_6

    :goto_3
    if-ge v3, p3, :cond_5

    .line 509
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    add-int v2, p2, v3

    aget-wide v6, p1, v2

    invoke-virtual {v1, v6, v7}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 511
    :cond_5
    invoke-static {v5, v0, p3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result p0

    return p0

    .line 504
    :cond_6
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected encodeExpansion32([III)I
    .locals 8

    .line 516
    aget v0, p1, p2

    .line 517
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v1

    sub-int/2addr v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    const-string/jumbo v5, "too many mappings"

    const v6, 0x7ffff

    if-gt v3, v1, :cond_4

    .line 519
    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v7, v3}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v7

    if-ne v0, v7, :cond_3

    if-gt v3, v6, :cond_2

    const/4 v5, 0x1

    :goto_1
    if-ne v5, p3, :cond_0

    .line 527
    invoke-static {v4, v3, p3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result p0

    return p0

    .line 530
    :cond_0
    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    add-int v7, v3, v5

    invoke-virtual {v6, v7}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v6

    add-int v7, p2, v5

    aget v7, p1, v7

    if-eq v6, v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 521
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 535
    :cond_4
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v0

    if-gt v0, v6, :cond_6

    :goto_3
    if-ge v2, p3, :cond_5

    .line 542
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    add-int v3, p2, v2

    aget v3, p1, v3

    invoke-virtual {v1, v3}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 544
    :cond_5
    invoke-static {v4, v0, p3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result p0

    return p0

    .line 537
    :cond_6
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected encodeOneCE(J)I
    .locals 2

    .line 470
    invoke-static {p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCEAsCE32(J)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 472
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->addCE(J)I

    move-result p0

    const p1, 0x7ffff

    if-gt p0, p1, :cond_1

    const/4 p1, 0x6

    .line 478
    invoke-static {p1, p0, v1}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result p0

    return p0

    .line 474
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo p1, "too many mappings"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getCE32FromOffsetCE32(ZII)I
    .locals 0

    .line 399
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p3

    if-eqz p1, :cond_0

    .line 400
    iget-object p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object p0, p0, Landroid/icu/impl/coll/CollationData;->ces:[J

    aget-wide p0, p0, p3

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {p0, p3}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide p0

    .line 401
    :goto_0
    invoke-static {p2, p0, p1}, Landroid/icu/impl/coll/Collation;->getThreeBytePrimaryForOffsetData(IJ)J

    move-result-wide p0

    .line 402
    invoke-static {p0, p1}, Landroid/icu/impl/coll/Collation;->makeLongPrimaryCE32(J)I

    move-result p0

    return p0
.end method

.method protected getCEs(Ljava/lang/CharSequence;I[JI)I
    .locals 3

    .line 1167
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    if-nez v0, :cond_0

    .line 1168
    new-instance v0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    new-instance v1, Landroid/icu/impl/coll/CollationData;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-direct {v1, v2}, Landroid/icu/impl/coll/CollationData;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;-><init>(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationData;)V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    .line 1169
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1171
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->fetchCEs(Ljava/lang/CharSequence;I[JI)I

    move-result p0

    return p0
.end method

.method getCEs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JI)I
    .locals 2

    .line 337
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 339
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;I[JI)I

    move-result p0

    return p0

    .line 341
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v0, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;I[JI)I

    move-result p0

    return p0
.end method

.method getCEs(Ljava/lang/CharSequence;[JI)I
    .locals 1

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;I[JI)I

    move-result p0

    return p0
.end method

.method protected getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .locals 0

    .line 437
    iget-object p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    return-object p0
.end method

.method protected getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .locals 0

    .line 440
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object p0

    return-object p0
.end method

.method protected getJamoCE32s([I)Z
    .locals 10

    .line 795
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v3, v0

    move v0, v1

    move v4, v0

    :goto_1
    const/16 v5, 0x43

    const/16 v6, 0xc0

    if-ge v0, v5, :cond_3

    .line 798
    invoke-static {v0}, Landroid/icu/impl/coll/CollationDataBuilder;->jamoCpFromIndex(I)I

    move-result v5

    .line 800
    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v7, v5}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v7

    .line 801
    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->isAssignedCE32(I)Z

    move-result v8

    or-int/2addr v3, v8

    if-ne v7, v6, :cond_1

    .line 806
    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v7, v5}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v7

    move v8, v2

    goto :goto_2

    :cond_1
    move v8, v1

    .line 808
    :goto_2
    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 809
    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_3

    .line 832
    :pswitch_0
    invoke-virtual {p0, v8, v5, v7}, Landroid/icu/impl/coll/CollationDataBuilder;->getCE32FromOffsetCE32(ZII)I

    move-result v6

    goto :goto_4

    :pswitch_1
    if-eqz v8, :cond_2

    :pswitch_2
    move v4, v2

    goto :goto_4

    .line 841
    :pswitch_3
    new-instance p0, Ljava/lang/AssertionError;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string/jumbo v0, "unexpected special tag in ce32=0x%08x"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    :goto_3
    :pswitch_4
    move v6, v7

    .line 844
    :goto_4
    aput v6, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    :goto_5
    if-ge v1, v5, :cond_5

    .line 848
    aget v0, p1, v1

    if-ne v0, v6, :cond_4

    .line 849
    invoke-static {v1}, Landroid/icu/impl/coll/CollationDataBuilder;->jamoCpFromIndex(I)I

    move-result v0

    .line 850
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v4, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v4

    invoke-virtual {p0, v0, v4, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v0

    aput v0, p1, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method hasMappings()Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    return p0
.end method

.method initForTailoring(Landroid/icu/impl/coll/CollationData;)V
    .locals 5

    .line 68
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 74
    iput-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    .line 77
    new-instance v0, Landroid/icu/impl/Trie2Writable;

    const v1, -0x2fafb

    const/16 v2, 0xc0

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/Trie2Writable;-><init>(II)V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    move v0, v2

    :goto_0
    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 85
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v1, v0, v2}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 92
    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v0

    .line 93
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    const v2, 0xac00

    const v3, 0xd7a3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    .line 97
    iget-object p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    return-void

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null CollationData"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "attempt to reuse a CollationDataBuilder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method isAssigned(I)Z
    .locals 0

    .line 117
    iget-object p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->isAssignedCE32(I)Z

    move-result p0

    return p0
.end method

.method isCompressibleLeadByte(I)Z
    .locals 0

    .line 101
    iget-object p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->isCompressibleLeadByte(I)Z

    move-result p0

    return p0
.end method

.method isCompressiblePrimary(J)Z
    .locals 0

    long-to-int p1, p1

    ushr-int/lit8 p1, p1, 0x18

    .line 105
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationDataBuilder;->isCompressibleLeadByte(I)Z

    move-result p0

    return p0
.end method

.method protected final isMutable()Z
    .locals 1

    .line 1332
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method optimize(Landroid/icu/text/UnicodeSet;)V
    .locals 4

    .line 272
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 273
    :cond_0
    new-instance v0, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v0, p1}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 274
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget p1, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v2, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq p1, v2, :cond_2

    .line 275
    iget p1, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 276
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v2, p1}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v2

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_1

    .line 278
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v2

    .line 279
    invoke-virtual {p0, p1, v2, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v1

    .line 280
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v2, p1, v1}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    goto :goto_0

    .line 283
    :cond_2
    iput-boolean v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    return-void
.end method

.method protected setDigitTags()V
    .locals 5

    .line 859
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[:Nd:]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 860
    new-instance v1, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v1, v0}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 861
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 863
    iget v0, v1, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 864
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v2, v0}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v2

    const/16 v3, 0xc0

    if-eq v2, v3, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 866
    invoke-virtual {p0, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->addCE32(I)I

    move-result v2

    const v3, 0x7ffff

    if-gt v2, v3, :cond_1

    const/16 v3, 0xa

    .line 873
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->digit(I)I

    move-result v4

    .line 872
    invoke-static {v3, v2, v4}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result v2

    .line 874
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v3, v0, v2}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    goto :goto_0

    .line 868
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v0, "too many mappings"

    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method protected setLeadSurrogates()V
    .locals 8

    const v0, 0xd800

    :goto_0
    const v1, 0xdc00

    if-ge v0, v1, :cond_5

    .line 883
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Trie2Writable;->iteratorForLeadSurrogate(C)Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    move v3, v2

    .line 884
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x200

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 885
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/Trie2$Range;

    .line 887
    iget v4, v4, Landroid/icu/impl/Trie2$Range;->value:I

    if-ne v4, v2, :cond_1

    move v4, v6

    goto :goto_2

    :cond_1
    const/16 v7, 0xc0

    if-ne v4, v7, :cond_4

    const/16 v4, 0x100

    :goto_2
    if-gez v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    if-eq v3, v4, :cond_0

    goto :goto_3

    :cond_3
    move v5, v3

    .line 903
    :cond_4
    :goto_3
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    const/16 v2, 0xd

    .line 904
    invoke-static {v2, v6}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v2

    or-int/2addr v2, v5

    .line 903
    invoke-virtual {v1, v0, v2}, Landroid/icu/impl/Trie2Writable;->setForLeadSurrogateCodeUnit(CI)Landroid/icu/impl/Trie2Writable;

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    :cond_5
    return-void
.end method

.method suppressContractions(Landroid/icu/text/UnicodeSet;)V
    .locals 3

    .line 287
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 288
    :cond_0
    new-instance v0, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v0, p1}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 289
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v1, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq p1, v1, :cond_3

    .line 290
    iget p1, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 291
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v1, p1}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v1

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_2

    .line 293
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v1, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v1

    .line 294
    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->ce32HasContext(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 295
    invoke-virtual {p0, p1, v1, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v1

    .line 296
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v2, p1, v1}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    goto :goto_0

    .line 298
    :cond_2
    invoke-static {v1}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v1

    iget v1, v1, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    .line 303
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v2, p1, v1}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    .line 304
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->remove(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 307
    iput-boolean p1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    return-void
.end method
