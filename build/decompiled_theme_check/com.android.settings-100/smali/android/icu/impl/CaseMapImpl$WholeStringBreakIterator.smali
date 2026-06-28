.class final Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;
.super Landroid/icu/text/BreakIterator;
.source "CaseMapImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CaseMapImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WholeStringBreakIterator"
.end annotation


# instance fields
.field private length:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 267
    invoke-direct {p0}, Landroid/icu/text/BreakIterator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/CaseMapImpl$1;)V
    .locals 0

    .line 267
    invoke-direct {p0}, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;-><init>()V

    return-void
.end method

.method private static notImplemented()V
    .locals 2

    .line 271
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "should not occur"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public current()I
    .locals 0

    .line 310
    invoke-static {}, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->notImplemented()V

    const/4 p0, 0x0

    return p0
.end method

.method public first()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public following(I)I
    .locals 0

    .line 304
    invoke-static {}, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->notImplemented()V

    const/4 p0, 0x0

    return p0
.end method

.method public getText()Ljava/text/CharacterIterator;
    .locals 0

    .line 316
    invoke-static {}, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->notImplemented()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public last()I
    .locals 0

    .line 281
    invoke-static {}, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->notImplemented()V

    const/4 p0, 0x0

    return p0
.end method

.method public next()I
    .locals 0

    .line 293
    iget p0, p0, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->length:I

    return p0
.end method

.method public next(I)I
    .locals 0

    .line 287
    invoke-static {}, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->notImplemented()V

    const/4 p0, 0x0

    return p0
.end method

.method public previous()I
    .locals 0

    .line 298
    invoke-static {}, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->notImplemented()V

    const/4 p0, 0x0

    return p0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 327
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->length:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 332
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->length:I

    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 0

    .line 322
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result p1

    iput p1, p0, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->length:I

    return-void
.end method
