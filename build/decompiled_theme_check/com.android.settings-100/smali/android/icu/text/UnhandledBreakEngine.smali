.class final Landroid/icu/text/UnhandledBreakEngine;
.super Ljava/lang/Object;
.source "UnhandledBreakEngine.java"

# interfaces
.implements Landroid/icu/text/LanguageBreakEngine;


# instance fields
.field final fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Landroid/icu/text/UnicodeSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    .line 41
    :goto_0
    iget-object v1, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 42
    iget-object v1, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public findBreaks(Ljava/text/CharacterIterator;IIILandroid/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 0

    if-ltz p4, :cond_0

    .line 55
    iget-object p2, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result p2

    if-ge p4, p2, :cond_0

    .line 56
    iget-object p0, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, p4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/UnicodeSet;

    .line 57
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result p2

    .line 58
    :goto_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result p4

    if-ge p4, p3, :cond_0

    invoke-virtual {p0, p2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 59
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 60
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public handleChar(II)V
    .locals 3

    if-ltz p2, :cond_0

    .line 73
    iget-object v0, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    .line 75
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x100a

    .line 76
    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result p1

    .line 77
    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 78
    invoke-virtual {v2, v1, p1}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    .line 79
    invoke-virtual {v2, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 80
    iget-object p0, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, p2, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public handles(II)Z
    .locals 1

    if-ltz p2, :cond_0

    .line 48
    iget-object v0, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object p0, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 49
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
