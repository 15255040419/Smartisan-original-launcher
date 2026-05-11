.class Lcom/smartisanos/smengine/Aa;
.super Ljava/lang/Object;
.source "TVelocityAndGestureTracker.java"


# instance fields
.field private KS:J

.field private XS:F

.field private YS:F

.field final synthetic this$0:Lcom/smartisanos/smengine/Ba;


# direct methods
.method private constructor <init>(Lcom/smartisanos/smengine/Ba;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/Aa;->this$0:Lcom/smartisanos/smengine/Ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/Ba;Lcom/smartisanos/smengine/wa;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Aa;-><init>(Lcom/smartisanos/smengine/Ba;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/smengine/Aa;F)F
    .locals 0

    .line 3
    iput p1, p0, Lcom/smartisanos/smengine/Aa;->YS:F

    return p1
.end method

.method static synthetic a(Lcom/smartisanos/smengine/Aa;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/Aa;->KS:J

    return-wide v0
.end method

.method static synthetic a(Lcom/smartisanos/smengine/Aa;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/smartisanos/smengine/Aa;->KS:J

    return-wide p1
.end method

.method static synthetic b(Lcom/smartisanos/smengine/Aa;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Aa;->YS:F

    return p0
.end method

.method static synthetic b(Lcom/smartisanos/smengine/Aa;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/smartisanos/smengine/Aa;->XS:F

    return p1
.end method

.method static synthetic c(Lcom/smartisanos/smengine/Aa;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Aa;->XS:F

    return p0
.end method
