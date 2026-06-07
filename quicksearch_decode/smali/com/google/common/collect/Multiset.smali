.class public interface abstract Lcom/google/common/collect/Multiset;
.super Ljava/lang/Object;
.source "Multiset.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multiset$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public static synthetic a(Ljava/util/function/Consumer;Lcom/google/common/collect/Multiset$Entry;)V
    .locals 2

    .line 2
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 4
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/function/ObjIntConsumer;Lcom/google/common/collect/Multiset$Entry;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result p1

    invoke-interface {p0, v0, p1}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public abstract add(Ljava/lang/Object;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation
.end method

.method public abstract add(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public abstract containsAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract count(Ljava/lang/Object;)I
.end method

.method public abstract elementSet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract entrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
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

    .line 1
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lb/c/a/c/p;

    invoke-direct {v1, p1}, Lb/c/a/c/p;-><init>(Ljava/util/function/Consumer;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachEntry(Ljava/util/function/ObjIntConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ObjIntConsumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lb/c/a/c/o;

    invoke-direct {v1, p1}, Lb/c/a/c/o;-><init>(Ljava/util/function/ObjIntConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract hashCode()I
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;I)I
.end method

.method public abstract remove(Ljava/lang/Object;)Z
.end method

.method public abstract removeAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract retainAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract setCount(Ljava/lang/Object;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation
.end method

.method public abstract setCount(Ljava/lang/Object;II)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation
.end method

.method public abstract size()I
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

    .line 1
    invoke-static {p0}, Lb/c/a/c/e1;->a(Lcom/google/common/collect/Multiset;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method
