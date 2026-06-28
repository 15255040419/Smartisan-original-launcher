.class public final Landroid/system/StructTimespec;
.super Ljava/lang/Object;
.source "StructTimespec.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/system/StructTimespec;",
        ">;"
    }
.end annotation


# instance fields
.field public final tv_nsec:J

.field public final tv_sec:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Landroid/system/StructTimespec;->tv_sec:J

    .line 33
    iput-wide p3, p0, Landroid/system/StructTimespec;->tv_nsec:J

    const-wide/16 p0, 0x0

    cmp-long p0, p3, p0

    if-ltz p0, :cond_0

    const-wide/32 p0, 0x3b9ac9ff

    cmp-long p0, p3, p0

    if-gtz p0, :cond_0

    return-void

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "tv_nsec value "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " is not in [0, 999999999]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public compareTo(Landroid/system/StructTimespec;)I
    .locals 6

    .line 42
    iget-wide v0, p0, Landroid/system/StructTimespec;->tv_sec:J

    iget-wide v2, p1, Landroid/system/StructTimespec;->tv_sec:J

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-lez v4, :cond_0

    return v5

    :cond_0
    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-gez v0, :cond_1

    return v1

    .line 48
    :cond_1
    iget-wide v2, p0, Landroid/system/StructTimespec;->tv_nsec:J

    iget-wide p0, p1, Landroid/system/StructTimespec;->tv_nsec:J

    cmp-long v0, v2, p0

    if-lez v0, :cond_2

    return v5

    :cond_2
    cmp-long p0, v2, p0

    if-gez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Landroid/system/StructTimespec;

    invoke-virtual {p0, p1}, Landroid/system/StructTimespec;->compareTo(Landroid/system/StructTimespec;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 62
    :cond_1
    check-cast p1, Landroid/system/StructTimespec;

    .line 64
    iget-wide v2, p0, Landroid/system/StructTimespec;->tv_sec:J

    iget-wide v4, p1, Landroid/system/StructTimespec;->tv_sec:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    .line 65
    :cond_2
    iget-wide v2, p0, Landroid/system/StructTimespec;->tv_nsec:J

    iget-wide p0, p1, Landroid/system/StructTimespec;->tv_nsec:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 70
    iget-wide v0, p0, Landroid/system/StructTimespec;->tv_sec:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-wide v3, p0, Landroid/system/StructTimespec;->tv_nsec:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 77
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
