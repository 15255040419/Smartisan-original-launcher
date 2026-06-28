.class Landroid/support/v4/media/MediaLibrarySessionImplBase$5;
.super Ljava/lang/Object;
.source "MediaLibrarySessionImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaLibrarySessionImplBase;

.field final synthetic val$mediaId:Ljava/lang/String;

.field final synthetic val$result:Landroid/support/v4/media/MediaItem2;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaLibrarySessionImplBase;Ljava/lang/String;Landroid/support/v4/media/MediaItem2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$5;->this$0:Landroid/support/v4/media/MediaLibrarySessionImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$5;->val$mediaId:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$5;->val$result:Landroid/support/v4/media/MediaItem2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$5;->val$mediaId:Ljava/lang/String;

    iget-object p0, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$5;->val$result:Landroid/support/v4/media/MediaItem2;

    invoke-virtual {p1, v0, p0}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onGetItemDone(Ljava/lang/String;Landroid/support/v4/media/MediaItem2;)V

    return-void
.end method
