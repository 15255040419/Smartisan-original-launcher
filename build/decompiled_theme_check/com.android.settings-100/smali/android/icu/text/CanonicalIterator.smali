.class public final Landroid/icu/text/CanonicalIterator;
.super Ljava/lang/Object;
.source "CanonicalIterator.java"


# static fields
.field private static PROGRESS:Z = false

.field private static final SET_WITH_NULL_STRING:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SKIP_ZEROS:Z = true


# instance fields
.field private transient buffer:Ljava/lang/StringBuilder;

.field private current:[I

.field private done:Z

.field private final nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field private final nfd:Landroid/icu/text/Normalizer2;

.field private pieces:[[Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 441
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/icu/text/CanonicalIterator;->SET_WITH_NULL_STRING:Ljava/util/Set;

    .line 443
    sget-object v0, Landroid/icu/text/CanonicalIterator;->SET_WITH_NULL_STRING:Ljava/util/Set;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    .line 53
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    .line 54
    iget-object v1, v0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    iput-object v1, p0, Landroid/icu/text/CanonicalIterator;->nfd:Landroid/icu/text/Normalizer2;

    .line 55
    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0}, Landroid/icu/impl/Normalizer2Impl;->ensureCanonIterData()Landroid/icu/impl/Normalizer2Impl;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CanonicalIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    .line 56
    invoke-virtual {p0, p1}, Landroid/icu/text/CanonicalIterator;->setSource(Ljava/lang/String;)V

    return-void
.end method

.method private extract(ILjava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/StringBuffer;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 365
    sget-boolean v0, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " extract: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 368
    :cond_0
    iget-object v0, p0, Landroid/icu/text/CanonicalIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 370
    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    .line 377
    invoke-static {v0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 378
    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 380
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v4, v3

    move v3, v2

    move v2, p3

    .line 382
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 383
    invoke-static {p2, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 385
    sget-boolean v3, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  matches: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 386
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v4, v3, :cond_3

    .line 387
    invoke-static {v5}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    goto :goto_2

    .line 391
    :cond_3
    invoke-static {v0, v4}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v3

    .line 392
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_1

    .line 395
    :cond_4
    sget-boolean v6, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v6, :cond_5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  buffer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 397
    :cond_5
    invoke-static {p4, v5}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 382
    :goto_1
    invoke-static {v5}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_2
    const/4 v2, 0x0

    if-nez v0, :cond_7

    return-object v2

    .line 412
    :cond_7
    sget-boolean v0, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Matches"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 413
    :cond_8
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_9

    sget-object p0, Landroid/icu/text/CanonicalIterator;->SET_WITH_NULL_STRING:Ljava/util/Set;

    return-object p0

    .line 414
    :cond_9
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/icu/text/Normalizer;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_a

    return-object v2

    .line 426
    :cond_a
    invoke-direct {p0, p4}, Landroid/icu/text/CanonicalIterator;->getEquivalents2(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private getEquivalents(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 247
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 248
    invoke-direct {p0, p1}, Landroid/icu/text/CanonicalIterator;->getEquivalents2(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    .line 249
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 254
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 255
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 256
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 257
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 258
    sget-boolean v3, Landroid/icu/text/CanonicalIterator;->SKIP_ZEROS:Z

    invoke-static {v2, v3, v1}, Landroid/icu/text/CanonicalIterator;->permute(Ljava/lang/String;ZLjava/util/Set;)V

    .line 259
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 260
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    .line 267
    invoke-static {v3, p1, v4}, Landroid/icu/text/Normalizer;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    .line 269
    sget-boolean v4, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v4, :cond_2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding Permutation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_3
    sget-boolean v4, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v4, :cond_1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-Skipping Permutation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 280
    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method private getEquivalents2(Ljava/lang/String;)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 289
    sget-boolean v1, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 291
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 293
    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 297
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 300
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 301
    iget-object v6, p0, Landroid/icu/text/CanonicalIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v6, v5, v2}, Landroid/icu/impl/Normalizer2Impl;->getCanonStartSet(ILandroid/icu/text/UnicodeSet;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_3

    .line 305
    :cond_1
    new-instance v6, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v6, v2}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 306
    iget v7, v6, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 307
    invoke-direct {p0, v7, p1, v4, v1}, Landroid/icu/text/CanonicalIterator;->extract(ILjava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Set;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_1

    .line 313
    :cond_3
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 314
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 315
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 316
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 297
    :cond_4
    :goto_3
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static permute(Ljava/lang/String;ZLjava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/text/UTF16;->countCodePoint(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 171
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 178
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 179
    invoke-static {p0, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v3

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    .line 184
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 190
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-static {v4, p1, v0}, Landroid/icu/text/CanonicalIterator;->permute(Ljava/lang/String;ZLjava/util/Set;)V

    .line 195
    invoke-static {p0, v2}, Landroid/icu/text/UTF16;->valueOf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 197
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 199
    invoke-interface {p2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 178
    :cond_2
    :goto_2
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getSource()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    return-object p0
.end method

.method public next()Ljava/lang/String;
    .locals 7

    .line 84
    iget-boolean v0, p0, Landroid/icu/text/CanonicalIterator;->done:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_0
    iget-object v0, p0, Landroid/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, v1

    .line 89
    :goto_0
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 90
    iget-object v3, p0, Landroid/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    aget-object v2, v2, v0

    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    aget v4, v4, v0

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Landroid/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1
    if-gez v2, :cond_2

    .line 98
    iput-boolean v3, p0, Landroid/icu/text/CanonicalIterator;->done:Z

    goto :goto_2

    .line 101
    :cond_2
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    aget v5, v4, v2

    add-int/2addr v5, v3

    aput v5, v4, v2

    .line 102
    aget v5, v4, v2

    iget-object v6, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    aget-object v6, v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_3

    :goto_2
    return-object v0

    .line 103
    :cond_3
    aput v1, v4, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Landroid/icu/text/CanonicalIterator;->done:Z

    move v1, v0

    .line 72
    :goto_0
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 73
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 5

    .line 114
    iget-object v0, p0, Landroid/icu/text/CanonicalIterator;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Landroid/icu/text/CanonicalIterator;->done:Z

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-array p1, v1, [[Ljava/lang/String;

    .line 119
    iput-object p1, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    new-array p1, v1, [I

    .line 120
    iput-object p1, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    .line 121
    iget-object p0, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    const-string p1, ""

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    return-void

    .line 126
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->findOffsetFromCodePoint(Ljava/lang/String;I)I

    move-result v1

    move v2, v0

    .line 135
    :goto_0
    iget-object v3, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 136
    iget-object v3, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 137
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v4, v3}, Landroid/icu/impl/Normalizer2Impl;->isCanonSegmentStarter(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 135
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 142
    :cond_2
    iget-object v3, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    .line 146
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    .line 147
    :goto_1
    iget-object v1, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 148
    sget-boolean v1, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "SEGMENT"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    :cond_3
    iget-object v1, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/icu/text/CanonicalIterator;->getEquivalents(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
