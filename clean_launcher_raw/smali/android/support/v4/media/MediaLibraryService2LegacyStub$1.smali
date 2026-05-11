.class Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;
.super Ljava/lang/Object;
.source "MediaLibraryService2LegacyStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaLibraryService2LegacyStub;

.field final synthetic val$controller:Landroid/support/v4/media/MediaSession2$ControllerInfo;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;

.field final synthetic val$result:Landroid/support/v4/media/MediaBrowserServiceCompat$Result;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaLibraryService2LegacyStub;Landroid/os/Bundle;Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->this$0:Landroid/support/v4/media/MediaLibraryService2LegacyStub;

    iput-object p2, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->val$options:Landroid/os/Bundle;

    iput-object p3, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->val$controller:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    iput-object p4, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->val$parentId:Ljava/lang/String;

    iput-object p5, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->val$result:Landroid/support/v4/media/MediaBrowserServiceCompat$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->val$options:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->this$0:Landroid/support/v4/media/MediaLibraryService2LegacyStub;

    invoke-static {v1}, Landroid/support/v4/media/MediaLibraryService2LegacyStub;->access$000(Landroid/support/v4/media/MediaLibraryService2LegacyStub;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;

    move-result-object v1

    invoke-interface {v1}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->val$options:Landroid/os/Bundle;

    const-string v1, "android.media.browse.extra.PAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 4
    iget-object v0, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->val$options:Landroid/os/Bundle;

    const-string v1, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-lez v6, :cond_0

    if-lez v7, :cond_0

    .line 5
    iget-object v0, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->this$0:Landroid/support/v4/media/MediaLibraryService2LegacyStub;

    invoke-static {v0}, Landroid/support/v4/media/MediaLibraryService2LegacyStub;->access$000(Landroid/support/v4/media/MediaLibraryService2LegacyStub;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;->getCallback()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v2

    iget-object v0, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->this$0:Landroid/support/v4/media/MediaLibraryService2LegacyStub;

    .line 6
    invoke-static {v0}, Landroid/support/v4/media/MediaLibraryService2LegacyStub;->access$000(Landroid/support/v4/media/MediaLibraryService2LegacyStub;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;->getInstance()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->val$controller:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    iget-object v5, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->val$parentId:Ljava/lang/String;

    iget-object v8, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->val$options:Landroid/os/Bundle;

    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onGetChildren(Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->val$result:Landroid/support/v4/media/MediaBrowserServiceCompat$Result;

    invoke-static {v0}, Landroid/support/v4/media/MediaUtils2;->convertToMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 8
    :catch_0
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->this$0:Landroid/support/v4/media/MediaLibraryService2LegacyStub;

    invoke-static {v0}, Landroid/support/v4/media/MediaLibraryService2LegacyStub;->access$000(Landroid/support/v4/media/MediaLibraryService2LegacyStub;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;->getCallback()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->this$0:Landroid/support/v4/media/MediaLibraryService2LegacyStub;

    .line 9
    invoke-static {v0}, Landroid/support/v4/media/MediaLibraryService2LegacyStub;->access$000(Landroid/support/v4/media/MediaLibraryService2LegacyStub;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;->getInstance()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->val$controller:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    iget-object v4, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->val$parentId:Ljava/lang/String;

    const/4 v5, 0x1

    const v6, 0x7fffffff

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onGetChildren(Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 10
    iget-object p0, p0, Landroid/support/v4/media/MediaLibraryService2LegacyStub$1;->val$result:Landroid/support/v4/media/MediaBrowserServiceCompat$Result;

    invoke-static {v0}, Landroid/support/v4/media/MediaUtils2;->convertToMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method
