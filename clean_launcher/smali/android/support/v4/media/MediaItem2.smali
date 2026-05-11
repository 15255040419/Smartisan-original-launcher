.class public Landroid/support/v4/media/MediaItem2;
.super Ljava/lang/Object;
.source "MediaItem2.java"


# static fields
.field public static final FLAG_BROWSABLE:I = 0x1

.field public static final FLAG_PLAYABLE:I = 0x2

.field private static final KEY_FLAGS:Ljava/lang/String; = "android.media.mediaitem2.flags"

.field private static final KEY_ID:Ljava/lang/String; = "android.media.mediaitem2.id"

.field private static final KEY_METADATA:Ljava/lang/String; = "android.media.mediaitem2.metadata"

.field private static final KEY_UUID:Ljava/lang/String; = "android.media.mediaitem2.uuid"


# instance fields
.field private mDataSourceDesc:Landroid/support/v4/media/DataSourceDesc;

.field private final mFlags:I

.field private final mId:Ljava/lang/String;

.field private mMetadata:Landroid/support/v4/media/MediaMetadata2;

.field private final mUUID:Ljava/util/UUID;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/support/v4/media/DataSourceDesc;Landroid/support/v4/media/MediaMetadata2;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaItem2;-><init>(Ljava/lang/String;Landroid/support/v4/media/DataSourceDesc;Landroid/support/v4/media/MediaMetadata2;ILjava/util/UUID;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/support/v4/media/DataSourceDesc;Landroid/support/v4/media/MediaMetadata2;ILandroid/support/v4/media/MediaItem2$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaItem2;-><init>(Ljava/lang/String;Landroid/support/v4/media/DataSourceDesc;Landroid/support/v4/media/MediaMetadata2;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/support/v4/media/DataSourceDesc;Landroid/support/v4/media/MediaMetadata2;ILjava/util/UUID;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p3}, Landroid/support/v4/media/MediaMetadata2;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "metadata\'s id should be matched with the mediaid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/support/v4/media/MediaItem2;->mId:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Landroid/support/v4/media/MediaItem2;->mDataSourceDesc:Landroid/support/v4/media/DataSourceDesc;

    .line 8
    iput-object p3, p0, Landroid/support/v4/media/MediaItem2;->mMetadata:Landroid/support/v4/media/MediaMetadata2;

    .line 9
    iput p4, p0, Landroid/support/v4/media/MediaItem2;->mFlags:I

    if-nez p5, :cond_2

    .line 10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p5

    :cond_2
    iput-object p5, p0, Landroid/support/v4/media/MediaItem2;->mUUID:Ljava/util/UUID;

    return-void

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mediaId shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.media.mediaitem2.uuid"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;Ljava/util/UUID;)Landroid/support/v4/media/MediaItem2;

    move-result-object p0

    return-object p0
.end method

.method static fromBundle(Landroid/os/Bundle;Ljava/util/UUID;)Landroid/support/v4/media/MediaItem2;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.media.mediaitem2.id"

    .line 3
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "android.media.mediaitem2.metadata"

    .line 4
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v1}, Landroid/support/v4/media/MediaMetadata2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaMetadata2;

    move-result-object v0

    :cond_1
    move-object v5, v0

    const-string v0, "android.media.mediaitem2.flags"

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 7
    new-instance p0, Landroid/support/v4/media/MediaItem2;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/media/MediaItem2;-><init>(Ljava/lang/String;Landroid/support/v4/media/DataSourceDesc;Landroid/support/v4/media/MediaMetadata2;ILjava/util/UUID;)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v4/media/MediaItem2;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    check-cast p1, Landroid/support/v4/media/MediaItem2;

    .line 3
    iget-object p0, p0, Landroid/support/v4/media/MediaItem2;->mUUID:Ljava/util/UUID;

    iget-object p1, p1, Landroid/support/v4/media/MediaItem2;->mUUID:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDataSourceDesc()Landroid/support/v4/media/DataSourceDesc;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaItem2;->mDataSourceDesc:Landroid/support/v4/media/DataSourceDesc;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/MediaItem2;->mFlags:I

    return p0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaItem2;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getMetadata()Landroid/support/v4/media/MediaMetadata2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaItem2;->mMetadata:Landroid/support/v4/media/MediaMetadata2;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaItem2;->mUUID:Ljava/util/UUID;

    invoke-virtual {p0}, Ljava/util/UUID;->hashCode()I

    move-result p0

    return p0
.end method

.method public isBrowsable()Z
    .locals 1

    .line 1
    iget p0, p0, Landroid/support/v4/media/MediaItem2;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlayable()Z
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/MediaItem2;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setMetadata(Landroid/support/v4/media/MediaMetadata2;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaItem2;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadata2;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "metadata\'s id should be matched with the mediaId"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/support/v4/media/MediaItem2;->mMetadata:Landroid/support/v4/media/MediaMetadata2;

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/support/v4/media/MediaItem2;->mId:Ljava/lang/String;

    const-string v2, "android.media.mediaitem2.id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget v1, p0, Landroid/support/v4/media/MediaItem2;->mFlags:I

    const-string v2, "android.media.mediaitem2.flags"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object v1, p0, Landroid/support/v4/media/MediaItem2;->mMetadata:Landroid/support/v4/media/MediaMetadata2;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadata2;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.media.mediaitem2.metadata"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/MediaItem2;->mUUID:Ljava/util/UUID;

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.media.mediaitem2.uuid"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaItem2{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mFlags="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/MediaItem2;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMetadata="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v4/media/MediaItem2;->mMetadata:Landroid/support/v4/media/MediaMetadata2;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
