.class Lcom/google/common/collect/DescendingMultiset$1EntrySetImpl;
.super Lcom/google/common/collect/Multisets$EntrySet;
.source "DescendingMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/DescendingMultiset;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$EntrySet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/DescendingMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/DescendingMultiset;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/google/common/collect/DescendingMultiset$1EntrySetImpl;->this$0:Lcom/google/common/collect/DescendingMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 127
    iget-object p0, p0, Lcom/google/common/collect/DescendingMultiset$1EntrySetImpl;->this$0:Lcom/google/common/collect/DescendingMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/DescendingMultiset;->entryIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method multiset()Lcom/google/common/collect/Multiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 122
    iget-object p0, p0, Lcom/google/common/collect/DescendingMultiset$1EntrySetImpl;->this$0:Lcom/google/common/collect/DescendingMultiset;

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/google/common/collect/DescendingMultiset$1EntrySetImpl;->this$0:Lcom/google/common/collect/DescendingMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/DescendingMultiset;->forwardMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method
