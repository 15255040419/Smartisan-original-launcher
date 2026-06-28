.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;
.super Landroid/support/v4/app/SupportActivity$ExtraData;
.source "MediaControllerCompat.java"


# instance fields
.field private final mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/SupportActivity$ExtraData;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-void
.end method


# virtual methods
.method getMediaController()Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object p0
.end method
