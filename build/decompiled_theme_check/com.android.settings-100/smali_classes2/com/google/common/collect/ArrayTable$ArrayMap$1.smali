.class Lcom/google/common/collect/ArrayTable$ArrayMap$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ArrayTable$ArrayMap;->getEntry(I)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ArrayTable$ArrayMap;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable$ArrayMap;I)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1;->this$0:Lcom/google/common/collect/ArrayTable$ArrayMap;

    iput p2, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1;->val$index:I

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1;->this$0:Lcom/google/common/collect/ArrayTable$ArrayMap;

    iget p0, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1;->val$index:I

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ArrayTable$ArrayMap;->getKey(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1;->this$0:Lcom/google/common/collect/ArrayTable$ArrayMap;

    iget p0, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1;->val$index:I

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ArrayTable$ArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1;->this$0:Lcom/google/common/collect/ArrayTable$ArrayMap;

    iget p0, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1;->val$index:I

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/ArrayTable$ArrayMap;->setValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
