.class Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;
.super Ljava/lang/Object;
.source "AudioFocusHandler.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private mPlayerDuckingVolume:F

.field private mPlayerVolumeBeforeDucking:F

.field final synthetic this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;Landroid/support/v4/media/AudioFocusHandler$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;-><init>(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4

    const/4 v0, -0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, -0x2

    if-eq p1, v0, :cond_5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {p1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaSession2;->getPlayerState()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 2
    iget-object p1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {p1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$200(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$600(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    monitor-exit p1

    goto/16 :goto_1

    .line 5
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2;->play()V

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 8
    :cond_2
    iget-object p1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {p1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaSession2;->getPlayer()Landroid/support/v4/media/BaseMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 9
    invoke-virtual {p1}, Landroid/support/v4/media/BaseMediaPlayer;->getPlayerVolume()F

    move-result v0

    .line 10
    iget-object v1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$200(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 11
    :try_start_2
    iget v2, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->mPlayerDuckingVolume:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    .line 12
    monitor-exit v1

    goto/16 :goto_1

    .line 13
    :cond_3
    iget p0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->mPlayerVolumeBeforeDucking:F

    .line 14
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    invoke-virtual {p1, p0}, Landroid/support/v4/media/BaseMediaPlayer;->setPlayerVolume(F)V

    goto/16 :goto_1

    :catchall_1
    move-exception p0

    .line 16
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 17
    :cond_4
    iget-object p1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {p1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaSession2;->pause()V

    .line 18
    iget-object p1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {p1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$200(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 19
    :try_start_4
    iget-object p0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$602(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;Z)Z

    .line 20
    monitor-exit p1

    goto :goto_1

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 21
    :cond_5
    iget-object p1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {p1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaSession2;->pause()V

    .line 22
    iget-object p1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {p1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$200(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 23
    :try_start_5
    iget-object p0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {p0, v1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$602(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;Z)Z

    .line 24
    monitor-exit p1

    goto :goto_1

    :catchall_3
    move-exception p0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    .line 25
    :cond_6
    iget-object p1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {p1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$200(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 26
    :try_start_6
    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$400(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object v0

    if-nez v0, :cond_7

    .line 27
    monitor-exit p1

    goto :goto_1

    .line 28
    :cond_7
    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$400(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompat;->getContentType()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 29
    iget-object p0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2;->pause()V

    goto :goto_0

    .line 30
    :cond_8
    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2;->getPlayer()Landroid/support/v4/media/BaseMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 31
    invoke-virtual {v0}, Landroid/support/v4/media/BaseMediaPlayer;->getPlayerVolume()F

    move-result v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v1

    .line 32
    iget-object v3, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v3}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$200(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 33
    :try_start_7
    iput v1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->mPlayerVolumeBeforeDucking:F

    .line 34
    iput v2, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->mPlayerDuckingVolume:F

    .line 35
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 36
    :try_start_8
    invoke-virtual {v0, v2}, Landroid/support/v4/media/BaseMediaPlayer;->setPlayerVolume(F)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_0

    :catchall_4
    move-exception p0

    .line 37
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw p0

    .line 38
    :cond_9
    :goto_0
    monitor-exit p1

    :cond_a
    :goto_1
    return-void

    :catchall_5
    move-exception p0

    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw p0
.end method
