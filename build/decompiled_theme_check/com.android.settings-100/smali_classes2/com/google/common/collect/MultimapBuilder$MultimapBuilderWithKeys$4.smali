.class Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$4;
.super Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->linkedHashSetValues(I)Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder<",
        "TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

.field final synthetic val$expectedValuesPerKey:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;I)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$4;->this$0:Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    iput p2, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$4;->val$expectedValuesPerKey:I

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/common/collect/Multimap;
    .locals 0

    .line 352
    invoke-virtual {p0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$4;->build()Lcom/google/common/collect/SetMultimap;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/google/common/collect/SetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$4;->this$0:Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    .line 356
    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->createMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;

    iget p0, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$4;->val$expectedValuesPerKey:I

    invoke-direct {v1, p0}, Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;-><init>(I)V

    .line 355
    invoke-static {v0, v1}, Lcom/google/common/collect/Multimaps;->newSetMultimap(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/SetMultimap;

    move-result-object p0

    return-object p0
.end method
