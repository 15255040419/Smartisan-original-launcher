.class public final Lb/c/b/o/m/i$b;
.super Lb/c/b/m;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/b/o/m/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/b/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb/c/b/o/m/i$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb/c/b/o/m/i$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb/c/b/m;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c/b/o/m/i$b;->a:Lcom/google/gson/internal/ObjectConstructor;

    .line 3
    iput-object p2, p0, Lb/c/b/o/m/i$b;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lb/c/b/q/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/q/a;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lb/c/b/q/a;->t()Lb/c/b/q/b;

    move-result-object v0

    sget-object v1, Lb/c/b/q/b;->i:Lb/c/b/q/b;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lb/c/b/q/a;->q()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lb/c/b/o/m/i$b;->a:Lcom/google/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lcom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lb/c/b/q/a;->b()V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lb/c/b/q/a;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p1}, Lb/c/b/q/a;->p()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lb/c/b/o/m/i$b;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/c/b/o/m/i$c;

    if-eqz v1, :cond_2

    .line 8
    iget-boolean v2, v1, Lb/c/b/o/m/i$c;->c:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1, p1, v0}, Lb/c/b/o/m/i$c;->a(Lb/c/b/q/a;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lb/c/b/q/a;->z()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p1}, Lb/c/b/q/a;->g()V

    return-object v0

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    .line 13
    new-instance v0, Lb/c/b/k;

    invoke-direct {v0, p1}, Lb/c/b/k;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Lb/c/b/q/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/q/c;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 14
    invoke-virtual {p1}, Lb/c/b/q/c;->k()Lb/c/b/q/c;

    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lb/c/b/q/c;->d()Lb/c/b/q/c;

    .line 16
    :try_start_0
    iget-object v0, p0, Lb/c/b/o/m/i$b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/c/b/o/m/i$c;

    .line 17
    invoke-virtual {v1, p2}, Lb/c/b/o/m/i$c;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    iget-object v2, v1, Lb/c/b/o/m/i$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lb/c/b/q/c;->a(Ljava/lang/String;)Lb/c/b/q/c;

    .line 19
    invoke-virtual {v1, p1, p2}, Lb/c/b/o/m/i$c;->a(Lb/c/b/q/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p1}, Lb/c/b/q/c;->f()Lb/c/b/q/c;

    return-void

    :catch_0
    move-exception p1

    .line 21
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
