.class public Lcom/android/settings/ChargingAnimationFragment;
.super Lcom/android/settings/SupportFragment;
.source "ChargingAnimationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChargingAnimationFragment$ChargingAnimation;
    }
.end annotation


# static fields
.field private static final CHARGING_ANIMATION_INDEX_DEFAULT:I = 0x0

.field private static final CHARGING_ANIMATION_INDEX_MOON:I = 0x1

.field public static final DELAY_MILLIS:I = 0x12c

.field public static final MSG_ID:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mChargingAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/ChargingAnimationFragment$ChargingAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckDefaultIv:Landroid/widget/ImageView;

.field private mCheckMoonIv:Landroid/widget/ImageView;

.field private mDefaultIv:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mMoonIv:Landroid/widget/ImageView;

.field private mOriginAnimIndex:I

.field private mRightView:Landroid/view/View;

.field private mSelectAnimIndex:I

.field private mVideoPlayerView:Lcom/android/settings/widget/VideoPlayerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/android/settings/ChargingAnimationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ChargingAnimationFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/android/settings/SupportFragment;-><init>()V

    .line 41
    new-instance v0, Lcom/android/settings/ChargingAnimationFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChargingAnimationFragment$1;-><init>(Lcom/android/settings/ChargingAnimationFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mOriginAnimIndex:I

    .line 51
    iput v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mSelectAnimIndex:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mChargingAnimations:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChargingAnimationFragment;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/settings/ChargingAnimationFragment;->setVideoUri()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/ChargingAnimationFragment;)Lcom/android/settings/widget/VideoPlayerView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/settings/ChargingAnimationFragment;->mVideoPlayerView:Lcom/android/settings/widget/VideoPlayerView;

    return-object p0
.end method

