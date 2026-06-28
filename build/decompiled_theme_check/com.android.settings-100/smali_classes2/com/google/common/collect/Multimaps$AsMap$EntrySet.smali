.class Lcom/google/common/collect/Multimaps$AsMap$EntrySet;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multimaps$AsMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$AsMap;)V
    .locals 0

    .line 1853
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->this$0:Lcom/google/common/collect/Multimaps$AsMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1861
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->this$0:Lcom/google/common/collect/Multimaps$AsMap;

    .line 1862
    invoke-static {v0}, Lcom/google/common/collect/Multimaps$AsMap;->access$200(Lcom/google/common/collect/Multimaps$AsMap;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multimaps$AsMap$EntrySet$1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Multimaps$AsMap$EntrySet$1;-><init>(Lcom/google/common/collect/Multimaps$AsMap$EntrySet;)V

    .line 1861
    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->asMapEntryIterator(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method map()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1856
    iget-object p0, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->this$0:Lcom/google/common/collect/Multimaps$AsMap;

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1873
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1876
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1877
    iget-object p0, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->this$0:Lcom/google/common/collect/Multimaps$AsMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap;->removeValuesForKey(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
