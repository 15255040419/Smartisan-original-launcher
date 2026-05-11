.class Lcom/smartisanos/smengine/Na;
.super Ljava/lang/Object;
.source "World.java"


# instance fields
.field public iU:[F

.field public jU:[I

.field public kU:F

.field public lU:F

.field public scale:F

.field public shadowRadius:F

.field public x:F

.field public y:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Lcom/smartisanos/smengine/Na;->iU:[F

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lcom/smartisanos/smengine/Na;->jU:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/Ka;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/smengine/Na;-><init>()V

    return-void
.end method
