.class public Lcom/google/common/collect/ImmutableMultiset$Builder;
.super Lcom/google/common/collect/ImmutableCollection$Builder;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final contents:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 468
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMultiset$Builder;-><init>(Lcom/google/common/collect/Multiset;)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Multiset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;)V"
        }
    .end annotation

    .line 471
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    .line 472
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/Multiset;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 460
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 460
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object p0

    return-object p0
.end method

.method public add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/Multiset;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 499
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 460
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 460
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 546
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 547
    invoke-static {p1}, Lcom/google/common/collect/Multisets;->cast(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;

    move-result-object p1

    .line 548
    new-instance v0, Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$Builder$0dZxvnrCmvkaP7ZFJlyDwgYrsIg;

    invoke-direct {v0, p0}, Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$Builder$0dZxvnrCmvkaP7ZFJlyDwgYrsIg;-><init>(Lcom/google/common/collect/ImmutableMultiset$Builder;)V

    invoke-interface {p1, v0}, Lcom/google/common/collect/Multiset;->forEachEntry(Ljava/util/function/ObjIntConsumer;)V

    goto :goto_0

    .line 550
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;

    :goto_0
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 565
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;

    return-object p0
.end method

.method public addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/Multiset;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableCollection;
    .locals 0

    .line 460
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$Builder;->build()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/google/common/collect/ImmutableMultiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 575
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/Multiset;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method buildJdkBacked()Lcom/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-static {}, Lcom/google/common/collect/ImmutableMultiset;->of()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0

    .line 583
    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/Multiset;

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/JdkBackedImmutableMultiset;->create(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$addAll$0$ImmutableMultiset$Builder(Ljava/lang/Object;I)V
    .locals 0

    .line 548
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/Multiset;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    return-void
.end method

.method public setCount(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/Multiset;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    return-object p0
.end method
