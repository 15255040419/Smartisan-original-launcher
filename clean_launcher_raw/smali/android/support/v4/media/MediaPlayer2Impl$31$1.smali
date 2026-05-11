.class Landroid/support/v4/media/MediaPlayer2Impl$31$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/support/v4/media/MediaPlayer2Impl$Mp2EventNotifier;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaPlayer2Impl$31;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl$31;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$31$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroid/support/v4/media/MediaPlayer2$EventCallback;)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$31$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$31;

    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$31;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$31;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroid/support/v4/media/DataSourceDesc;

    move-result-object p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/support/v4/media/MediaPlayer2$EventCallback;->onInfo(Landroid/support/v4/media/MediaPlayer2;Landroid/support/v4/media/DataSourceDesc;II)V

    return-void
.end method
