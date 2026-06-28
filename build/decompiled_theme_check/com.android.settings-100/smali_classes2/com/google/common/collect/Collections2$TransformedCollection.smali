.class Lcom/google/common/collect/Collections2$TransformedCollection;
.super Ljava/util/AbstractCollection;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransformedCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final fromCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TF;>;"
        }
    .end annotation
.end field

.field final function:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "-TF;+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/google/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TF;>;",
            "Lcom/google/common/base/Function<",
            "-TF;+TT;>;)V"
        }
    .end annotation

    .line 268
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 269
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/common/collect/Collections2$TransformedCollection;->fromCollection:Ljava/util/Collection;

    .line 270
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Function;

    iput-object p1, p0, Lcom/google/common/collect/Collections2$TransformedCollection;->function:Lcom/google/common/base/Function;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/google/common/collect/Collections2$TransformedCollection;->fromCollection:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 295
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lcom/google/common/collect/Collections2$TransformedCollection;->fromCollection:Ljava/util/Collection;

    new-instance v1, Lcom/google/common/collect/-$$Lambda$Collections2$TransformedCollection$SMfKSGJa7dRiZjB8gNQiI0i-w9E;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/-$$Lambda$Collections2$TransformedCollection$SMfKSGJa7dRiZjB8gNQiI0i-w9E;-><init>(Lcom/google/common/collect/Collections2$TransformedCollection;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/google/common/collect/Collections2$TransformedCollection;->fromCollection:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/google/common/collect/Collections2$TransformedCollection;->fromCollection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Collections2$TransformedCollection;->function:Lcom/google/common/base/Function;

    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$forEach$0$Collections2$TransformedCollection(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/google/common/collect/Collections2$TransformedCollection;->function:Lcom/google/common/base/Function;

    invoke-interface {p0, p2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$removeIf$1$Collections2$TransformedCollection(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/google/common/collect/Collections2$TransformedCollection;->function:Lcom/google/common/base/Function;

    invoke-interface {p0, p2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 301
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcom/google/common/collect/Collections2$TransformedCollection;->fromCollection:Ljava/util/Collection;

    new-instance v1, Lcom/google/common/collect/-$$Lambda$Collections2$TransformedCollection$a_DOTlahUQQQHIq0OaR7TqZrp_c;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/-$$Lambda$Collections2$TransformedCollection$a_DOTlahUQQQHIq0OaR7TqZrp_c;-><init>(Lcom/google/common/collect/Collections2$TransformedCollection;Ljava/util/function/Predicate;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/google/common/collect/Collections2$TransformedCollection;->fromCollection:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/google/common/collect/Collections2$TransformedCollection;->fromCollection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Collections2$TransformedCollection;->function:Lcom/google/common/base/Function;

    invoke-static {v0, p0}, Lcom/google/common/collect/CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
