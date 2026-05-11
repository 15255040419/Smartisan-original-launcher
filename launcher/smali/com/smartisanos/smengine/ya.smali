.class Lcom/smartisanos/smengine/ya;
.super Ljava/lang/Object;
.source "TVelocityAndGestureTracker.java"


# instance fields
.field private KS:J

.field private LS:I

.field private MS:I

.field private NS:[F

.field private OS:[F

.field private PS:[F

.field private RS:[I

.field final synthetic this$0:Lcom/smartisanos/smengine/Ba;


# direct methods
.method private constructor <init>(Lcom/smartisanos/smengine/Ba;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/ya;->this$0:Lcom/smartisanos/smengine/Ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/smartisanos/smengine/ya;->LS:I

    .line 3
    iput p1, p0, Lcom/smartisanos/smengine/ya;->MS:I

    const/16 p1, 0xa

    new-array v0, p1, [F

    .line 4
    iput-object v0, p0, Lcom/smartisanos/smengine/ya;->NS:[F

    new-array v0, p1, [F

    .line 5
    iput-object v0, p0, Lcom/smartisanos/smengine/ya;->OS:[F

    new-array v0, p1, [F

    .line 6
    iput-object v0, p0, Lcom/smartisanos/smengine/ya;->PS:[F

    new-array p1, p1, [I

    .line 7
    iput-object p1, p0, Lcom/smartisanos/smengine/ya;->RS:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/Ba;Lcom/smartisanos/smengine/wa;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/ya;-><init>(Lcom/smartisanos/smengine/Ba;)V

    return-void
.end method

.method private Md(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/ya;->MS:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 2
    iget p0, p0, Lcom/smartisanos/smengine/ya;->LS:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method static synthetic a(Lcom/smartisanos/smengine/ya;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/smartisanos/smengine/ya;->KS:J

    return-wide v0
.end method

.method static synthetic a(Lcom/smartisanos/smengine/ya;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/smartisanos/smengine/ya;->KS:J

    return-wide p1
.end method

.method static synthetic a(Lcom/smartisanos/smengine/ya;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/ya;->Md(I)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/smartisanos/smengine/ya;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/smartisanos/smengine/ya;->LS:I

    return p0
.end method

.method static synthetic b(Lcom/smartisanos/smengine/ya;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/ya;->getPointerId(I)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/smartisanos/smengine/ya;I)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/ya;->getX(I)F

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/smartisanos/smengine/ya;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/smartisanos/smengine/ya;->MS:I

    return p0
.end method

.method static synthetic d(Lcom/smartisanos/smengine/ya;I)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/ya;->getY(I)F

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/smartisanos/smengine/ya;)[I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/ya;->RS:[I

    return-object p0
.end method

.method static synthetic e(Lcom/smartisanos/smengine/ya;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/ya;->LS:I

    return p1
.end method

.method static synthetic e(Lcom/smartisanos/smengine/ya;)[F
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/ya;->NS:[F

    return-object p0
.end method

.method static synthetic f(Lcom/smartisanos/smengine/ya;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/ya;->MS:I

    return p1
.end method

.method static synthetic f(Lcom/smartisanos/smengine/ya;)[F
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/ya;->OS:[F

    return-object p0
.end method

.method static synthetic g(Lcom/smartisanos/smengine/ya;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/ya;->PS:[F

    return-object p0
.end method

.method private getPointerId(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/ya;->RS:[I

    aget p0, p0, p1

    return p0
.end method

.method private getX(I)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/ya;->NS:[F

    aget p0, p0, p1

    return p0
.end method

.method private getY(I)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/ya;->OS:[F

    aget p0, p0, p1

    return p0
.end method
