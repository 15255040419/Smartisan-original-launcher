.class Landroid/support/v4/media/MediaPlayer2Impl$35$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/support/v4/media/MediaPlayer2Impl$Mp2EventNotifier;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaPlayer2Impl$35;

.field final synthetic val$data:Landroid/media/TimedMetaData;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl$35;Landroid/media/TimedMetaData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$35$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$35;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$35$1;->val$data:Landroid/media/TimedMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroid/support/v4/media/MediaPlayer2$EventCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$35$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$35;

    iget-object v1, v0, Landroid/support/v4/media/MediaPlayer2Impl$35;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iget-object v0, v0, Landroid/support/v4/media/MediaPlayer2Impl$35;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroid/support/v4/media/DataSourceDesc;

    move-result-object v0

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$35$1;->val$data:Landroid/media/TimedMetaData;

    .line 3
    invoke-virtual {p1, v1, v0, p0}, Landroid/support/v4/media/MediaPlayer2$EventCallback;->onTimedMetaDataAvailable(Landroid/support/v4/media/MediaPlayer2;Landroid/support/v4/media/DataSourceDesc;Landroid/media/TimedMetaData;)V

    return-void
.end method
