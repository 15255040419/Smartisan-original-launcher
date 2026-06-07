.class public Le/a/d1;
.super Le/a/h1;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/CompletableJob;


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Le/a/h1;-><init>(Z)V

    .line 2
    invoke-virtual {p0, p1}, Le/a/h1;->a(Lkotlinx/coroutines/Job;)V

    .line 3
    invoke-virtual {p0}, Le/a/d1;->k()Z

    move-result p1

    iput-boolean p1, p0, Le/a/d1;->b:Z

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/d1;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public complete()Z
    .locals 1

    .line 1
    sget-object v0, Ld/j;->a:Ld/j;

    invoke-virtual {p0, v0}, Le/a/h1;->g(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    new-instance v0, Le/a/o;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Le/a/o;-><init>(Ljava/lang/Throwable;ZILd/q/c/c;)V

    invoke-virtual {p0, v0}, Le/a/h1;->g(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final k()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/h1;->d()Lkotlinx/coroutines/ChildHandle;

    move-result-object v0

    instance-of v1, v0, Le/a/m;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Le/a/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v0, Le/a/g1;->d:Lkotlinx/coroutines/Job;

    check-cast v0, Le/a/h1;

    if-eqz v0, :cond_3

    .line 2
    :goto_0
    invoke-virtual {v0}, Le/a/h1;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_1
    invoke-virtual {v0}, Le/a/h1;->d()Lkotlinx/coroutines/ChildHandle;

    move-result-object v0

    instance-of v3, v0, Le/a/m;

    if-nez v3, :cond_2

    move-object v0, v2

    :cond_2
    check-cast v0, Le/a/m;

    if-eqz v0, :cond_3

    iget-object v0, v0, Le/a/g1;->d:Lkotlinx/coroutines/Job;

    check-cast v0, Le/a/h1;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v1
.end method
