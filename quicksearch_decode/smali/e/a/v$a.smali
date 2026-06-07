.class public final Le/a/v$a;
.super Ld/n/b;
.source "CoroutineDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/n/b<",
        "Lkotlin/coroutines/ContinuationInterceptor;",
        "Le/a/v;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$b;

    .line 3
    sget-object v1, Le/a/v$a$a;->b:Le/a/v$a$a;

    .line 4
    invoke-direct {p0, v0, v1}, Ld/n/b;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic constructor <init>(Ld/q/c/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/v$a;-><init>()V

    return-void
.end method
