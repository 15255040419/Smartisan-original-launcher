.class public abstract Landroid/support/v4/media/MediaPlayer2$TrackInfo;
.super Ljava/lang/Object;
.source "MediaPlayer2.java"


# static fields
.field public static final MEDIA_TRACK_TYPE_AUDIO:I = 0x2

.field public static final MEDIA_TRACK_TYPE_METADATA:I = 0x5

.field public static final MEDIA_TRACK_TYPE_SUBTITLE:I = 0x4

.field public static final MEDIA_TRACK_TYPE_TIMEDTEXT:I = 0x3

.field public static final MEDIA_TRACK_TYPE_UNKNOWN:I = 0x0

.field public static final MEDIA_TRACK_TYPE_VIDEO:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFormat()Landroid/media/MediaFormat;
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getTrackType()I
.end method

.method public abstract toString()Ljava/lang/String;
.end method
