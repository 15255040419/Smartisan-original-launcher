.class Lcom/google/common/collect/ImmutableRangeSet$1;
.super Lcom/google/common/collect/ImmutableList;
.source "ImmutableRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableRangeSet;->intersectRanges(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "Lcom/google/common/collect/Range<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableRangeSet;

.field final synthetic val$fromIndex:I

.field final synthetic val$length:I

.field final synthetic val$range:Lcom/google/common/collect/Range;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableRangeSet;IILcom/google/common/collect/Range;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    iput p2, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->val$length:I

    iput p3, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->val$fromIndex:I

    iput-object p4, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->val$range:Lcom/google/common/collect/Range;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 465
    iget v0, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->val$length:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    if-eqz p1, :cond_1

    .line 466
    iget v0, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->val$length:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget p0, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->val$fromIndex:I

    add-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Range;

    return-object p0

    .line 467
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->val$fromIndex:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Range;

    iget-object p0, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->val$range:Lcom/google/common/collect/Range;

    invoke-virtual {p1, p0}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 457
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet$1;->get(I)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method isPartialView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public size()I
    .locals 0

    .line 460
    iget p0, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->val$length:I

    return p0
.end method
