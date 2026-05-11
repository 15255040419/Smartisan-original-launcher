.class Landroid/support/v4/media/MediaController2ImplBase$16;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaController2ImplBase;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$command:Landroid/support/v4/media/SessionCommand2;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaController2ImplBase;Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplBase$16;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaController2ImplBase$16;->val$command:Landroid/support/v4/media/SessionCommand2;

    iput-object p3, p0, Landroid/support/v4/media/MediaController2ImplBase$16;->val$args:Landroid/os/Bundle;

    iput-object p4, p0, Landroid/support/v4/media/MediaController2ImplBase$16;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase$16;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-static {v0}, Landroid/support/v4/media/MediaController2ImplBase;->access$200(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/MediaController2$ControllerCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplBase$16;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-static {v1}, Landroid/support/v4/media/MediaController2ImplBase;->access$000(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/MediaController2;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaController2ImplBase$16;->val$command:Landroid/support/v4/media/SessionCommand2;

    iget-object v3, p0, Landroid/support/v4/media/MediaController2ImplBase$16;->val$args:Landroid/os/Bundle;

    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplBase$16;->val$receiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/support/v4/media/MediaController2$ControllerCallback;->onCustomCommand(Landroid/support/v4/media/MediaController2;Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method
