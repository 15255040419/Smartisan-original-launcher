.class Landroid/support/v4/media/subtitle/SubtitleTrack$CueList$1;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/subtitle/SubtitleTrack$CueList;

.field final synthetic val$lastTimeMs:J

.field final synthetic val$timeMs:J


# direct methods
.method constructor <init>(Landroid/support/v4/media/subtitle/SubtitleTrack$CueList;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList$1;->this$0:Landroid/support/v4/media/subtitle/SubtitleTrack$CueList;

    iput-wide p2, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList$1;->val$lastTimeMs:J

    iput-wide p4, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList$1;->val$timeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList$1;->this$0:Landroid/support/v4/media/subtitle/SubtitleTrack$CueList;

    iget-boolean v0, v0, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slice ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList$1;->val$lastTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList$1;->val$timeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CueList"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList$EntryIterator;

    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList$1;->this$0:Landroid/support/v4/media/subtitle/SubtitleTrack$CueList;

    iget-object v2, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList$1;->this$0:Landroid/support/v4/media/subtitle/SubtitleTrack$CueList;

    .line 3
    invoke-static {v2}, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList;->access$300(Landroid/support/v4/media/subtitle/SubtitleTrack$CueList;)Ljava/util/SortedMap;

    move-result-object v2

    iget-wide v3, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList$1;->val$lastTimeMs:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v7, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList$1;->val$timeMs:J

    add-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList$EntryIterator;-><init>(Landroid/support/v4/media/subtitle/SubtitleTrack$CueList;Ljava/util/SortedMap;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance v0, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList$EntryIterator;

    iget-object p0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList$1;->this$0:Landroid/support/v4/media/subtitle/SubtitleTrack$CueList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/subtitle/SubtitleTrack$CueList$EntryIterator;-><init>(Landroid/support/v4/media/subtitle/SubtitleTrack$CueList;Ljava/util/SortedMap;)V

    return-object v0
.end method
