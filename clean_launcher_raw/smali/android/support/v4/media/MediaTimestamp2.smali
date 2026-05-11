.class public final Landroid/support/v4/media/MediaTimestamp2;
.super Ljava/lang/Object;
.source "MediaTimestamp2.java"


# static fields
.field public static final TIMESTAMP_UNKNOWN:Landroid/support/v4/media/MediaTimestamp2;


# instance fields
.field private final mClockRate:F

.field private final mMediaTimeUs:J

.field private final mNanoTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Landroid/support/v4/media/MediaTimestamp2;

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaTimestamp2;-><init>(JJF)V

    sput-object v6, Landroid/support/v4/media/MediaTimestamp2;->TIMESTAMP_UNKNOWN:Landroid/support/v4/media/MediaTimestamp2;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Landroid/support/v4/media/MediaTimestamp2;->mMediaTimeUs:J

    .line 11
    iput-wide v0, p0, Landroid/support/v4/media/MediaTimestamp2;->mNanoTime:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    iput v0, p0, Landroid/support/v4/media/MediaTimestamp2;->mClockRate:F

    return-void
.end method

.method constructor <init>(JJF)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Landroid/support/v4/media/MediaTimestamp2;->mMediaTimeUs:J

    .line 7
    iput-wide p3, p0, Landroid/support/v4/media/MediaTimestamp2;->mNanoTime:J

    .line 8
    iput p5, p0, Landroid/support/v4/media/MediaTimestamp2;->mClockRate:F

    return-void
.end method

.method constructor <init>(Landroid/media/MediaTimestamp;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaTimestamp;->getAnchorMediaTimeUs()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/MediaTimestamp2;->mMediaTimeUs:J

    .line 3
    invoke-virtual {p1}, Landroid/media/MediaTimestamp;->getAnchorSytemNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/MediaTimestamp2;->mNanoTime:J

    .line 4
    invoke-virtual {p1}, Landroid/media/MediaTimestamp;->getMediaClockRate()F

    move-result p1

    iput p1, p0, Landroid/support/v4/media/MediaTimestamp2;->mClockRate:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Landroid/support/v4/media/MediaTimestamp2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Landroid/support/v4/media/MediaTimestamp2;

    .line 3
    iget-wide v2, p0, Landroid/support/v4/media/MediaTimestamp2;->mMediaTimeUs:J

    iget-wide v4, p1, Landroid/support/v4/media/MediaTimestamp2;->mMediaTimeUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/support/v4/media/MediaTimestamp2;->mNanoTime:J

    iget-wide v4, p1, Landroid/support/v4/media/MediaTimestamp2;->mNanoTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget p0, p0, Landroid/support/v4/media/MediaTimestamp2;->mClockRate:F

    iget p1, p1, Landroid/support/v4/media/MediaTimestamp2;->mClockRate:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAnchorMediaTimeUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/media/MediaTimestamp2;->mMediaTimeUs:J

    return-wide v0
.end method

.method public getAnchorSytemNanoTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/media/MediaTimestamp2;->mNanoTime:J

    return-wide v0
.end method

.method public getMediaClockRate()F
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/MediaTimestamp2;->mClockRate:F

    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/support/v4/media/MediaTimestamp2;->mMediaTimeUs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    int-to-long v0, v0

    .line 2
    iget-wide v2, p0, Landroid/support/v4/media/MediaTimestamp2;->mNanoTime:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    .line 3
    iget p0, p0, Landroid/support/v4/media/MediaTimestamp2;->mClockRate:F

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/v4/media/MediaTimestamp2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{AnchorMediaTimeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/v4/media/MediaTimestamp2;->mMediaTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AnchorSystemNanoTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/v4/media/MediaTimestamp2;->mNanoTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ClockRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/support/v4/media/MediaTimestamp2;->mClockRate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
