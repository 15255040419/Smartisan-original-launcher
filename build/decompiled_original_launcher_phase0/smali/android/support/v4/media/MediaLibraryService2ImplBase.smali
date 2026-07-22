.class Landroid/support/v4/media/MediaLibraryService2ImplBase;
.super Landroid/support/v4/media/MediaSessionService2ImplBase;
.source "MediaLibraryService2ImplBase.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/MediaSessionService2ImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getSession()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;
    .locals 0

    .line 2
    invoke-super {p0}, Landroid/support/v4/media/MediaSessionService2ImplBase;->getSession()Landroid/support/v4/media/MediaSession2;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    return-object p0
.end method

.method public bridge synthetic getSession()Landroid/support/v4/media/MediaSession2;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibraryService2ImplBase;->getSession()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    move-result-object p0

    return-object p0
.end method

.method public getSessionType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x35c2683d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x634addd6

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.media.browse.MediaBrowserService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v1, "android.media.MediaLibraryService2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    .line 2
    invoke-super {p0, p1}, Landroid/support/v4/media/MediaSessionService2ImplBase;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    .line 3
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibraryService2ImplBase;->getSession()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;->getImpl()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;

    move-result-object p0

    invoke-interface {p0}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;->getLegacySessionBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    .line 4
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibraryService2ImplBase;->getSession()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2;->getSessionBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method
