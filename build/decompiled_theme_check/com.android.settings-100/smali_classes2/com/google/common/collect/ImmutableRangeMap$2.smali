.class Lcom/google/common/collect/ImmutableRangeMap$2;
.super Lcom/google/common/collect/ImmutableRangeMap;
.source "ImmutableRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableRangeMap;->subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableRangeMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableRangeMap;

.field final synthetic val$outer:Lcom/google/common/collect/ImmutableRangeMap;

.field final synthetic val$range:Lcom/google/common/collect/Range;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableRangeMap;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/Range;Lcom/google/common/collect/ImmutableRangeMap;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeMap$2;->this$0:Lcom/google/common/collect/ImmutableRangeMap;

    iput-object p4, p0, Lcom/google/common/collect/ImmutableRangeMap$2;->val$range:Lcom/google/common/collect/Range;

    iput-object p5, p0, Lcom/google/common/collect/ImmutableRangeMap$2;->val$outer:Lcom/google/common/collect/ImmutableRangeMap;

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/ImmutableRangeMap;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic asDescendingMapOfRanges()Ljava/util/Map;
    .locals 0

    .line 346
    invoke-super {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asDescendingMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic asMapOfRanges()Ljava/util/Map;
    .locals 0

    .line 346
    invoke-super {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TK;>;)",
            "Lcom/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$2;->val$range:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$2;->val$outer:Lcom/google/common/collect/ImmutableRangeMap;

    iget-object p0, p0, Lcom/google/common/collect/ImmutableRangeMap$2;->val$range:Lcom/google/common/collect/Range;

    invoke-virtual {p1, p0}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableRangeMap;->subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object p0

    return-object p0

    .line 352
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeMap;->of()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeMap;
    .locals 0

    .line 346
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeMap$2;->subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object p0

    return-object p0
.end method
