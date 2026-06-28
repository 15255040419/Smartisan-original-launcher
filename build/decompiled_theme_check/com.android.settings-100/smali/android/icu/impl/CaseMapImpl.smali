.class public final Landroid/icu/impl/CaseMapImpl;
.super Ljava/lang/Object;
.source "CaseMapImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/CaseMapImpl$GreekUpper;,
        Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;,
        Landroid/icu/impl/CaseMapImpl$StringContextIterator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LNS:I = 0xf020e2e

.field public static final OMIT_UNCHANGED_TEXT:I = 0x4000

.field private static final TITLECASE_ADJUSTMENT_MASK:I = 0x600

.field public static final TITLECASE_ADJUST_TO_CASED:I = 0x400

.field private static final TITLECASE_ITERATOR_MASK:I = 0xe0

.field public static final TITLECASE_SENTENCES:I = 0x40

.field public static final TITLECASE_WHOLE_STRING:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(ILjava/lang/Appendable;IILandroid/icu/text/Edits;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-static {p0, p1, p2, p3, p4}, Landroid/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILandroid/icu/text/Edits;)V

    return-void
.end method

.method public static addTitleAdjustmentOption(II)I
    .locals 1

    and-int/lit16 v0, p0, 0x600

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "multiple titlecasing index adjustment options"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    or-int/2addr p0, p1

    return p0
.end method

.method public static addTitleIteratorOption(II)I
    .locals 1

    and-int/lit16 v0, p0, 0xe0

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "multiple titlecasing iterator options"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    or-int/2addr p0, p1

    return p0
.end method

