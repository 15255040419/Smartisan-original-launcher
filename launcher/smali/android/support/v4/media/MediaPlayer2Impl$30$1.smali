.class Landroid/support/v4/media/MediaPlayer2Impl$30$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/support/v4/media/MediaPlayer2Impl$Mp2EventNotifier;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaPlayer2Impl$30;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl$30;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$30$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$30;

    iput p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$30$1;->val$width:I

    iput p3, p0, Landroid/support/v4/media/MediaPlayer2Impl$30$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroid/support/v4/media/MediaPlayer2$EventCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$30$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$30;

    iget-object v1, v0, Landroid/support/v4/media/MediaPlayer2Impl$30;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iget-object v0, v0, Landroid/support/v4/media/MediaPlayer2Impl$30;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroid/support/v4/media/DataSourceDesc;

    move-result-object v0

    iget v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$30$1;->val$width:I

    iget p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$30$1;->val$height:I

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/support/v4/media/MediaPlayer2$EventCallback;->onVideoSizeChanged(Landroid/support/v4/media/MediaPlayer2;Landroid/support/v4/media/DataSourceDesc;II)V

    return-void
.end method
