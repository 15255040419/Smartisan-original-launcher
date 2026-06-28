.class Lcom/android/settings/widget/VideoPlayerView$1;
.super Landroid/os/Handler;
.source "VideoPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/VideoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/VideoPlayerView;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/android/settings/widget/VideoPlayerView$1;->this$0:Lcom/android/settings/widget/VideoPlayerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 27
    iget-object p1, p0, Lcom/android/settings/widget/VideoPlayerView$1;->this$0:Lcom/android/settings/widget/VideoPlayerView;

    invoke-static {p1}, Lcom/android/settings/widget/VideoPlayerView;->access$000(Lcom/android/settings/widget/VideoPlayerView;)Landroid/widget/VideoView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 28
    iget-object p1, p0, Lcom/android/settings/widget/VideoPlayerView$1;->this$0:Lcom/android/settings/widget/VideoPlayerView;

    invoke-static {p1}, Lcom/android/settings/widget/VideoPlayerView;->access$000(Lcom/android/settings/widget/VideoPlayerView;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result p1

    const/16 v0, 0x190

    if-ge p1, v0, :cond_0

    .line 29
    iget-object p0, p0, Lcom/android/settings/widget/VideoPlayerView$1;->this$0:Lcom/android/settings/widget/VideoPlayerView;

    invoke-static {p0}, Lcom/android/settings/widget/VideoPlayerView;->access$100(Lcom/android/settings/widget/VideoPlayerView;)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/VideoPlayerView$1;->this$0:Lcom/android/settings/widget/VideoPlayerView;

    invoke-static {p0}, Lcom/android/settings/widget/VideoPlayerView;->access$200(Lcom/android/settings/widget/VideoPlayerView;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
