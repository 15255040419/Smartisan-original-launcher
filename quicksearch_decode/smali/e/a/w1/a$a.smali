.class public final Le/a/w1/a$a;
.super Ljava/lang/Object;
.source "HandlerDispatcher.kt"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/w1/a;->invokeOnTimeout(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/w1/a;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Le/a/w1/a;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/w1/a$a;->a:Le/a/w1/a;

    iput-object p2, p0, Le/a/w1/a$a;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/w1/a$a;->a:Le/a/w1/a;

    invoke-static {v0}, Le/a/w1/a;->a(Le/a/w1/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Le/a/w1/a$a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
