.class final Lcom/google/common/collect/DenseImmutableTable$ColumnMap;
.super Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/DenseImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ColumnMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap<",
        "TC;",
        "Lcom/google/common/collect/ImmutableMap<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/DenseImmutableTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/DenseImmutableTable;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/google/common/collect/DenseImmutableTable$ColumnMap;->this$0:Lcom/google/common/collect/DenseImmutableTable;

    .line 216
    invoke-static {p1}, Lcom/google/common/collect/DenseImmutableTable;->access$500(Lcom/google/common/collect/DenseImmutableTable;)[I

    move-result-object p1

    array-length p1, p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/DenseImmutableTable;Lcom/google/common/collect/DenseImmutableTable$1;)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lcom/google/common/collect/DenseImmutableTable$ColumnMap;-><init>(Lcom/google/common/collect/DenseImmutableTable;)V

    return-void
.end method


# virtual methods
.method getValue(I)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;TV;>;"
        }
    .end annotation

    .line 226
    new-instance v0, Lcom/google/common/collect/DenseImmutableTable$Column;

    iget-object p0, p0, Lcom/google/common/collect/DenseImmutableTable$ColumnMap;->this$0:Lcom/google/common/collect/DenseImmutableTable;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/DenseImmutableTable$Column;-><init>(Lcom/google/common/collect/DenseImmutableTable;I)V

    return-object v0
.end method

.method bridge synthetic getValue(I)Ljava/lang/Object;
    .locals 0

    .line 213
    invoke-virtual {p0, p1}, Lcom/google/common/collect/DenseImmutableTable$ColumnMap;->getValue(I)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method isPartialView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method keyToIndex()Lcom/google/common/collect/ImmutableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object p0, p0, Lcom/google/common/collect/DenseImmutableTable$ColumnMap;->this$0:Lcom/google/common/collect/DenseImmutableTable;

    invoke-static {p0}, Lcom/google/common/collect/DenseImmutableTable;->access$300(Lcom/google/common/collect/DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method
