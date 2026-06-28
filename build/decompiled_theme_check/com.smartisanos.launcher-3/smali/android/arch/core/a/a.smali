.class final Landroid/arch/core/a/a;
.super Ljava/lang/Object;
.source "ArchTaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {}, Landroid/arch/core/a/c;->getInstance()Landroid/arch/core/a/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/arch/core/a/c;->b(Ljava/lang/Runnable;)V

    return-void
.end method
