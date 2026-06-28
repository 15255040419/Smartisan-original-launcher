.class Lcom/google/common/collect/CompactHashMap$1;
.super Lcom/google/common/collect/CompactHashMap$Itr;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/CompactHashMap;->keySetIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/CompactHashMap<",
        "TK;TV;>.Itr<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CompactHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CompactHashMap;)V
    .locals 1

    .line 587
    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$1;->this$0:Lcom/google/common/collect/CompactHashMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactHashMap$Itr;-><init>(Lcom/google/common/collect/CompactHashMap;Lcom/google/common/collect/CompactHashMap$1;)V

    return-void
.end method


# virtual methods
.method getOutput(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 591
    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$1;->this$0:Lcom/google/common/collect/CompactHashMap;

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method
