.class Landroid/icu/impl/number/Parse$ParserState;
.super Ljava/lang/Object;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/Parse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParserState"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field affixHolders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/impl/number/Parse$AffixHolder;",
            ">;"
        }
    .end annotation
.end field

.field caseSensitive:Z

.field decimalCp1:I

.field decimalCp2:I

.field decimalType1:Landroid/icu/impl/number/Parse$SeparatorType;

.field decimalType2:Landroid/icu/impl/number/Parse$SeparatorType;

.field digitTrie:Landroid/icu/impl/TextTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field groupingCp1:I

.field groupingCp2:I

.field groupingMode:Landroid/icu/impl/number/Parse$GroupingMode;

.field groupingType1:Landroid/icu/impl/number/Parse$SeparatorType;

.field groupingType2:Landroid/icu/impl/number/Parse$SeparatorType;

.field items:[Landroid/icu/impl/number/Parse$StateItem;

.field length:I

.field mode:Landroid/icu/impl/number/Parse$ParseMode;

.field parseCurrency:Z

.field prevItems:[Landroid/icu/impl/number/Parse$StateItem;

.field prevLength:I

.field properties:Landroid/icu/impl/number/DecimalFormatProperties;

.field symbols:Landroid/icu/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 536
    const-class v0, Landroid/icu/impl/number/Parse;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [Landroid/icu/impl/number/Parse$StateItem;

    .line 539
    iput-object v1, p0, Landroid/icu/impl/number/Parse$ParserState;->items:[Landroid/icu/impl/number/Parse$StateItem;

    new-array v0, v0, [Landroid/icu/impl/number/Parse$StateItem;

    .line 540
    iput-object v0, p0, Landroid/icu/impl/number/Parse$ParserState;->prevItems:[Landroid/icu/impl/number/Parse$StateItem;

    .line 563
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    const/4 v0, 0x0

    .line 566
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/number/Parse$ParserState;->items:[Landroid/icu/impl/number/Parse$StateItem;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 567
    new-instance v2, Landroid/icu/impl/number/Parse$StateItem;

    add-int/lit8 v3, v0, 0x41

    int-to-char v3, v3

    invoke-direct {v2, v3}, Landroid/icu/impl/number/Parse$StateItem;-><init>(C)V

    aput-object v2, v1, v0

    .line 568
    iget-object v1, p0, Landroid/icu/impl/number/Parse$ParserState;->prevItems:[Landroid/icu/impl/number/Parse$StateItem;

    new-instance v2, Landroid/icu/impl/number/Parse$StateItem;

    invoke-direct {v2, v3}, Landroid/icu/impl/number/Parse$StateItem;-><init>(C)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method clear()Landroid/icu/impl/number/Parse$ParserState;
    .locals 1

    const/4 v0, 0x0

    .line 578
    iput v0, p0, Landroid/icu/impl/number/Parse$ParserState;->length:I

    .line 579
    iput v0, p0, Landroid/icu/impl/number/Parse$ParserState;->prevLength:I

    const/4 v0, 0x0

    .line 580
    iput-object v0, p0, Landroid/icu/impl/number/Parse$ParserState;->digitTrie:Landroid/icu/impl/TextTrieMap;

    .line 581
    iget-object v0, p0, Landroid/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-object p0
.end method

.method public getItem(I)Landroid/icu/impl/number/Parse$StateItem;
    .locals 0

    .line 646
    iget-object p0, p0, Landroid/icu/impl/number/Parse$ParserState;->items:[Landroid/icu/impl/number/Parse$StateItem;

    aget-object p0, p0, p1

    return-object p0
.end method

.method getNext()Landroid/icu/impl/number/Parse$StateItem;
    .locals 3

    .line 620
    iget v0, p0, Landroid/icu/impl/number/Parse$ParserState;->length:I

    iget-object v1, p0, Landroid/icu/impl/number/Parse$ParserState;->items:[Landroid/icu/impl/number/Parse$StateItem;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 624
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/impl/number/Parse$ParserState;->length:I

    .line 626
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/number/Parse$ParserState;->items:[Landroid/icu/impl/number/Parse$StateItem;

    iget v1, p0, Landroid/icu/impl/number/Parse$ParserState;->length:I

    aget-object v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 627
    iput v1, p0, Landroid/icu/impl/number/Parse$ParserState;->length:I

    return-object v0
.end method

.method public lastInsertedIndex()I
    .locals 0

    .line 634
    iget p0, p0, Landroid/icu/impl/number/Parse$ParserState;->length:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method swap()V
    .locals 2

    .line 590
    iget-object v0, p0, Landroid/icu/impl/number/Parse$ParserState;->prevItems:[Landroid/icu/impl/number/Parse$StateItem;

    .line 591
    iget-object v1, p0, Landroid/icu/impl/number/Parse$ParserState;->items:[Landroid/icu/impl/number/Parse$StateItem;

    iput-object v1, p0, Landroid/icu/impl/number/Parse$ParserState;->prevItems:[Landroid/icu/impl/number/Parse$StateItem;

    .line 592
    iput-object v0, p0, Landroid/icu/impl/number/Parse$ParserState;->items:[Landroid/icu/impl/number/Parse$StateItem;

    .line 593
    iget v0, p0, Landroid/icu/impl/number/Parse$ParserState;->length:I

    iput v0, p0, Landroid/icu/impl/number/Parse$ParserState;->prevLength:I

    const/4 v0, 0x0

    .line 594
    iput v0, p0, Landroid/icu/impl/number/Parse$ParserState;->length:I

    return-void
.end method

.method swapBack()V
    .locals 2

    .line 602
    iget-object v0, p0, Landroid/icu/impl/number/Parse$ParserState;->prevItems:[Landroid/icu/impl/number/Parse$StateItem;

    .line 603
    iget-object v1, p0, Landroid/icu/impl/number/Parse$ParserState;->items:[Landroid/icu/impl/number/Parse$StateItem;

    iput-object v1, p0, Landroid/icu/impl/number/Parse$ParserState;->prevItems:[Landroid/icu/impl/number/Parse$StateItem;

    .line 604
    iput-object v0, p0, Landroid/icu/impl/number/Parse$ParserState;->items:[Landroid/icu/impl/number/Parse$StateItem;

    .line 605
    iget v0, p0, Landroid/icu/impl/number/Parse$ParserState;->prevLength:I

    iput v0, p0, Landroid/icu/impl/number/Parse$ParserState;->length:I

    const/4 v0, 0x0

    .line 606
    iput v0, p0, Landroid/icu/impl/number/Parse$ParserState;->prevLength:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<ParseState mode:"

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    iget-object v1, p0, Landroid/icu/impl/number/Parse$ParserState;->mode:Landroid/icu/impl/number/Parse$ParseMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " caseSensitive:"

    .line 654
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    iget-boolean v1, p0, Landroid/icu/impl/number/Parse$ParserState;->caseSensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " parseCurrency:"

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    iget-boolean v1, p0, Landroid/icu/impl/number/Parse$ParserState;->parseCurrency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " groupingMode:"

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    iget-object v1, p0, Landroid/icu/impl/number/Parse$ParserState;->groupingMode:Landroid/icu/impl/number/Parse$GroupingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " decimalCps:"

    .line 660
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    iget v1, p0, Landroid/icu/impl/number/Parse$ParserState;->decimalCp1:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 662
    iget v1, p0, Landroid/icu/impl/number/Parse$ParserState;->decimalCp2:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " groupingCps:"

    .line 663
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    iget v1, p0, Landroid/icu/impl/number/Parse$ParserState;->groupingCp1:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 665
    iget v1, p0, Landroid/icu/impl/number/Parse$ParserState;->groupingCp2:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " affixes:"

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    iget-object p0, p0, Landroid/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    .line 668
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
