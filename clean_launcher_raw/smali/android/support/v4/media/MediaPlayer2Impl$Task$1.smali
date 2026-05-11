.class Landroid/support/v4/media/MediaPlayer2Impl$Task$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/support/v4/media/MediaPlayer2Impl$Mp2EventNotifier;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaPlayer2Impl$Task;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl$Task;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$Task;

    iput p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroid/support/v4/media/MediaPlayer2$EventCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$Task;

    iget-object v1, v0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    .line 2
    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl$Task;->access$1100(Landroid/support/v4/media/MediaPlayer2Impl$Task;)Landroid/support/v4/media/DataSourceDesc;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$Task;

    invoke-static {v2}, Landroid/support/v4/media/MediaPlayer2Impl$Task;->access$1000(Landroid/support/v4/media/MediaPlayer2Impl$Task;)I

    move-result v2

    iget p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task$1;->val$status:I

    .line 3
    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/support/v4/media/MediaPlayer2$EventCallback;->onCallCompleted(Landroid/support/v4/media/MediaPlayer2;Landroid/support/v4/media/DataSourceDesc;II)V

    return-void
.end method
