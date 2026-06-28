.class public final Landroid/icu/text/RuleBasedCollator;
.super Landroid/icu/text/Collator;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RuleBasedCollator$CollationBuffer;,
        Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;,
        Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;,
        Landroid/icu/text/RuleBasedCollator$NFDIterator;,
        Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private actualLocaleIsSameAsValid:Z

.field private collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

.field data:Landroid/icu/impl/coll/CollationData;

.field private frozenLock:Ljava/util/concurrent/locks/Lock;

.field settings:Landroid/icu/impl/coll/SharedObject$Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/coll/SharedObject$Reference<",
            "Landroid/icu/impl/coll/CollationSettings;",
            ">;"
        }
    .end annotation
.end field

.field tailoring:Landroid/icu/impl/coll/CollationTailoring;

.field private validLocale:Landroid/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/icu/impl/coll/CollationTailoring;Landroid/icu/util/ULocale;)V
    .locals 1

    .line 1689
    invoke-direct {p0}, Landroid/icu/text/Collator;-><init>()V

    .line 1690
    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    .line 1691
    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    .line 1692
    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    .line 1693
    iput-object p2, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    const/4 p1, 0x0

    .line 1694
    iput-boolean p1, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Landroid/icu/text/Collator;-><init>()V

    if-eqz p1, :cond_0

    .line 209
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    .line 210
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedCollator;->internalBuildTailoring(Ljava/lang/String;)V

    return-void

    .line 207
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Collation rules can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private adoptTailoring(Landroid/icu/impl/coll/CollationTailoring;)V
    .locals 1

    .line 1699
    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    .line 1700
    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    .line 1701
    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    .line 1702
    iget-object p1, p1, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    const/4 p1, 0x0

    .line 1703
    iput-boolean p1, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    return-void
.end method

