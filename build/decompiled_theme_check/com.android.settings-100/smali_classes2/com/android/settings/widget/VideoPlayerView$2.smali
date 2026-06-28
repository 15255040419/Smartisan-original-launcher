.class Lcom/android/settings/widget/VideoPlayerView$2;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/VideoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
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

    .line 54
    iput-object p1, p0, Lcom/android/settings/widget/VideoPlayerView$2;->this$0:Lcom/android/settings/widget/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p0, 0x1

    .line 57
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method
