.class Lcom/google/common/collect/Tables$TransformedTable$2;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Tables$TransformedTable;->rowMap()Ljava/util/Map;
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
        "TC;TV1;>;",
        "Ljava/util/Map<",
        "TC;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Tables$TransformedTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Tables$TransformedTable;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/google/common/collect/Tables$TransformedTable$2;->this$0:Lcom/google/common/collect/Tables$TransformedTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 513
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Tables$TransformedTable$2;->apply(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TC;TV1;>;)",
            "Ljava/util/Map<",
            "TC;TV2;>;"
        }
    .end annotation

    .line 516
    iget-object p0, p0, Lcom/google/common/collect/Tables$TransformedTable$2;->this$0:Lcom/google/common/collect/Tables$TransformedTable;

    iget-object p0, p0, Lcom/google/common/collect/Tables$TransformedTable;->function:Lcom/google/common/base/Function;

    invoke-static {p1, p0}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
