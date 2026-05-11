.class Landroid/support/v4/media/MediaSessionManagerImplApi28;
.super Landroid/support/v4/media/MediaSessionManagerImplApi21;
.source "MediaSessionManagerImplApi28.java"


# instance fields
.field mObject:Landroid/media/session/MediaSessionManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaSessionManagerImplApi21;-><init>(Landroid/content/Context;)V

    const-string v0, "media_session"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Landroid/support/v4/media/MediaSessionManagerImplApi28;->mObject:Landroid/media/session/MediaSessionManager;

    return-void
.end method


# virtual methods
.method public isTrustedForMediaControl(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v4/media/MediaSessionManagerImplApi28$RemoteUserInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionManagerImplApi28;->mObject:Landroid/media/session/MediaSessionManager;

    check-cast p1, Landroid/support/v4/media/MediaSessionManagerImplApi28$RemoteUserInfo;

    iget-object p1, p1, Landroid/support/v4/media/MediaSessionManagerImplApi28$RemoteUserInfo;->mObject:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSessionManager;->isTrustedForMediaControl(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
