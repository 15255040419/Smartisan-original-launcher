.class Landroid/support/v4/media/MediaSession2ImplBase;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "MS2ImplBase"


# instance fields
.field private final mAudioFocusHandler:Landroid/support/v4/media/AudioFocusHandler;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mContext:Landroid/content/Context;

.field private mDsmHelper:Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mInstance:Landroid/support/v4/media/MediaSession2;

.field final mLock:Ljava/lang/Object;

.field private mPlaybackInfo:Landroid/support/v4/media/MediaController2$PlaybackInfo;

.field private mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

.field private final mPlayerEventCallback:Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;

.field private mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

.field private final mPlaylistEventCallback:Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;

.field private final mSession2Stub:Landroid/support/v4/media/MediaSession2Stub;

.field private final mSessionActivity:Landroid/app/PendingIntent;

.field private final mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

.field private final mSessionLegacyStub:Landroid/support/v4/media/MediaSessionLegacyStub;

.field private mSessionPlaylistAgent:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

.field private final mSessionToken:Landroid/support/v4/media/SessionToken2;

.field private mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MS2ImplBase"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/support/v4/media/MediaSession2;Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)V
    .locals 13

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    .line 3
    iput-object v1, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mContext:Landroid/content/Context;

    move-object v2, p1

    .line 4
    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mInstance:Landroid/support/v4/media/MediaSession2;

    .line 5
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "MediaController2_Thread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    .line 6
    iget-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance v2, Landroid/os/Handler;

    iget-object v3, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandler:Landroid/os/Handler;

    .line 8
    new-instance v2, Landroid/support/v4/media/MediaSession2Stub;

    invoke-direct {v2, p0}, Landroid/support/v4/media/MediaSession2Stub;-><init>(Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;)V

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSession2Stub:Landroid/support/v4/media/MediaSession2Stub;

    .line 9
    new-instance v2, Landroid/support/v4/media/MediaSessionLegacyStub;

    invoke-direct {v2, p0}, Landroid/support/v4/media/MediaSessionLegacyStub;-><init>(Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;)V

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionLegacyStub:Landroid/support/v4/media/MediaSessionLegacyStub;

    .line 10
    iput-object v10, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    move-object/from16 v2, p9

    .line 11
    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    move-object/from16 v2, p8

    .line 12
    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    const-string v2, "audio"

    .line 13
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioManager:Landroid/media/AudioManager;

    .line 14
    new-instance v2, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaSession2ImplBase$1;)V

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayerEventCallback:Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;

    .line 15
    new-instance v2, Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;

    invoke-direct {v2, p0, v3}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaSession2ImplBase$1;)V

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistEventCallback:Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;

    .line 16
    new-instance v2, Landroid/support/v4/media/AudioFocusHandler;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getInstance()Landroid/support/v4/media/MediaSession2;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Landroid/support/v4/media/AudioFocusHandler;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaSession2;)V

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioFocusHandler:Landroid/support/v4/media/AudioFocusHandler;

    const-string v2, "android.media.MediaLibraryService2"

    .line 17
    invoke-static {p2, v2, v9}, Landroid/support/v4/media/MediaSession2ImplBase;->getServiceName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "android.media.MediaSessionService2"

    .line 18
    invoke-static {p2, v2, v9}, Landroid/support/v4/media/MediaSession2ImplBase;->getServiceName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    if-nez v6, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ambiguous session type. Multiple session services define the same id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 20
    new-instance v11, Landroid/support/v4/media/SessionToken2;

    new-instance v12, Landroid/support/v4/media/SessionToken2ImplBase;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/4 v4, 0x2

    .line 21
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSession2Stub:Landroid/support/v4/media/MediaSession2Stub;

    move-object v2, v12

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/media/SessionToken2ImplBase;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/media/IMediaSession2;)V

    invoke-direct {v11, v12}, Landroid/support/v4/media/SessionToken2;-><init>(Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;)V

    iput-object v11, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionToken:Landroid/support/v4/media/SessionToken2;

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    .line 22
    new-instance v11, Landroid/support/v4/media/SessionToken2;

    new-instance v12, Landroid/support/v4/media/SessionToken2ImplBase;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/4 v4, 0x1

    .line 23
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSession2Stub:Landroid/support/v4/media/MediaSession2Stub;

    move-object v2, v12

    move-object v6, v7

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/media/SessionToken2ImplBase;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/media/IMediaSession2;)V

    invoke-direct {v11, v12}, Landroid/support/v4/media/SessionToken2;-><init>(Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;)V

    iput-object v11, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionToken:Landroid/support/v4/media/SessionToken2;

    goto :goto_1

    .line 24
    :cond_3
    new-instance v11, Landroid/support/v4/media/SessionToken2;

    new-instance v12, Landroid/support/v4/media/SessionToken2ImplBase;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/4 v4, 0x0

    .line 25
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v8, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSession2Stub:Landroid/support/v4/media/MediaSession2Stub;

    move-object v2, v12

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/media/SessionToken2ImplBase;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/media/IMediaSession2;)V

    invoke-direct {v11, v12}, Landroid/support/v4/media/SessionToken2;-><init>(Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;)V

    iput-object v11, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionToken:Landroid/support/v4/media/SessionToken2;

    .line 26
    :goto_1
    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v3, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionToken:Landroid/support/v4/media/SessionToken2;

    invoke-direct {v2, p2, v9, v3}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/media/SessionToken2;)V

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 27
    iget-object v1, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionLegacyStub:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v3, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    .line 28
    iget-object v1, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 29
    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v4/media/MediaSession2ImplBase;->updatePlayer(Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/media/MediaSession2ImplBase;)Landroid/support/v4/media/MediaSession2$SessionCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/v4/media/MediaSession2ImplBase;)Landroid/support/v4/media/AudioFocusHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioFocusHandler:Landroid/support/v4/media/AudioFocusHandler;

    return-object p0
