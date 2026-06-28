.class public final Landroid/icu/util/DateInterval;
.super Ljava/lang/Object;
.source "DateInterval.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final fromDate:J

.field private final toDate:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Landroid/icu/util/DateInterval;->fromDate:J

    .line 35
    iput-wide p3, p0, Landroid/icu/util/DateInterval;->toDate:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 60
    instance-of v0, p1, Landroid/icu/util/DateInterval;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 61
    check-cast p1, Landroid/icu/util/DateInterval;

    .line 62
    iget-wide v2, p0, Landroid/icu/util/DateInterval;->fromDate:J

    iget-wide v4, p1, Landroid/icu/util/DateInterval;->fromDate:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Landroid/icu/util/DateInterval;->toDate:J

    iget-wide p0, p1, Landroid/icu/util/DateInterval;->toDate:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getFromDate()J
    .locals 2

    .line 44
    iget-wide v0, p0, Landroid/icu/util/DateInterval;->fromDate:J

    return-wide v0
.end method

.method public getToDate()J
    .locals 2

    .line 53
    iget-wide v0, p0, Landroid/icu/util/DateInterval;->toDate:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 71
    iget-wide v0, p0, Landroid/icu/util/DateInterval;->fromDate:J

    iget-wide v2, p0, Landroid/icu/util/DateInterval;->toDate:J

    add-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Landroid/icu/util/DateInterval;->fromDate:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/icu/util/DateInterval;->toDate:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
