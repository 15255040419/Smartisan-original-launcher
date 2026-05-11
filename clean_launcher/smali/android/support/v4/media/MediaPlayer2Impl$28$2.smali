.class Landroid/support/v4/media/MediaPlayer2Impl$28$2;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/support/v4/media/MediaPlayer2Impl$PlayerEventNotifier;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaPlayer2Impl$28;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl$28;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$28$2;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$28$2;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$28;

    iget-object v0, v0, Landroid/support/v4/media/MediaPlayer2Impl$28;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$600(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;

    move-result-object v0

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$28$2;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$28;

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$28;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroid/support/v4/media/DataSourceDesc;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;->onMediaPrepared(Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/DataSourceDesc;)V

    return-void
.end method
