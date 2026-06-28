.class final Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinearCongruentialGenerator"
.end annotation


# instance fields
.field private state:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-wide p1, p0, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;->state:J

    return-void
.end method


# virtual methods
.method public nextDouble()D
    .locals 4

    .line 671
    iget-wide v0, p0, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;->state:J

    const-wide v2, 0x27bb2ee687b0b0fdL    # 2.694898184339827E-117

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;->state:J

    .line 672
    iget-wide v0, p0, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;->state:J

    const/16 p0, 0x21

    ushr-long/2addr v0, p0

    long-to-int p0, v0

    add-int/lit8 p0, p0, 0x1

    int-to-double v0, p0

    const-wide/high16 v2, 0x41e0000000000000L    # 2.147483648E9

    div-double/2addr v0, v2

    return-wide v0
.end method
