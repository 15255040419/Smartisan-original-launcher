.class public final Landroid/support/v4/media/PlaybackParams2;
.super Ljava/lang/Object;
.source "PlaybackParams2.java"


# static fields
.field public static final AUDIO_FALLBACK_MODE_DEFAULT:I = 0x0

.field public static final AUDIO_FALLBACK_MODE_FAIL:I = 0x2

.field public static final AUDIO_FALLBACK_MODE_MUTE:I = 0x1


# instance fields
.field private mAudioFallbackMode:Ljava/lang/Integer;

.field private mPitch:Ljava/lang/Float;

.field private mPlaybackParams:Landroid/media/PlaybackParams;

.field private mSpeed:Ljava/lang/Float;


# direct methods
.method private constructor <init>(Landroid/media/PlaybackParams;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Landroid/support/v4/media/PlaybackParams2;->mPlaybackParams:Landroid/media/PlaybackParams;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/PlaybackParams;Landroid/support/v4/media/PlaybackParams2$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/media/PlaybackParams2;-><init>(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/support/v4/media/PlaybackParams2;->mAudioFallbackMode:Ljava/lang/Integer;

    .line 5
    iput-object p2, p0, Landroid/support/v4/media/PlaybackParams2;->mPitch:Ljava/lang/Float;

    .line 6
    iput-object p3, p0, Landroid/support/v4/media/PlaybackParams2;->mSpeed:Ljava/lang/Float;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Landroid/support/v4/media/PlaybackParams2$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/media/PlaybackParams2;-><init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public getAudioFallbackMode()Ljava/lang/Integer;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/PlaybackParams2;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-virtual {p0}, Landroid/media/PlaybackParams;->getAudioFallbackMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/PlaybackParams2;->mAudioFallbackMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPitch()Ljava/lang/Float;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/PlaybackParams2;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-virtual {p0}, Landroid/media/PlaybackParams;->getPitch()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/PlaybackParams2;->mPitch:Ljava/lang/Float;

    return-object p0
.end method

.method public getPlaybackParams()Landroid/media/PlaybackParams;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Landroid/support/v4/media/PlaybackParams2;->mPlaybackParams:Landroid/media/PlaybackParams;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSpeed()Ljava/lang/Float;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/PlaybackParams2;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-virtual {p0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/PlaybackParams2;->mPitch:Ljava/lang/Float;

    return-object p0
.end method
