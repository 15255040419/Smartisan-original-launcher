.class Landroid/support/v4/media/MediaSession2Stub$13;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2Stub$SessionRunnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2Stub;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$command:Landroid/support/v4/media/SessionCommand2;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2Stub;Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2Stub$13;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iput-object p2, p0, Landroid/support/v4/media/MediaSession2Stub$13;->val$command:Landroid/support/v4/media/SessionCommand2;

    iput-object p3, p0, Landroid/support/v4/media/MediaSession2Stub$13;->val$args:Landroid/os/Bundle;

    iput-object p4, p0, Landroid/support/v4/media/MediaSession2Stub$13;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerInfo;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub$13;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iget-object v0, v0, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getCallback()Landroid/support/v4/media/MediaSession2$SessionCallback;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub$13;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iget-object v0, v0, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getInstance()Landroid/support/v4/media/MediaSession2;

    move-result-object v2

    iget-object v4, p0, Landroid/support/v4/media/MediaSession2Stub$13;->val$command:Landroid/support/v4/media/SessionCommand2;

    iget-object v5, p0, Landroid/support/v4/media/MediaSession2Stub$13;->val$args:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/support/v4/media/MediaSession2Stub$13;->val$receiver:Landroid/os/ResultReceiver;

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/media/MediaSession2$SessionCallback;->onCustomCommand(Landroid/support/v4/media/MediaSession2;Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method
