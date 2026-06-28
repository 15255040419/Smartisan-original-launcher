.class Landroid/support/v4/media/MediaPlayer2Impl$41;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnDrmPreparedListener;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;

.field final synthetic val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$41;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$41;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmPrepared(Landroid/media/MediaPlayer;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$41;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    new-instance v0, Landroid/support/v4/media/MediaPlayer2Impl$41$1;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/media/MediaPlayer2Impl$41$1;-><init>(Landroid/support/v4/media/MediaPlayer2Impl$41;I)V

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$1800(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$DrmEventNotifier;)V

    return-void
.end method
