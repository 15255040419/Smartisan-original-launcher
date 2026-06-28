.class Lcom/google/common/collect/CompactLinkedHashMap$1EntrySetImpl;
.super Lcom/google/common/collect/CompactHashMap$EntrySetView;
.source "CompactLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/CompactLinkedHashMap;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/CompactHashMap<",
        "TK;TV;>.EntrySetView;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CompactLinkedHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CompactLinkedHashMap;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/google/common/collect/CompactLinkedHashMap$1EntrySetImpl;->this$0:Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap$EntrySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-void
.end method


# virtual methods
.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    const/16 v0, 0x11

    .line 215
    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
