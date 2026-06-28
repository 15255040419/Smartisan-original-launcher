.class public Landroid/icu/util/TimeZoneTransition;
.super Ljava/lang/Object;
.source "TimeZoneTransition.java"


# instance fields
.field private final from:Landroid/icu/util/TimeZoneRule;

.field private final time:J

.field private final to:Landroid/icu/util/TimeZoneRule;


# direct methods
.method public constructor <init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Landroid/icu/util/TimeZoneTransition;->time:J

    .line 33
    iput-object p3, p0, Landroid/icu/util/TimeZoneTransition;->from:Landroid/icu/util/TimeZoneRule;

    .line 34
    iput-object p4, p0, Landroid/icu/util/TimeZoneTransition;->to:Landroid/icu/util/TimeZoneRule;

    return-void
.end method


# virtual methods
.method public getFrom()Landroid/icu/util/TimeZoneRule;
    .locals 0

    .line 61
    iget-object p0, p0, Landroid/icu/util/TimeZoneTransition;->from:Landroid/icu/util/TimeZoneRule;

    return-object p0
.end method

.method public getTime()J
    .locals 2

    .line 43
    iget-wide v0, p0, Landroid/icu/util/TimeZoneTransition;->time:J

    return-wide v0
.end method

.method public getTo()Landroid/icu/util/TimeZoneRule;
    .locals 0

    .line 52
    iget-object p0, p0, Landroid/icu/util/TimeZoneTransition;->to:Landroid/icu/util/TimeZoneRule;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/icu/util/TimeZoneTransition;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", from={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/util/TimeZoneTransition;->from:Landroid/icu/util/TimeZoneRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", to={"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/util/TimeZoneTransition;->to:Landroid/icu/util/TimeZoneRule;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
