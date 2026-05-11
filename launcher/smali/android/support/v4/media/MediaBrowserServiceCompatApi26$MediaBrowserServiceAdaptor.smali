.class Landroid/support/v4/media/MediaBrowserServiceCompatApi26$MediaBrowserServiceAdaptor;
.super Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;
.source "MediaBrowserServiceCompatApi26.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;)V

    return-void
.end method


# virtual methods
.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;->mServiceProxy:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;

    check-cast p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ResultWrapper;

    invoke-direct {v0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ResultWrapper;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {p0, p1, v0, p3}, Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ResultWrapper;Landroid/os/Bundle;)V

    return-void
.end method
