.class Lcom/google/common/collect/CompactLinkedHashMap$1KeySetImpl;
.super Lcom/google/common/collect/CompactHashMap$KeySetView;
.source "CompactLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/CompactLinkedHashMap;->createKeySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/CompactHashMap<",
        "TK;TV;>.KeySetView;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CompactLinkedHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CompactLinkedHashMap;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/google/common/collect/CompactLinkedHashMap$1KeySetImpl;->this$0:Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap$KeySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 242
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap$1KeySetImpl;->this$0:Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-static {v0}, Lcom/google/common/collect/CompactLinkedHashMap;->access$000(Lcom/google/common/collect/CompactLinkedHashMap;)I

    move-result v0

    :goto_0
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashMap$1KeySetImpl;->this$0:Lcom/google/common/collect/CompactLinkedHashMap;

    iget-object v1, v1, Lcom/google/common/collect/CompactLinkedHashMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 243
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashMap$1KeySetImpl;->this$0:Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    const/16 v0, 0x11

    .line 237
    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    .line 227
    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 232
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
