.class Landroid/support/v4/media/MediaLibrarySessionImplBase$4;
.super Ljava/lang/Object;
.source "MediaLibrarySessionImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaLibrarySessionImplBase;

.field final synthetic val$root:Landroid/support/v4/media/MediaLibraryService2$LibraryRoot;

.field final synthetic val$rootHints:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaLibrarySessionImplBase;Landroid/os/Bundle;Landroid/support/v4/media/MediaLibraryService2$LibraryRoot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$4;->this$0:Landroid/support/v4/media/MediaLibrarySessionImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$4;->val$rootHints:Landroid/os/Bundle;

    iput-object p3, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$4;->val$root:Landroid/support/v4/media/MediaLibraryService2$LibraryRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$4;->val$rootHints:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$4;->val$root:Landroid/support/v4/media/MediaLibraryService2$LibraryRoot;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/media/MediaLibraryService2$LibraryRoot;->getRootId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object p0, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$4;->val$root:Landroid/support/v4/media/MediaLibraryService2$LibraryRoot;

    if-nez p0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibraryService2$LibraryRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 4
    :goto_1
    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onGetLibraryRootDone(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
