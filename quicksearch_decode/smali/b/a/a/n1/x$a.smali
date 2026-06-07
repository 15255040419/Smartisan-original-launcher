.class public Lb/a/a/n1/x$a;
.super Ljava/lang/Thread;
.source "PriorityThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/n1/x;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/n1/x;


# direct methods
.method public constructor <init>(Lb/a/a/n1/x;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/n1/x$a;->a:Lb/a/a/n1/x;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/n1/x$a;->a:Lb/a/a/n1/x;

    invoke-static {v0}, Lb/a/a/n1/x;->a(Lb/a/a/n1/x;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
