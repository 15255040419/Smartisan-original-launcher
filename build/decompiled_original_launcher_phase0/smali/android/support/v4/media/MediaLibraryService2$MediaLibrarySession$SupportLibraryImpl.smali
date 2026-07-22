.class interface abstract Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;
.super Ljava/lang/Object;
.source "MediaLibraryService2.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;


# virtual methods
.method public abstract getCallback()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;
.end method

.method public abstract getInstance()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;
.end method

.method public abstract getLegacySessionBinder()Landroid/os/IBinder;
.end method

.method public abstract notifyChildrenChanged(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract notifyChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract notifySearchResultChanged(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract onGetChildrenOnExecutor(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)V
.end method

.method public abstract onGetItemOnExecutor(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;)V
.end method

.method public abstract onGetLibraryRootOnExecutor(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/os/Bundle;)V
.end method

.method public abstract onGetSearchResultOnExecutor(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)V
.end method

.method public abstract onSearchOnExecutor(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onSubscribeOnExecutor(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onUnsubscribeOnExecutor(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;)V
.end method
