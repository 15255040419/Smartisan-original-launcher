.class Lcom/smartisanos/smengine/za;
.super Ljava/lang/Object;
.source "TVelocityAndGestureTracker.java"


# instance fields
.field private SS:[Lcom/smartisanos/smengine/Aa;

.field private VS:I

.field final synthetic this$0:Lcom/smartisanos/smengine/Ba;


# direct methods
.method private constructor <init>(Lcom/smartisanos/smengine/Ba;)V
    .locals 5

    .line 2
    iput-object p1, p0, Lcom/smartisanos/smengine/za;->this$0:Lcom/smartisanos/smengine/Ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/smartisanos/smengine/za;->VS:I

    const/16 v0, 0xa

    new-array v1, v0, [Lcom/smartisanos/smengine/Aa;

    .line 4
    iput-object v1, p0, Lcom/smartisanos/smengine/za;->SS:[Lcom/smartisanos/smengine/Aa;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    iget-object v2, p0, Lcom/smartisanos/smengine/za;->SS:[Lcom/smartisanos/smengine/Aa;

    new-instance v3, Lcom/smartisanos/smengine/Aa;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/smartisanos/smengine/Aa;-><init>(Lcom/smartisanos/smengine/Ba;Lcom/smartisanos/smengine/wa;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/Ba;Lcom/smartisanos/smengine/wa;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/za;-><init>(Lcom/smartisanos/smengine/Ba;)V

    return-void
.end method

.method private C(J)F
    .locals 7

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 1
    :goto_0
    iget v2, p0, Lcom/smartisanos/smengine/za;->VS:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/16 v3, 0x9

    if-ge v0, v3, :cond_2

    sub-int/2addr v2, v0

    if-gez v2, :cond_0

    add-int/lit8 v2, v2, 0xa

    .line 2
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/smengine/za;->SS:[Lcom/smartisanos/smengine/Aa;

    aget-object v2, v3, v2

    .line 3
    invoke-static {v2}, Lcom/smartisanos/smengine/Aa;->a(Lcom/smartisanos/smengine/Aa;)J

    move-result-wide v3

    sub-long v3, p1, v3

    const-wide/16 v5, 0x1e0

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 4
    invoke-static {v2}, Lcom/smartisanos/smengine/Aa;->c(Lcom/smartisanos/smengine/Aa;)F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_1

    .line 5
    invoke-static {v2}, Lcom/smartisanos/smengine/Aa;->c(Lcom/smartisanos/smengine/Aa;)F

    move-result v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private D(J)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget v2, p0, Lcom/smartisanos/smengine/za;->VS:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/16 v3, 0x9

    if-ge v1, v3, :cond_4

    sub-int/2addr v2, v1

    if-gez v2, :cond_0

    add-int/lit8 v2, v2, 0xa

    .line 2
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/smengine/za;->SS:[Lcom/smartisanos/smengine/Aa;

    aget-object v2, v3, v2

    .line 3
    invoke-static {v2}, Lcom/smartisanos/smengine/Aa;->a(Lcom/smartisanos/smengine/Aa;)J

    move-result-wide v3

    sub-long v3, p1, v3

    const-wide/16 v5, 0x1e0

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    .line 4
    sget-boolean v3, Lcom/smartisanos/launcher/va;->ai:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/smartisanos/smengine/Ba;->A()Lcom/smartisanos/launcher/va;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mightSweep size ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/smartisanos/smengine/Aa;->b(Lcom/smartisanos/smengine/Aa;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "], ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/smartisanos/smengine/za;->this$0:Lcom/smartisanos/smengine/Ba;

    invoke-static {v5}, Lcom/smartisanos/smengine/Ba;->a(Lcom/smartisanos/smengine/Ba;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-static {v2}, Lcom/smartisanos/smengine/Aa;->b(Lcom/smartisanos/smengine/Aa;)F

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/smengine/za;->this$0:Lcom/smartisanos/smengine/Ba;

    invoke-static {v3}, Lcom/smartisanos/smengine/Ba;->a(Lcom/smartisanos/smengine/Ba;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 6
    sget-boolean p0, Lcom/smartisanos/launcher/va;->ai:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/smartisanos/smengine/Ba;->A()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "mightSweep return true"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method static synthetic a(Lcom/smartisanos/smengine/za;J)F
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/smengine/za;->C(J)F

    move-result p0

    return p0
.end method

.method private a(JFF)V
    .locals 2

    .line 4
    iget v0, p0, Lcom/smartisanos/smengine/za;->VS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartisanos/smengine/za;->VS:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/smartisanos/smengine/za;->VS:I

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/za;->SS:[Lcom/smartisanos/smengine/Aa;

    iget p0, p0, Lcom/smartisanos/smengine/za;->VS:I

    aget-object p0, v0, p0

    .line 7
    invoke-static {p0, p1, p2}, Lcom/smartisanos/smengine/Aa;->a(Lcom/smartisanos/smengine/Aa;J)J

    .line 8
    invoke-static {p0, p3}, Lcom/smartisanos/smengine/Aa;->b(Lcom/smartisanos/smengine/Aa;F)F

    .line 9
    invoke-static {p0, p4}, Lcom/smartisanos/smengine/Aa;->a(Lcom/smartisanos/smengine/Aa;F)F

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/smengine/za;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/smengine/za;->clear()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/smengine/za;JFF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/za;->a(JFF)V

    return-void
.end method

.method static synthetic b(Lcom/smartisanos/smengine/za;J)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/smengine/za;->D(J)Z

    move-result p0

    return p0
.end method

.method private clear()V
    .locals 4

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/smartisanos/smengine/za;->VS:I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/smengine/za;->SS:[Lcom/smartisanos/smengine/Aa;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/smartisanos/smengine/Aa;->a(Lcom/smartisanos/smengine/Aa;J)J

    .line 3
    iget-object v1, p0, Lcom/smartisanos/smengine/za;->SS:[Lcom/smartisanos/smengine/Aa;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/smartisanos/smengine/Aa;->b(Lcom/smartisanos/smengine/Aa;F)F

    .line 4
    iget-object v1, p0, Lcom/smartisanos/smengine/za;->SS:[Lcom/smartisanos/smengine/Aa;

    aget-object v1, v1, v0

    invoke-static {v1, v2}, Lcom/smartisanos/smengine/Aa;->a(Lcom/smartisanos/smengine/Aa;F)F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