.method private initData()V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/ChargingAnimationFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_charging_anim"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mOriginAnimIndex:I

    .line 75
    iget v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mOriginAnimIndex:I

    iput v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mSelectAnimIndex:I

    .line 76
    iget-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mChargingAnimations:Ljava/util/List;

    new-instance v1, Lcom/android/settings/ChargingAnimationFragment$ChargingAnimation;

    const v2, 0x7f110001

    invoke-direct {v1, p0, v2}, Lcom/android/settings/ChargingAnimationFragment$ChargingAnimation;-><init>(Lcom/android/settings/ChargingAnimationFragment;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mChargingAnimations:Ljava/util/List;

    new-instance v1, Lcom/android/settings/ChargingAnimationFragment$ChargingAnimation;

    const v2, 0x7f110002

    invoke-direct {v1, p0, v2}, Lcom/android/settings/ChargingAnimationFragment$ChargingAnimation;-><init>(Lcom/android/settings/ChargingAnimationFragment;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initViews()V
    .locals 4

    const v0, 0x7f0a09ff

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/settings/ChargingAnimationFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/VideoPlayerView;

    iput-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mVideoPlayerView:Lcom/android/settings/widget/VideoPlayerView;

    .line 84
    iget-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mVideoPlayerView:Lcom/android/settings/widget/VideoPlayerView;

    invoke-virtual {v0}, Lcom/android/settings/widget/VideoPlayerView;->hidePreview()V

    .line 85
    iget-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const v0, 0x7f0a059a

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/settings/ChargingAnimationFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mDefaultIv:Landroid/widget/ImageView;

    const v0, 0x7f0a0596

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/settings/ChargingAnimationFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mCheckDefaultIv:Landroid/widget/ImageView;

    const v0, 0x7f0a05a3

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/settings/ChargingAnimationFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mMoonIv:Landroid/widget/ImageView;

    const v0, 0x7f0a0597

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/settings/ChargingAnimationFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mCheckMoonIv:Landroid/widget/ImageView;

    .line 90
    iget v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mOriginAnimIndex:I

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mCheckMoonIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object p0, p0, Lcom/android/settings/ChargingAnimationFragment;->mCheckDefaultIv:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mCheckDefaultIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object p0, p0, Lcom/android/settings/ChargingAnimationFragment;->mCheckMoonIv:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private playVideo()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mRightView:Landroid/view/View;

    iget v1, p0, Lcom/android/settings/ChargingAnimationFragment;->mSelectAnimIndex:I

    iget v2, p0, Lcom/android/settings/ChargingAnimationFragment;->mOriginAnimIndex:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget-object p0, p0, Lcom/android/settings/ChargingAnimationFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setVideoUri()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mChargingAnimations:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/ChargingAnimationFragment;->mSelectAnimIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ChargingAnimationFragment$ChargingAnimation;

    .line 113
    iget-object p0, p0, Lcom/android/settings/ChargingAnimationFragment;->mVideoPlayerView:Lcom/android/settings/widget/VideoPlayerView;

    invoke-virtual {v0}, Lcom/android/settings/ChargingAnimationFragment$ChargingAnimation;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/VideoPlayerView;->setVideoUri(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mRightView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/ChargingAnimationFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mSelectAnimIndex:I

    const-string v1, "keyguard_charging_anim"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/ChargingAnimationFragment;->finish()V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mDefaultIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 137
    iput v2, p0, Lcom/android/settings/ChargingAnimationFragment;->mSelectAnimIndex:I

    .line 138
    iget-object p1, p0, Lcom/android/settings/ChargingAnimationFragment;->mCheckDefaultIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object p1, p0, Lcom/android/settings/ChargingAnimationFragment;->mCheckMoonIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    invoke-direct {p0}, Lcom/android/settings/ChargingAnimationFragment;->playVideo()V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mMoonIv:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    .line 142
    iput p1, p0, Lcom/android/settings/ChargingAnimationFragment;->mSelectAnimIndex:I

    .line 143
    iget-object p1, p0, Lcom/android/settings/ChargingAnimationFragment;->mCheckMoonIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object p1, p0, Lcom/android/settings/ChargingAnimationFragment;->mCheckDefaultIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    invoke-direct {p0}, Lcom/android/settings/ChargingAnimationFragment;->playVideo()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0085

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ChargingAnimationFragment;->mRootView:Landroid/view/View;

    .line 57
    invoke-direct {p0}, Lcom/android/settings/ChargingAnimationFragment;->initData()V

    .line 58
    invoke-direct {p0}, Lcom/android/settings/ChargingAnimationFragment;->initViews()V

    .line 59
    iget-object p0, p0, Lcom/android/settings/ChargingAnimationFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onDestroyView()V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/ChargingAnimationFragment;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public onSupportInvisible()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportInvisible()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/ChargingAnimationFragment;->mVideoPlayerView:Lcom/android/settings/widget/VideoPlayerView;

    invoke-virtual {v0}, Lcom/android/settings/widget/VideoPlayerView;->stop()V

    .line 120
    iget-object p0, p0, Lcom/android/settings/ChargingAnimationFragment;->mVideoPlayerView:Lcom/android/settings/widget/VideoPlayerView;

    invoke-virtual {p0}, Lcom/android/settings/widget/VideoPlayerView;->hidePreview()V

    return-void
.end method

.method public onSupportVisible()V
    .locals 0

    .line 125
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportVisible()V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/ChargingAnimationFragment;->setVideoUri()V

    .line 127
    iget-object p0, p0, Lcom/android/settings/ChargingAnimationFragment;->mVideoPlayerView:Lcom/android/settings/widget/VideoPlayerView;

    invoke-virtual {p0}, Lcom/android/settings/widget/VideoPlayerView;->start()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2}, Lcom/android/settings/SupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/ChargingAnimationFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    const p2, 0x20200ae

    invoke-virtual {p1, p2}, Lsmartisanos/widget/TitleBar;->addRightImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ChargingAnimationFragment;->mRightView:Landroid/view/View;

    .line 66
    iget-object p1, p0, Lcom/android/settings/ChargingAnimationFragment;->mRightView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lcom/android/settings/ChargingAnimationFragment;->mRightView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/ChargingAnimationFragment;->mDefaultIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/ChargingAnimationFragment;->mMoonIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
