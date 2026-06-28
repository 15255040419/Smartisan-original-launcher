.class public Lcom/android/settings/widget/VideoPlayerView;
.super Landroid/widget/FrameLayout;
.source "VideoPlayerView.java"


# static fields
.field private static final sInterval:I = 0x14


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPhoneFrameImage:Landroid/widget/ImageView;

.field private mPreviewImage:Landroid/widget/ImageView;

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/VideoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/VideoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    new-instance p2, Lcom/android/settings/widget/VideoPlayerView$1;

    invoke-direct {p2, p0}, Lcom/android/settings/widget/VideoPlayerView$1;-><init>(Lcom/android/settings/widget/VideoPlayerView;)V

    iput-object p2, p0, Lcom/android/settings/widget/VideoPlayerView;->mHandler:Landroid/os/Handler;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0333

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a072e

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/widget/VideoPlayerView;->mPreviewImage:Landroid/widget/ImageView;

    const p2, 0x7f0a0a00

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/VideoView;

    iput-object p2, p0, Lcom/android/settings/widget/VideoPlayerView;->mVideoView:Landroid/widget/VideoView;

    const p2, 0x7f0a06fc

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/VideoPlayerView;->mPhoneFrameImage:Landroid/widget/ImageView;

    .line 52
    iget-object p1, p0, Lcom/android/settings/widget/VideoPlayerView;->mPhoneFrameImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/settings/widget/VideoPlayerView;->getPhoneFrameRes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    iget-object p1, p0, Lcom/android/settings/widget/VideoPlayerView;->mVideoView:Landroid/widget/VideoView;

    new-instance p2, Lcom/android/settings/widget/VideoPlayerView$2;

    invoke-direct {p2, p0}, Lcom/android/settings/widget/VideoPlayerView$2;-><init>(Lcom/android/settings/widget/VideoPlayerView;)V

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/VideoPlayerView;)Landroid/widget/VideoView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/settings/widget/VideoPlayerView;->mVideoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/VideoPlayerView;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPlayerView;->loopCheckVideoPosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/widget/VideoPlayerView;)Landroid/widget/ImageView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/settings/widget/VideoPlayerView;->mPreviewImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getPhoneFrameRes()I
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPlayerView;->needProcessSpecially()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 64
    invoke-static {}, Lcom/android/settings/Utils;->getSpecialPhoneFrameResId()I

    move-result p0

    return p0

    .line 66
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->getPhoneFrameResId()I

    move-result p0

    return p0
.end method

.method private loopCheckVideoPosition()V
    .locals 3

    .line 92
    iget-object p0, p0, Lcom/android/settings/widget/VideoPlayerView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private needProcessSpecially()Z
    .locals 0

    .line 70
    invoke-static {}, Lcom/android/settings/Utils;->isCameraInScreen()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/settings/SettingsFeature;->isDiggingScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public hidePreview()V
    .locals 1

    .line 88
    iget-object p0, p0, Lcom/android/settings/widget/VideoPlayerView;->mPreviewImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/settings/widget/VideoPlayerView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public start()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPlayerView;->loopCheckVideoPosition()V

    .line 79
    iget-object p0, p0, Lcom/android/settings/widget/VideoPlayerView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/widget/VideoPlayerView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 84
    iget-object p0, p0, Lcom/android/settings/widget/VideoPlayerView;->mPreviewImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
