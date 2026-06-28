.class public final Landroid/support/v4/media/MediaController2$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaController2.java"


# static fields
.field private static final KEY_AUDIO_ATTRIBUTES:Ljava/lang/String; = "android.media.audio_info.audio_attrs"

.field private static final KEY_CONTROL_TYPE:Ljava/lang/String; = "android.media.audio_info.control_type"

.field private static final KEY_CURRENT_VOLUME:Ljava/lang/String; = "android.media.audio_info.current_volume"

.field private static final KEY_MAX_VOLUME:Ljava/lang/String; = "android.media.audio_info.max_volume"

.field private static final KEY_PLAYBACK_TYPE:Ljava/lang/String; = "android.media.audio_info.playback_type"

.field public static final PLAYBACK_TYPE_LOCAL:I = 0x1

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x2


# instance fields
.field private final mAudioAttrsCompat:Landroid/support/v4/media/AudioAttributesCompat;

.field private final mControlType:I

.field private final mCurrentVolume:I

.field private final mMaxVolume:I

.field private final mPlaybackType:I


# direct methods
.method constructor <init>(ILandroid/support/v4/media/AudioAttributesCompat;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/media/MediaController2$PlaybackInfo;->mPlaybackType:I

    .line 3
    iput-object p2, p0, Landroid/support/v4/media/MediaController2$PlaybackInfo;->mAudioAttrsCompat:Landroid/support/v4/media/AudioAttributesCompat;

    .line 4
    iput p3, p0, Landroid/support/v4/media/MediaController2$PlaybackInfo;->mControlType:I

    .line 5
    iput p4, p0, Landroid/support/v4/media/MediaController2$PlaybackInfo;->mMaxVolume:I

    .line 6
    iput p5, p0, Landroid/support/v4/media/MediaController2$PlaybackInfo;->mCurrentVolume:I

    return-void
.end method

.method static createPlaybackInfo(ILandroid/support/v4/media/AudioAttributesCompat;III)Landroid/support/v4/media/MediaController2$PlaybackInfo;
    .locals 7

    .line 1
    new-instance v6, Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move-object v0, v6

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaController2$PlaybackInfo;-><init>(ILandroid/support/v4/media/AudioAttributesCompat;III)V

    return-object v6
.end method

.method static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaController2$PlaybackInfo;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.media.audio_info.playback_type"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "android.media.audio_info.control_type"

    .line 2
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.media.audio_info.max_volume"

    .line 3
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "android.media.audio_info.current_volume"

    .line 4
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "android.media.audio_info.audio_attrs"

    .line 5
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/support/v4/media/AudioAttributesCompat;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object p0

    .line 7
    invoke-static {v0, p0, v1, v2, v3}, Landroid/support/v4/media/MediaController2$PlaybackInfo;->createPlaybackInfo(ILandroid/support/v4/media/AudioAttributesCompat;III)Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAudioAttributes()Landroid/support/v4/media/AudioAttributesCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2$PlaybackInfo;->mAudioAttrsCompat:Landroid/support/v4/media/AudioAttributesCompat;

    return-object p0
.end method

.method public getControlType()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/MediaController2$PlaybackInfo;->mControlType:I

    return p0
.end method

.method public getCurrentVolume()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/MediaController2$PlaybackInfo;->mCurrentVolume:I

    return p0
.end method

.method public getMaxVolume()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/MediaController2$PlaybackInfo;->mMaxVolume:I

    return p0
.end method

.method public getPlaybackType()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/MediaController2$PlaybackInfo;->mPlaybackType:I

    return p0
.end method

.method toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget v1, p0, Landroid/support/v4/media/MediaController2$PlaybackInfo;->mPlaybackType:I

    const-string v2, "android.media.audio_info.playback_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget v1, p0, Landroid/support/v4/media/MediaController2$PlaybackInfo;->mControlType:I

    const-string v2, "android.media.audio_info.control_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget v1, p0, Landroid/support/v4/media/MediaController2$PlaybackInfo;->mMaxVolume:I

    const-string v2, "android.media.audio_info.max_volume"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget v1, p0, Landroid/support/v4/media/MediaController2$PlaybackInfo;->mCurrentVolume:I

    const-string v2, "android.media.audio_info.current_volume"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-object p0, p0, Landroid/support/v4/media/MediaController2$PlaybackInfo;->mAudioAttrsCompat:Landroid/support/v4/media/AudioAttributesCompat;

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "android.media.audio_info.audio_attrs"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method
