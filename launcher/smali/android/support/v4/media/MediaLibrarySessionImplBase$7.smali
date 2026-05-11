.class Landroid/support/v4/media/MediaLibrarySessionImplBase$7;
.super Ljava/lang/Object;
.source "MediaLibrarySessionImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaLibrarySessionImplBase;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$page:I

.field final synthetic val$pageSize:I

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaLibrarySessionImplBase;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$7;->this$0:Landroid/support/v4/media/MediaLibrarySessionImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$7;->val$query:Ljava/lang/String;

    iput p3, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$7;->val$page:I

    iput p4, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$7;->val$pageSize:I

    iput-object p5, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$7;->val$result:Ljava/util/List;

    iput-object p6, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$7;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 6

    .line 1
    iget-object v1, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$7;->val$query:Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$7;->val$page:I

    iget v3, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$7;->val$pageSize:I

    iget-object v4, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$7;->val$result:Ljava/util/List;

    iget-object v5, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$7;->val$extras:Landroid/os/Bundle;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onGetSearchResultDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    return-void
.end method
