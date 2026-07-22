.class public final Landroid/support/v4/media/MediaItem2$Builder;
.super Ljava/lang/Object;
.source "MediaItem2.java"


# instance fields
.field private mDataSourceDesc:Landroid/support/v4/media/DataSourceDesc;

.field private mFlags:I

.field private mMediaId:Ljava/lang/String;

.field private mMetadata:Landroid/support/v4/media/MediaMetadata2;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/media/MediaItem2$Builder;->mFlags:I

    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/media/MediaItem2;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaItem2$Builder;->mMetadata:Landroid/support/v4/media/MediaMetadata2;

    if-eqz v0, :cond_0

    const-string v1, "android.media.metadata.MEDIA_ID"

    .line 2
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaMetadata2;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Landroid/support/v4/media/MediaItem2$Builder;->mMediaId:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    move-object v2, v0

    .line 4
    new-instance v0, Landroid/support/v4/media/MediaItem2;

    iget-object v3, p0, Landroid/support/v4/media/MediaItem2$Builder;->mDataSourceDesc:Landroid/support/v4/media/DataSourceDesc;

    iget-object v4, p0, Landroid/support/v4/media/MediaItem2$Builder;->mMetadata:Landroid/support/v4/media/MediaMetadata2;

    iget v5, p0, Landroid/support/v4/media/MediaItem2$Builder;->mFlags:I

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/MediaItem2;-><init>(Ljava/lang/String;Landroid/support/v4/media/DataSourceDesc;Landroid/support/v4/media/MediaMetadata2;ILandroid/support/v4/media/MediaItem2$1;)V

    return-object v0
.end method

.method public setDataSourceDesc(Landroid/support/v4/media/DataSourceDesc;)Landroid/support/v4/media/MediaItem2$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaItem2$Builder;->mDataSourceDesc:Landroid/support/v4/media/DataSourceDesc;

    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaItem2$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaItem2$Builder;->mMediaId:Ljava/lang/String;

    return-object p0
.end method

.method public setMetadata(Landroid/support/v4/media/MediaMetadata2;)Landroid/support/v4/media/MediaItem2$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaItem2$Builder;->mMetadata:Landroid/support/v4/media/MediaMetadata2;

    return-object p0
.end method
