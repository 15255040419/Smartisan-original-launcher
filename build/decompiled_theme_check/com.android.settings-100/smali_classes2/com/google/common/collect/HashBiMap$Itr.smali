.class abstract Lcom/google/common/collect/HashBiMap$Itr;
.super Ljava/lang/Object;
.source "HashBiMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field next:Lcom/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field remaining:I

.field final synthetic this$0:Lcom/google/common/collect/HashBiMap;

.field toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Itr;->next:Lcom/google/common/collect/HashBiMap$BiEntry;

    const/4 p1, 0x0

    .line 405
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Itr;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 406
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/HashBiMap$Itr;->expectedModCount:I

    .line 407
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {p1}, Lcom/google/common/collect/HashBiMap;->size()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/HashBiMap$Itr;->remaining:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->expectedModCount:I

    if-ne v0, v1, :cond_1

    .line 414
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->next:Lcom/google/common/collect/HashBiMap$BiEntry;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/common/collect/HashBiMap$Itr;->remaining:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 412
    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$Itr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->next:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 424
    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$BiEntry;

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->next:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 425
    iput-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 426
    iget v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->remaining:I

    .line 427
    invoke-virtual {p0, v0}, Lcom/google/common/collect/HashBiMap$Itr;->output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 420
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method abstract output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;)TT;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->expectedModCount:I

    if-ne v0, v1, :cond_1

    .line 435
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 436
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    invoke-static {v0, v1}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 437
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->expectedModCount:I

    const/4 v0, 0x0

    .line 438
    iput-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    return-void

    .line 433
    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method
