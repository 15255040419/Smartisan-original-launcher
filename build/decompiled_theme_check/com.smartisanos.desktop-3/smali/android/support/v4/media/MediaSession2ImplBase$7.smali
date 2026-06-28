.class Landroid/support/v4/media/MediaSession2ImplBase$7;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2ImplBase;

.field final synthetic val$errorCode:I

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase$7;->this$0:Landroid/support/v4/media/MediaSession2ImplBase;

    iput p2, p0, Landroid/support/v4/media/MediaSession2ImplBase$7;->val$errorCode:I

    iput-object p3, p0, Landroid/support/v4/media/MediaSession2ImplBase$7;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$7;->val$errorCode:I

    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase$7;->val$extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p0}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onError(ILandroid/os/Bundle;)V

    return-void
.end method
