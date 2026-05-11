.class Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioFocusHandler.java"


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;Landroid/support/v4/media/AudioFocusHandler$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;-><init>(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {p1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$200(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$300(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p1

    return-void

    .line 4
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {p1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$200(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 7
    :try_start_1
    iget-object p2, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {p2}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$400(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object p2

    if-nez p2, :cond_1

    .line 8
    monitor-exit p1

    return-void

    .line 9
    :cond_1
    iget-object p2, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {p2}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$400(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/media/AudioAttributesCompat;->getUsage()I

    move-result p2

    .line 10
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/16 p1, 0xe

    if-eq p2, p1, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object p0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2;->getPlayer()Landroid/support/v4/media/BaseMediaPlayer;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/support/v4/media/BaseMediaPlayer;->getPlayerVolume()F

    move-result p1

    const p2, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/support/v4/media/BaseMediaPlayer;->setPlayerVolume(F)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2;->pause()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 14
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    :goto_0
    return-void

    :catchall_1
    move-exception p0

    .line 15
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
