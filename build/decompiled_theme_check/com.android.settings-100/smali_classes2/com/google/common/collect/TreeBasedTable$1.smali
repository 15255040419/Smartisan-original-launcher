.class Lcom/google/common/collect/TreeBasedTable$1;
.super Ljava/lang/Object;
.source "TreeBasedTable.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeBasedTable;->createColumnKeyIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Ljava/util/Map<",
        "TC;TV;>;",
        "Ljava/util/Iterator<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TreeBasedTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/google/common/collect/TreeBasedTable$1;->this$0:Lcom/google/common/collect/TreeBasedTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 321
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeBasedTable$1;->apply(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TC;TV;>;)",
            "Ljava/util/Iterator<",
            "TC;>;"
        }
    .end annotation

    .line 324
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
