.class Landroid/support/v4/media/MediaLibrarySessionImplBase$3;
.super Ljava/lang/Object;
.source "MediaLibrarySessionImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaLibrarySessionImplBase;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$itemCount:I

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaLibrarySessionImplBase;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$3;->this$0:Landroid/support/v4/media/MediaLibrarySessionImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$3;->val$query:Ljava/lang/String;

    iput p3, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$3;->val$itemCount:I

    iput-object p4, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$3;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$3;->val$query:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$3;->val$itemCount:I

    iget-object p0, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$3;->val$extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, p0}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onSearchResultChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
