.class public Landroid/support/v4/media/AudioFocusHandler;
.super Ljava/lang/Object;
.source "AudioFocusHandler.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AudioFocusHandler"


# instance fields
.field private final mImpl:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/MediaSession2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaSession2;)V

    iput-object v0, p0, Landroid/support/v4/media/AudioFocusHandler;->mImpl:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/AudioFocusHandler;->mImpl:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;->close()V

    return-void
.end method

.method public onPauseRequested()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/AudioFocusHandler;->mImpl:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;->onPauseRequested()Z

    move-result p0

    return p0
.end method

.method public onPlayRequested()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/AudioFocusHandler;->mImpl:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;->onPlayRequested()Z

    move-result p0

    return p0
.end method

.method public onPlayerStateChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/AudioFocusHandler;->mImpl:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;->onPlayerStateChanged(I)V

    return-void
.end method

.method public sendIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/AudioFocusHandler;->mImpl:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;->sendIntent(Landroid/content/Intent;)V

    return-void
.end method
