.class public final Landroid/icu/text/CaseMap$Title;
.super Landroid/icu/text/CaseMap;
.source "CaseMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CaseMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Title"
.end annotation


# static fields
.field private static final DEFAULT:Landroid/icu/text/CaseMap$Title;

.field private static final OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Title;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 196
    new-instance v0, Landroid/icu/text/CaseMap$Title;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Title;-><init>(I)V

    sput-object v0, Landroid/icu/text/CaseMap$Title;->DEFAULT:Landroid/icu/text/CaseMap$Title;

    .line 197
    new-instance v0, Landroid/icu/text/CaseMap$Title;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Title;-><init>(I)V

    sput-object v0, Landroid/icu/text/CaseMap$Title;->OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Title;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, p1, v0}, Landroid/icu/text/CaseMap;-><init>(ILandroid/icu/text/CaseMap$1;)V

    return-void
.end method

.method static synthetic access$200()Landroid/icu/text/CaseMap$Title;
    .locals 1

    .line 195
    sget-object v0, Landroid/icu/text/CaseMap$Title;->DEFAULT:Landroid/icu/text/CaseMap$Title;

    return-object v0
.end method


# virtual methods
.method public adjustToCased()Landroid/icu/text/CaseMap$Title;
    .locals 2

    .line 304
    new-instance v0, Landroid/icu/text/CaseMap$Title;

    iget p0, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    const/16 v1, 0x400

    invoke-static {p0, v1}, Landroid/icu/impl/CaseMapImpl;->addTitleAdjustmentOption(II)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/icu/text/CaseMap$Title;-><init>(I)V

    return-object v0
.end method

.method public apply(Ljava/util/Locale;Landroid/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Locale;",
            "Landroid/icu/text/BreakIterator;",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Landroid/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 368
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 370
    :cond_0
    iget v0, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    invoke-static {p1, v0, p2}, Landroid/icu/impl/CaseMapImpl;->getTitleBreakIterator(Ljava/util/Locale;ILandroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;

    move-result-object v3

    .line 371
    invoke-virtual {v3, p3}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/CharSequence;)V

    .line 373
    invoke-static {p1}, Landroid/icu/text/CaseMap;->access$500(Ljava/util/Locale;)I

    move-result v1

    iget v2, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 372
    invoke-static/range {v1 .. v6}, Landroid/icu/impl/CaseMapImpl;->toTitle(IILandroid/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/util/Locale;Landroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 332
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 334
    :cond_0
    iget v0, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    invoke-static {p1, v0, p2}, Landroid/icu/impl/CaseMapImpl;->getTitleBreakIterator(Ljava/util/Locale;ILandroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;

    move-result-object p2

    .line 335
    invoke-virtual {p2, p3}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/CharSequence;)V

    .line 336
    invoke-static {p1}, Landroid/icu/text/CaseMap;->access$500(Ljava/util/Locale;)I

    move-result p1

    iget p0, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    invoke-static {p1, p0, p2, p3}, Landroid/icu/impl/CaseMapImpl;->toTitle(IILandroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public noBreakAdjustment()Landroid/icu/text/CaseMap$Title;
    .locals 2

    .line 280
    new-instance v0, Landroid/icu/text/CaseMap$Title;

    iget p0, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    const/16 v1, 0x200

    invoke-static {p0, v1}, Landroid/icu/impl/CaseMapImpl;->addTitleAdjustmentOption(II)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/icu/text/CaseMap$Title;-><init>(I)V

    return-object v0
.end method

.method public noLowercase()Landroid/icu/text/CaseMap$Title;
    .locals 1

    .line 261
    new-instance v0, Landroid/icu/text/CaseMap$Title;

    iget p0, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    or-int/lit16 p0, p0, 0x100

    invoke-direct {v0, p0}, Landroid/icu/text/CaseMap$Title;-><init>(I)V

    return-object v0
.end method

.method public omitUnchangedText()Landroid/icu/text/CaseMap$Title;
    .locals 2

    .line 240
    iget v0, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    new-instance v0, Landroid/icu/text/CaseMap$Title;

    iget p0, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    or-int/2addr p0, v1

    invoke-direct {v0, p0}, Landroid/icu/text/CaseMap$Title;-><init>(I)V

    return-object v0

    .line 241
    :cond_1
    :goto_0
    sget-object p0, Landroid/icu/text/CaseMap$Title;->OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Title;

    return-object p0
.end method

.method public bridge synthetic omitUnchangedText()Landroid/icu/text/CaseMap;
    .locals 0

    .line 195
    invoke-virtual {p0}, Landroid/icu/text/CaseMap$Title;->omitUnchangedText()Landroid/icu/text/CaseMap$Title;

    move-result-object p0

    return-object p0
.end method

.method public sentences()Landroid/icu/text/CaseMap$Title;
    .locals 2

    .line 230
    new-instance v0, Landroid/icu/text/CaseMap$Title;

    iget p0, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    const/16 v1, 0x40

    invoke-static {p0, v1}, Landroid/icu/impl/CaseMapImpl;->addTitleIteratorOption(II)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/icu/text/CaseMap$Title;-><init>(I)V

    return-object v0
.end method

.method public wholeString()Landroid/icu/text/CaseMap$Title;
    .locals 2

    .line 213
    new-instance v0, Landroid/icu/text/CaseMap$Title;

    iget p0, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/icu/impl/CaseMapImpl;->addTitleIteratorOption(II)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/icu/text/CaseMap$Title;-><init>(I)V

    return-object v0
.end method
