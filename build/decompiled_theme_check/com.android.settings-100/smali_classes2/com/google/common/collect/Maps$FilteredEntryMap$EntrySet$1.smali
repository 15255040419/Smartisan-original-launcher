.class Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;
.super Lcom/google/common/collect/TransformedIterator;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;Ljava/util/Iterator;)V
    .locals 0

    .line 2881
    iput-object p1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;->this$1:Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2881
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;->transform(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method transform(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2884
    new-instance v0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;-><init>(Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;Ljava/util/Map$Entry;)V

    return-object v0
.end method
