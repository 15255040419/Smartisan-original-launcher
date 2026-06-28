.class Lcom/google/common/collect/HashBiMap$1;
.super Lcom/google/common/collect/HashBiMap$Itr;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/HashBiMap;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$1$MapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/HashBiMap<",
        "TK;TV;>.Itr<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$1;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$Itr;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method bridge synthetic output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;
    .locals 0

    .line 486
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap$1;->output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 489
    new-instance v0, Lcom/google/common/collect/HashBiMap$1$MapEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/HashBiMap$1$MapEntry;-><init>(Lcom/google/common/collect/HashBiMap$1;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    return-object v0
.end method
