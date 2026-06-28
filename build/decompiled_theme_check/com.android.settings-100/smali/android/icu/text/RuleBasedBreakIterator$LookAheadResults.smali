.class Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;
.super Ljava/lang/Object;
.source "RuleBasedBreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedBreakIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookAheadResults"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field fKeys:[I

.field fPositions:[I

.field fUsedSlotLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 729
    const-class v0, Landroid/icu/text/RuleBasedBreakIterator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 735
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->fUsedSlotLimit:I

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 736
    iput-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->fPositions:[I

    new-array v0, v0, [I

    .line 737
    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->fKeys:[I

    return-void
.end method


# virtual methods
.method getPosition(I)I
    .locals 2

    const/4 v0, 0x0

    .line 741
    :goto_0
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->fUsedSlotLimit:I

    if-ge v0, v1, :cond_1

    .line 742
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->fKeys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 743
    iget-object p0, p0, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->fPositions:[I

    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 769
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->fUsedSlotLimit:I

    return-void
.end method

.method setPosition(II)V
    .locals 2

    const/4 v0, 0x0

    .line 752
    :goto_0
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->fUsedSlotLimit:I

    if-ge v0, v1, :cond_1

    .line 753
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->fKeys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 754
    iget-object p0, p0, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->fPositions:[I

    aput p2, p0, v0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    const/4 v0, 0x7

    .line 762
    :cond_2
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->fKeys:[I

    aput p1, v1, v0

    .line 763
    iget-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->fPositions:[I

    aput p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 765
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->fUsedSlotLimit:I

    return-void
.end method
