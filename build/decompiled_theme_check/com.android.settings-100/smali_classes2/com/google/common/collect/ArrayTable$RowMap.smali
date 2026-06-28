.class Lcom/google/common/collect/ArrayTable$RowMap;
.super Lcom/google/common/collect/ArrayTable$ArrayMap;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ArrayTable$ArrayMap<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ArrayTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .locals 1

    .line 724
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$RowMap;->this$0:Lcom/google/common/collect/ArrayTable;

    .line 725
    invoke-static {p1}, Lcom/google/common/collect/ArrayTable;->access$300(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ArrayTable$ArrayMap;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ArrayTable$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V
    .locals 0

    .line 723
    invoke-direct {p0, p1}, Lcom/google/common/collect/ArrayTable$RowMap;-><init>(Lcom/google/common/collect/ArrayTable;)V

    return-void
.end method


# virtual methods
.method getKeyRole()Ljava/lang/String;
    .locals 0

    const-string p0, "Row"

    return-object p0
.end method

.method bridge synthetic getValue(I)Ljava/lang/Object;
    .locals 0

    .line 722
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$RowMap;->getValue(I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method getValue(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 735
    new-instance v0, Lcom/google/common/collect/ArrayTable$Row;

    iget-object p0, p0, Lcom/google/common/collect/ArrayTable$RowMap;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ArrayTable$Row;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 722
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ArrayTable$RowMap;->put(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/util/Map<",
            "TC;TV;>;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 745
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method bridge synthetic setValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 722
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ArrayTable$RowMap;->setValue(ILjava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method setValue(ILjava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "TC;TV;>;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 740
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
