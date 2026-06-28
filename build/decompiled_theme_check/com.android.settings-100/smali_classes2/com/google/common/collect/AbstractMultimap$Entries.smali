.class Lcom/google/common/collect/AbstractMultimap$Entries;
.super Lcom/google/common/collect/Multimaps$Entries;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multimaps$Entries<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Multimaps$Entries;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 130
    iget-object p0, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->entryIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method multimap()Lcom/google/common/collect/Multimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 125
    iget-object p0, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->this$0:Lcom/google/common/collect/AbstractMultimap;

    return-object p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 135
    iget-object p0, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->entrySpliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
