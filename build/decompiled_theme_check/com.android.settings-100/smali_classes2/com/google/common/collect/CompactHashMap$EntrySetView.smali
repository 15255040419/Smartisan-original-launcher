.class Lcom/google/common/collect/CompactHashMap$EntrySetView;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CompactHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CompactHashMap;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 635
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 636
    check-cast p1, Ljava/util/Map$Entry;

    .line 637
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/collect/CompactHashMap;->access$200(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 638
    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object p0, p0, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 624
    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->entrySetIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$spliterator$0$CompactHashMap$EntrySetView(I)Ljava/util/Map$Entry;
    .locals 1

    .line 630
    new-instance v0, Lcom/google/common/collect/CompactHashMap$MapEntry;

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CompactHashMap$MapEntry;-><init>(Lcom/google/common/collect/CompactHashMap;I)V

    return-object v0
.end method

.method map()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 619
    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 645
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 646
    check-cast p1, Ljava/util/Map$Entry;

    .line 647
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/CompactHashMap;->access$200(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    iget-object v1, v1, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 649
    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-static {p0, v0}, Lcom/google/common/collect/CompactHashMap;->access$000(Lcom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 629
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 630
    invoke-static {v0}, Lcom/google/common/collect/CompactHashMap;->access$100(Lcom/google/common/collect/CompactHashMap;)I

    move-result v0

    new-instance v1, Lcom/google/common/collect/-$$Lambda$CompactHashMap$EntrySetView$zx9uq9I50IJ3NBsUVususdSDP4g;

    invoke-direct {v1, p0}, Lcom/google/common/collect/-$$Lambda$CompactHashMap$EntrySetView$zx9uq9I50IJ3NBsUVususdSDP4g;-><init>(Lcom/google/common/collect/CompactHashMap$EntrySetView;)V

    const/16 p0, 0x11

    .line 629
    invoke-static {v0, p0, v1}, Lcom/google/common/collect/CollectSpliterators;->indexed(IILjava/util/function/IntFunction;)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
