.class public abstract Le/a/z1/i;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:J

.field public b:Lkotlinx/coroutines/scheduling/TaskContext;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    sget-object v0, Le/a/z1/h;->b:Le/a/z1/h;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Le/a/z1/i;-><init>(JLkotlinx/coroutines/scheduling/TaskContext;)V

    return-void
.end method

.method public constructor <init>(JLkotlinx/coroutines/scheduling/TaskContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Le/a/z1/i;->a:J

    iput-object p3, p0, Le/a/z1/i;->b:Lkotlinx/coroutines/scheduling/TaskContext;

    return-void
.end method
