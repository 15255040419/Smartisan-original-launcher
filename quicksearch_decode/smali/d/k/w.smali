.class public Ld/k/w;
.super Ld/k/v;
.source "Maps.kt"


# direct methods
.method public static final a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ld/k/r;->a:Ld/k/r;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ld/h;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K, V>"

    invoke-direct {v0, v1}, Ld/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final a(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ld/d<",
            "+TK;+TV;>;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "$this$toMap"

    invoke-static {p0, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 5
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Ld/k/v;->a(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-static {p0, v1}, Ld/k/w;->a(Ljava/lang/Iterable;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_1

    .line 7
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Ld/d;

    invoke-static {p0}, Ld/k/v;->a(Ld/d;)Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {}, Ld/k/w;->a()Ljava/util/Map;

    move-result-object v1

    :goto_1
    return-object v1

    .line 9
    :cond_3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0, v0}, Ld/k/w;->a(Ljava/lang/Iterable;Ljava/util/Map;)Ljava/util/Map;

    invoke-static {v0}, Ld/k/w;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/Iterable;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;-TV;>;>(",
            "Ljava/lang/Iterable<",
            "+",
            "Ld/d<",
            "+TK;+TV;>;>;TM;)TM;"
        }
    .end annotation

    const-string v0, "$this$toMap"

    invoke-static {p0, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p1, p0}, Ld/k/w;->a(Ljava/util/Map;Ljava/lang/Iterable;)V

    return-object p1
.end method

.method public static final a(Ljava/util/Map;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;-TV;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Ld/d<",
            "+TK;+TV;>;>;)V"
        }
    .end annotation

    const-string v0, "$this$putAll"

    invoke-static {p0, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairs"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/d;

    invoke-virtual {v0}, Ld/d;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ld/d;->b()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final b(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "$this$optimizeReadOnlyMap"

    invoke-static {p0, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ld/k/v;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Ld/k/w;->a()Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method
