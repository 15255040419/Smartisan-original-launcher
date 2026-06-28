.class Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;
.super Landroid/icu/text/RuleBasedCollator$NFDIterator;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTF16NFDIterator"
.end annotation


# instance fields
.field protected pos:I

.field protected s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1510
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator$NFDIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected nextRawCodePoint()I
    .locals 3

    .line 1519
    iget v0, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1520
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1521
    iget v1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    return v0
.end method

.method setText(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1512
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->reset()V

    .line 1513
    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->s:Ljava/lang/CharSequence;

    .line 1514
    iput p2, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    return-void
.end method
