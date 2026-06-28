.class final Landroid/icu/util/StringTrieBuilder$SplitBranchNode;
.super Landroid/icu/util/StringTrieBuilder$BranchNode;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SplitBranchNode"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

.field private lessThan:Landroid/icu/util/StringTrieBuilder$Node;

.field private unit:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 715
    const-class v0, Landroid/icu/util/StringTrieBuilder;

    return-void
.end method

.method public constructor <init>(CLandroid/icu/util/StringTrieBuilder$Node;Landroid/icu/util/StringTrieBuilder$Node;)V
    .locals 2

    .line 716
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$BranchNode;-><init>()V

    const v0, 0xc555549

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x25

    .line 718
    invoke-virtual {p2}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p3}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->hash:I

    .line 719
    iput-char p1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    .line 720
    iput-object p2, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    .line 721
    iput-object p3, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 728
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$BranchNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 731
    :cond_1
    check-cast p1, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;

    .line 732
    iget-char v1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    iget-char v3, p1, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    iget-object v3, p1, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    iget-object p1, p1, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 0

    .line 736
    invoke-super {p0}, Landroid/icu/util/StringTrieBuilder$BranchNode;->hashCode()I

    move-result p0

    return p0
.end method

.method public markRightEdgesFirst(I)I
    .locals 1

    .line 740
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->offset:I

    if-nez v0, :cond_0

    .line 741
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->firstEdgeNumber:I

    .line 742
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result p1

    .line 743
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result p1

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->offset:I

    :cond_0
    return p1
.end method

.method public write(Landroid/icu/util/StringTrieBuilder;)V
    .locals 3

    .line 750
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->firstEdgeNumber:I

    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v2}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/icu/util/StringTrieBuilder$Node;->writeUnlessInsideRightEdge(IILandroid/icu/util/StringTrieBuilder;)V

    .line 752
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    .line 755
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/icu/util/StringTrieBuilder;->writeDeltaTo(I)I

    .line 756
    iget-char v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    invoke-virtual {p1, v0}, Landroid/icu/util/StringTrieBuilder;->write(I)I

    move-result p1

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->offset:I

    return-void
.end method
