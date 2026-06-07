.class public final Lb/c/a/c/r0$b;
.super Lb/c/a/c/r0;
.source "ImmutableMapEntrySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/r0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final transient c:Lb/c/a/c/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/p0<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final transient d:Lb/c/a/c/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/o0<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/c/a/c/p0;Lb/c/a/c/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/p0<",
            "TK;TV;>;",
            "Lb/c/a/c/o0<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lb/c/a/c/r0;-><init>()V

    .line 3
    iput-object p1, p0, Lb/c/a/c/r0$b;->c:Lb/c/a/c/p0;

    .line 4
    iput-object p2, p0, Lb/c/a/c/r0$b;->d:Lb/c/a/c/o0;

    return-void
.end method

.method public constructor <init>(Lb/c/a/c/p0;[Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/p0<",
            "TK;TV;>;[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lb/c/a/c/o0;->a([Ljava/lang/Object;)Lb/c/a/c/o0;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lb/c/a/c/r0$b;-><init>(Lb/c/a/c/p0;Lb/c/a/c/o0;)V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/r0$b;->d:Lb/c/a/c/o0;

    invoke-virtual {v0, p1, p2}, Lb/c/a/c/o0;->a([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public e()Lb/c/a/c/o0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/o0<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/c/a/c/k1;

    iget-object v1, p0, Lb/c/a/c/r0$b;->d:Lb/c/a/c/o0;

    invoke-direct {v0, p0, v1}, Lb/c/a/c/k1;-><init>(Lb/c/a/c/m0;Lb/c/a/c/o0;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/r0$b;->d:Lb/c/a/c/o0;

    invoke-virtual {v0, p1}, Lb/c/a/c/o0;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public h()Lb/c/a/c/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/p0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/r0$b;->c:Lb/c/a/c/p0;

    return-object v0
.end method

.method public iterator()Lb/c/a/c/u1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/u1<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lb/c/a/c/r0$b;->d:Lb/c/a/c/o0;

    invoke-virtual {v0}, Lb/c/a/c/o0;->iterator()Lb/c/a/c/u1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/r0$b;->iterator()Lb/c/a/c/u1;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/r0$b;->d:Lb/c/a/c/o0;

    invoke-virtual {v0}, Lb/c/a/c/o0;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
