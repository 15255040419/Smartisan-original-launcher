.class Lcom/google/common/collect/AbstractTable$1;
.super Lcom/google/common/collect/TransformedIterator;
.source "AbstractTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractTable;->valuesIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator<",
        "Lcom/google/common/collect/Table$Cell<",
        "TR;TC;TV;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractTable;Ljava/util/Iterator;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/google/common/collect/AbstractTable$1;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method transform(Lcom/google/common/collect/Table$Cell;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;)TV;"
        }
    .end annotation

    .line 190
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 187
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractTable$1;->transform(Lcom/google/common/collect/Table$Cell;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
