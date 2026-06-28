.class Landroid/support/v4/media/MediaPlayer2Impl$32;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;

.field final synthetic val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$32;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$32;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$32;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$100(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->onCompletion(Landroid/media/MediaPlayer;)Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/media/MediaPlayer2Impl;->access$200(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;)V

    .line 2
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$32;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    new-instance v0, Landroid/support/v4/media/MediaPlayer2Impl$32$1;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaPlayer2Impl$32$1;-><init>(Landroid/support/v4/media/MediaPlayer2Impl$32;)V

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$300(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$Mp2EventNotifier;)V

    return-void
.end method
