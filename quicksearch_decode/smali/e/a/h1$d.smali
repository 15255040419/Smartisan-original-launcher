.class public final Le/a/h1$d;
.super Ld/n/g/a/i;
.source "JobSupport.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld/n/g/a/d;
    c = "kotlinx.coroutines.JobSupport$children$1"
    f = "JobSupport.kt"
    l = {
        0x3b5,
        0x3b7
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h1;->getChildren()Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/n/g/a/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Ld/u/c<",
        "-",
        "Lkotlinx/coroutines/ChildJob;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ld/j;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ld/u/c;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:I

.field public final synthetic k:Le/a/h1;


# direct methods
.method public constructor <init>(Le/a/h1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Le/a/h1$d;->k:Le/a/h1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ld/n/g/a/i;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Ld/n/f/c;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Le/a/h1$d;->j:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/a/h1$d;->i:Ljava/lang/Object;

    check-cast v1, Le/a/m;

    iget-object v1, p0, Le/a/h1$d;->h:Ljava/lang/Object;

    check-cast v1, Le/a/x1/k;

    iget-object v4, p0, Le/a/h1$d;->g:Ljava/lang/Object;

    check-cast v4, Le/a/x1/i;

    iget-object v5, p0, Le/a/h1$d;->f:Ljava/lang/Object;

    check-cast v5, Le/a/l1;

    iget-object v6, p0, Le/a/h1$d;->e:Ljava/lang/Object;

    iget-object v7, p0, Le/a/h1$d;->d:Ljava/lang/Object;

    check-cast v7, Ld/u/c;

    invoke-static {p1}, Ld/f;->a(Ljava/lang/Object;)V

    move-object p1, p0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/h1$d;->d:Ljava/lang/Object;

    check-cast v0, Ld/u/c;

    invoke-static {p1}, Ld/f;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Ld/f;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/h1$d;->c:Ld/u/c;

    .line 4
    iget-object v1, p0, Le/a/h1$d;->k:Le/a/h1;

    invoke-virtual {v1}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v4, v1, Le/a/m;

    if-eqz v4, :cond_3

    move-object v2, v1

    check-cast v2, Le/a/m;

    iget-object v2, v2, Le/a/m;->e:Lkotlinx/coroutines/ChildJob;

    iput-object p1, p0, Le/a/h1$d;->d:Ljava/lang/Object;

    iput-object v1, p0, Le/a/h1$d;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/h1$d;->j:I

    invoke-virtual {p1, v2, p0}, Ld/u/c;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 6
    :cond_3
    instance-of v4, v1, Lkotlinx/coroutines/Incomplete;

    if-eqz v4, :cond_6

    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v4}, Lkotlinx/coroutines/Incomplete;->getList()Le/a/l1;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 7
    invoke-virtual {v4}, Le/a/x1/k;->a()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    check-cast v5, Le/a/x1/k;

    move-object v7, p1

    move-object v6, v1

    move-object v1, v5

    move-object p1, p0

    move-object v5, v4

    .line 8
    :goto_0
    invoke-static {v1, v4}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v3

    if-eqz v8, :cond_6

    .line 9
    instance-of v8, v1, Le/a/m;

    if-eqz v8, :cond_4

    move-object v8, v1

    check-cast v8, Le/a/m;

    .line 10
    iget-object v9, v8, Le/a/m;->e:Lkotlinx/coroutines/ChildJob;

    iput-object v7, p1, Le/a/h1$d;->d:Ljava/lang/Object;

    iput-object v6, p1, Le/a/h1$d;->e:Ljava/lang/Object;

    iput-object v5, p1, Le/a/h1$d;->f:Ljava/lang/Object;

    iput-object v4, p1, Le/a/h1$d;->g:Ljava/lang/Object;

    iput-object v1, p1, Le/a/h1$d;->h:Ljava/lang/Object;

    iput-object v8, p1, Le/a/h1$d;->i:Ljava/lang/Object;

    iput v2, p1, Le/a/h1$d;->j:I

    invoke-virtual {v7, v9, p1}, Ld/u/c;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_4

    return-object v0

    .line 11
    :cond_4
    :goto_1
    invoke-virtual {v1}, Le/a/x1/k;->b()Le/a/x1/k;

    move-result-object v1

    goto :goto_0

    .line 12
    :cond_5
    new-instance p1, Ld/h;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, v0}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    :goto_2
    sget-object p1, Ld/j;->a:Ld/j;

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Ld/j;",
            ">;"
        }
    .end annotation

    new-instance v0, Le/a/h1$d;

    iget-object v1, p0, Le/a/h1$d;->k:Le/a/h1;

    invoke-direct {v0, v1, p2}, Le/a/h1$d;-><init>(Le/a/h1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Ld/u/c;

    iput-object p1, v0, Le/a/h1$d;->c:Ld/u/c;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Le/a/h1$d;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Le/a/h1$d;

    sget-object p2, Ld/j;->a:Ld/j;

    invoke-virtual {p1, p2}, Le/a/h1$d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
