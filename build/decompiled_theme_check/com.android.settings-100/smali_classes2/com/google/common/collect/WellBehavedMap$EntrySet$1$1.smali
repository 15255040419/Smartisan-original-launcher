.class Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "WellBehavedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/WellBehavedMap$EntrySet$1;->transform(Ljava/lang/Object;)Ljava/util/Map$Entry;
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
.field final synthetic this$2:Lcom/google/common/collect/WellBehavedMap$EntrySet$1;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/WellBehavedMap$EntrySet$1;Ljava/lang/Object;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;->this$2:Lcom/google/common/collect/WellBehavedMap$EntrySet$1;

    iput-object p2, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;->val$key:Ljava/lang/Object;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;->this$2:Lcom/google/common/collect/WellBehavedMap$EntrySet$1;

    iget-object v0, v0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1;->this$1:Lcom/google/common/collect/WellBehavedMap$EntrySet;

    iget-object v0, v0, Lcom/google/common/collect/WellBehavedMap$EntrySet;->this$0:Lcom/google/common/collect/WellBehavedMap;

    iget-object p0, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;->val$key:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/WellBehavedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 92
    iget-object v0, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;->this$2:Lcom/google/common/collect/WellBehavedMap$EntrySet$1;

    iget-object v0, v0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1;->this$1:Lcom/google/common/collect/WellBehavedMap$EntrySet;

    iget-object v0, v0, Lcom/google/common/collect/WellBehavedMap$EntrySet;->this$0:Lcom/google/common/collect/WellBehavedMap;

    iget-object p0, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;->val$key:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/WellBehavedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
