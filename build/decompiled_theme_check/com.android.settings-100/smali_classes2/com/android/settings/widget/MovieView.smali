.class public Lcom/android/settings/widget/MovieView;
.super Landroid/widget/FrameLayout;
.source "MovieView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MovieView"


# instance fields
.field private mIvMask:Landroid/widget/ImageView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSavedCurrentPosition:I

.field private mVideoResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/MovieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/MovieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/widget/MovieView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisan/appbaselayer/SMBaseApi;->isSmartisanPCMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0251

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0335

    :goto_0
    invoke-static {p1, v0, p0}, Lcom/android/settings/widget/MovieView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a08ce

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    const v1, 0x7f0a05a2

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/widget/MovieView;->mIvMask:Landroid/widget/ImageView;

    .line 50
    sget-object v1, Lcom/android/settings/R$styleable;->MovieView:[I

    const v2, 0x7f1300be

    .line 51
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 57
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/settings/widget/MovieView;->setVideoResourceId(I)V

    const/4 p3, 0x1

    .line 58
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/MovieView;->setMaskRes(I)V

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    new-instance p1, Lcom/android/settings/widget/MovieView$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/MovieView$1;-><init>(Lcom/android/settings/widget/MovieView;)V

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/MovieView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/settings/widget/MovieView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/MovieView;Landroid/view/Surface;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings/widget/MovieView;->openVideo(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/widget/MovieView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/settings/widget/MovieView;->play()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/widget/MovieView;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/android/settings/widget/MovieView;->mSavedCurrentPosition:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/settings/widget/MovieView;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/android/settings/widget/MovieView;->mSavedCurrentPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/widget/MovieView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/settings/widget/MovieView;->pause()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/widget/MovieView;)Landroid/widget/ImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/settings/widget/MovieView;->mIvMask:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/widget/MovieView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/settings/widget/MovieView;->hideMask()V

    return-void
.end method

.method private hideMask()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/settings/widget/MovieView;->mIvMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 186
    iget-object p0, p0, Lcom/android/settings/widget/MovieView;->mIvMask:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private openVideo(Landroid/view/Surface;)V
    .locals 1

    .line 131
    iget v0, p0, Lcom/android/settings/widget/MovieView;->mVideoResourceId:I

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/MovieView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 135
    iget-object p0, p0, Lcom/android/settings/widget/MovieView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private pause()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/settings/widget/MovieView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MovieView;->setKeepScreenOn(Z)V

    return-void
.end method

.method private play()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/widget/MovieView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MovieView;->setKeepScreenOn(Z)V

    return-void
.end method

.method private startVideo()V
    .locals 7

    .line 139
    iget-object v0, p0, Lcom/android/settings/widget/MovieView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/widget/MovieView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/settings/widget/MovieView$2;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/MovieView$2;-><init>(Lcom/android/settings/widget/MovieView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/widget/MovieView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/widget/MovieView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/widget/MovieView;->mVideoResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/widget/MovieView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 159
    iget-object v1, p0, Lcom/android/settings/widget/MovieView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/settings/widget/MovieView$3;

    invoke-direct {v2, p0}, Lcom/android/settings/widget/MovieView$3;-><init>(Lcom/android/settings/widget/MovieView;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 171
    iget-object p0, p0, Lcom/android/settings/widget/MovieView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 172
    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 157
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_0

    .line 172
    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to open video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MovieView"

    invoke-static {v0, p0}, Lsmartisanos/util/LogTag;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/settings/widget/MovieView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pauseVideo()V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/settings/widget/MovieView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez p0, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public playVideo()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/settings/widget/MovieView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/MovieView;->startVideo()V

    .line 195
    iget-object p0, p0, Lcom/android/settings/widget/MovieView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public releaseVideo()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/settings/widget/MovieView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/android/settings/widget/MovieView;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public setMaskRes(I)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/widget/MovieView;->mIvMask:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setVideoResourceId(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/android/settings/widget/MovieView;->mVideoResourceId:I

    return-void
.end method
