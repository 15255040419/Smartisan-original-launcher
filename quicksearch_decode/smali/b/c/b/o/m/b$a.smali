.class public final Lb/c/b/o/m/b$a;
.super Lb/c/b/m;
.source "CollectionTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/b/o/m/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/b/m<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lb/c/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/b/m<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/c/b/c;Ljava/lang/reflect/Type;Lb/c/b/m;Lcom/google/gson/internal/ObjectConstructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/c;",
            "Ljava/lang/reflect/Type;",
            "Lb/c/b/m<",
            "TE;>;",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb/c/b/m;-><init>()V

    .line 2
    new-instance v0, Lb/c/b/o/m/m;

    invoke-direct {v0, p1, p3, p2}, Lb/c/b/o/m/m;-><init>(Lb/c/b/c;Lb/c/b/m;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lb/c/b/o/m/b$a;->a:Lb/c/b/m;

    .line 3
    iput-object p4, p0, Lb/c/b/o/m/b$a;->b:Lcom/google/gson/internal/ObjectConstructor;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lb/c/b/q/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/c/b/o/m/b$a;->a(Lb/c/b/q/a;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/c/b/q/a;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/q/a;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lb/c/b/q/a;->t()Lb/c/b/q/b;

    move-result-object v0

    sget-object v1, Lb/c/b/q/b;->i:Lb/c/b/q/b;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lb/c/b/q/a;->q()V

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lb/c/b/o/m/b$a;->b:Lcom/google/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lcom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 6
    invoke-virtual {p1}, Lb/c/b/q/a;->a()V

    .line 7
    :goto_0
    invoke-virtual {p1}, Lb/c/b/q/a;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lb/c/b/o/m/b$a;->a:Lb/c/b/m;

    invoke-virtual {v1, p1}, Lb/c/b/m;->a(Lb/c/b/q/a;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lb/c/b/q/a;->f()V

    return-object v0
.end method

.method public bridge synthetic a(Lb/c/b/q/c;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lb/c/b/o/m/b$a;->a(Lb/c/b/q/c;Ljava/util/Collection;)V

    return-void
.end method

.method public a(Lb/c/b/q/c;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/q/c;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 11
    invoke-virtual {p1}, Lb/c/b/q/c;->k()Lb/c/b/q/c;

    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Lb/c/b/q/c;->c()Lb/c/b/q/c;

    .line 13
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lb/c/b/o/m/b$a;->a:Lb/c/b/m;

    invoke-virtual {v1, p1, v0}, Lb/c/b/m;->a(Lb/c/b/q/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1}, Lb/c/b/q/c;->e()Lb/c/b/q/c;

    return-void
.end method
