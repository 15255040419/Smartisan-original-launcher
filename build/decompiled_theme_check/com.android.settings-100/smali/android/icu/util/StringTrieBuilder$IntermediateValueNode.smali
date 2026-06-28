.class final Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;
.super Landroid/icu/util/StringTrieBuilder$ValueNode;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntermediateValueNode"
.end annotation


# instance fields
.field private next:Landroid/icu/util/StringTrieBuilder$Node;


# direct methods
.method public constructor <init>(ILandroid/icu/util/StringTrieBuilder$Node;)V
    .locals 0

    .line 316
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    .line 317
    iput-object p2, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    .line 318
    invoke-virtual {p0, p1}, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->setValue(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 329
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 332
    :cond_1
    check-cast p1, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;

    .line 333
    iget-object p0, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    iget-object p1, p1, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 322
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->value:I

    const v1, 0x4eeeeea

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object p0, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {p0}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public markRightEdgesFirst(I)I
    .locals 1

    .line 337
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->offset:I

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result p1

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->offset:I

    :cond_0
    return p1
.end method

.method public write(Landroid/icu/util/StringTrieBuilder;)V
    .locals 2

    .line 344
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    .line 345
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->value:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/icu/util/StringTrieBuilder;->writeValueAndFinal(IZ)I

    move-result p1

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->offset:I

    return-void
.end method
