.class Landroid/support/v4/media/MediaLibrarySessionImplBase$2;
.super Ljava/lang/Object;
.source "MediaLibrarySessionImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaLibrarySessionImplBase;

.field final synthetic val$controller:Landroid/support/v4/media/MediaSession2$ControllerInfo;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$itemCount:I

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaLibrarySessionImplBase;Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$2;->this$0:Landroid/support/v4/media/MediaLibrarySessionImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$2;->val$controller:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    iput-object p3, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$2;->val$parentId:Ljava/lang/String;

    iput p4, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$2;->val$itemCount:I

    iput-object p5, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$2;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$2;->this$0:Landroid/support/v4/media/MediaLibrarySessionImplBase;

    iget-object v1, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$2;->val$controller:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    iget-object v2, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$2;->val$parentId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->access$000(Landroid/support/v4/media/MediaLibrarySessionImplBase;Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-boolean p1, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping notifyChildrenChanged() to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$2;->val$controller:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " because it hasn\'t subscribed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MS2ImplBase"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$2;->this$0:Landroid/support/v4/media/MediaLibrarySessionImplBase;

    invoke-static {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->access$100(Landroid/support/v4/media/MediaLibrarySessionImplBase;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$2;->val$parentId:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$2;->val$itemCount:I

    iget-object p0, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase$2;->val$extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, p0}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
