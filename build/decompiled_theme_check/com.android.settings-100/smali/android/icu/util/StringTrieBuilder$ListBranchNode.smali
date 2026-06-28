.class final Landroid/icu/util/StringTrieBuilder$ListBranchNode;
.super Landroid/icu/util/StringTrieBuilder$BranchNode;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListBranchNode"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private equal:[Landroid/icu/util/StringTrieBuilder$Node;

.field private length:I

.field private units:[C

.field private values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 601
    const-class v0, Landroid/icu/util/StringTrieBuilder;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 602
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$BranchNode;-><init>()V

    const v0, 0x9ddddd4

    add-int/2addr v0, p1

    .line 603
    iput v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->hash:I

    .line 604
    new-array v0, p1, [Landroid/icu/util/StringTrieBuilder$Node;

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    .line 605
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    .line 606
    new-array p1, p1, [C

    iput-object p1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 3

    .line 690
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 691
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 692
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    aput p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 693
    iput v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    .line 694
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->hash:I

    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->hash:I

    return-void
.end method

.method public add(ILandroid/icu/util/StringTrieBuilder$Node;)V
    .locals 3

    .line 698
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 699
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aput-object p2, v0, v1

    .line 700
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    const/4 v2, 0x0

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 701
    iput v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    .line 702
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->hash:I

    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p2}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->hash:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 613
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$BranchNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 616
    :cond_1
    check-cast p1, Landroid/icu/util/StringTrieBuilder$ListBranchNode;

    move v1, v2

    .line 617
    :goto_0
    iget v3, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    if-ge v1, v3, :cond_4

    .line 618
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    aget-char v3, v3, v1

    iget-object v4, p1, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    aget-char v4, v4, v1

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    aget v3, v3, v1

    iget-object v4, p1, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    aget v4, v4, v1

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v3, v3, v1

    iget-object v4, p1, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v4, v4, v1

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 0

    .line 626
    invoke-super {p0}, Landroid/icu/util/StringTrieBuilder$BranchNode;->hashCode()I

    move-result p0

    return p0
.end method

.method public markRightEdgesFirst(I)I
    .locals 3

    .line 630
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->offset:I

    if-nez v0, :cond_2

    .line 631
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->firstEdgeNumber:I

    const/4 v0, 0x0

    .line 633
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    .line 635
    :cond_0
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    add-int/lit8 v1, v1, -0x1

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    sub-int/2addr p1, v0

    .line 637
    invoke-virtual {v2, p1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result p1

    :cond_1
    const/4 v0, 0x1

    if-gtz v1, :cond_0

    .line 642
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->offset:I

    :cond_2
    return p1
.end method

.method public write(Landroid/icu/util/StringTrieBuilder;)V
    .locals 6

    .line 652
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 653
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 654
    iget v3, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->firstEdgeNumber:I

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    move-result v3

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 657
    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v5, v4, v0

    if-eqz v5, :cond_2

    .line 658
    aget-object v4, v4, v0

    iget v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->firstEdgeNumber:I

    invoke-virtual {v4, v5, v3, p1}, Landroid/icu/util/StringTrieBuilder$Node;->writeUnlessInsideRightEdge(IILandroid/icu/util/StringTrieBuilder;)V

    :cond_2
    if-gtz v0, :cond_1

    .line 663
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    sub-int/2addr v0, v1

    if-nez v2, :cond_3

    .line 665
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2, v1}, Landroid/icu/util/StringTrieBuilder;->writeValueAndFinal(IZ)I

    goto :goto_1

    .line 667
    :cond_3
    invoke-virtual {v2, p1}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    .line 669
    :goto_1
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    aget-char v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/icu/util/StringTrieBuilder;->write(I)I

    move-result v2

    iput v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->offset:I

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    .line 674
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    .line 676
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    aget v2, v2, v0

    move v3, v1

    goto :goto_3

    .line 681
    :cond_4
    iget v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->offset:I

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    .line 684
    :goto_3
    invoke-virtual {p1, v2, v3}, Landroid/icu/util/StringTrieBuilder;->writeValueAndFinal(IZ)I

    .line 685
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    aget-char v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/icu/util/StringTrieBuilder;->write(I)I

    move-result v2

    iput v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->offset:I

    goto :goto_2

    :cond_5
    return-void
.end method