.end method

.method static synthetic access$500(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaPlaylistAgent;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyPlaylistChangedOnExecutor(Landroid/support/v4/media/MediaPlaylistAgent;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyPlaylistMetadataChangedOnExecutor(Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/MediaMetadata2;)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaPlaylistAgent;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyRepeatModeChangedOnExecutor(Landroid/support/v4/media/MediaPlaylistAgent;I)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaPlaylistAgent;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyShuffleModeChangedOnExecutor(Landroid/support/v4/media/MediaPlaylistAgent;I)V

    return-void
.end method

.method private createPlaybackInfo(Landroid/support/v4/media/VolumeProviderCompat;Landroid/support/v4/media/AudioAttributesCompat;)Landroid/support/v4/media/MediaController2$PlaybackInfo;
    .locals 3

    const/4 v0, 0x2

    if-nez p1, :cond_1

    .line 1
    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaSession2ImplBase;->getLegacyStreamType(Landroid/support/v4/media/AudioAttributesCompat;)I

    move-result p1

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioManager:Landroid/media/AudioManager;

    .line 4
    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioManager:Landroid/media/AudioManager;

    .line 5
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    .line 6
    invoke-static {v1, p2, v0, v2, p0}, Landroid/support/v4/media/MediaController2$PlaybackInfo;->createPlaybackInfo(ILandroid/support/v4/media/AudioAttributesCompat;III)Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeControl()I

    move-result p0

    .line 8
    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getMaxVolume()I

    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getCurrentVolume()I

    move-result p1

    .line 10
    invoke-static {v0, p2, p0, v1, p1}, Landroid/support/v4/media/MediaController2$PlaybackInfo;->createPlaybackInfo(ILandroid/support/v4/media/AudioAttributesCompat;III)Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getLegacyStreamType(Landroid/support/v4/media/AudioAttributesCompat;)I
    .locals 1

    const/4 p0, 0x3

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->getLegacyStreamType()I

    move-result p1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move p0, p1

    :goto_0
    return p0
.end method

.method private static getServiceName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p0, 0x80

    .line 4
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 6
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-static {v1}, Landroid/support/v4/media/SessionToken2;->getSessionId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 9
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_1

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ambiguous session type. Multiple session services define the same id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method private notifyAgentUpdatedNotLocked(Landroid/support/v4/media/MediaPlaylistAgent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/media/MediaPlaylistAgent;->getPlaylist()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getPlaylist()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$9;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/MediaSession2ImplBase$9;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaPlaylistAgent;->getPlaylistMetadata()Landroid/support/v4/media/MediaMetadata2;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getPlaylistMetadata()Landroid/support/v4/media/MediaMetadata2;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$10;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/MediaSession2ImplBase$10;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaMetadata2;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaPlaylistAgent;->getCurrentMediaItem()Landroid/support/v4/media/MediaItem2;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getCurrentMediaItem()Landroid/support/v4/media/MediaItem2;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$11;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/MediaSession2ImplBase$11;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaItem2;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getRepeatMode()I

    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/support/v4/media/MediaPlaylistAgent;->getRepeatMode()I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 15
    new-instance v1, Landroid/support/v4/media/MediaSession2ImplBase$12;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/media/MediaSession2ImplBase$12;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;I)V

    invoke-virtual {p0, v1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 16
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getShuffleMode()I

    move-result v0

    .line 17
    invoke-virtual {p1}, Landroid/support/v4/media/MediaPlaylistAgent;->getShuffleMode()I

    move-result p1

    if-eq p1, v0, :cond_4

    .line 18
    new-instance p1, Landroid/support/v4/media/MediaSession2ImplBase$13;

    invoke-direct {p1, p0, v0}, Landroid/support/v4/media/MediaSession2ImplBase$13;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;I)V

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    :cond_4
    return-void
.end method

.method private notifyPlayerUpdatedNotLocked(Landroid/support/v4/media/BaseMediaPlayer;)V
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getCurrentPosition()J

    move-result-wide v9

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getPlayerState()I

    move-result v6

    .line 4
    new-instance v11, Landroid/support/v4/media/MediaSession2ImplBase$14;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, v7

    move-wide v4, v9

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/media/MediaSession2ImplBase$14;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;JJI)V

    invoke-virtual {p0, v11}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getCurrentMediaItem()Landroid/support/v4/media/MediaItem2;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getBufferingState()I

    move-result v3

    .line 7
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getBufferedPosition()J

    move-result-wide v4

    .line 8
    new-instance v6, Landroid/support/v4/media/MediaSession2ImplBase$15;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaSession2ImplBase$15;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaItem2;IJ)V

    invoke-virtual {p0, v6}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getPlaybackSpeed()F

    move-result v6

    .line 10
    invoke-virtual {p1}, Landroid/support/v4/media/BaseMediaPlayer;->getPlaybackSpeed()F

    move-result p1

    cmpl-float p1, v6, p1

    if-eqz p1, :cond_1

    .line 11
    new-instance p1, Landroid/support/v4/media/MediaSession2ImplBase$16;

    move-object v0, p1

    move-object v1, p0

    move-wide v2, v7

    move-wide v4, v9

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/media/MediaSession2ImplBase$16;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;JJF)V

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    :cond_1
    return-void
