.class Lcom/google/common/collect/Collections2$FilteredCollection;
.super Ljava/util/AbstractCollection;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilteredCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final predicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "-TE;>;"
        }
    .end annotation
.end field

.field final unfiltered:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/google/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/google/common/base/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    .line 128
    iput-object p2, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    return-void
.end method

.method static synthetic lambda$retainAll$1(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 0

    .line 208
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 139
    iget-object p0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 144
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v2, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    iget-object p0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 157
    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-static {v0, p1}, Lcom/google/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object p0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {p0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 167
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->containsAllImpl(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method createCombined(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/Collections2$FilteredCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "-TE;>;)",
            "Lcom/google/common/collect/Collections2$FilteredCollection<",
            "TE;>;"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/google/common/collect/Collections2$FilteredCollection;

    iget-object v1, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    iget-object p0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {p0, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/Collections2$FilteredCollection;-><init>(Ljava/util/Collection;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 187
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    new-instance v1, Lcom/google/common/collect/-$$Lambda$Collections2$FilteredCollection$X1Nyc9qvsRSExuCY-e6M2sT39ns;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/-$$Lambda$Collections2$FilteredCollection$X1Nyc9qvsRSExuCY-e6M2sT39ns;-><init>(Lcom/google/common/collect/Collections2$FilteredCollection;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    iget-object p0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->any(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$forEach$0$Collections2$FilteredCollection(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {p0, p2}, Lcom/google/common/base/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 191
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$removeIf$2$Collections2$FilteredCollection(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {p0, p2}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 198
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Collections2$FilteredCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/common/collect/-$$Lambda$8ZUcrOvlPOJdkwaEa5sD1L7phC8;

    invoke-direct {v0, p1}, Lcom/google/common/collect/-$$Lambda$8ZUcrOvlPOJdkwaEa5sD1L7phC8;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Collections2$FilteredCollection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 213
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    new-instance v1, Lcom/google/common/collect/-$$Lambda$Collections2$FilteredCollection$vThViNohB0vFMHsaCtCTpMga69k;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/-$$Lambda$Collections2$FilteredCollection$vThViNohB0vFMHsaCtCTpMga69k;-><init>(Lcom/google/common/collect/Collections2$FilteredCollection;Ljava/util/function/Predicate;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 208
    new-instance v0, Lcom/google/common/collect/-$$Lambda$Collections2$FilteredCollection$KZZADvVoxzl7X9QJ7avS6lZW_Tk;

    invoke-direct {v0, p1}, Lcom/google/common/collect/-$$Lambda$Collections2$FilteredCollection$KZZADvVoxzl7X9QJ7avS6lZW_Tk;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Collections2$FilteredCollection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 221
    iget-object v3, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v2}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, p0}, Lcom/google/common/collect/CollectSpliterators;->filter(Ljava/util/Spliterator;Ljava/util/function/Predicate;)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    .line 231
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$FilteredCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$FilteredCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
