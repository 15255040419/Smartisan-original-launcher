.class public final synthetic Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$OIXfUc7y1PqI_zmQ3STe_086YzY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:J

.field private final synthetic f$1:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor <init>(JLjava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$OIXfUc7y1PqI_zmQ3STe_086YzY;->f$0:J

    iput-object p3, p0, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$OIXfUc7y1PqI_zmQ3STe_086YzY;->f$1:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$OIXfUc7y1PqI_zmQ3STe_086YzY;->f$0:J

    iget-object p0, p0, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$OIXfUc7y1PqI_zmQ3STe_086YzY;->f$1:Ljava/util/Iterator;

    check-cast p1, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    invoke-static {v0, v1, p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->lambda$updateScores$0(JLjava/util/Iterator;Lcom/android/settingslib/wifi/TimestampedScoredNetwork;)V

    return-void
.end method
