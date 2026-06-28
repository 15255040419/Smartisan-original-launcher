.class final Landroid/icu/text/SearchIterator$Search;
.super Ljava/lang/Object;
.source "SearchIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SearchIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Search"
.end annotation


# instance fields
.field elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

.field internalBreakIter_:Landroid/icu/text/BreakIterator;

.field isCanonicalMatch_:Z

.field isForwardSearching_:Z

.field isOverlap_:Z

.field matchedIndex_:I

.field reset_:Z

.field final synthetic this$0:Landroid/icu/text/SearchIterator;


# direct methods
.method constructor <init>(Landroid/icu/text/SearchIterator;)V
    .locals 0

    .line 95
    iput-object p1, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method beginIndex()I
    .locals 1

    .line 143
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 146
    :cond_0
    iget-object p0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iget-object p0, p0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result p0

    return p0
.end method

.method breakIter()Landroid/icu/text/BreakIterator;
    .locals 0

    .line 116
    iget-object p0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iget-object p0, p0, Landroid/icu/text/SearchIterator;->breakIterator:Landroid/icu/text/BreakIterator;

    return-object p0
.end method

.method endIndex()I
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 153
    :cond_0
    iget-object p0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iget-object p0, p0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result p0

    return p0
.end method

.method matchedLength()I
    .locals 0

    .line 126
    iget-object p0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iget p0, p0, Landroid/icu/text/SearchIterator;->matchLength:I

    return p0
.end method

.method setBreakIter(Landroid/icu/text/BreakIterator;)V
    .locals 0

    .line 120
    iget-object p0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iput-object p1, p0, Landroid/icu/text/SearchIterator;->breakIterator:Landroid/icu/text/BreakIterator;

    return-void
.end method

.method setMatchedLength(I)V
    .locals 0

    .line 130
    iget-object p0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iput p1, p0, Landroid/icu/text/SearchIterator;->matchLength:I

    return-void
.end method

.method setTarget(Ljava/text/CharacterIterator;)V
    .locals 0

    .line 102
    iget-object p0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iput-object p1, p0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    return-void
.end method

.method text()Ljava/text/CharacterIterator;
    .locals 0

    .line 98
    iget-object p0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iget-object p0, p0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    return-object p0
.end method
