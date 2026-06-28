.class Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;
.super Ljava/lang/Object;
.source "StandardTable.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TC;",
        "Ljava/util/Map<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;)V
    .locals 0

    .line 880
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;->this$2:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 880
    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;->apply(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 883
    iget-object p0, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;->this$2:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lcom/google/common/collect/StandardTable$ColumnMap;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$ColumnMap;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
