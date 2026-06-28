.class Lcom/google/common/collect/Multisets$FilteredMultiset$1;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets$FilteredMultiset;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multisets$FilteredMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$FilteredMultiset;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/google/common/collect/Multisets$FilteredMultiset$1;->this$0:Lcom/google/common/collect/Multisets$FilteredMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/common/collect/Multiset$Entry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;)Z"
        }
    .end annotation

    .line 344
    iget-object p0, p0, Lcom/google/common/collect/Multisets$FilteredMultiset$1;->this$0:Lcom/google/common/collect/Multisets$FilteredMultiset;

    iget-object p0, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 341
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$FilteredMultiset$1;->apply(Lcom/google/common/collect/Multiset$Entry;)Z

    move-result p0

    return p0
.end method
