.class public abstract Landroid/support/v4/media/MediaLibraryService2;
.super Landroid/support/v4/media/MediaSessionService2;
.source "MediaLibraryService2.java"


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.MediaLibraryService2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/MediaSessionService2;-><init>()V

    return-void
.end method


# virtual methods
.method createImpl()Landroid/support/v4/media/MediaSessionService2$SupportLibraryImpl;
    .locals 0

    .line 1
    new-instance p0, Landroid/support/v4/media/MediaLibraryService2ImplBase;

    invoke-direct {p0}, Landroid/support/v4/media/MediaLibraryService2ImplBase;-><init>()V

    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/media/MediaSessionService2;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/media/MediaSessionService2;->onCreate()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSessionService2;->getSession()Landroid/support/v4/media/MediaSession2;

    move-result-object p0

    .line 3
    instance-of p0, p0, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    if-eqz p0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Expected MediaLibrarySession, but returned MediaSession2"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract onCreateSession(Ljava/lang/String;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;
.end method

.method public bridge synthetic onCreateSession(Ljava/lang/String;)Landroid/support/v4/media/MediaSession2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaLibraryService2;->onCreateSession(Ljava/lang/String;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    move-result-object p0

    return-object p0
.end method
