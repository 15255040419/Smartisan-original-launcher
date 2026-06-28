.class public final Landroid/system/StructTimeval;
.super Ljava/lang/Object;
.source "StructTimeval.java"


# instance fields
.field public final tv_sec:J

.field public final tv_usec:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Landroid/system/StructTimeval;->tv_sec:J

    .line 36
    iput-wide p3, p0, Landroid/system/StructTimeval;->tv_usec:J

    return-void
.end method

.method public static fromMillis(J)Landroid/system/StructTimeval;
    .locals 6

    const-wide/16 v0, 0x3e8

    .line 40
    div-long v2, p0, v0

    mul-long v4, v2, v0

    sub-long/2addr p0, v4

    mul-long/2addr p0, v0

    .line 42
    new-instance v0, Landroid/system/StructTimeval;

    invoke-direct {v0, v2, v3, p0, p1}, Landroid/system/StructTimeval;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public toMillis()J
    .locals 6

    .line 46
    iget-wide v0, p0, Landroid/system/StructTimeval;->tv_sec:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v4, p0, Landroid/system/StructTimeval;->tv_usec:J

    div-long/2addr v4, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 50
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