.method private checkNotFrozen()V
    .locals 1

    .line 345
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 346
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify frozen RuleBasedCollator"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final compareNFDIter(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/text/RuleBasedCollator$NFDIterator;Landroid/icu/text/RuleBasedCollator$NFDIterator;)I
    .locals 5

    .line 1557
    :cond_0
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextCodePoint()I

    move-result v0

    .line 1558
    invoke-virtual {p2}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextCodePoint()I

    move-result v1

    if-ne v0, v1, :cond_1

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v2, -0x2

    const v3, 0xfffe

    const/4 v4, -0x1

    if-gez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    move v0, v4

    goto :goto_0

    .line 1569
    :cond_3
    invoke-virtual {p1, p0, v0}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextDecomposedCodePoint(Landroid/icu/impl/Normalizer2Impl;I)I

    move-result v0

    :goto_0
    if-gez v1, :cond_4

    goto :goto_1

    :cond_4
    if-ne v1, v3, :cond_5

    move v2, v4

    goto :goto_1

    .line 1576
    :cond_5
    invoke-virtual {p2, p0, v1}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextDecomposedCodePoint(Landroid/icu/impl/Normalizer2Impl;I)I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_6

    return v4

    :cond_6
    if-le v0, v2, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method private final getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    .locals 3

    .line 1784
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1785
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    goto :goto_0

    .line 1786
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    if-nez v0, :cond_1

    .line 1787
    new-instance v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RuleBasedCollator$CollationBuffer;-><init>(Landroid/icu/impl/coll/CollationData;Landroid/icu/text/RuleBasedCollator$1;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    .line 1789
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    return-object p0
.end method

.method private getCollationKey(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/CollationKey;
    .locals 1

    .line 1044
    iget-object v0, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rawCollationKey:Landroid/icu/text/RawCollationKey;

    invoke-direct {p0, p1, v0, p2}, Landroid/icu/text/RuleBasedCollator;->getRawCollationKey(Ljava/lang/CharSequence;Landroid/icu/text/RawCollationKey;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/RawCollationKey;

    move-result-object p0

    iput-object p0, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rawCollationKey:Landroid/icu/text/RawCollationKey;

    .line 1045
    new-instance p0, Landroid/icu/text/CollationKey;

    iget-object p2, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rawCollationKey:Landroid/icu/text/RawCollationKey;

    invoke-direct {p0, p1, p2}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;Landroid/icu/text/RawCollationKey;)V

    return-object p0
.end method

.method private final getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;
    .locals 0

    .line 355
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object p0, p0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/coll/CollationSettings;

    return-object p0
.end method

.method private final getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;
    .locals 0

    .line 351
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->copyOnWrite()Landroid/icu/impl/coll/SharedObject;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/coll/CollationSettings;

    return-object p0
.end method

.method private getRawCollationKey(Ljava/lang/CharSequence;Landroid/icu/text/RawCollationKey;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/RawCollationKey;
    .locals 1

    if-nez p2, :cond_0

    .line 1114
    new-instance p2, Landroid/icu/text/RawCollationKey;

    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedCollator;->simpleKeyLengthEstimate(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/icu/text/RawCollationKey;-><init>(I)V

    goto :goto_0

    .line 1115
    :cond_0
    iget-object v0, p2, Landroid/icu/text/RawCollationKey;->bytes:[B

    if-nez v0, :cond_1

    .line 1116
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedCollator;->simpleKeyLengthEstimate(Ljava/lang/CharSequence;)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p2, Landroid/icu/text/RawCollationKey;->bytes:[B

    .line 1118
    :cond_1
    :goto_0
    new-instance v0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;

    invoke-direct {v0, p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;-><init>(Landroid/icu/text/RawCollationKey;)V

    .line 1119
    invoke-direct {p0, p1, v0, p3}, Landroid/icu/text/RuleBasedCollator;->writeSortKey(Ljava/lang/CharSequence;Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1120
    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->NumberOfBytesAppended()I

    move-result p0

    iput p0, p2, Landroid/icu/text/RawCollationKey;->size:I

    return-object p2
.end method

.method private final initMaxExpansions()V
    .locals 2

    .line 254
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationTailoring;->maxExpansions:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 256
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object p0, p0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    invoke-static {p0}, Landroid/icu/text/CollationElementIterator;->computeMaxExpansions(Landroid/icu/impl/coll/CollationData;)Ljava/util/Map;

    move-result-object p0

    iput-object p0, v1, Landroid/icu/impl/coll/CollationTailoring;->maxExpansions:Ljava/util/Map;

    .line 258
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final internalBuildTailoring(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getRoot()Landroid/icu/impl/coll/CollationTailoring;

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    :try_start_0
    const-string v2, "android.icu.impl.coll.CollationBuilder"

    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 227
    const-class v4, Landroid/icu/impl/coll/CollationTailoring;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "parseAndBuild"

    new-array v4, v2, [Ljava/lang/Class;

    .line 229
    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 230
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/coll/CollationTailoring;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 234
    iput-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    .line 235
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedCollator;->adoptTailoring(Landroid/icu/impl/coll/CollationTailoring;)V

    return-void

    :catch_0
    move-exception p0

    .line 232
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    throw p0
.end method

.method private internalSetVariableTop(J)V
    .locals 4

    .line 825
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 828
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/coll/CollationData;->getGroupForPrimary(J)I

    move-result p1

    const/16 p2, 0x1000

    if-lt p1, p2, :cond_0

    const/16 v0, 0x1003

    if-lt v0, p1, :cond_0

    .line 833
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v0

    .line 836
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/coll/CollationSettings;

    iget-wide v2, v2, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 837
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v2

    sub-int/2addr p1, p2

    .line 839
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object p2

    iget p2, p2, Landroid/icu/impl/coll/CollationSettings;->options:I

    .line 838
    invoke-virtual {v2, p1, p2}, Landroid/icu/impl/coll/CollationSettings;->setMaxVariable(II)V

    .line 840
    iput-wide v0, v2, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    .line 841
    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    goto :goto_0

    .line 830
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The variable top must be a primary weight in the space/punctuation/symbols/currency symbols range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private final releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V
    .locals 0

    .line 1793
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1794
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_0
    return-void
.end method

.method private setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V
    .locals 1

    .line 918
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v0, p1, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    invoke-static {p0, p1, v0}, Landroid/icu/impl/coll/CollationFastLatin;->getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I

    move-result p0

    iput p0, p1, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    return-void
.end method

.method private simpleKeyLengthEstimate(Ljava/lang/CharSequence;)I
    .locals 0

    .line 1125
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private writeIdenticalLevel(Ljava/lang/CharSequence;Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)V
    .locals 10

    .line 1151
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move-result v6

    const/4 v0, 0x1

    .line 1152
    invoke-virtual {p2, v0}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->Append(I)V

    .line 1154
    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->access$100(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    move-result-object v0

    invoke-virtual {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->NumberOfBytesAppended()I

    move-result v1

    iput v1, v0, Landroid/icu/text/RawCollationKey;->size:I

    if-eqz v6, :cond_0

    .line 1157
    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->access$100(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    move-result-object v0

    invoke-static {v2, p1, v2, v6, v0}, Landroid/icu/impl/coll/BOCSU;->writeIdenticalLevelRun(ILjava/lang/CharSequence;IILandroid/icu/util/ByteArrayWrapper;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1160
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v6, v1, :cond_1

    .line 1161
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v9, v1, v6

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1163
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, p0, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object v5, p1

    move-object v8, v1

    invoke-virtual/range {v4 .. v9}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V

    .line 1164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->access$100(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    move-result-object p1

    invoke-static {v0, v1, v2, p0, p1}, Landroid/icu/impl/coll/BOCSU;->writeIdenticalLevelRun(ILjava/lang/CharSequence;IILandroid/icu/util/ByteArrayWrapper;)I

    .line 1167
    :cond_1
    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->access$100(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    move-result-object p0

    iget-object p0, p0, Landroid/icu/text/RawCollationKey;->bytes:[B

    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->access$100(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    move-result-object p1

    iget p1, p1, Landroid/icu/text/RawCollationKey;->size:I

    invoke-virtual {p2, p0, p1}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->setBufferAndAppended([BI)V

    return-void
.end method

.method private writeSortKey(Ljava/lang/CharSequence;Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V
    .locals 10

    .line 1129
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v0

    .line 1130
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1131
    iget-object v1, p3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-virtual {v1, v0, p1, v2}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1132
    iget-object v3, p3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    iget-object p3, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, p3, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    iget-object p3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    .line 1133
    invoke-virtual {p3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/icu/impl/coll/CollationSettings;

    const/4 v7, 0x1

    sget-object v8, Landroid/icu/impl/coll/CollationKeys;->SIMPLE_LEVEL_FALLBACK:Landroid/icu/impl/coll/CollationKeys$LevelCallback;

    const/4 v9, 0x1

    move-object v6, p2

    .line 1132
    invoke-static/range {v3 .. v9}, Landroid/icu/impl/coll/CollationKeys;->writeSortKeyUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;[ZLandroid/icu/impl/coll/CollationSettings;Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;ILandroid/icu/impl/coll/CollationKeys$LevelCallback;Z)V

    goto :goto_0

    .line 1137
    :cond_0
    iget-object v1, p3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-virtual {v1, v0, p1, v2}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1138
    iget-object v3, p3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    iget-object p3, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, p3, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    iget-object p3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    .line 1139
    invoke-virtual {p3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/icu/impl/coll/CollationSettings;

    const/4 v7, 0x1

    sget-object v8, Landroid/icu/impl/coll/CollationKeys;->SIMPLE_LEVEL_FALLBACK:Landroid/icu/impl/coll/CollationKeys$LevelCallback;

    const/4 v9, 0x1

    move-object v6, p2

    .line 1138
    invoke-static/range {v3 .. v9}, Landroid/icu/impl/coll/CollationKeys;->writeSortKeyUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;[ZLandroid/icu/impl/coll/CollationSettings;Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;ILandroid/icu/impl/coll/CollationKeys$LevelCallback;Z)V

    .line 1143
    :goto_0
    iget-object p3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p3

    check-cast p3, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {p3}, Landroid/icu/impl/coll/CollationSettings;->getStrength()I

    move-result p3

    const/16 v0, 0xf

    if-ne p3, v0, :cond_1

    .line 1144
    invoke-direct {p0, p1, p2}, Landroid/icu/text/RuleBasedCollator;->writeIdenticalLevel(Ljava/lang/CharSequence;Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)V

    .line 1146
    :cond_1
    invoke-virtual {p2, v2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->Append(I)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 250
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->cloneAsThawed()Landroid/icu/text/RuleBasedCollator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic cloneAsThawed()Landroid/icu/text/Collator;
    .locals 0

    .line 187
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->cloneAsThawed()Landroid/icu/text/RuleBasedCollator;

    move-result-object p0

    return-object p0
.end method

.method public cloneAsThawed()Landroid/icu/text/RuleBasedCollator;
    .locals 2

    const/4 v0, 0x0

    .line 328
    :try_start_0
    invoke-super {p0}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RuleBasedCollator;

    .line 332
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    move-result-object p0

    iput-object p0, v1, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    .line 333
    iput-object v0, v1, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    .line 334
    iput-object v0, v1, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0

    .line 187
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->cloneAsThawed()Landroid/icu/text/RuleBasedCollator;

    move-result-object p0

    return-object p0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1446
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/RuleBasedCollator;->doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method protected doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 1600
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1601
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_3

    return v0

    .line 1603
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1604
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1610
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    .line 1611
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v2

    if-lez v1, :cond_6

    .line 1613
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    .line 1614
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1615
    :cond_4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v1, v3, :cond_6

    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    .line 1616
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_6

    .line 1618
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    .line 1619
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    .line 1631
    :cond_6
    iget v6, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    const/4 v3, -0x2

    if-ltz v6, :cond_9

    .line 1633
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x17f

    if-eq v1, v4, :cond_7

    .line 1634
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-gt v4, v5, :cond_9

    .line 1635
    :cond_7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v1, v4, :cond_8

    .line 1636
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-gt v4, v5, :cond_9

    .line 1637
    :cond_8
    iget-object v4, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v4, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    iget-object v5, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    move-object v7, p1

    move-object v8, p2

    move v9, v1

    invoke-static/range {v4 .. v9}, Landroid/icu/impl/coll/CollationFastLatin;->compareUTF16([C[CILjava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    goto :goto_3

    :cond_9
    move v4, v3

    :goto_3
    const/4 v5, 0x0

    if-ne v4, v3, :cond_b

    .line 1648
    :try_start_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1649
    :try_start_1
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1650
    iget-object v4, v3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-virtual {v4, v2, p1, v1}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1651
    iget-object v4, v3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-virtual {v4, v2, p2, v1}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1652
    iget-object v2, v3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    iget-object v4, v3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-static {v2, v4, v0}, Landroid/icu/impl/coll/CollationCompare;->compareUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationSettings;)I

    move-result v2

    goto :goto_4

    .line 1655
    :cond_a
    iget-object v4, v3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-virtual {v4, v2, p1, v1}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1656
    iget-object v4, v3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-virtual {v4, v2, p2, v1}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1657
    iget-object v2, v3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    iget-object v4, v3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-static {v2, v4, v0}, Landroid/icu/impl/coll/CollationCompare;->compareUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationSettings;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    move v4, v2

    .line 1661
    invoke-direct {p0, v3}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v3, v5

    :goto_5
    invoke-direct {p0, v3}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    throw p1

    :cond_b
    :goto_6
    if-nez v4, :cond_e

    .line 1664
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getStrength()I

    move-result v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_c

    goto :goto_7

    .line 1670
    :cond_c
    :try_start_2
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v5

    .line 1672
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    .line 1673
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1674
    iget-object v0, v5, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-virtual {v0, p1, v1}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->setText(Ljava/lang/CharSequence;I)V

    .line 1675
    iget-object p1, v5, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-virtual {p1, p2, v1}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->setText(Ljava/lang/CharSequence;I)V

    .line 1676
    iget-object p1, v5, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    iget-object p2, v5, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-static {v2, p1, p2}, Landroid/icu/text/RuleBasedCollator;->compareNFDIter(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/text/RuleBasedCollator$NFDIterator;Landroid/icu/text/RuleBasedCollator$NFDIterator;)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1683
    invoke-direct {p0, v5}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    return p1

    .line 1678
    :cond_d
    :try_start_3
    iget-object v0, v5, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-virtual {v0, v2, p1, v1}, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->setText(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/CharSequence;I)V

    .line 1679
    iget-object p1, v5, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-virtual {p1, v2, p2, v1}, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->setText(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/CharSequence;I)V

    .line 1680
    iget-object p1, v5, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    iget-object p2, v5, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-static {v2, p1, p2}, Landroid/icu/text/RuleBasedCollator;->compareNFDIter(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/text/RuleBasedCollator$NFDIterator;Landroid/icu/text/RuleBasedCollator$NFDIterator;)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1683
    invoke-direct {p0, v5}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    return p1

    :catchall_2
    move-exception p1

    invoke-direct {p0, v5}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    throw p1

    :cond_e
    :goto_7
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1370
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/text/Collator;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1373
    :cond_1
    check-cast p1, Landroid/icu/text/RuleBasedCollator;

    .line 1374
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    iget-object v3, p1, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/icu/impl/coll/CollationSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1375
    :cond_2
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v3, p1, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    if-ne v1, v3, :cond_3

    return v0

    .line 1376
    :cond_3
    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    move v1, v2

    .line 1377
    :goto_0
    iget-object v3, p1, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-nez v3, :cond_5

    move v3, v0

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    if-eq v1, v3, :cond_6

    return v2

    .line 1380
    :cond_6
    iget-object v4, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v4

    .line 1381
    iget-object v5, p1, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    invoke-virtual {v5}, Landroid/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v5

    if-nez v1, :cond_7

    .line 1382
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    if-nez v3, :cond_8

    .line 1383
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 1385
    :cond_8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return v0

    .line 1390
    :cond_9
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getTailoredSet()Landroid/icu/text/UnicodeSet;

    move-result-object p0

    .line 1391
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->getTailoredSet()Landroid/icu/text/UnicodeSet;

    move-result-object p1

    .line 1392
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public freeze()Landroid/icu/text/Collator;
    .locals 3

    .line 313
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    .line 315
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RuleBasedCollator$CollationBuffer;-><init>(Landroid/icu/impl/coll/CollationData;Landroid/icu/text/RuleBasedCollator$1;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    .line 187
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->freeze()Landroid/icu/text/Collator;

    move-result-object p0

    return-object p0
.end method

.method public getCollationElementIterator(Landroid/icu/text/UCharacterIterator;)Landroid/icu/text/CollationElementIterator;
    .locals 1

    .line 290
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->initMaxExpansions()V

    .line 291
    new-instance v0, Landroid/icu/text/CollationElementIterator;

    invoke-direct {v0, p1, p0}, Landroid/icu/text/CollationElementIterator;-><init>(Landroid/icu/text/UCharacterIterator;Landroid/icu/text/RuleBasedCollator;)V

    return-object v0
.end method

.method public getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;
    .locals 1

    .line 267
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->initMaxExpansions()V

    .line 268
    new-instance v0, Landroid/icu/text/CollationElementIterator;

    invoke-direct {v0, p1, p0}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    return-object v0
.end method

.method public getCollationElementIterator(Ljava/text/CharacterIterator;)Landroid/icu/text/CollationElementIterator;
    .locals 1

    .line 278
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->initMaxExpansions()V

    .line 279
    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/CharacterIterator;

    .line 280
    new-instance v0, Landroid/icu/text/CollationElementIterator;

    invoke-direct {v0, p1, p0}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;)V

    return-object v0
.end method

.method public getCollationKey(Ljava/lang/String;)Landroid/icu/text/CollationKey;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1036
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v0

    .line 1037
    invoke-direct {p0, p1, v0}, Landroid/icu/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/CollationKey;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    throw p1
.end method

.method public getContractionsAndExpansions(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 992
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    :cond_0
    if-eqz p2, :cond_1

    .line 995
    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 997
    :cond_1
    new-instance v0, Landroid/icu/impl/coll/ContractionsAndExpansions;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V

    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->forData(Landroid/icu/impl/coll/CollationData;)V

    return-void
.end method

.method public getDecomposition()I
    .locals 0

    .line 1236
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/coll/CollationSettings;

    iget p0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    const/16 p0, 0x11

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    :goto_0
    return p0
.end method

.method public getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 2

    .line 1804
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_1

    .line 1805
    iget-boolean p1, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object p0, p0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    :goto_0
    return-object p0

    .line 1806
    :cond_1
    sget-object v0, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_2

    .line 1807
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    return-object p0

    .line 1809
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown ULocale.Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMaxVariable()I
    .locals 0

    .line 750
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result p0

    add-int/lit16 p0, p0, 0x1000

    return p0
.end method

.method public getNumericCollation()Z
    .locals 0

    .line 1344
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/coll/CollationSettings;

    iget p0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRawCollationKey(Ljava/lang/String;Landroid/icu/text/RawCollationKey;)Landroid/icu/text/RawCollationKey;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1069
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v0

    .line 1070
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedCollator;->getRawCollationKey(Ljava/lang/CharSequence;Landroid/icu/text/RawCollationKey;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/RawCollationKey;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    throw p1
.end method

.method public getReorderCodes()[I
    .locals 0

    .line 1357
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/coll/CollationSettings;

    iget-object p0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getRules()Ljava/lang/String;
    .locals 0

    .line 935
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRules(Z)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 957
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 959
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/icu/impl/coll/CollationLoader;->getRootRules()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStrength()I
    .locals 0

    .line 1220
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->getStrength()I

    move-result p0

    return p0
.end method

.method public getTailoredSet()Landroid/icu/text/UnicodeSet;
    .locals 2

    .line 970
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 971
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-eqz v1, :cond_0

    .line 972
    new-instance v1, Landroid/icu/impl/coll/TailoredSet;

    invoke-direct {v1, v0}, Landroid/icu/impl/coll/TailoredSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v1, p0}, Landroid/icu/impl/coll/TailoredSet;->forData(Landroid/icu/impl/coll/CollationData;)V

    :cond_0
    return-object v0
.end method

.method public getUCAVersion()Landroid/icu/util/VersionInfo;
    .locals 3

    .line 1770
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getVersion()Landroid/icu/util/VersionInfo;

    move-result-object p0

    .line 1778
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMilli()I

    move-result p0

    shr-int/lit8 p0, p0, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getVariableTop()I
    .locals 2

    .line 1332
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/coll/CollationSettings;

    iget-wide v0, p0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    long-to-int p0, v0

    return p0
.end method

.method public getVersion()Landroid/icu/util/VersionInfo;
    .locals 3

    .line 1756
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget p0, p0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    .line 1757
    sget-object v0, Landroid/icu/util/VersionInfo;->UCOL_RUNTIME_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v0

    ushr-int/lit8 v1, p0, 0x18

    shl-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    shr-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p0, p0, 0xff

    .line 1758
    invoke-static {v1, v0, v2, p0}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1408
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->hashCode()I

    move-result v0

    .line 1409
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-nez v1, :cond_0

    return v0

    .line 1411
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getTailoredSet()Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 1412
    new-instance v2, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v2, v1}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 1413
    :goto_0
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v3, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v1, v3, :cond_1

    .line 1414
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget v3, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    invoke-virtual {v1, v3}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method internalAddContractions(ILandroid/icu/text/UnicodeSet;)V
    .locals 3

    .line 1007
    new-instance v0, Landroid/icu/impl/coll/ContractionsAndExpansions;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v1, v2}, Landroid/icu/impl/coll/ContractionsAndExpansions;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V

    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/coll/ContractionsAndExpansions;->forCodePoint(Landroid/icu/impl/coll/CollationData;I)V

    return-void
.end method

.method public internalGetCEs(Ljava/lang/CharSequence;)[J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1181
    :try_start_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1182
    :try_start_1
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v1

    .line 1184
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1185
    iget-object v2, v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-virtual {v2, v1, p1, v3}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1186
    iget-object p1, v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    goto :goto_0

    .line 1188
    :cond_0
    iget-object v2, v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-virtual {v2, v1, p1, v3}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1189
    iget-object p1, v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    .line 1191
    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/coll/CollationIterator;->fetchCEs()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1193
    new-array v2, v1, [J

    .line 1194
    invoke-virtual {p1}, Landroid/icu/impl/coll/CollationIterator;->getCEs()[J

    move-result-object p1

    invoke-static {p1, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1197
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    throw p1
.end method

.method public isAlternateHandlingShifted()Z
    .locals 0

    .line 1279
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->getAlternateHandling()Z

    move-result p0

    return p0
.end method

.method public isCaseLevel()Z
    .locals 0

    .line 1291
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/coll/CollationSettings;

    iget p0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFrenchCollation()Z
    .locals 0

    .line 1302
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/coll/CollationSettings;

    iget p0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFrozen()Z
    .locals 0

    .line 304
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHiraganaQuaternary()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isLowerCaseFirst()Z
    .locals 1

    .line 1265
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->getCaseFirst()I

    move-result p0

    const/16 v0, 0x200

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method final isUnsafe(I)Z
    .locals 1

    .line 1716
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result p0

    return p0
.end method

.method public isUpperCaseFirst()Z
    .locals 1

    .line 1251
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->getCaseFirst()I

    move-result p0

    const/16 v0, 0x300

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAlternateHandlingDefault()V
    .locals 2

    .line 467
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 468
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 469
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    .line 470
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    .line 471
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/CollationSettings;->setAlternateHandlingDefault(I)V

    .line 472
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setAlternateHandlingShifted(Z)V
    .locals 1

    .line 588
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 589
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 590
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 591
    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationSettings;->setAlternateHandlingShifted(Z)V

    .line 592
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public final setCaseFirstDefault()V
    .locals 2

    .line 451
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 452
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 453
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    .line 454
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    .line 455
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/CollationSettings;->setCaseFirstDefault(I)V

    .line 456
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setCaseLevel(Z)V
    .locals 2

    .line 613
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 614
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isCaseLevel()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 615
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    const/16 v1, 0x400

    .line 616
    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 617
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setCaseLevelDefault()V
    .locals 3

    .line 483
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 484
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 485
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    .line 486
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    const/16 v2, 0x400

    .line 487
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v2, v0}, Landroid/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    .line 488
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setDecomposition(I)V
    .locals 2

    .line 652
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    const/16 v0, 0x10

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    .line 662
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong decomposition mode."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    .line 664
    :goto_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationSettings;->getFlag(I)Z

    move-result v0

    if-ne p1, v0, :cond_2

    return-void

    .line 665
    :cond_2
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 666
    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 667
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setDecompositionDefault()V
    .locals 3

    .line 499
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 500
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 501
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    .line 502
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    const/4 v2, 0x1

    .line 503
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v2, v0}, Landroid/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    .line 504
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setFrenchCollation(Z)V
    .locals 2

    .line 566
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 567
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrenchCollation()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 568
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    const/16 v1, 0x800

    .line 569
    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 570
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setFrenchCollationDefault()V
    .locals 3

    .line 515
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 516
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 517
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    .line 518
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    const/16 v2, 0x800

    .line 519
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v2, v0}, Landroid/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    .line 520
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setHiraganaQuaternary(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 377
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    return-void
.end method

.method public setHiraganaQuaternaryDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 396
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    return-void
.end method

.method setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 1

    .line 1825
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    invoke-static {p2, v0}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 1826
    iput-boolean p2, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 1829
    iput-boolean p2, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    .line 1833
    :goto_0
    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    return-void
.end method

.method public setLowerCaseFirst(Z)V
    .locals 1

    .line 434
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 435
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isLowerCaseFirst()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 436
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    if-eqz p1, :cond_1

    const/16 p1, 0x200

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 437
    :goto_0
    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationSettings;->setCaseFirst(I)V

    .line 438
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public bridge synthetic setMaxVariable(I)Landroid/icu/text/Collator;
    .locals 0

    .line 187
    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedCollator;->setMaxVariable(I)Landroid/icu/text/RuleBasedCollator;

    move-result-object p0

    return-object p0
.end method

.method public setMaxVariable(I)Landroid/icu/text/RuleBasedCollator;
    .locals 5

    const/16 v0, 0x1000

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    if-gt v0, p1, :cond_4

    const/16 v2, 0x1003

    if-gt p1, v2, :cond_4

    add-int/lit16 v2, p1, -0x1000

    .line 719
    :goto_0
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result v3

    if-ne v2, v3, :cond_1

    return-object p0

    .line 723
    :cond_1
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v3

    .line 724
    iget-object v4, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v4}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v4

    if-ne v4, v3, :cond_2

    if-gez v2, :cond_2

    return-object p0

    .line 729
    :cond_2
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v4

    if-ne p1, v1, :cond_3

    .line 732
    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result p1

    add-int/2addr p1, v0

    .line 734
    :cond_3
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v0

    .line 736
    iget p1, v3, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v4, v2, p1}, Landroid/icu/impl/coll/CollationSettings;->setMaxVariable(II)V

    .line 737
    iput-wide v0, v4, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    .line 738
    invoke-direct {p0, v4}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-object p0

    .line 717
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal max variable group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNumericCollation(Z)V
    .locals 2

    .line 868
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 870
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getNumericCollation()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 871
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    const/4 v1, 0x2

    .line 872
    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 873
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setNumericCollationDefault()V
    .locals 3

    .line 546
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 547
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 548
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    .line 549
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    const/4 v2, 0x2

    .line 550
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v2, v0}, Landroid/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    .line 551
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public varargs setReorderCodes([I)V
    .locals 5

    .line 889
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 890
    array-length v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 891
    aget v3, p1, v0

    const/16 v4, 0x67

    if-ne v3, v4, :cond_1

    move v1, v0

    :cond_1
    if-nez v1, :cond_2

    .line 894
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    .line 895
    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    array-length v3, v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    .line 896
    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    return-void

    .line 899
    :cond_3
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v3

    if-ne v1, v2, :cond_5

    .line 900
    aget v0, p1, v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 901
    iget-object p1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p1

    if-eq p1, v3, :cond_4

    .line 902
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object p1

    .line 903
    invoke-virtual {p1, v3}, Landroid/icu/impl/coll/CollationSettings;->copyReorderingFrom(Landroid/icu/impl/coll/CollationSettings;)V

    .line 904
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    :cond_4
    return-void

    .line 908
    :cond_5
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    if-nez v1, :cond_6

    .line 910
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    goto :goto_2

    .line 912
    :cond_6
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/coll/CollationSettings;->setReordering(Landroid/icu/impl/coll/CollationData;[I)V

    .line 914
    :goto_2
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setStrength(I)V
    .locals 1

    .line 690
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 691
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 692
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 693
    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationSettings;->setStrength(I)V

    .line 694
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setStrengthDefault()V
    .locals 2

    .line 531
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 532
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 533
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    .line 534
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    .line 535
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/CollationSettings;->setStrengthDefault(I)V

    .line 536
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setUpperCaseFirst(Z)V
    .locals 1

    .line 413
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 414
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isUpperCaseFirst()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 415
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    if-eqz p1, :cond_1

    const/16 p1, 0x300

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 416
    :goto_0
    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationSettings;->setCaseFirst(I)V

    .line 417
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setVariableTop(Ljava/lang/String;)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 781
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    if-eqz p1, :cond_2

    .line 782
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 785
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v0

    .line 787
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 788
    new-instance v1, Landroid/icu/impl/coll/UTF16CollationIterator;

    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v1, v3, v0, p1, v2}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    .line 789
    invoke-virtual {v1}, Landroid/icu/impl/coll/UTF16CollationIterator;->nextCE()J

    move-result-wide v2

    .line 790
    invoke-virtual {v1}, Landroid/icu/impl/coll/UTF16CollationIterator;->nextCE()J

    move-result-wide v0

    goto :goto_0

    .line 792
    :cond_0
    new-instance v1, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v1, v3, v0, p1, v2}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    .line 793
    invoke-virtual {v1}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextCE()J

    move-result-wide v2

    .line 794
    invoke-virtual {v1}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextCE()J

    move-result-wide v0

    :goto_0
    const-wide v4, 0x101000100L

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    cmp-long p1, v0, v4

    if-nez p1, :cond_1

    const/16 p1, 0x20

    ushr-long v0, v2, p1

    .line 799
    invoke-direct {p0, v0, v1}, Landroid/icu/text/RuleBasedCollator;->internalSetVariableTop(J)V

    .line 800
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/coll/CollationSettings;

    iget-wide p0, p0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    long-to-int p0, p0

    return p0

    .line 797
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Variable top argument string must map to exactly one collation element"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 783
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Variable top argument string can not be null or zero in length."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVariableTop(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 820
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 821
    invoke-direct {p0, v0, v1}, Landroid/icu/text/RuleBasedCollator;->internalSetVariableTop(J)V

    return-void
.end method
