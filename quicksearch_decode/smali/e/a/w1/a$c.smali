.class public final Le/a/w1/a$c;
.super Ld/q/c/e;
.source "HandlerDispatcher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/w1/a;->scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/q/c/e;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Ld/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/w1/a;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Le/a/w1/a;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Le/a/w1/a$c;->b:Le/a/w1/a;

    iput-object p2, p0, Le/a/w1/a$c;->c:Ljava/lang/Runnable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld/q/c/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/w1/a$c;->b:Le/a/w1/a;

    invoke-static {p1}, Le/a/w1/a;->a(Le/a/w1/a;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Le/a/w1/a$c;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Le/a/w1/a$c;->a(Ljava/lang/Throwable;)V

    sget-object p1, Ld/j;->a:Ld/j;

    return-object p1
.end method
