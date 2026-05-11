.class Lcom/smartisanos/smengine/Pa;
.super Ljava/lang/Object;
.source "World.java"


# static fields
.field private static final oU:Lcom/smartisanos/smengine/Ra;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/Ra;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Ra;-><init>(Lcom/smartisanos/smengine/Ka;)V

    sput-object v0, Lcom/smartisanos/smengine/Pa;->oU:Lcom/smartisanos/smengine/Ra;

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/smengine/Ra;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/Pa;->oU:Lcom/smartisanos/smengine/Ra;

    return-object v0
.end method
