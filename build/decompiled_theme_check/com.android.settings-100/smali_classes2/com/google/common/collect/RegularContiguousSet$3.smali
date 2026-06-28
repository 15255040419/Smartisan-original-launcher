.class Lcom/google/common/collect/RegularContiguousSet$3;
.super Lcom/google/common/collect/ImmutableAsList;
.source "RegularContiguousSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularContiguousSet;->createAsList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableAsList<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularContiguousSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularContiguousSet;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/google/common/collect/RegularContiguousSet$3;->this$0:Lcom/google/common/collect/RegularContiguousSet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .locals 0

    .line 125
    invoke-virtual {p0}, Lcom/google/common/collect/RegularContiguousSet$3;->delegateCollection()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method delegateCollection()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    .line 128
    iget-object p0, p0, Lcom/google/common/collect/RegularContiguousSet$3;->this$0:Lcom/google/common/collect/RegularContiguousSet;

    return-object p0
.end method

.method public get(I)Ljava/lang/Comparable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TC;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/google/common/collect/RegularContiguousSet$3;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 134
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet$3;->this$0:Lcom/google/common/collect/RegularContiguousSet;

    iget-object v0, v0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    iget-object p0, p0, Lcom/google/common/collect/RegularContiguousSet$3;->this$0:Lcom/google/common/collect/RegularContiguousSet;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularContiguousSet;->first()Ljava/lang/Comparable;

    move-result-object p0

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/common/collect/DiscreteDomain;->offset(Ljava/lang/Comparable;J)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularContiguousSet$3;->get(I)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method
