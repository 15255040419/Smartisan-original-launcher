.class Landroid/support/v4/media/MediaUtils2;
.super Ljava/lang/Object;
.source "MediaUtils2.java"


# static fields
.field static final TAG:Ljava/lang/String; = "MediaUtils2"

.field static final sDefaultBrowserRoot:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    const-string v1, "android.media.MediaLibraryService2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v0, Landroid/support/v4/media/MediaUtils2;->sDefaultBrowserRoot:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertBundleListToMediaItem2List(Ljava/util/List;)Ljava/util/List;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 4
    invoke-static {v2}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static convertCommandButtonListToBundleList(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaSession2$CommandButton;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaSession2$CommandButton;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static convertCommandButtonListToParcelableArray(Ljava/util/List;)[Landroid/os/Parcelable;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/MediaSession2$CommandButton;

    invoke-virtual {v3}, Landroid/support/v4/media/MediaSession2$CommandButton;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v1, [Landroid/os/Parcelable;

    .line 5
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Parcelable;

    return-object p0
.end method

.method static convertMediaItem2ListToBundleList(Ljava/util/List;)Ljava/util/List;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaItem2;

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Landroid/support/v4/media/MediaItem2;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static convertMediaItem2ListToParcelableArray(Ljava/util/List;)[Landroid/os/Parcelable;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/MediaItem2;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Landroid/support/v4/media/MediaItem2;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v1, [Landroid/os/Parcelable;

    .line 6
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Parcelable;

    return-object p0
.end method

.method static convertMediaItemListToMediaItem2List(Ljava/util/List;)Ljava/util/List;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-static {v2}, Landroid/support/v4/media/MediaUtils2;->convertToMediaItem2(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)Landroid/support/v4/media/MediaItem2;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static convertToBundleList([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 3
    check-cast v3, Landroid/os/Bundle;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static convertToCommandButtonList(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v2}, Landroid/support/v4/media/MediaSession2$CommandButton;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaSession2$CommandButton;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static convertToCommandButtonList([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 3

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 7
    aget-object v2, p0, v1

    instance-of v2, v2, Landroid/os/Bundle;

    if-nez v2, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    aget-object v2, p0, v1

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Landroid/support/v4/media/MediaSession2$CommandButton;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaSession2$CommandButton;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static convertToMediaItem(Landroid/support/v4/media/MediaItem2;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaItem2;->getMetadata()Landroid/support/v4/media/MediaMetadata2;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/media/MediaItem2;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_1
    new-instance v1, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/media/MediaItem2;->getMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 7
    invoke-virtual {v0, v2}, Landroid/support/v4/media/MediaMetadata2;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.DISPLAY_DESCRIPTION"

    .line 8
    invoke-virtual {v0, v2}, Landroid/support/v4/media/MediaMetadata2;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.DISPLAY_ICON"

    .line 9
    invoke-virtual {v0, v2}, Landroid/support/v4/media/MediaMetadata2;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadata2;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.TITLE"

    .line 11
    invoke-virtual {v0, v2}, Landroid/support/v4/media/MediaMetadata2;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    goto :goto_0

    :cond_2
    const-string v2, "android.media.metadata.DISPLAY_TITLE"

    .line 13
    invoke-virtual {v0, v2}, Landroid/support/v4/media/MediaMetadata2;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    :goto_0
    const-string v2, "android.media.metadata.DISPLAY_ICON_URI"

    .line 14
    invoke-virtual {v0, v2}, Landroid/support/v4/media/MediaMetadata2;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 15
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    :cond_3
    const-string v2, "android.media.metadata.MEDIA_URI"

    .line 16
    invoke-virtual {v0, v2}, Landroid/support/v4/media/MediaMetadata2;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 18
    :cond_4
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    .line 19
    :goto_1
    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaItem2;->getFlags()I

    move-result p0

    invoke-direct {v1, v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-object v1
.end method

.method static convertToMediaItem2(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)Landroid/support/v4/media/MediaItem2;
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/MediaUtils2;->convertToMediaMetadata2(Landroid/support/v4/media/MediaDescriptionCompat;)Landroid/support/v4/media/MediaMetadata2;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/support/v4/media/MediaItem2$Builder;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->getFlags()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/v4/media/MediaItem2$Builder;-><init>(I)V

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/support/v4/media/MediaItem2$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaItem2$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v0}, Landroid/support/v4/media/MediaItem2$Builder;->setMetadata(Landroid/support/v4/media/MediaMetadata2;)Landroid/support/v4/media/MediaItem2$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/media/MediaItem2$Builder;->build()Landroid/support/v4/media/MediaItem2;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static convertToMediaItem2List([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 3
    aget-object v2, p0, v1

    instance-of v2, v2, Landroid/os/Bundle;

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    aget-object v2, p0, v1

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static convertToMediaItemList(Ljava/util/List;)Ljava/util/List;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaItem2;

    invoke-static {v2}, Landroid/support/v4/media/MediaUtils2;->convertToMediaItem(Landroid/support/v4/media/MediaItem2;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static convertToMediaMetadata2(Landroid/support/v4/media/MediaDescriptionCompat;)Landroid/support/v4/media/MediaMetadata2;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaMetadata2$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadata2$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadata2$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadata2$Builder;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "android.media.metadata.DISPLAY_TITLE"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadata2$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadata2$Builder;

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadata2$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadata2$Builder;

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadata2$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadata2$Builder;

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "android.media.metadata.DISPLAY_ICON"

    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadata2$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadata2$Builder;

    .line 11
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadata2$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadata2$Builder;

    .line 13
    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 14
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaMetadata2$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaMetadata2$Builder;

    .line 15
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 16
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.media.metadata.MEDIA_URI"

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/media/MediaMetadata2$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadata2$Builder;

    .line 17
    :cond_7
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadata2$Builder;->build()Landroid/support/v4/media/MediaMetadata2;

    move-result-object p0

    return-object p0
.end method

.method static convertToMediaMetadata2(Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaMetadata2;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 18
    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaMetadata2;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaMetadata2;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static convertToMediaMetadataCompat(Landroid/support/v4/media/MediaMetadata2;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadata2;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 6
    instance-of v5, v4, Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    .line 7
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    goto :goto_0

    .line 8
    :cond_1
    instance-of v5, v4, Landroid/support/mediacompat/a;

    if-eqz v5, :cond_2

    .line 9
    check-cast v4, Landroid/support/mediacompat/a;

    invoke-static {v4}, Landroid/support/v4/media/MediaUtils2;->convertToRatingCompat(Landroid/support/mediacompat/a;)Landroid/support/v4/media/RatingCompat;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putRating(Ljava/lang/String;Landroid/support/v4/media/RatingCompat;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    goto :goto_0

    .line 10
    :cond_2
    instance-of v5, v4, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    .line 11
    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    goto :goto_0

    .line 12
    :cond_3
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 13
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    goto :goto_0

    .line 14
    :cond_4
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 17
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 18
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_7

    .line 19
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1

    :cond_7
    const-string v4, "android.media.metadata.EXTRAS"

    .line 20
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 21
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_8
    return-object v0
.end method

.method static convertToPlaybackStateCompatState(II)I
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v1, :cond_1

    const/4 p1, 0x7

    if-eq p0, v0, :cond_0

    :cond_0
    return p1

    :cond_1
    if-eq p1, v1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x6

    return p0

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method static convertToPlayerState(I)I
    .locals 1

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :pswitch_3
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static convertToRating2(Landroid/support/v4/media/RatingCompat;)Landroid/support/mediacompat/a;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getRatingStyle()I

    move-result p0

    invoke-static {p0}, Landroid/support/mediacompat/a;->newUnratedRating(I)Landroid/support/mediacompat/a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getRatingStyle()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    return-object v0

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getPercentRating()F

    move-result p0

    invoke-static {p0}, Landroid/support/mediacompat/a;->newPercentageRating(F)Landroid/support/mediacompat/a;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getRatingStyle()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result p0

    .line 6
    invoke-static {v0, p0}, Landroid/support/mediacompat/a;->newStarRating(IF)Landroid/support/mediacompat/a;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_2
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isThumbUp()Z

    move-result p0

    invoke-static {p0}, Landroid/support/mediacompat/a;->newThumbRating(Z)Landroid/support/mediacompat/a;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_3
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->hasHeart()Z

    move-result p0

    invoke-static {p0}, Landroid/support/mediacompat/a;->newHeartRating(Z)Landroid/support/mediacompat/a;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static convertToRatingCompat(Landroid/support/mediacompat/a;)Landroid/support/v4/media/RatingCompat;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/support/mediacompat/a;->isRated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/support/mediacompat/a;->getRatingStyle()I

    move-result p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat;->newUnratedRating(I)Landroid/support/v4/media/RatingCompat;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/support/mediacompat/a;->getRatingStyle()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    return-object v0

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/mediacompat/a;->getPercentRating()F

    move-result p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat;->newPercentageRating(F)Landroid/support/v4/media/RatingCompat;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/mediacompat/a;->getRatingStyle()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/mediacompat/a;->getStarRating()F

    move-result p0

    .line 6
    invoke-static {v0, p0}, Landroid/support/v4/media/RatingCompat;->newStarRating(IF)Landroid/support/v4/media/RatingCompat;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_2
    invoke-virtual {p0}, Landroid/support/mediacompat/a;->isThumbUp()Z

    move-result p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat;->newThumbRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_3
    invoke-virtual {p0}, Landroid/support/mediacompat/a;->hasHeart()Z

    move-result p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat;->newHeartRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static createBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static isDefaultLibraryRootHint(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "android.support.v4.media.root_default_root"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
