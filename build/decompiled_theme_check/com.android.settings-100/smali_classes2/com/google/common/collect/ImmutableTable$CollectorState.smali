.class final Lcom/google/common/collect/ImmutableTable$CollectorState;
.super Ljava/lang/Object;
.source "ImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CollectorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final insertionOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/common/collect/ImmutableTable$MutableCell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation
.end field

.field final table:Lcom/google/common/collect/Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Table<",
            "TR;TC;",
            "Lcom/google/common/collect/ImmutableTable$MutableCell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableTable$CollectorState;->insertionOrder:Ljava/util/List;

    .line 122
    invoke-static {}, Lcom/google/common/collect/HashBasedTable;->create()Lcom/google/common/collect/HashBasedTable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableTable$CollectorState;->table:Lcom/google/common/collect/Table;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ImmutableTable$1;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableTable$CollectorState;-><init>()V

    return-void
.end method


# virtual methods
.method combine(Lcom/google/common/collect/ImmutableTable$CollectorState;Ljava/util/function/BinaryOperator;)Lcom/google/common/collect/ImmutableTable$CollectorState;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableTable$CollectorState<",
            "TR;TC;TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Lcom/google/common/collect/ImmutableTable$CollectorState<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 136
    iget-object p1, p1, Lcom/google/common/collect/ImmutableTable$CollectorState;->insertionOrder:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableTable$MutableCell;

    .line 137
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableTable$MutableCell;->getRowKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableTable$MutableCell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableTable$MutableCell;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0, p2}, Lcom/google/common/collect/ImmutableTable$CollectorState;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)V"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/common/collect/ImmutableTable$CollectorState;->table:Lcom/google/common/collect/Table;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableTable$MutableCell;

    if-nez v0, :cond_0

    .line 127
    new-instance p4, Lcom/google/common/collect/ImmutableTable$MutableCell;

    invoke-direct {p4, p1, p2, p3}, Lcom/google/common/collect/ImmutableTable$MutableCell;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    iget-object p3, p0, Lcom/google/common/collect/ImmutableTable$CollectorState;->insertionOrder:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object p0, p0, Lcom/google/common/collect/ImmutableTable$CollectorState;->table:Lcom/google/common/collect/Table;

    invoke-interface {p0, p1, p2, p4}, Lcom/google/common/collect/Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v0, p3, p4}, Lcom/google/common/collect/ImmutableTable$MutableCell;->merge(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V

    :goto_0
    return-void
.end method

.method toTable()Lcom/google/common/collect/ImmutableTable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 143
    iget-object p0, p0, Lcom/google/common/collect/ImmutableTable$CollectorState;->insertionOrder:Ljava/util/List;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableTable;->access$000(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableTable;

    move-result-object p0

    return-object p0
.end method
