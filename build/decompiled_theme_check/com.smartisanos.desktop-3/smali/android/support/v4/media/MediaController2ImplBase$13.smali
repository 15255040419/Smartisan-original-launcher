.class Landroid/support/v4/media/MediaController2ImplBase$13;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaController2ImplBase;

.field final synthetic val$errorCode:I

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaController2ImplBase;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplBase$13;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    iput p2, p0, Landroid/support/v4/media/MediaController2ImplBase$13;->val$errorCode:I

    iput-object p3, p0, Landroid/support/v4/media/MediaController2ImplBase$13;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase$13;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-static {v0}, Landroid/support/v4/media/MediaController2ImplBase;->access$000(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/MediaController2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase$13;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-static {v0}, Landroid/support/v4/media/MediaController2ImplBase;->access$200(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/MediaController2$ControllerCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplBase$13;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-static {v1}, Landroid/support/v4/media/MediaController2ImplBase;->access$000(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/MediaController2;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaController2ImplBase$13;->val$errorCode:I

    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplBase$13;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/media/MediaController2$ControllerCallback;->onError(Landroid/support/v4/media/MediaController2;ILandroid/os/Bundle;)V

    return-void
.end method
