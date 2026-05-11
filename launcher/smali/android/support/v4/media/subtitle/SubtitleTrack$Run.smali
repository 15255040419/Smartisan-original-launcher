.class Landroid/support/v4/media/subtitle/SubtitleTrack$Run;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public mEndTimeMs:J

.field public mFirstCue:Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;

.field public mNextRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

.field public mPrevRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

.field public mRunID:J

.field private mStoredEndTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mEndTimeMs:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mRunID:J

    .line 4
    iput-wide v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mStoredEndTimeMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/subtitle/SubtitleTrack$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;-><init>()V

    return-void
.end method


# virtual methods
.method public removeAtEndTimeMs()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

    iput-object v2, v0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

    .line 3
    iput-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

    .line 4
    :cond_0
    iget-object v2, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

    if-eqz v2, :cond_1

    .line 5
    iput-object v0, v2, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

    .line 6
    iput-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

    :cond_1
    return-void
.end method

.method public storeByEndTimeMs(Landroid/util/LongSparseArray;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mStoredEndTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_2

    .line 2
    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->removeAtEndTimeMs()V

    .line 7
    :cond_2
    iget-wide v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mEndTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

    iput-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

    .line 10
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

    if-eqz v0, :cond_3

    .line 11
    iput-object p0, v0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

    .line 12
    :cond_3
    iget-wide v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mEndTimeMs:J

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 13
    iget-wide v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mEndTimeMs:J

    iput-wide v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mStoredEndTimeMs:J

    :cond_4
    return-void
.end method
