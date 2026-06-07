.class public final Ld/u/b;
.super Ld/u/c;
.source "SequenceBuilder.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/coroutines/Continuation;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ld/u/c<",
        "TT;>;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/coroutines/Continuation<",
        "Ld/j;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public d:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ld/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/u/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ld/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Ld/u/b;->b:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 7
    iput p1, p0, Ld/u/b;->a:I

    .line 8
    iput-object p2, p0, Ld/u/b;->d:Lkotlin/coroutines/Continuation;

    .line 9
    invoke-static {}, Ld/n/f/c;->a()Ljava/lang/Object;

    move-result-object p1

    .line 10
    invoke-static {}, Ld/n/f/c;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Ld/n/g/a/f;->c(Lkotlin/coroutines/Continuation;)V

    :cond_0
    invoke-static {}, Ld/n/f/c;->a()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Ld/j;->a:Ld/j;

    return-object p1
.end method

.method public final a()Ljava/lang/Throwable;
    .locals 3

    .line 2
    iget v0, p0, Ld/u/b;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state of the iterator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ld/u/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator has failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :goto_0
    return-object v0
.end method

.method public final a(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ld/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ld/u/b;->d:Lkotlin/coroutines/Continuation;

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ld/u/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld/u/b;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 1
    sget-object v0, Ld/n/e;->a:Ld/n/e;

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    .line 1
    :goto_0
    iget v0, p0, Ld/u/b;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ld/u/b;->a()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_1
    return v3

    .line 3
    :cond_2
    iget-object v0, p0, Ld/u/b;->c:Ljava/util/Iterator;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iput v2, p0, Ld/u/b;->a:I

    return v3

    .line 5
    :cond_3
    iput-object v1, p0, Ld/u/b;->c:Ljava/util/Iterator;

    goto :goto_1

    .line 6
    :cond_4
    invoke-static {}, Ld/q/c/d;->a()V

    throw v1

    :cond_5
    :goto_1
    const/4 v0, 0x5

    .line 7
    iput v0, p0, Ld/u/b;->a:I

    .line 8
    iget-object v0, p0, Ld/u/b;->d:Lkotlin/coroutines/Continuation;

    if-eqz v0, :cond_6

    .line 9
    iput-object v1, p0, Ld/u/b;->d:Lkotlin/coroutines/Continuation;

    .line 10
    sget-object v1, Ld/j;->a:Ld/j;

    sget-object v2, Ld/e;->a:Ld/e$a;

    invoke-static {v1}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_6
    invoke-static {}, Ld/q/c/d;->a()V

    throw v1
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Ld/u/b;->a:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ld/u/b;->a:I

    .line 3
    iget-object v0, p0, Ld/u/b;->b:Ljava/lang/Object;

    .line 4
    iput-object v3, p0, Ld/u/b;->b:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ld/u/b;->a()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 6
    :cond_1
    iput v1, p0, Ld/u/b;->a:I

    .line 7
    iget-object v0, p0, Ld/u/b;->c:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {}, Ld/q/c/d;->a()V

    throw v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Ld/u/b;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ld/f;->a(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 2
    iput p1, p0, Ld/u/b;->a:I

    return-void
.end method
