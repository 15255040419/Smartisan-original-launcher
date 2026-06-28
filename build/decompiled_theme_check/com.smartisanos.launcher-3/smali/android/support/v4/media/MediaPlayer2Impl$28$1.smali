.class Landroid/support/v4/media/MediaPlayer2Impl$28$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/support/v4/media/MediaPlayer2Impl$Mp2EventNotifier;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaPlayer2Impl$28;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl$28;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$28$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroid/support/v4/media/MediaPlayer2$EventCallback;)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$28$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$28;

    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$28;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    .line 2
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$28;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroid/support/v4/media/DataSourceDesc;

    move-result-object p0

    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/support/v4/media/MediaPlayer2$EventCallback;->onInfo(Landroid/support/v4/media/MediaPlayer2;Landroid/support/v4/media/DataSourceDesc;II)V

    return-void
.end method
