.class public final Le/a/x1/y$d;
.super Ld/q/c/e;
.source "ThreadContext.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/x1/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/q/c/e;",
        "Lkotlin/jvm/functions/Function2<",
        "Le/a/x1/a0;",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "Le/a/x1/a0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/x1/y$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/x1/y$d;

    invoke-direct {v0}, Le/a/x1/y$d;-><init>()V

    sput-object v0, Le/a/x1/y$d;->b:Le/a/x1/y$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ld/q/c/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Le/a/x1/a0;Lkotlin/coroutines/CoroutineContext$Element;)Le/a/x1/a0;
    .locals 1

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/ThreadContextElement;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lkotlinx/coroutines/ThreadContextElement;

    invoke-virtual {p1}, Le/a/x1/a0;->a()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlinx/coroutines/ThreadContextElement;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/a/x1/a0;->a(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Le/a/x1/a0;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-virtual {p0, p1, p2}, Le/a/x1/y$d;->a(Le/a/x1/a0;Lkotlin/coroutines/CoroutineContext$Element;)Le/a/x1/a0;

    return-object p1
.end method
