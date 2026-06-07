.class public final Lb/c/a/c/t0;
.super Lb/c/a/c/m0;
.source "ImmutableMapValues.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/c/t0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/m0<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final b:Lb/c/a/c/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/p0<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/c/a/c/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/p0<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb/c/a/c/m0;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c/a/c/t0;->b:Lb/c/a/c/p0;

    return-void
.end method

.method public static synthetic a(Lb/c/a/c/t0;)Lb/c/a/c/p0;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/c/a/c/t0;->b:Lb/c/a/c/p0;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lb/c/a/c/o0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/o0<",
            "TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lb/c/a/c/t0;->b:Lb/c/a/c/p0;

    invoke-virtual {v0}, Lb/c/a/c/p0;->entrySet()Lb/c/a/c/u0;

    move-result-object v0

    invoke-virtual {v0}, Lb/c/a/c/u0;->a()Lb/c/a/c/o0;

    move-result-object v0

    .line 3
    new-instance v1, Lb/c/a/c/t0$b;

    invoke-direct {v1, p0, v0}, Lb/c/a/c/t0$b;-><init>(Lb/c/a/c/t0;Lb/c/a/c/o0;)V

    return-object v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/t0;->iterator()Lb/c/a/c/u1;

    move-result-object v0

    invoke-static {v0, p1}, Lb/c/a/c/x0;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lb/c/a/c/t0;->b:Lb/c/a/c/p0;

    new-instance v1, Lb/c/a/c/i;

    invoke-direct {v1, p1}, Lb/c/a/c/i;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public iterator()Lb/c/a/c/u1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/u1<",
            "TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lb/c/a/c/t0$a;

    invoke-direct {v0, p0}, Lb/c/a/c/t0$a;-><init>(Lb/c/a/c/t0;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/t0;->iterator()Lb/c/a/c/u1;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/t0;->b:Lb/c/a/c/p0;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/t0;->b:Lb/c/a/c/p0;

    invoke-virtual {v0}, Lb/c/a/c/p0;->entrySet()Lb/c/a/c/u0;

    move-result-object v0

    invoke-virtual {v0}, Lb/c/a/c/m0;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    sget-object v1, Lb/c/a/c/a;->a:Lb/c/a/c/a;

    invoke-static {v0, v1}, Lb/c/a/c/a0;->a(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lb/c/a/c/t0$c;

    iget-object v1, p0, Lb/c/a/c/t0;->b:Lb/c/a/c/p0;

    invoke-direct {v0, v1}, Lb/c/a/c/t0$c;-><init>(Lb/c/a/c/p0;)V

    return-object v0
.end method
