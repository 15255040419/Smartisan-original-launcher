.class public final Le/a/x1/e;
.super Ljava/lang/Object;
.source "Scopes.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# instance fields
.field public final a:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/x1/e;->a:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/x1/e;->a:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoroutineScope(coroutineContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/a/x1/e;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
