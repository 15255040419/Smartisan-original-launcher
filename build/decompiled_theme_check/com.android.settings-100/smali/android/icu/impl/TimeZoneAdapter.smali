.class public Landroid/icu/impl/TimeZoneAdapter;
.super Ljava/util/TimeZone;
.source "TimeZoneAdapter.java"


# static fields
.field static final serialVersionUID:J = -0x1c4fcadfcee9017dL


# instance fields
.field private zone:Landroid/icu/util/TimeZone;


# direct methods
.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    .line 64
    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    return-void
.end method

.method public static wrap(Landroid/icu/util/TimeZone;)Ljava/util/TimeZone;
    .locals 1

    .line 49
    new-instance v0, Landroid/icu/impl/TimeZoneAdapter;

    invoke-direct {v0, p0}, Landroid/icu/impl/TimeZoneAdapter;-><init>(Landroid/icu/util/TimeZone;)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 131
    new-instance v0, Landroid/icu/impl/TimeZoneAdapter;

    iget-object p0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/TimeZone;

    invoke-direct {v0, p0}, Landroid/icu/impl/TimeZoneAdapter;-><init>(Landroid/icu/util/TimeZone;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 147
    instance-of v0, p1, Landroid/icu/impl/TimeZoneAdapter;

    if-eqz v0, :cond_0

    .line 148
    check-cast p1, Landroid/icu/impl/TimeZoneAdapter;

    iget-object p1, p1, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    .line 150
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {p0, p1}, Landroid/icu/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getOffset(IIIIII)I
    .locals 7

    .line 91
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/TimeZone;->getOffset(IIIIII)I

    move-result p0

    return p0
.end method

.method public getRawOffset()I
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result p0

    return p0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 1

    .line 81
    instance-of v0, p1, Landroid/icu/impl/TimeZoneAdapter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    check-cast p1, Landroid/icu/impl/TimeZoneAdapter;

    iget-object p1, p1, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    .line 82
    invoke-virtual {p0, p1}, Landroid/icu/util/TimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->hashCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 0

    .line 123
    iget-object p0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {p0, p1}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {p0, p1}, Landroid/icu/util/TimeZone;->setID(Ljava/lang/String;)V

    return-void
.end method

.method public setRawOffset(I)V
    .locals 0

    .line 107
    iget-object p0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {p0, p1}, Landroid/icu/util/TimeZone;->setRawOffset(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unwrap()Landroid/icu/util/TimeZone;
    .locals 0

    .line 56
    iget-object p0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    return-object p0
.end method

.method public useDaylightTime()Z
    .locals 0

    .line 115
    iget-object p0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result p0

    return p0
.end method
