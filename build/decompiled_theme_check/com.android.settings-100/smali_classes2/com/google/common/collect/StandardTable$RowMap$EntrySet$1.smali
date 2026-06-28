.class Lcom/google/common/collect/StandardTable$RowMap$EntrySet$1;
.super Ljava/lang/Object;
.source "StandardTable.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/StandardTable$RowMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/StandardTable$RowMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$RowMap$EntrySet;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet$1;->this$2:Lcom/google/common/collect/StandardTable$RowMap$EntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 794
    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable$RowMap$EntrySet$1;->apply(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 797
    iget-object p0, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet$1;->this$2:Lcom/google/common/collect/StandardTable$RowMap$EntrySet;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$RowMap;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$RowMap;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
