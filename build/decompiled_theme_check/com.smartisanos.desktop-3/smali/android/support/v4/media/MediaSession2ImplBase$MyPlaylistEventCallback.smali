.class Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;
.super Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;
.source "MediaSession2ImplBase.java"


# instance fields
.field private final mSession:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaSession2ImplBase$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;)V

    return-void
.end method


# virtual methods
.method public onPlaylistChanged(Landroid/support/v4/media/MediaPlaylistAgent;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/MediaSession2ImplBase;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/media/MediaSession2ImplBase;->access$500(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaPlaylistAgent;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    return-void
.end method

.method public onPlaylistMetadataChanged(Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/MediaSession2ImplBase;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/support/v4/media/MediaSession2ImplBase;->access$600(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/MediaMetadata2;)V

    return-void
.end method

.method public onRepeatModeChanged(Landroid/support/v4/media/MediaPlaylistAgent;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/MediaSession2ImplBase;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/support/v4/media/MediaSession2ImplBase;->access$700(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaPlaylistAgent;I)V

    return-void
.end method

.method public onShuffleModeChanged(Landroid/support/v4/media/MediaPlaylistAgent;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/MediaSession2ImplBase;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/support/v4/media/MediaSession2ImplBase;->access$800(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaPlaylistAgent;I)V

    return-void
.end method
