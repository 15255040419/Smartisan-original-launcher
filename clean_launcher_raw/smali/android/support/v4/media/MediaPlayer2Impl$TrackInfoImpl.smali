.class public final Landroid/support/v4/media/MediaPlayer2Impl$TrackInfoImpl;
.super Landroid/support/v4/media/MediaPlayer2$TrackInfo;
.source "MediaPlayer2Impl.java"


# instance fields
.field final mFormat:Landroid/media/MediaFormat;

.field final mTrackType:I


# direct methods
.method constructor <init>(ILandroid/media/MediaFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/MediaPlayer2$TrackInfo;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$TrackInfoImpl;->mTrackType:I

    .line 3
    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    return-void
.end method


# virtual methods
.method public getFormat()Landroid/media/MediaFormat;
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$TrackInfoImpl;->mTrackType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    const-string v0, "language"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "und"

    :cond_0
    return-object p0
.end method

.method public getTrackType()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$TrackInfoImpl;->mTrackType:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    const-class v1, Landroid/support/v4/media/MediaPlayer2Impl$TrackInfoImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$TrackInfoImpl;->mTrackType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const-string v1, "UNKNOWN"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "SUBTITLE"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "TIMEDTEXT"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "AUDIO"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, "VIDEO"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {p0}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
