.class Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;
.super Landroid/media/browse/MediaBrowser$ItemCallback;
.source "MediaBrowserCompatApi23.java"


# instance fields
.field protected final mItemCallback:Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ItemCallback;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;->mItemCallback:Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;->mItemCallback:Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onItemLoaded(Landroid/media/browse/MediaBrowser$MediaItem;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;->mItemCallback:Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;->onItemLoaded(Landroid/os/Parcel;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/media/browse/MediaBrowser$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;->mItemCallback:Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;

    invoke-interface {p0, v0}, Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;->onItemLoaded(Landroid/os/Parcel;)V

    :goto_0
    return-void
.end method
