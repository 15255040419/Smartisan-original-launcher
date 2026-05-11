.class Landroid/support/v4/media/MediaPlayer2Impl$33$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/support/v4/media/MediaPlayer2Impl$Mp2EventNotifier;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaPlayer2Impl$33;

.field final synthetic val$extra:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl$33;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$33$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$33;

    iput p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$33$1;->val$what:I

    iput p3, p0, Landroid/support/v4/media/MediaPlayer2Impl$33$1;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroid/support/v4/media/MediaPlayer2$EventCallback;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/support/v4/media/MediaPlayer2Impl;->access$1500()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$33$1;->val$what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$33$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$33;

    iget-object v2, v1, Landroid/support/v4/media/MediaPlayer2Impl$33;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iget-object v1, v1, Landroid/support/v4/media/MediaPlayer2Impl$33;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroid/support/v4/media/DataSourceDesc;

    move-result-object v1

    iget p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$33$1;->val$extra:I

    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/support/v4/media/MediaPlayer2$EventCallback;->onError(Landroid/support/v4/media/MediaPlayer2;Landroid/support/v4/media/DataSourceDesc;II)V

    return-void
.end method
