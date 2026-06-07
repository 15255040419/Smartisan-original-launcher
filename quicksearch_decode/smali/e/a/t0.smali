.class public final Le/a/t0;
.super Ljava/lang/Object;
.source "EventLoop.kt"


# direct methods
.method public static final a()Le/a/q0;
    .locals 2

    .line 1
    new-instance v0, Le/a/c;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Le/a/c;-><init>(Ljava/lang/Thread;)V

    return-object v0
.end method
