.class public abstract Landroid/support/v4/media/MediaSessionService2;
.super Landroid/app/Service;
.source "MediaSessionService2.java"


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.MediaSessionService2"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.media.session"


# instance fields
.field private final mImpl:Landroid/support/v4/media/MediaSessionService2$SupportLibraryImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSessionService2;->createImpl()Landroid/support/v4/media/MediaSessionService2$SupportLibraryImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaSessionService2;->mImpl:Landroid/support/v4/media/MediaSessionService2$SupportLibraryImpl;

    return-void
.end method


# virtual methods
.method createImpl()Landroid/support/v4/media/MediaSessionService2$SupportLibraryImpl;
    .locals 0

    .line 1
    new-instance p0, Landroid/support/v4/media/MediaSessionService2ImplBase;

    invoke-direct {p0}, Landroid/support/v4/media/MediaSessionService2ImplBase;-><init>()V

    return-object p0
.end method

.method public final getSession()Landroid/support/v4/media/MediaSession2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionService2;->mImpl:Landroid/support/v4/media/MediaSessionService2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaSessionService2$SupportLibraryImpl;->getSession()Landroid/support/v4/media/MediaSession2;

    move-result-object p0

    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionService2;->mImpl:Landroid/support/v4/media/MediaSessionService2$SupportLibraryImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaSessionService2$SupportLibraryImpl;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionService2;->mImpl:Landroid/support/v4/media/MediaSessionService2$SupportLibraryImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/media/MediaSessionService2$SupportLibraryImpl;->onCreate(Landroid/support/v4/media/MediaSessionService2;)V

    return-void
.end method

.method public abstract onCreateSession(Ljava/lang/String;)Landroid/support/v4/media/MediaSession2;
.end method

.method public onUpdateNotification()Landroid/support/v4/media/MediaSessionService2$MediaNotification;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionService2;->mImpl:Landroid/support/v4/media/MediaSessionService2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaSessionService2$SupportLibraryImpl;->onUpdateNotification()Landroid/support/v4/media/MediaSessionService2$MediaNotification;

    move-result-object p0

    return-object p0
.end method