.method private static appendCodePoint(Ljava/lang/Appendable;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    int-to-char p1, p1

    .line 338
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0xd7c0

    shr-int/lit8 v1, p1, 0xa

    add-int/2addr v1, v0

    int-to-char v0, v1

    .line 341
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const v0, 0xdc00

    and-int/lit16 p1, p1, 0x3ff

    add-int/2addr p1, v0

    int-to-char p1, p1

    .line 342
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 p0, 0x2

    return p0
.end method

.method private static appendResult(ILjava/lang/Appendable;IILandroid/icu/text/Edits;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p0, :cond_2

    if-eqz p4, :cond_0

    .line 357
    invoke-virtual {p4, p2}, Landroid/icu/text/Edits;->addUnchanged(I)V

    :cond_0
    and-int/lit16 p2, p3, 0x4000

    if-eqz p2, :cond_1

    return-void

    :cond_1
    not-int p0, p0

    .line 362
    invoke-static {p1, p0}, Landroid/icu/impl/CaseMapImpl;->appendCodePoint(Ljava/lang/Appendable;I)I

    goto :goto_0

    :cond_2
    const/16 p3, 0x1f

    if-gt p0, p3, :cond_3

    if-eqz p4, :cond_4

    .line 366
    invoke-virtual {p4, p2, p0}, Landroid/icu/text/Edits;->addReplace(II)V

    goto :goto_0

    .line 370
    :cond_3
    invoke-static {p1, p0}, Landroid/icu/impl/CaseMapImpl;->appendCodePoint(Ljava/lang/Appendable;I)I

    move-result p0

    if-eqz p4, :cond_4

    .line 372
    invoke-virtual {p4, p2, p0}, Landroid/icu/text/Edits;->addReplace(II)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static final appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILandroid/icu/text/Edits;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_2

    if-eqz p5, :cond_0

    .line 381
    invoke-virtual {p5, p2}, Landroid/icu/text/Edits;->addUnchanged(I)V

    :cond_0
    and-int/lit16 p4, p4, 0x4000

    if-eqz p4, :cond_1

    return-void

    :cond_1
    add-int/2addr p2, p1

    .line 386
    invoke-interface {p3, p0, p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    :cond_2
    return-void
.end method

.method private static applyEdits(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/Edits;)Ljava/lang/String;
    .locals 3

    .line 391
    invoke-virtual {p2}, Landroid/icu/text/Edits;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p2}, Landroid/icu/text/Edits;->lengthDelta()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 395
    invoke-virtual {p2}, Landroid/icu/text/Edits;->getCoarseIterator()Landroid/icu/text/Edits$Iterator;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Landroid/icu/text/Edits$Iterator;->next()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 396
    invoke-virtual {p2}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    invoke-virtual {p2}, Landroid/icu/text/Edits$Iterator;->replacementIndex()I

    move-result v1

    .line 398
    invoke-virtual {p2}, Landroid/icu/text/Edits$Iterator;->newLength()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 400
    :cond_1
    invoke-virtual {p2}, Landroid/icu/text/Edits$Iterator;->sourceIndex()I

    move-result v1

    .line 401
    invoke-virtual {p2}, Landroid/icu/text/Edits$Iterator;->oldLength()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, p0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 404
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fold(ILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(I",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Landroid/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 634
    :try_start_0
    invoke-virtual {p3}, Landroid/icu/text/Edits;->reset()V

    .line 636
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 638
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 639
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 641
    sget-object v4, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v4, v2, p2, p0}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v2

    .line 642
    invoke-static {v2, p2, v3, p0, p3}, Landroid/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILandroid/icu/text/Edits;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object p2

    :catch_0
    move-exception p0

    .line 646
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static fold(ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 615
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    and-int/lit16 v0, p0, 0x4000

    if-nez v0, :cond_1

    .line 616
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 617
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 621
    :cond_0
    new-instance v0, Landroid/icu/text/Edits;

    invoke-direct {v0}, Landroid/icu/text/Edits;-><init>()V

    or-int/lit16 p0, p0, 0x4000

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v1, v0}, Landroid/icu/impl/CaseMapImpl;->fold(ILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 624
    invoke-static {p1, p0, v0}, Landroid/icu/impl/CaseMapImpl;->applyEdits(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/Edits;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 626
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/icu/impl/CaseMapImpl;->fold(ILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTitleBreakIterator(Landroid/icu/util/ULocale;ILandroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;
    .locals 0

    and-int/lit16 p1, p1, 0xe0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "titlecasing iterator option together with an explicit iterator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p2, :cond_5

    if-eqz p1, :cond_4

    const/16 p2, 0x20

    if-eq p1, p2, :cond_3

    const/16 p2, 0x40

    if-ne p1, p2, :cond_2

    .line 253
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object p2

    goto :goto_1

    .line 256
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unknown titlecasing iterator option"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 250
    :cond_3
    new-instance p2, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;

    const/4 p0, 0x0

    invoke-direct {p2, p0}, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;-><init>(Landroid/icu/impl/CaseMapImpl$1;)V

    goto :goto_1

    .line 247
    :cond_4
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object p2

    :cond_5
    :goto_1
    return-object p2
.end method

.method public static getTitleBreakIterator(Ljava/util/Locale;ILandroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;
    .locals 0

    and-int/lit16 p1, p1, 0xe0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "titlecasing iterator option together with an explicit iterator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p2, :cond_5

    if-eqz p1, :cond_4

    const/16 p2, 0x20

    if-eq p1, p2, :cond_3

    const/16 p2, 0x40

    if-ne p1, p2, :cond_2

    .line 228
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object p2

    goto :goto_1

    .line 231
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unknown titlecasing iterator option"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 225
    :cond_3
    new-instance p2, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;

    const/4 p0, 0x0

    invoke-direct {p2, p0}, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;-><init>(Landroid/icu/impl/CaseMapImpl$1;)V

    goto :goto_1

    .line 222
    :cond_4
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object p2

    :cond_5
    :goto_1
    return-object p2
.end method

.method private static internalToLower(IILandroid/icu/impl/CaseMapImpl$StringContextIterator;Ljava/lang/Appendable;Landroid/icu/text/Edits;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    :goto_0
    invoke-virtual {p2}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    move-result v0

    if-ltz v0, :cond_0

    .line 411
    sget-object v1, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v1, v0, p2, p3, p0}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v0

    .line 412
    invoke-virtual {p2}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->getCPLength()I

    move-result v1

    invoke-static {v0, p3, v1, p1, p4}, Landroid/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILandroid/icu/text/Edits;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static isLNS(I)Z
    .locals 4

    .line 198
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v2, v1, v0

    const v3, 0xf020e2e

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 199
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    .line 201
    invoke-virtual {v0, p0}, Landroid/icu/impl/UCaseProps;->getType(I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static toLower(IILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(II",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Landroid/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 437
    :try_start_0
    invoke-virtual {p4}, Landroid/icu/text/Edits;->reset()V

    .line 439
    :cond_0
    new-instance v0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;

    invoke-direct {v0, p2}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;-><init>(Ljava/lang/CharSequence;)V

    .line 440
    invoke-static {p0, p1, v0, p3, p4}, Landroid/icu/impl/CaseMapImpl;->internalToLower(IILandroid/icu/impl/CaseMapImpl$StringContextIterator;Ljava/lang/Appendable;Landroid/icu/text/Edits;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p0

    .line 443
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static toLower(IILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 417
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    and-int/lit16 v0, p1, 0x4000

    if-nez v0, :cond_1

    .line 418
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 419
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 423
    :cond_0
    new-instance v0, Landroid/icu/text/Edits;

    invoke-direct {v0}, Landroid/icu/text/Edits;-><init>()V

    or-int/lit16 p1, p1, 0x4000

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2, v1, v0}, Landroid/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 426
    invoke-static {p2, p0, v0}, Landroid/icu/impl/CaseMapImpl;->applyEdits(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/Edits;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 428
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 429
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 428
    invoke-static {p0, p1, p2, v0, v1}, Landroid/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toTitle(IILandroid/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(II",
            "Landroid/icu/text/BreakIterator;",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Landroid/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    move/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    if-eqz v10, :cond_0

    .line 508
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Landroid/icu/text/Edits;->reset()V

    .line 512
    :cond_0
    new-instance v11, Landroid/icu/impl/CaseMapImpl$StringContextIterator;

    invoke-direct {v11, v8}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;-><init>(Ljava/lang/CharSequence;)V

    .line 513
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v14, 0x1

    move v1, v14

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v12, :cond_10

    if-eqz v1, :cond_1

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/icu/text/BreakIterator;->first()I

    move-result v1

    const/4 v15, 0x0

    goto :goto_1

    .line 525
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/icu/text/BreakIterator;->next()I

    move-result v3

    move v15, v1

    move v1, v3

    :goto_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    if-le v1, v12, :cond_2

    goto :goto_2

    :cond_2
    move v6, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v12

    :goto_3
    if-ge v2, v6, :cond_e

    .line 540
    invoke-virtual {v11, v6}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->setLimit(I)V

    .line 541
    invoke-virtual {v11}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    move-result v1

    and-int/lit16 v3, v7, 0x200

    if-nez v3, :cond_8

    and-int/lit16 v3, v7, 0x400

    if-eqz v3, :cond_4

    move v3, v14

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_5

    .line 549
    sget-object v4, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    .line 550
    invoke-virtual {v4, v1}, Landroid/icu/impl/UCaseProps;->getType(I)I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_5

    .line 551
    :cond_5
    invoke-static {v1}, Landroid/icu/impl/CaseMapImpl;->isLNS(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 552
    :goto_5
    invoke-virtual {v11}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    move-result v1

    if-ltz v1, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v16, v1

    .line 555
    invoke-virtual {v11}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->getCPStart()I

    move-result v5

    if-ge v2, v5, :cond_7

    sub-int v3, v5, v2

    move-object/from16 v1, p3

    move-object/from16 v4, p4

    move/from16 v17, v5

    move/from16 v5, p1

    move v13, v6

    move-object/from16 v6, p5

    .line 557
    invoke-static/range {v1 .. v6}, Landroid/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILandroid/icu/text/Edits;)V

    goto :goto_6

    :cond_7
    move/from16 v17, v5

    move v13, v6

    :goto_6
    move/from16 v1, v16

    move/from16 v2, v17

    goto :goto_7

    :cond_8
    move v13, v6

    :goto_7
    if-ge v2, v13, :cond_f

    .line 562
    invoke-virtual {v11}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->getCPLimit()I

    move-result v16

    .line 564
    sget-object v3, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v3, v1, v11, v9, v0}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v1

    .line 565
    invoke-virtual {v11}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->getCPLength()I

    move-result v3

    invoke-static {v1, v9, v3, v7, v10}, Landroid/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILandroid/icu/text/Edits;)V

    add-int/lit8 v3, v2, 0x1

    if-ge v3, v13, :cond_c

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    .line 569
    invoke-interface {v8, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x69

    if-eq v1, v2, :cond_9

    const/16 v2, 0x49

    if-ne v1, v2, :cond_c

    .line 571
    :cond_9
    invoke-interface {v8, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x6a

    const/16 v4, 0x4a

    if-ne v1, v2, :cond_b

    .line 573
    invoke-interface {v9, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    if-eqz v10, :cond_a

    .line 575
    invoke-virtual {v10, v14, v14}, Landroid/icu/text/Edits;->addReplace(II)V

    .line 577
    :cond_a
    invoke-virtual {v11}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    :cond_b
    if-ne v1, v4, :cond_c

    const/4 v4, 0x1

    move-object/from16 v1, p3

    move v2, v3

    move v3, v4

    move-object/from16 v4, p4

    move/from16 v5, p1

    move-object/from16 v6, p5

    .line 583
    invoke-static/range {v1 .. v6}, Landroid/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILandroid/icu/text/Edits;)V

    .line 584
    invoke-virtual {v11}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    goto :goto_8

    :cond_c
    :goto_9
    move/from16 v2, v16

    if-ge v2, v13, :cond_f

    and-int/lit16 v1, v7, 0x100

    if-nez v1, :cond_d

    .line 596
    invoke-static {v0, v7, v11, v9, v10}, Landroid/icu/impl/CaseMapImpl;->internalToLower(IILandroid/icu/impl/CaseMapImpl$StringContextIterator;Ljava/lang/Appendable;Landroid/icu/text/Edits;)V

    goto :goto_a

    :cond_d
    sub-int v3, v13, v2

    move-object/from16 v1, p3

    move-object/from16 v4, p4

    move/from16 v5, p1

    move-object/from16 v6, p5

    .line 599
    invoke-static/range {v1 .. v6}, Landroid/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILandroid/icu/text/Edits;)V

    .line 600
    invoke-virtual {v11}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->moveToLimit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :cond_e
    move v13, v6

    :cond_f
    :goto_a
    move v2, v13

    move v1, v15

    goto/16 :goto_0

    :cond_10
    return-object v9

    :catch_0
    move-exception v0

    .line 610
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toTitle(IILandroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7

    .line 486
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    and-int/lit16 v0, p1, 0x4000

    if-nez v0, :cond_1

    .line 487
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 488
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 492
    :cond_0
    new-instance v6, Landroid/icu/text/Edits;

    invoke-direct {v6}, Landroid/icu/text/Edits;-><init>()V

    or-int/lit16 v1, p1, 0x4000

    .line 493
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/CaseMapImpl;->toTitle(IILandroid/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 496
    invoke-static {p3, p0, v6}, Landroid/icu/impl/CaseMapImpl;->applyEdits(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/Edits;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 498
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 499
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 498
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/CaseMapImpl;->toTitle(IILandroid/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(II",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Landroid/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 468
    :try_start_0
    invoke-virtual {p4}, Landroid/icu/text/Edits;->reset()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 471
    invoke-static {p1, p2, p3, p4}, Landroid/icu/impl/CaseMapImpl$GreekUpper;->access$100(ILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0

    .line 473
    :cond_1
    new-instance v0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;

    invoke-direct {v0, p2}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;-><init>(Ljava/lang/CharSequence;)V

    .line 475
    :goto_1
    invoke-virtual {v0}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    move-result p2

    if-ltz p2, :cond_2

    .line 476
    sget-object v1, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v1, p2, v0, p3, p0}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p2

    .line 477
    invoke-virtual {v0}, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->getCPLength()I

    move-result v1

    invoke-static {p2, p3, v1, p1, p4}, Landroid/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILandroid/icu/text/Edits;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    return-object p3

    .line 481
    :goto_2
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static toUpper(IILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 448
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    and-int/lit16 v0, p1, 0x4000

    if-nez v0, :cond_1

    .line 449
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 450
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 454
    :cond_0
    new-instance v0, Landroid/icu/text/Edits;

    invoke-direct {v0}, Landroid/icu/text/Edits;-><init>()V

    or-int/lit16 p1, p1, 0x4000

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2, v1, v0}, Landroid/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 457
    invoke-static {p2, p0, v0}, Landroid/icu/impl/CaseMapImpl;->applyEdits(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/Edits;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 459
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 460
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 459
    invoke-static {p0, p1, p2, v0, v1}, Landroid/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
