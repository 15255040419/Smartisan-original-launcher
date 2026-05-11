.class Lcom/smartisanos/smengine/d/e;
.super Ljava/lang/Object;
.source "TempVars.java"


# instance fields
.field dY:[Lcom/smartisanos/smengine/d/f;

.field index:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/d/e;->index:I

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/smartisanos/smengine/d/f;

    .line 3
    iput-object v0, p0, Lcom/smartisanos/smengine/d/e;->dY:[Lcom/smartisanos/smengine/d/f;

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/d/d;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/smengine/d/e;-><init>()V

    return-void
.end method
