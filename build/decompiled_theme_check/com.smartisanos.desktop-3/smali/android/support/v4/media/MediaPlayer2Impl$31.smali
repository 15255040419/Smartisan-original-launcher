.class Landroid/support/v4/media/MediaPlayer2Impl$31;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;

.field final synthetic val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$31;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$31;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p3, 0x3

    if-eq p2, p3, :cond_2

    const/16 p3, 0x2bd

    if-eq p2, p3, :cond_1

    const/16 p3, 0x2be

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$31;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$100(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->setBufferingState(Landroid/media/MediaPlayer;I)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$31;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$100(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;

    move-result-object p0

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->setBufferingState(Landroid/media/MediaPlayer;I)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$31;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    new-instance p2, Landroid/support/v4/media/MediaPlayer2Impl$31$1;

    invoke-direct {p2, p0}, Landroid/support/v4/media/MediaPlayer2Impl$31$1;-><init>(Landroid/support/v4/media/MediaPlayer2Impl$31;)V

    invoke-static {p1, p2}, Landroid/support/v4/media/MediaPlayer2Impl;->access$300(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$Mp2EventNotifier;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
