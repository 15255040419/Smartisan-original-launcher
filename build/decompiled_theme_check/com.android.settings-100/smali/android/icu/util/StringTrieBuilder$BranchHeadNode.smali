.class final Landroid/icu/util/StringTrieBuilder$BranchHeadNode;
.super Landroid/icu/util/StringTrieBuilder$ValueNode;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BranchHeadNode"
.end annotation


# instance fields
.field private length:I

.field private next:Landroid/icu/util/StringTrieBuilder$Node;


# direct methods
.method public constructor <init>(ILandroid/icu/util/StringTrieBuilder$Node;)V
    .locals 0

    .line 766
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    .line 767
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    .line 768
    iput-object p2, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 779
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 782
    :cond_1
    check-cast p1, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;

    .line 783
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    iget v3, p1, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    iget-object p1, p1, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 772
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    const v1, 0xeccccbe

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object p0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {p0}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public markRightEdgesFirst(I)I
    .locals 1

    .line 787
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->offset:I

    if-nez v0, :cond_0

    .line 788
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result p1

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->offset:I

    :cond_0
    return p1
.end method

.method public write(Landroid/icu/util/StringTrieBuilder;)V
    .locals 3

    .line 794
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    .line 795
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->getMinLinearMatch()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 796
    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->hasValue:Z

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->value:I

    iget v2, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/icu/util/StringTrieBuilder;->writeValueAndType(ZII)I

    move-result p1

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->offset:I

    goto :goto_0

    .line 798
    :cond_0
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/icu/util/StringTrieBuilder;->write(I)I

    .line 799
    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->hasValue:Z

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->value:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/icu/util/StringTrieBuilder;->writeValueAndType(ZII)I

    move-result p1

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->offset:I

    :goto_0
    return-void
.end method