.end method

.method private notifyPlaylistChangedOnExecutor(Landroid/support/v4/media/MediaPlaylistAgent;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    if-eq p1, v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mInstance:Landroid/support/v4/media/MediaSession2;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/support/v4/media/MediaSession2$SessionCallback;->onPlaylistChanged(Landroid/support/v4/media/MediaSession2;Landroid/support/v4/media/MediaPlaylistAgent;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    .line 6
    new-instance p1, Landroid/support/v4/media/MediaSession2ImplBase$17;

    invoke-direct {p1, p0, p2, p3}, Landroid/support/v4/media/MediaSession2ImplBase$17;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private notifyPlaylistMetadataChangedOnExecutor(Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    if-eq p1, v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mInstance:Landroid/support/v4/media/MediaSession2;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/MediaSession2$SessionCallback;->onPlaylistMetadataChanged(Landroid/support/v4/media/MediaSession2;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/MediaMetadata2;)V

    .line 6
    new-instance p1, Landroid/support/v4/media/MediaSession2ImplBase$18;

    invoke-direct {p1, p0, p2}, Landroid/support/v4/media/MediaSession2ImplBase$18;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaMetadata2;)V

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private notifyRepeatModeChangedOnExecutor(Landroid/support/v4/media/MediaPlaylistAgent;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    if-eq p1, v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mInstance:Landroid/support/v4/media/MediaSession2;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/MediaSession2$SessionCallback;->onRepeatModeChanged(Landroid/support/v4/media/MediaSession2;Landroid/support/v4/media/MediaPlaylistAgent;I)V

    .line 6
    new-instance p1, Landroid/support/v4/media/MediaSession2ImplBase$19;

    invoke-direct {p1, p0, p2}, Landroid/support/v4/media/MediaSession2ImplBase$19;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;I)V

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private notifyShuffleModeChangedOnExecutor(Landroid/support/v4/media/MediaPlaylistAgent;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    if-eq p1, v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mInstance:Landroid/support/v4/media/MediaSession2;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/MediaSession2$SessionCallback;->onShuffleModeChanged(Landroid/support/v4/media/MediaSession2;Landroid/support/v4/media/MediaPlaylistAgent;I)V

    .line 6
    new-instance p1, Landroid/support/v4/media/MediaSession2ImplBase$20;

    invoke-direct {p1, p0, p2}, Landroid/support/v4/media/MediaSession2ImplBase$20;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;I)V

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public addPlaylistItem(ILandroid/support/v4/media/MediaItem2;)V
    .locals 1

    if-ltz p1, :cond_3

    if-eqz p2, :cond_2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaPlaylistAgent;->addPlaylistItem(ILandroid/support/v4/media/MediaItem2;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p1, "MS2ImplBase"

    const-string p2, "API calls after the close()"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "item shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index shouldn\'t be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearOnDataSourceMissingHelper()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mDsmHelper:Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;

    .line 3
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    if-eqz v1, :cond_0

    .line 4
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    invoke-virtual {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->clearOnDataSourceMissingHelper()V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioFocusHandler:Landroid/support/v4/media/AudioFocusHandler;

    invoke-virtual {v1}, Landroid/support/v4/media/AudioFocusHandler;->close()V

    .line 5
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    iget-object v2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayerEventCallback:Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/BaseMediaPlayer;->unregisterPlayerEventCallback(Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 7
    iget-object v2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 8
    new-instance v2, Landroid/support/v4/media/MediaSession2ImplBase$2;

    invoke-direct {v2, p0}, Landroid/support/v4/media/MediaSession2ImplBase$2;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;)V

    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 9
    iget-object v2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    .line 12
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 13
    :cond_1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 14
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAudioFocusHandler()Landroid/support/v4/media/AudioFocusHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioFocusHandler:Landroid/support/v4/media/AudioFocusHandler;

    return-object p0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/BaseMediaPlayer;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getBufferingState()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/BaseMediaPlayer;->getBufferingState()I

    move-result p0

    return p0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getCallback()Landroid/support/v4/media/MediaSession2$SessionCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    return-object p0
.end method

.method public getCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public getConnectedControllers()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSession2Stub:Landroid/support/v4/media/MediaSession2Stub;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2Stub;->getConnectedControllers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentMediaItem()Landroid/support/v4/media/MediaItem2;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlaylistAgent;->getCurrentMediaItem()Landroid/support/v4/media/MediaItem2;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/BaseMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/BaseMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getInstance()Landroid/support/v4/media/MediaSession2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mInstance:Landroid/support/v4/media/MediaSession2;

    return-object p0
.end method

.method public getPlaybackInfo()Landroid/support/v4/media/MediaController2$PlaybackInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaybackInfo:Landroid/support/v4/media/MediaController2$PlaybackInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPlaybackSpeed()F
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/BaseMediaPlayer;->getPlaybackSpeed()F

    move-result p0

    return p0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getPlayerState()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getBufferingState()I

    move-result v2

    .line 4
    invoke-static {v1, v2}, Landroid/support/v4/media/MediaUtils2;->convertToPlaybackStateCompatState(II)I

    move-result v1

    const-wide/32 v2, 0x37ffff

    .line 5
    new-instance v4, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getCurrentPosition()J

    move-result-wide v5

    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getPlaybackSpeed()F

    move-result v7

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getBufferedPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setBufferedPosition(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPlayer()Landroid/support/v4/media/BaseMediaPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPlayerState()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/BaseMediaPlayer;->getPlayerState()I

    move-result p0

    return p0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x3

    return p0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlaylistAgent;->getPlaylist()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getPlaylistAgent()Landroid/support/v4/media/MediaPlaylistAgent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPlaylistMetadata()Landroid/support/v4/media/MediaMetadata2;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlaylistAgent;->getPlaylistMetadata()Landroid/support/v4/media/MediaMetadata2;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getRepeatMode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlaylistAgent;->getRepeatMode()I

    move-result p0

    return p0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getSessionBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSession2Stub:Landroid/support/v4/media/MediaSession2Stub;

    invoke-virtual {p0}, Landroid/support/v4/media/IMediaSession2$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object p0
.end method

.method public getShuffleMode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlaylistAgent;->getShuffleMode()I

    move-result p0

    return p0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getToken()Landroid/support/v4/media/SessionToken2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionToken:Landroid/support/v4/media/SessionToken2;

    return-object p0
.end method

.method public getVolumeProvider()Landroid/support/v4/media/VolumeProviderCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isClosed()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyError(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$7;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/MediaSession2ImplBase$7;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;ILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    return-void
.end method

.method public notifyRoutesInfoChanged(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/util/List;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$8;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/media/MediaSession2ImplBase$8;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    return-void
.end method

.method notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getConnectedControllers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaSession2$ControllerInfo;

    invoke-virtual {p0, v2, p1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V
    .locals 3

    const-string v0, "MS2ImplBase"

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaSession2$ControllerInfo;->getControllerCb()Landroid/support/v4/media/MediaSession2$ControllerCb;

    move-result-object v1

    invoke-interface {p2, v1}, Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;->run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaSession2$ControllerInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p2

    .line 3
    sget-boolean v1, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/support/v4/media/MediaSession2$ControllerInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is gone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :cond_1
    iget-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSession2Stub:Landroid/support/v4/media/MediaSession2Stub;

    invoke-virtual {p2, p1}, Landroid/support/v4/media/MediaSession2Stub;->removeControllerInfo(Landroid/support/v4/media/MediaSession2$ControllerInfo;)V

    .line 6
    iget-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$21;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase$21;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaSession2$ControllerInfo;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 4
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioFocusHandler:Landroid/support/v4/media/AudioFocusHandler;

    invoke-virtual {p0}, Landroid/support/v4/media/AudioFocusHandler;->onPauseRequested()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/support/v4/media/BaseMediaPlayer;->pause()V

    goto :goto_0

    :cond_0
    const-string p0, "MS2ImplBase"

    const-string v0, "pause() wouldn\'t be called of the failure in audio focus"

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_1
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public play()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 4
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioFocusHandler:Landroid/support/v4/media/AudioFocusHandler;

    invoke-virtual {p0}, Landroid/support/v4/media/AudioFocusHandler;->onPlayRequested()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/support/v4/media/BaseMediaPlayer;->play()V

    goto :goto_0

    :cond_0
    const-string p0, "MS2ImplBase"

    const-string v0, "play() wouldn\'t be called because of the failure in audio focus"

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_1
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public prepare()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/BaseMediaPlayer;->prepare()V

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removePlaylistItem(Landroid/support/v4/media/MediaItem2;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaPlaylistAgent;->removePlaylistItem(Landroid/support/v4/media/MediaItem2;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p1, "MS2ImplBase"

    const-string v0, "API calls after the close()"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "item shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public replacePlaylistItem(ILandroid/support/v4/media/MediaItem2;)V
    .locals 1

    if-ltz p1, :cond_3

    if-eqz p2, :cond_2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaPlaylistAgent;->replacePlaylistItem(ILandroid/support/v4/media/MediaItem2;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p1, "MS2ImplBase"

    const-string p2, "API calls after the close()"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "item shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index shouldn\'t be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/BaseMediaPlayer;->reset()V

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public seekTo(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/BaseMediaPlayer;->seekTo(J)V

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p1, "MS2ImplBase"

    const-string p2, "API calls after the close()"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public sendCustomCommand(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$6;

    invoke-direct {v0, p0, p2, p3, p4}, Landroid/support/v4/media/MediaSession2ImplBase$6;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "command shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "controller shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendCustomCommand(Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$5;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/MediaSession2ImplBase$5;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "command shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAllowedCommands(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/SessionCommandGroup2;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSession2Stub:Landroid/support/v4/media/MediaSession2Stub;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/MediaSession2Stub;->setAllowedCommands(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/SessionCommandGroup2;)V

    .line 2
    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$4;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/media/MediaSession2ImplBase$4;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/SessionCommandGroup2;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "commands shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "controller shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCustomLayout(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$3;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/media/MediaSession2ImplBase$3;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "layout shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "controller shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnDataSourceMissingHelper(Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mDsmHelper:Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;

    .line 3
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    if-eqz v1, :cond_0

    .line 4
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->setOnDataSourceMissingHelper(Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "helper shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPlaybackSpeed(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v4/media/BaseMediaPlayer;->setPlaybackSpeed(F)V

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p1, "MS2ImplBase"

    const-string v0, "API calls after the close()"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setPlaylist(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaPlaylistAgent;->setPlaylist(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p1, "MS2ImplBase"

    const-string p2, "API calls after the close()"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "list shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaPlaylistAgent;->setRepeatMode(I)V

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p1, "MS2ImplBase"

    const-string v0, "API calls after the close()"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setShuffleMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaPlaylistAgent;->setShuffleMode(I)V

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p1, "MS2ImplBase"

    const-string v0, "API calls after the close()"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public skipBackward()V
    .locals 0

    return-void
.end method

.method public skipForward()V
    .locals 0

    return-void
.end method

.method public skipToNextItem()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlaylistAgent;->skipToNextItem()V

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public skipToPlaylistItem(Landroid/support/v4/media/MediaItem2;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaPlaylistAgent;->skipToPlaylistItem(Landroid/support/v4/media/MediaItem2;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p1, "MS2ImplBase"

    const-string v0, "API calls after the close()"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "item shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public skipToPreviousItem()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlaylistAgent;->skipToPreviousItem()V

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updatePlayer(Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 8

    if-eqz p1, :cond_b

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/media/BaseMediaPlayer;->getAudioAttributes()Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->createPlaybackInfo(Landroid/support/v4/media/VolumeProviderCompat;Landroid/support/v4/media/AudioAttributesCompat;)Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, p1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 4
    :goto_0
    iget-object v5, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    if-eq v5, p2, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    .line 5
    :goto_1
    iget-object v6, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaybackInfo:Landroid/support/v4/media/MediaController2$PlaybackInfo;

    if-eq v6, v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 6
    :goto_2
    iget-object v4, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 7
    iget-object v6, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 8
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    if-nez p2, :cond_4

    .line 9
    new-instance p2, Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    iget-object v7, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    invoke-direct {p2, p0, v7}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/BaseMediaPlayer;)V

    iput-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    .line 10
    iget-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mDsmHelper:Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;

    if-eqz p2, :cond_3

    .line 11
    iget-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    iget-object v7, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mDsmHelper:Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;

    invoke-virtual {p2, v7}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->setOnDataSourceMissingHelper(Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;)V

    .line 12
    :cond_3
    iget-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    .line 13
    :cond_4
    iput-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 14
    iput-object p3, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    .line 15
    iput-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaybackInfo:Landroid/support/v4/media/MediaController2$PlaybackInfo;

    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_5

    .line 17
    invoke-virtual {p1}, Landroid/support/v4/media/BaseMediaPlayer;->getAudioAttributes()Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object p3

    invoke-direct {p0, p3}, Landroid/support/v4/media/MediaSession2ImplBase;->getLegacyStreamType(Landroid/support/v4/media/AudioAttributesCompat;)I

    move-result p3

    .line 18
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, p3}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToLocal(I)V

    :cond_5
    if-eq p1, v4, :cond_6

    .line 19
    iget-object p3, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayerEventCallback:Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;

    invoke-virtual {p1, p3, v1}, Landroid/support/v4/media/BaseMediaPlayer;->registerPlayerEventCallback(Ljava/util/concurrent/Executor;Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V

    if-eqz v4, :cond_6

    .line 20
    iget-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayerEventCallback:Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;

    invoke-virtual {v4, p1}, Landroid/support/v4/media/BaseMediaPlayer;->unregisterPlayerEventCallback(Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V

    :cond_6
    if-eq p2, v6, :cond_7

    .line 21
    iget-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object p3, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistEventCallback:Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;

    invoke-virtual {p2, p1, p3}, Landroid/support/v4/media/MediaPlaylistAgent;->registerPlaylistEventCallback(Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;)V

    if-eqz v6, :cond_7

    .line 22
    iget-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistEventCallback:Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;

    invoke-virtual {v6, p1}, Landroid/support/v4/media/MediaPlaylistAgent;->unregisterPlaylistEventCallback(Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;)V

    :cond_7
    if-eqz v4, :cond_a

    if-eqz v5, :cond_8

    .line 23
    invoke-direct {p0, v6}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyAgentUpdatedNotLocked(Landroid/support/v4/media/MediaPlaylistAgent;)V

    :cond_8
    if-eqz v2, :cond_9

    .line 24
    invoke-direct {p0, v4}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyPlayerUpdatedNotLocked(Landroid/support/v4/media/BaseMediaPlayer;)V

    :cond_9
    if-eqz v3, :cond_a

    .line 25
    new-instance p1, Landroid/support/v4/media/MediaSession2ImplBase$1;

    invoke-direct {p1, p0, v0}, Landroid/support/v4/media/MediaSession2ImplBase$1;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaController2$PlaybackInfo;)V

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    :cond_a
    return-void

    :catchall_0
    move-exception p0

    .line 26
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 27
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "player shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updatePlaylistMetadata(Landroid/support/v4/media/MediaMetadata2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaPlaylistAgent;->updatePlaylistMetadata(Landroid/support/v4/media/MediaMetadata2;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p1, "MS2ImplBase"

    const-string v0, "API calls after the close()"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
