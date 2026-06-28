.class Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset$2;->next()Lcom/google/common/collect/Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/AbstractMapBasedMultiset$2;

.field final synthetic val$mapEntry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset$2;Ljava/util/Map$Entry;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;->this$1:Lcom/google/common/collect/AbstractMapBasedMultiset$2;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v1

    if-nez v1, :cond_1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;->this$1:Lcom/google/common/collect/AbstractMapBasedMultiset$2;

    iget-object v1, v1, Lcom/google/common/collect/AbstractMapBasedMultiset$2;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$100(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;->getElement()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Count;

    if-eqz p0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/google/common/collect/Count;->get()I

    move-result p0

    return p0

    :cond_1
    if-nez v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 130
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
