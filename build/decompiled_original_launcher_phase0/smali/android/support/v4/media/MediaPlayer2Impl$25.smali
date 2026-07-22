.class Landroid/support/v4/media/MediaPlayer2Impl$25;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;

.field final synthetic val$cb:Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;

.field final synthetic val$notifier:Landroid/support/v4/media/MediaPlayer2Impl$PlayerEventNotifier;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$PlayerEventNotifier;Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$25;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$25;->val$notifier:Landroid/support/v4/media/MediaPlayer2Impl$PlayerEventNotifier;

    iput-object p3, p0, Landroid/support/v4/media/MediaPlayer2Impl$25;->val$cb:Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$25;->val$notifier:Landroid/support/v4/media/MediaPlayer2Impl$PlayerEventNotifier;

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$25;->val$cb:Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;

    invoke-interface {v0, p0}, Landroid/support/v4/media/MediaPlayer2Impl$PlayerEventNotifier;->notify(Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V

    return-void
.end method
