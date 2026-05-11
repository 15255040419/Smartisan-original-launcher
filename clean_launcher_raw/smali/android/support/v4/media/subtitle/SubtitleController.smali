.class public Landroid/support/v4/media/subtitle/SubtitleController;
.super Ljava/lang/Object;
.source "SubtitleController.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final WHAT_HIDE:I = 0x2

.field private static final WHAT_SELECT_DEFAULT_TRACK:I = 0x4

.field private static final WHAT_SELECT_TRACK:I = 0x3

.field private static final WHAT_SHOW:I = 0x1


# instance fields
.field private mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

.field private final mCallback:Landroid/os/Handler$Callback;

.field private mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/support/v4/media/subtitle/SubtitleController$Listener;

.field private mRenderers:Ljava/util/ArrayList;

.field private final mRenderersLock:Ljava/lang/Object;

.field private mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

.field private mShowing:Z

.field private mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;

.field private mTrackIsExplicit:Z

.field private mTracks:Ljava/util/ArrayList;

.field private final mTracksLock:Ljava/lang/Object;

.field private mVisibilityIsExplicit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Landroid/support/v4/media/subtitle/SubtitleController;-><init>(Landroid/content/Context;Landroid/support/v4/media/subtitle/MediaTimeProvider;Landroid/support/v4/media/subtitle/SubtitleController$Listener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/subtitle/MediaTimeProvider;Landroid/support/v4/media/subtitle/SubtitleController$Listener;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracksLock:Ljava/lang/Object;

    .line 5
    new-instance v0, Landroid/support/v4/media/subtitle/SubtitleController$1;

    invoke-direct {v0, p0}, Landroid/support/v4/media/subtitle/SubtitleController$1;-><init>(Landroid/support/v4/media/subtitle/SubtitleController;)V

    iput-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    .line 6
    new-instance v0, Landroid/support/v4/media/subtitle/SubtitleController$2;

    invoke-direct {v0, p0}, Landroid/support/v4/media/subtitle/SubtitleController$2;-><init>(Landroid/support/v4/media/subtitle/SubtitleController;)V

    iput-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTrackIsExplicit:Z

    .line 8
    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 9
    iput-object p2, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;

    .line 10
    iput-object p3, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mListener:Landroid/support/v4/media/subtitle/SubtitleController$Listener;

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    .line 12
    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mShowing:Z

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    const-string p2, "captioning"

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/media/subtitle/SubtitleController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->doShow()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/media/subtitle/SubtitleController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->doHide()V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/media/subtitle/SubtitleController;Landroid/support/v4/media/subtitle/SubtitleTrack;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/media/subtitle/SubtitleController;->doSelectTrack(Landroid/support/v4/media/subtitle/SubtitleTrack;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v4/media/subtitle/SubtitleController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->doSelectDefaultTrack()V

    return-void
.end method

.method private checkAnchorLooper()V
    .locals 0

    return-void
.end method

.method private doHide()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 2
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->hide()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mShowing:Z

    return-void
.end method

.method private doSelectDefaultTrack()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTrackIsExplicit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "is-forced-subtitle"

    .line 5
    invoke-static {v0, v2, v1}, Landroid/support/v4/media/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->getTrackType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->hide()V

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->show()V

    .line 10
    :cond_3
    :goto_1
    iput-boolean v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 11
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->getDefaultTrack()Landroid/support/v4/media/subtitle/SubtitleTrack;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p0, v0}, Landroid/support/v4/media/subtitle/SubtitleController;->selectTrack(Landroid/support/v4/media/subtitle/SubtitleTrack;)Z

    .line 13
    iput-boolean v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTrackIsExplicit:Z

    .line 14
    iget-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    if-nez v0, :cond_5

    .line 15
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->show()V

    .line 16
    iput-boolean v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    :cond_5
    return-void
.end method

.method private doSelectTrack(Landroid/support/v4/media/subtitle/SubtitleTrack;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTrackIsExplicit:Z

    .line 2
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->hide()V

    .line 4
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/subtitle/SubtitleTrack;->setTimeProvider(Landroid/support/v4/media/subtitle/MediaTimeProvider;)V

    .line 5
    :cond_1
    iput-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    .line 6
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->getRenderingWidget()Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v4/media/subtitle/SubtitleController$Anchor;->setSubtitleWidget(Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;)V

    .line 8
    :cond_2
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-eqz v0, :cond_3

    .line 9
    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/subtitle/SubtitleTrack;->setTimeProvider(Landroid/support/v4/media/subtitle/MediaTimeProvider;)V

    .line 10
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->show()V

    .line 11
    :cond_3
    iget-object p0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mListener:Landroid/support/v4/media/subtitle/SubtitleController$Listener;

    if-eqz p0, :cond_4

    .line 12
    invoke-interface {p0, p1}, Landroid/support/v4/media/subtitle/SubtitleController$Listener;->onSubtitleTrackSelected(Landroid/support/v4/media/subtitle/SubtitleTrack;)V

    :cond_4
    return-void
.end method

.method private doShow()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mShowing:Z

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 3
    iget-object p0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->show()V

    :cond_0
    return-void
.end method

.method private getRenderingWidget()Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->getRenderingWidget()Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object p0

    return-object p0
.end method

.method private processOnAnchor(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)Landroid/support/v4/media/subtitle/SubtitleTrack;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/subtitle/SubtitleController$Renderer;

    .line 3
    invoke-virtual {v2, p1}, Landroid/support/v4/media/subtitle/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2, p1}, Landroid/support/v4/media/subtitle/SubtitleController$Renderer;->createTrack(Landroid/media/MediaFormat;)Landroid/support/v4/media/subtitle/SubtitleTrack;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracksLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v3, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 8
    :cond_1
    iget-object p0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v2

    :catchall_0
    move-exception p0

    .line 11
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 12
    :cond_2
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method protected finalize()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDefaultTrack()Landroid/support/v4/media/subtitle/SubtitleTrack;
    .locals 15

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 4
    iget-object v4, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracksLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v5, 0x0

    const/4 v6, -0x1

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/media/subtitle/SubtitleTrack;

    .line 6
    invoke-virtual {v7}, Landroid/support/v4/media/subtitle/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v8

    const-string v9, "language"

    .line 7
    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "is-forced-subtitle"

    const/4 v11, 0x0

    .line 8
    invoke-static {v8, v10, v11}, Landroid/support/v4/media/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_2

    move v10, v3

    goto :goto_2

    :cond_2
    move v10, v11

    :goto_2
    const-string v12, "is-autoselect"

    .line 9
    invoke-static {v8, v12, v3}, Landroid/support/v4/media/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_3

    move v12, v3

    goto :goto_3

    :cond_3
    move v12, v11

    :goto_3
    const-string v13, "is-default"

    .line 10
    invoke-static {v8, v13, v11}, Landroid/support/v4/media/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    move v8, v3

    goto :goto_4

    :cond_4
    move v8, v11

    :goto_4
    if-eqz v1, :cond_6

    .line 11
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 12
    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 13
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_5

    :cond_5
    move v9, v11

    goto :goto_6

    :cond_6
    :goto_5
    move v9, v3

    :goto_6
    if-eqz v10, :cond_7

    move v13, v11

    goto :goto_7

    :cond_7
    const/16 v13, 0x8

    :goto_7
    if-nez v0, :cond_8

    if-eqz v8, :cond_8

    const/4 v14, 0x4

    goto :goto_8

    :cond_8
    move v14, v11

    :goto_8
    add-int/2addr v13, v14

    if-eqz v12, :cond_9

    goto :goto_9

    :cond_9
    const/4 v11, 0x2

    :goto_9
    add-int/2addr v13, v11

    add-int/2addr v13, v9

    if-eqz v2, :cond_a

    if-nez v10, :cond_a

    goto :goto_1

    :cond_a
    if-nez v0, :cond_b

    if-nez v8, :cond_c

    :cond_b
    if-eqz v9, :cond_1

    if-nez v12, :cond_c

    if-nez v10, :cond_c

    if-eqz v0, :cond_1

    :cond_c
    if-le v13, v6, :cond_1

    move-object v5, v7

    move v6, v13

    goto/16 :goto_1

    .line 14
    :cond_d
    monitor-exit v4

    return-object v5

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSelectedTrack()Landroid/support/v4/media/subtitle/SubtitleTrack;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    return-object p0
.end method

.method public getTracks()[Landroid/support/v4/media/subtitle/SubtitleTrack;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/support/v4/media/subtitle/SubtitleTrack;

    .line 3
    iget-object p0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hasRendererFor(Landroid/media/MediaFormat;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/subtitle/SubtitleController$Renderer;

    .line 3
    invoke-virtual {v1, p1}, Landroid/support/v4/media/subtitle/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    .line 4
    monitor-exit v0

    return p0

    :cond_1
    const/4 p0, 0x0

    .line 5
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/media/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    return-void
.end method

.method public registerRenderer(Landroid/support/v4/media/subtitle/SubtitleController$Renderer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object p0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->checkAnchorLooper()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->hide()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/support/v4/media/subtitle/SubtitleController;->selectTrack(Landroid/support/v4/media/subtitle/SubtitleTrack;)Z

    .line 4
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTrackIsExplicit:Z

    .line 6
    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 7
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object p0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    return-void
.end method

.method public selectDefaultTrack()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/media/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    return-void
.end method

.method public selectTrack(Landroid/support/v4/media/subtitle/SubtitleTrack;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/media/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setAnchor(Landroid/support/v4/media/subtitle/SubtitleController$Anchor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->checkAnchorLooper()V

    .line 3
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

    invoke-interface {v0, v1}, Landroid/support/v4/media/subtitle/SubtitleController$Anchor;->setSubtitleWidget(Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;)V

    .line 4
    :cond_1
    iput-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

    .line 5
    iput-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 6
    iget-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

    if-eqz p1, :cond_2

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p1}, Landroid/support/v4/media/subtitle/SubtitleController$Anchor;->getSubtitleLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 8
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->checkAnchorLooper()V

    .line 9
    iget-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->getRenderingWidget()Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/support/v4/media/subtitle/SubtitleController$Anchor;->setSubtitleWidget(Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;)V

    :cond_2
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/media/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    return-void
.end method
