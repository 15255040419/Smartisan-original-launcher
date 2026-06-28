.class final Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;
.super Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FCDUTF16NFDIterator"
.end annotation


# instance fields
.field private str:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1530
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;-><init>()V

    return-void
.end method


# virtual methods
.method setText(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/CharSequence;I)V
    .locals 5

    .line 1532
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->reset()V

    .line 1533
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move-result v0

    .line 1534
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1535
    iput-object p2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->s:Ljava/lang/CharSequence;

    .line 1536
    iput p3, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->pos:I

    goto :goto_1

    .line 1538
    :cond_0
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1541
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1543
    :goto_0
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1544
    new-instance v1, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, p3

    invoke-direct {v1, p1, v3, v4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    .line 1545
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    .line 1546
    iget-object p1, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->s:Ljava/lang/CharSequence;

    .line 1547
    iput v2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->pos:I

    :goto_1
    return-void
.end method
