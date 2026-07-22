.class interface abstract Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"


# virtual methods
.method public abstract getBrowserRootHints()Landroid/os/Bundle;
.end method

.method public abstract getCurrentBrowserInfo()Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;
.end method

.method public abstract getSubscribingBrowsers(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public abstract onCreate()V
.end method

.method public abstract setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
.end method
