.class public Landroid/icu/impl/locale/XCldrStub$Multimap;
.super Ljava/lang/Object;
.source "XCldrStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XCldrStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Multimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final setClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    const-class p2, Ljava/util/HashSet;

    :goto_0
    iput-object p2, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->setClass:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/lang/Class;Landroid/icu/impl/locale/XCldrStub$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/locale/XCldrStub$Multimap;-><init>(Ljava/util/Map;Ljava/lang/Class;)V

    return-void
.end method

.method private createSetIfMissing(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    invoke-direct {p0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->getInstance()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private getInstance()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object p0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->setClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 84
    new-instance v0, Landroid/icu/util/ICUException;

    invoke-direct {v0, p0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation

    .line 95
    iget-object p0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    return-object p0
.end method

.method public entries()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 112
    new-instance v0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;

    iget-object p0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;-><init>(Ljava/util/Map;Landroid/icu/impl/locale/XCldrStub$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    check-cast p1, Landroid/icu/impl/locale/XCldrStub$Multimap;

    iget-object p1, p1, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    .line 119
    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 88
    iget-object p0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 124
    iget-object p0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 92
    iget-object p0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->createSetIfMissing(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 50
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0, p1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->createSetIfMissing(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public putAll(Landroid/icu/impl/locale/XCldrStub$Multimap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 66
    iget-object p1, p1, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v1, v0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putAll(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)V"
        }
    .end annotation

    .line 56
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0, p1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->createSetIfMissing(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public putAll(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 61
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0, p2}, Landroid/icu/impl/locale/XCldrStub$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public size()I
    .locals 0

    .line 109
    iget-object p0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public values()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 102
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->getInstance()Ljava/util/Set;

    move-result-object p0

    .line 103
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 104
    invoke-interface {p0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method
