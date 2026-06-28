.class public Landroid/icu/impl/Trie2$CharSequenceIterator;
.super Ljava/lang/Object;
.source "Trie2.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Trie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CharSequenceIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/icu/impl/Trie2$CharSequenceValues;",
        ">;"
    }
.end annotation


# instance fields
.field private fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

.field private index:I

.field private text:Ljava/lang/CharSequence;

.field private textLength:I

.field final synthetic this$0:Landroid/icu/impl/Trie2;


# direct methods
.method constructor <init>(Landroid/icu/impl/Trie2;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 539
    iput-object p1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->this$0:Landroid/icu/impl/Trie2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    new-instance p1, Landroid/icu/impl/Trie2$CharSequenceValues;

    invoke-direct {p1}, Landroid/icu/impl/Trie2$CharSequenceValues;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    .line 540
    iput-object p2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->text:Ljava/lang/CharSequence;

    .line 541
    iget-object p1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->text:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->textLength:I

    .line 542
    invoke-virtual {p0, p3}, Landroid/icu/impl/Trie2$CharSequenceIterator;->set(I)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 561
    iget v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    iget p0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->textLength:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasPrevious()Z
    .locals 0

    .line 566
    iget p0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Landroid/icu/impl/Trie2$CharSequenceValues;
    .locals 4

    .line 572
    iget-object v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 573
    iget-object v1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->this$0:Landroid/icu/impl/Trie2;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Trie2;->get(I)I

    move-result v1

    .line 575
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    iget v3, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    iput v3, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->index:I

    .line 576
    iput v0, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->codePoint:I

    .line 577
    iput v1, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->value:I

    add-int/lit8 v3, v3, 0x1

    .line 578
    iput v3, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_0

    .line 580
    iget v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    .line 582
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 535
    invoke-virtual {p0}, Landroid/icu/impl/Trie2$CharSequenceIterator;->next()Landroid/icu/impl/Trie2$CharSequenceValues;

    move-result-object p0

    return-object p0
.end method

.method public previous()Landroid/icu/impl/Trie2$CharSequenceValues;
    .locals 3

    .line 587
    iget-object v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 588
    iget-object v1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->this$0:Landroid/icu/impl/Trie2;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Trie2;->get(I)I

    move-result v1

    .line 589
    iget v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    const/high16 v2, 0x10000

    if-lt v0, v2, :cond_0

    .line 591
    iget v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    .line 593
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    iget p0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    iput p0, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->index:I

    .line 594
    iput v0, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->codePoint:I

    .line 595
    iput v1, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->value:I

    return-object v2
.end method

.method public remove()V
    .locals 1

    .line 606
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Trie2.CharSequenceIterator does not support remove()."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 552
    iget v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->textLength:I

    if-gt p1, v0, :cond_0

    .line 555
    iput p1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    return-void

    .line 553
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
