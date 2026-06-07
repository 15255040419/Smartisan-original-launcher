.class public final Le/a/v0$a;
.super Ld/n/b;
.source "Executors.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/n/b<",
        "Le/a/v;",
        "Le/a/v0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, Le/a/v;->a:Le/a/v$a;

    .line 3
    sget-object v1, Le/a/v0$a$a;->b:Le/a/v0$a$a;

    .line 4
    invoke-direct {p0, v0, v1}, Ld/n/b;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic constructor <init>(Ld/q/c/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/v0$a;-><init>()V

    return-void
.end method
