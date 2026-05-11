.class Landroid/support/v4/media/MediaSession2ImplBase$5;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2ImplBase;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$command:Landroid/support/v4/media/SessionCommand2;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase$5;->this$0:Landroid/support/v4/media/MediaSession2ImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase$5;->val$command:Landroid/support/v4/media/SessionCommand2;

    iput-object p3, p0, Landroid/support/v4/media/MediaSession2ImplBase$5;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$5;->val$command:Landroid/support/v4/media/SessionCommand2;

    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase$5;->val$args:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onCustomCommand(Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method
