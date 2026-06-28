.class Lcom/google/common/collect/AbstractMultimap$Values;
.super Ljava/util/AbstractCollection;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 208
    iget-object p0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 193
    iget-object p0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->valueIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->size()I

    move-result p0

    return p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 198
    iget-object p0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->valueSpliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
