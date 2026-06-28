.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;
.super Landroid/support/v4/media/VolumeProviderCompat$Callback;
.source "MediaSessionCompat.java"


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-direct {p0}, Landroid/support/v4/media/VolumeProviderCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChanged(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v1, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    if-eq v1, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    iget v4, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeControl()I

    move-result v5

    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getMaxVolume()I

    move-result v6

    .line 4
    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getCurrentVolume()I

    move-result v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 5
    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-virtual {p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    return-void
.end method
