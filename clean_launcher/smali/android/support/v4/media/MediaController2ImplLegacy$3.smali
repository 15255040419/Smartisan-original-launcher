.class Landroid/support/v4/media/MediaController2ImplLegacy$3;
.super Landroid/os/ResultReceiver;
.source "MediaController2ImplLegacy.java"


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaController2ImplLegacy;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$300(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-virtual {p0, p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->onConnectedNotLocked(Landroid/os/Bundle;)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Landroid/support/v4/media/MediaController2ImplLegacy$3$1;

    invoke-direct {p2, p0}, Landroid/support/v4/media/MediaController2ImplLegacy$3$1;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$3;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->close()V

    :goto_0
    return-void
.end method
