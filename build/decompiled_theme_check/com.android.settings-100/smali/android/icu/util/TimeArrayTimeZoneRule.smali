.class public Landroid/icu/util/TimeArrayTimeZoneRule;
.super Landroid/icu/util/TimeZoneRule;
.source "TimeArrayTimeZoneRule.java"


# static fields
.field private static final serialVersionUID:J = -0xf80c4d5c99c274dL


# instance fields
.field private final startTimes:[J

.field private final timeType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II[JI)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/TimeZoneRule;-><init>(Ljava/lang/String;II)V

    if-eqz p4, :cond_0

    .line 45
    array-length p1, p4

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p4}, [J->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    iput-object p1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    .line 49
    iget-object p1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    .line 51
    iput p5, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    return-void

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No start times are specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getUTC(JII)J
    .locals 2

    .line 150
    iget v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    int-to-long v0, p3

    sub-long/2addr p1, v0

    .line 153
    :cond_0
    iget p0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    if-nez p0, :cond_1

    int-to-long p3, p4

    sub-long/2addr p1, p3

    :cond_1
    return-wide p1
.end method


# virtual methods
.method public getFinalStart(II)Ljava/util/Date;
    .locals 3

    .line 88
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    invoke-direct {p0, v1, v2, p1, p2}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getFirstStart(II)Ljava/util/Date;
    .locals 3

    .line 80
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-direct {p0, v1, v2, p1, p2}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getNextStart(JIIZ)Ljava/util/Date;
    .locals 3

    .line 96
    iget-object v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 98
    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    aget-wide v1, v1, v0

    invoke-direct {p0, v1, v2, p3, p4}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-ltz v1, :cond_1

    if-nez p5, :cond_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 103
    :cond_1
    :goto_1
    iget-object p1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    if-ne v0, p2, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 106
    :cond_2
    new-instance p2, Ljava/util/Date;

    add-int/lit8 v0, v0, 0x1

    aget-wide v0, p1, v0

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide p0

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2
.end method

.method public getPreviousStart(JIIZ)Ljava/util/Date;
    .locals 4

    .line 114
    iget-object v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 116
    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    aget-wide v1, v1, v0

    invoke-direct {p0, v1, v2, p3, p4}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-ltz v3, :cond_1

    if-eqz p5, :cond_0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 118
    :cond_1
    :goto_1
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStartTimes()[J
    .locals 0

    .line 61
    iget-object p0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0
.end method

.method public getTimeType()I
    .locals 0

    .line 72
    iget p0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    return p0
.end method

.method public isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z
    .locals 4

    .line 129
    instance-of v0, p1, Landroid/icu/util/TimeArrayTimeZoneRule;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 132
    :cond_0
    iget v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    move-object v2, p1

    check-cast v2, Landroid/icu/util/TimeArrayTimeZoneRule;

    iget v3, v2, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    iget-object v2, v2, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    .line 133
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-super {p0, p1}, Landroid/icu/util/TimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public isTransitionRule()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    invoke-super {p0}, Landroid/icu/util/TimeZoneRule;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeType="

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startTimes=["

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 171
    :goto_0
    iget-object v2, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", "

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_0
    iget-object v2, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    .line 177
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
