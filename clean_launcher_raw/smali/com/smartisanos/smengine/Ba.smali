.class public Lcom/smartisanos/smengine/Ba;
.super Ljava/lang/Object;
.source "TVelocityAndGestureTracker.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private ZS:[I

.field private _S:[Lcom/smartisanos/smengine/a/i;

.field private aT:[Lcom/smartisanos/smengine/a/i;

.field private bT:[Lcom/smartisanos/smengine/a/i;

.field private cT:F

.field private dT:Z

.field private eT:Z

.field private fT:Z

.field private gT:Z

.field private hT:I

.field private iT:I

.field private jT:[Lcom/smartisanos/smengine/ya;

.field private kT:Lcom/smartisanos/smengine/xa;

.field private lT:Lcom/smartisanos/smengine/za;

.field private mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/Ba;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/Ba;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/smartisanos/smengine/Ba;->ZS:[I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Ba;->dT:Z

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Ba;->eT:Z

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Ba;->fT:Z

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Ba;->gT:Z

    const/16 v1, 0x3e8

    .line 7
    iput v1, p0, Lcom/smartisanos/smengine/Ba;->iT:I

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/smartisanos/smengine/Ba;->mIndex:I

    const/16 v1, 0x14

    new-array v2, v1, [Lcom/smartisanos/smengine/ya;

    .line 9
    iput-object v2, p0, Lcom/smartisanos/smengine/Ba;->jT:[Lcom/smartisanos/smengine/ya;

    move v2, v0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    .line 10
    iget-object v4, p0, Lcom/smartisanos/smengine/Ba;->jT:[Lcom/smartisanos/smengine/ya;

    new-instance v5, Lcom/smartisanos/smengine/ya;

    invoke-direct {v5, p0, v3}, Lcom/smartisanos/smengine/ya;-><init>(Lcom/smartisanos/smengine/Ba;Lcom/smartisanos/smengine/wa;)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    new-array v2, v1, [Lcom/smartisanos/smengine/a/i;

    .line 11
    iput-object v2, p0, Lcom/smartisanos/smengine/Ba;->_S:[Lcom/smartisanos/smengine/a/i;

    new-array v2, v1, [Lcom/smartisanos/smengine/a/i;

    .line 12
    iput-object v2, p0, Lcom/smartisanos/smengine/Ba;->aT:[Lcom/smartisanos/smengine/a/i;

    new-array v2, v1, [Lcom/smartisanos/smengine/a/i;

    .line 13
    iput-object v2, p0, Lcom/smartisanos/smengine/Ba;->bT:[Lcom/smartisanos/smengine/a/i;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 14
    iget-object v2, p0, Lcom/smartisanos/smengine/Ba;->_S:[Lcom/smartisanos/smengine/a/i;

    new-instance v4, Lcom/smartisanos/smengine/a/i;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    aput-object v4, v2, v0

    .line 15
    iget-object v2, p0, Lcom/smartisanos/smengine/Ba;->aT:[Lcom/smartisanos/smengine/a/i;

    new-instance v4, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v4, v5, v5}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    aput-object v4, v2, v0

    .line 16
    iget-object v2, p0, Lcom/smartisanos/smengine/Ba;->bT:[Lcom/smartisanos/smengine/a/i;

    new-instance v4, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v4, v5, v5}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17
    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/za;

    invoke-direct {v0, p0, v3}, Lcom/smartisanos/smengine/za;-><init>(Lcom/smartisanos/smengine/Ba;Lcom/smartisanos/smengine/wa;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ba;->lT:Lcom/smartisanos/smengine/za;

    return-void
.end method

.method static synthetic A()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/Ba;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method private E(J)F
    .locals 19

    move-object/from16 v0, p0

    const/4 v2, 0x0

    move v4, v2

    const/4 v3, 0x0

    :goto_0
    const/16 v5, 0x13

    if-ge v3, v5, :cond_b

    .line 1
    iget v6, v0, Lcom/smartisanos/smengine/Ba;->mIndex:I

    sub-int/2addr v6, v3

    if-gez v6, :cond_0

    add-int/lit8 v6, v6, 0x14

    :cond_0
    if-nez v6, :cond_1

    .line 2
    iget-object v7, v0, Lcom/smartisanos/smengine/Ba;->jT:[Lcom/smartisanos/smengine/ya;

    aget-object v5, v7, v5

    goto :goto_1

    .line 3
    :cond_1
    iget-object v5, v0, Lcom/smartisanos/smengine/Ba;->jT:[Lcom/smartisanos/smengine/ya;

    add-int/lit8 v7, v6, -0x1

    aget-object v5, v5, v7

    .line 4
    :goto_1
    iget-object v7, v0, Lcom/smartisanos/smengine/Ba;->jT:[Lcom/smartisanos/smengine/ya;

    aget-object v6, v7, v6

    add-int/lit8 v3, v3, 0x1

    .line 5
    invoke-static {v5}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_b

    invoke-static {v6}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;)J

    move-result-wide v7

    cmp-long v7, v7, v9

    if-eqz v7, :cond_b

    invoke-static {v5}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;)J

    move-result-wide v7

    cmp-long v7, v7, p1

    if-gez v7, :cond_2

    goto/16 :goto_6

    .line 6
    :cond_2
    invoke-static {v5}, Lcom/smartisanos/smengine/ya;->b(Lcom/smartisanos/smengine/ya;)I

    move-result v7

    invoke-static {v6}, Lcom/smartisanos/smengine/ya;->b(Lcom/smartisanos/smengine/ya;)I

    move-result v8

    and-int/2addr v7, v8

    .line 7
    new-instance v8, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v8, v2, v2}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    .line 8
    new-instance v9, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v9, v2, v2}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    .line 9
    new-instance v10, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v10, v2, v2}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    const/16 v12, 0xa

    const/4 v13, 0x1

    if-ge v10, v12, :cond_4

    shl-int v12, v13, v10

    and-int/2addr v12, v7

    if-eqz v12, :cond_3

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v12

    .line 11
    iget-object v13, v12, Lcom/smartisanos/smengine/d/f;->tY:Lcom/smartisanos/smengine/a/i;

    .line 12
    invoke-static {v5, v10}, Lcom/smartisanos/smengine/ya;->c(Lcom/smartisanos/smengine/ya;I)F

    move-result v14

    invoke-static {v5, v10}, Lcom/smartisanos/smengine/ya;->d(Lcom/smartisanos/smengine/ya;I)F

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/smartisanos/smengine/a/i;->set(FF)Lcom/smartisanos/smengine/a/i;

    .line 13
    invoke-virtual {v8, v13}, Lcom/smartisanos/smengine/a/i;->b(Lcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 14
    invoke-static {v6, v10}, Lcom/smartisanos/smengine/ya;->c(Lcom/smartisanos/smengine/ya;I)F

    move-result v14

    invoke-static {v6, v10}, Lcom/smartisanos/smengine/ya;->d(Lcom/smartisanos/smengine/ya;I)F

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/smartisanos/smengine/a/i;->set(FF)Lcom/smartisanos/smengine/a/i;

    .line 15
    invoke-virtual {v9, v13}, Lcom/smartisanos/smengine/a/i;->b(Lcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    add-int/lit8 v11, v11, 0x1

    .line 16
    invoke-virtual {v12}, Lcom/smartisanos/smengine/d/f;->release()V

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x2

    if-ge v11, v10, :cond_5

    goto/16 :goto_0

    :cond_5
    int-to-float v10, v11

    .line 17
    invoke-virtual {v8, v10}, Lcom/smartisanos/smengine/a/i;->ba(F)Lcom/smartisanos/smengine/a/i;

    .line 18
    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/a/i;->ba(F)Lcom/smartisanos/smengine/a/i;

    .line 19
    invoke-virtual {v9, v8}, Lcom/smartisanos/smengine/a/i;->d(Lcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    move-result-object v9

    const/high16 v10, 0x800000

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    .line 20
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v14

    .line 21
    iget-object v15, v14, Lcom/smartisanos/smengine/d/f;->tY:Lcom/smartisanos/smengine/a/i;

    .line 22
    iget-object v1, v14, Lcom/smartisanos/smengine/d/f;->uY:Lcom/smartisanos/smengine/a/i;

    move/from16 v16, v11

    move v11, v10

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v12, :cond_8

    shl-int v17, v13, v10

    and-int v17, v7, v17

    if-eqz v17, :cond_7

    .line 23
    invoke-static {v5, v10}, Lcom/smartisanos/smengine/ya;->c(Lcom/smartisanos/smengine/ya;I)F

    move-result v12

    invoke-static {v5, v10}, Lcom/smartisanos/smengine/ya;->d(Lcom/smartisanos/smengine/ya;I)F

    move-result v13

    invoke-virtual {v15, v12, v13}, Lcom/smartisanos/smengine/a/i;->set(FF)Lcom/smartisanos/smengine/a/i;

    .line 24
    invoke-static {v6, v10}, Lcom/smartisanos/smengine/ya;->c(Lcom/smartisanos/smengine/ya;I)F

    move-result v12

    invoke-virtual {v9}, Lcom/smartisanos/smengine/a/i;->getX()F

    move-result v13

    sub-float/2addr v12, v13

    invoke-static {v6, v10}, Lcom/smartisanos/smengine/ya;->d(Lcom/smartisanos/smengine/ya;I)F

    move-result v13

    invoke-virtual {v9}, Lcom/smartisanos/smengine/a/i;->getY()F

    move-result v18

    sub-float v13, v13, v18

    invoke-virtual {v1, v12, v13}, Lcom/smartisanos/smengine/a/i;->set(FF)Lcom/smartisanos/smengine/a/i;

    .line 25
    invoke-virtual {v1, v15}, Lcom/smartisanos/smengine/a/i;->e(Lcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 26
    invoke-virtual {v15, v8}, Lcom/smartisanos/smengine/a/i;->e(Lcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 27
    invoke-virtual {v15}, Lcom/smartisanos/smengine/a/i;->zt()Lcom/smartisanos/smengine/a/i;

    .line 28
    invoke-virtual {v1, v15}, Lcom/smartisanos/smengine/a/i;->c(Lcom/smartisanos/smengine/a/i;)F

    move-result v12

    cmpg-float v13, v11, v12

    if-gez v13, :cond_6

    move v11, v12

    :cond_6
    cmpl-float v13, v16, v12

    if-lez v13, :cond_7

    move/from16 v16, v12

    :cond_7
    add-int/lit8 v10, v10, 0x1

    const/16 v12, 0xa

    const/4 v13, 0x1

    goto :goto_3

    :cond_8
    cmpl-float v1, v11, v2

    if-lez v1, :cond_9

    cmpl-float v1, v16, v2

    if-lez v1, :cond_9

    goto :goto_4

    :cond_9
    cmpg-float v1, v11, v2

    if-gez v1, :cond_a

    cmpg-float v1, v16, v2

    if-gez v1, :cond_a

    add-float v4, v4, v16

    goto :goto_5

    :cond_a
    add-float v11, v11, v16

    :goto_4
    add-float/2addr v4, v11

    .line 29
    :goto_5
    invoke-virtual {v14}, Lcom/smartisanos/smengine/d/f;->release()V

    goto/16 :goto_0

    :cond_b
    :goto_6
    return v4
.end method

.method private Nd(I)J
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    .line 1
    iget-object v3, p0, Lcom/smartisanos/smengine/Ba;->jT:[Lcom/smartisanos/smengine/ya;

    aget-object v3, v3, v2

    .line 2
    invoke-static {v3, p1}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;)J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    .line 3
    invoke-static {v3}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;)J

    move-result-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private a(IJ)F
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/16 v2, 0x13

    if-ge v0, v2, :cond_4

    .line 3
    iget v3, p0, Lcom/smartisanos/smengine/Ba;->mIndex:I

    sub-int/2addr v3, v0

    if-gez v3, :cond_1

    add-int/lit8 v3, v3, 0x14

    :cond_1
    if-nez v3, :cond_2

    .line 4
    iget-object v4, p0, Lcom/smartisanos/smengine/Ba;->jT:[Lcom/smartisanos/smengine/ya;

    aget-object v2, v4, v2

    goto :goto_1

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/smengine/Ba;->jT:[Lcom/smartisanos/smengine/ya;

    add-int/lit8 v4, v3, -0x1

    aget-object v2, v2, v4

    .line 6
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/smengine/Ba;->jT:[Lcom/smartisanos/smengine/ya;

    aget-object v3, v4, v3

    add-int/lit8 v0, v0, 0x1

    .line 7
    invoke-static {v2}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    invoke-static {v3}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    invoke-static {v2}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;)J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-gez v4, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-static {v2, p1}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3, p1}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-static {v3, p1}, Lcom/smartisanos/smengine/ya;->b(Lcom/smartisanos/smengine/ya;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/smartisanos/smengine/ya;->c(Lcom/smartisanos/smengine/ya;I)F

    move-result v3

    invoke-static {v2, p1}, Lcom/smartisanos/smengine/ya;->b(Lcom/smartisanos/smengine/ya;I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/smartisanos/smengine/ya;->c(Lcom/smartisanos/smengine/ya;I)F

    move-result v2

    sub-float/2addr v3, v2

    add-float/2addr v1, v3

    goto :goto_0

    :cond_4
    :goto_2
    return v1
.end method

.method static synthetic a(Lcom/smartisanos/smengine/Ba;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Ba;->cT:F

    return p0
.end method

.method private a(Lcom/smartisanos/smengine/a/i;IJ)V
    .locals 7

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0, v0}, Lcom/smartisanos/smengine/a/i;->set(FF)Lcom/smartisanos/smengine/a/i;

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    .line 12
    iget-object v3, p0, Lcom/smartisanos/smengine/Ba;->jT:[Lcom/smartisanos/smengine/ya;

    aget-object v3, v3, v2

    .line 13
    invoke-static {v3}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;)J

    move-result-wide v4

    sub-long v4, p3, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_0

    .line 14
    invoke-static {v3, p2}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 15
    invoke-static {v3, p2}, Lcom/smartisanos/smengine/ya;->c(Lcom/smartisanos/smengine/ya;I)F

    move-result v0

    iput v0, p1, Lcom/smartisanos/smengine/a/i;->x:F

    .line 16
    invoke-static {v3, p2}, Lcom/smartisanos/smengine/ya;->d(Lcom/smartisanos/smengine/ya;I)F

    move-result v0

    iput v0, p1, Lcom/smartisanos/smengine/a/i;->y:F

    move-wide v0, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a([Lcom/smartisanos/smengine/a/i;J)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 10
    aget-object v1, p1, v0

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/smartisanos/smengine/Ba;->a(Lcom/smartisanos/smengine/a/i;IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(JJ)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/Ba;->_S:[Lcom/smartisanos/smengine/a/i;

    invoke-direct {p0, v0, p1, p2}, Lcom/smartisanos/smengine/Ba;->a([Lcom/smartisanos/smengine/a/i;J)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/smengine/Ba;->aT:[Lcom/smartisanos/smengine/a/i;

    invoke-direct {p0, p1, p3, p4}, Lcom/smartisanos/smengine/Ba;->a([Lcom/smartisanos/smengine/a/i;J)V

    const/4 p1, 0x0

    move p2, p1

    move p3, p2

    :goto_0
    const/16 p4, 0xa

    if-ge p2, p4, :cond_1

    .line 3
    iget-object p4, p0, Lcom/smartisanos/smengine/Ba;->bT:[Lcom/smartisanos/smengine/a/i;

    aget-object v0, p4, p3

    iget-object v1, p0, Lcom/smartisanos/smengine/Ba;->aT:[Lcom/smartisanos/smengine/a/i;

    aget-object v2, v1, p2

    iget v2, v2, Lcom/smartisanos/smengine/a/i;->x:F

    iget-object v3, p0, Lcom/smartisanos/smengine/Ba;->_S:[Lcom/smartisanos/smengine/a/i;

    aget-object v4, v3, p2

    iget v4, v4, Lcom/smartisanos/smengine/a/i;->x:F

    sub-float/2addr v2, v4

    iput v2, v0, Lcom/smartisanos/smengine/a/i;->x:F

    .line 4
    aget-object v0, p4, p3

    aget-object v1, v1, p2

    iget v1, v1, Lcom/smartisanos/smengine/a/i;->y:F

    aget-object v2, v3, p2

    iget v2, v2, Lcom/smartisanos/smengine/a/i;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/a/i;->y:F

    .line 5
    aget-object p4, p4, p3

    invoke-virtual {p4}, Lcom/smartisanos/smengine/a/i;->Ft()F

    move-result p4

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float p4, p4, v0

    if-lez p4, :cond_0

    add-int/lit8 p3, p3, 0x1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    const/4 p4, 0x1

    if-ge p3, p2, :cond_2

    return p4

    :cond_2
    move p2, p4

    :goto_1
    if-ge p2, p3, :cond_4

    .line 6
    iget-object v0, p0, Lcom/smartisanos/smengine/Ba;->bT:[Lcom/smartisanos/smengine/a/i;

    aget-object v1, v0, p1

    .line 7
    aget-object v0, v0, p2

    .line 8
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/a/i;->c(Lcom/smartisanos/smengine/a/i;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    return p1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return p4
.end method

.method private clear()V
    .locals 5

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/smartisanos/smengine/Ba;->mIndex:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/smartisanos/smengine/Ba;->jT:[Lcom/smartisanos/smengine/ya;

    aget-object v2, v2, v1

    invoke-static {v2, v0}, Lcom/smartisanos/smengine/ya;->e(Lcom/smartisanos/smengine/ya;I)I

    .line 3
    iget-object v2, p0, Lcom/smartisanos/smengine/Ba;->jT:[Lcom/smartisanos/smengine/ya;

    aget-object v2, v2, v1

    invoke-static {v2, v0}, Lcom/smartisanos/smengine/ya;->f(Lcom/smartisanos/smengine/ya;I)I

    .line 4
    iget-object v2, p0, Lcom/smartisanos/smengine/Ba;->jT:[Lcom/smartisanos/smengine/ya;

    aget-object v2, v2, v1

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;J)J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private s(Lcom/smartisanos/smengine/va;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Ba;->dT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smartisanos/smengine/Ba;->kT:Lcom/smartisanos/smengine/xa;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getEventTime()J

    move-result-wide v2

    const-wide/16 v4, 0x320

    sub-long v4, v2, v4

    .line 3
    iget-object p1, p0, Lcom/smartisanos/smengine/Ba;->_S:[Lcom/smartisanos/smengine/a/i;

    invoke-direct {p0, p1, v4, v5}, Lcom/smartisanos/smengine/Ba;->a([Lcom/smartisanos/smengine/a/i;J)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/smengine/Ba;->aT:[Lcom/smartisanos/smengine/a/i;

    invoke-direct {p0, p1, v2, v3}, Lcom/smartisanos/smengine/Ba;->a([Lcom/smartisanos/smengine/a/i;J)V

    move p1, v1

    move v0, p1

    :goto_0
    const/16 v2, 0xa

    if-ge p1, v2, :cond_3

    .line 5
    iget-object v2, p0, Lcom/smartisanos/smengine/Ba;->_S:[Lcom/smartisanos/smengine/a/i;

    aget-object v3, v2, p1

    iget v3, v3, Lcom/smartisanos/smengine/a/i;->x:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    aget-object v2, v2, p1

    iget v2, v2, Lcom/smartisanos/smengine/a/i;->y:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/smengine/Ba;->aT:[Lcom/smartisanos/smengine/a/i;

    aget-object v3, v2, p1

    iget v3, v3, Lcom/smartisanos/smengine/a/i;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    aget-object v2, v2, p1

    iget v2, v2, Lcom/smartisanos/smengine/a/i;->y:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/smengine/Ba;->aT:[Lcom/smartisanos/smengine/a/i;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/smartisanos/smengine/a/i;->y:F

    iget-object v3, p0, Lcom/smartisanos/smengine/Ba;->_S:[Lcom/smartisanos/smengine/a/i;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/smartisanos/smengine/a/i;->y:F

    sub-float/2addr v2, v3

    const/high16 v3, -0x3c860000    # -250.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    if-lt v0, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method private t(Lcom/smartisanos/smengine/va;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/smartisanos/smengine/Ba;->kT:Lcom/smartisanos/smengine/xa;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/smartisanos/smengine/Ba;->fT:Z

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getEventTime()J

    move-result-wide v3

    const-wide/16 v5, 0x320

    sub-long/2addr v3, v5

    const/4 p1, 0x0

    move v0, p1

    move p1, v1

    :goto_0
    const/4 v5, 0x4

    if-ge p1, v5, :cond_0

    .line 3
    invoke-direct {p0, p1, v3, v4}, Lcom/smartisanos/smengine/Ba;->a(IJ)F

    move-result v5

    add-float/2addr v0, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x44c80000    # 1600.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    .line 4
    sget-boolean p1, Lcom/smartisanos/launcher/va;->ai:Z

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/smartisanos/smengine/Ba;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "############################ onChangeTheme moving right "

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/smengine/Ba;->kT:Lcom/smartisanos/smengine/xa;

    invoke-interface {p1, v2}, Lcom/smartisanos/smengine/xa;->b(Z)V

    .line 7
    iput-boolean v1, p0, Lcom/smartisanos/smengine/Ba;->gT:Z

    return v2

    :cond_2
    const/high16 p1, -0x3b380000    # -1600.0f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_4

    .line 8
    sget-boolean p1, Lcom/smartisanos/launcher/va;->ai:Z

    if-eqz p1, :cond_3

    .line 9
    sget-object p1, Lcom/smartisanos/smengine/Ba;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "############################ onChangeTheme moving left "

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/smengine/Ba;->kT:Lcom/smartisanos/smengine/xa;

    invoke-interface {p1, v1}, Lcom/smartisanos/smengine/xa;->b(Z)V

    .line 11
    iput-boolean v1, p0, Lcom/smartisanos/smengine/Ba;->gT:Z

    return v2

    :cond_4
    return v1
.end method

.method private u(IZ)F
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 14
    invoke-direct/range {p0 .. p1}, Lcom/smartisanos/smengine/Ba;->Nd(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-gez v4, :cond_0

    return v5

    :cond_0
    const/4 v4, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    const/16 v8, 0x14

    if-ge v4, v8, :cond_6

    if-nez v4, :cond_1

    .line 15
    iget-object v8, v0, Lcom/smartisanos/smengine/Ba;->jT:[Lcom/smartisanos/smengine/ya;

    const/16 v9, 0x13

    aget-object v8, v8, v9

    goto :goto_1

    .line 16
    :cond_1
    iget-object v8, v0, Lcom/smartisanos/smengine/Ba;->jT:[Lcom/smartisanos/smengine/ya;

    add-int/lit8 v9, v4, -0x1

    aget-object v8, v8, v9

    .line 17
    :goto_1
    iget-object v9, v0, Lcom/smartisanos/smengine/Ba;->jT:[Lcom/smartisanos/smengine/ya;

    aget-object v9, v9, v4

    .line 18
    invoke-static {v8, v1}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;I)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v9, v1}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 19
    invoke-static {v9}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;)J

    move-result-wide v10

    sub-long v10, v2, v10

    const-wide/16 v12, 0x320

    cmp-long v12, v10, v12

    if-lez v12, :cond_2

    goto :goto_3

    .line 20
    :cond_2
    invoke-static {v9}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;)J

    move-result-wide v12

    invoke-static {v8}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide v14, 0x407f400000000000L    # 500.0

    long-to-double v10, v10

    move/from16 v16, v6

    const-wide v5, 0x3ff4ccccc0000000L    # 1.2999999523162842

    .line 21
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sub-double/2addr v14, v5

    double-to-float v5, v14

    const-wide/16 v10, 0x1

    cmp-long v6, v12, v10

    if-lez v6, :cond_5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_5

    add-float v6, v16, v5

    if-eqz p2, :cond_3

    .line 22
    invoke-static {v9, v1}, Lcom/smartisanos/smengine/ya;->c(Lcom/smartisanos/smengine/ya;I)F

    move-result v9

    invoke-static {v8, v1}, Lcom/smartisanos/smengine/ya;->c(Lcom/smartisanos/smengine/ya;I)F

    move-result v8

    goto :goto_2

    .line 23
    :cond_3
    invoke-static {v9, v1}, Lcom/smartisanos/smengine/ya;->d(Lcom/smartisanos/smengine/ya;I)F

    move-result v9

    invoke-static {v8, v1}, Lcom/smartisanos/smengine/ya;->d(Lcom/smartisanos/smengine/ya;I)F

    move-result v8

    :goto_2
    sub-float/2addr v9, v8

    mul-float/2addr v9, v5

    long-to-float v5, v12

    div-float/2addr v9, v5

    add-float/2addr v7, v9

    goto :goto_4

    :cond_4
    :goto_3
    move/from16 v16, v6

    :cond_5
    move/from16 v6, v16

    :goto_4
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto :goto_0

    :cond_6
    move v4, v5

    move/from16 v16, v6

    cmpl-float v1, v16, v4

    if-lez v1, :cond_7

    .line 24
    iget v0, v0, Lcom/smartisanos/smengine/Ba;->iT:I

    int-to-float v0, v0

    mul-float/2addr v7, v0

    div-float v7, v7, v16

    return v7

    :cond_7
    return v4
.end method

.method private u(Lcom/smartisanos/smengine/va;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/Ba;->kT:Lcom/smartisanos/smengine/xa;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/smartisanos/smengine/Ba;->dT:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/smartisanos/smengine/Ba;->eT:Z

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getEventTime()J

    move-result-wide v3

    const-wide/16 v5, 0x320

    sub-long v5, v3, v5

    .line 3
    invoke-direct {p0, v5, v6, v3, v4}, Lcom/smartisanos/smengine/Ba;->b(JJ)Z

    move-result p1

    if-nez p1, :cond_4

    .line 4
    invoke-direct {p0, v5, v6}, Lcom/smartisanos/smengine/Ba;->E(J)F

    move-result p1

    .line 5
    sget v0, Lcom/smartisanos/launcher/data/Constants;->pinch_scale_threshold:I

    neg-int v3, v0

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    .line 6
    iget-object p1, p0, Lcom/smartisanos/smengine/Ba;->kT:Lcom/smartisanos/smengine/xa;

    invoke-interface {p1}, Lcom/smartisanos/smengine/xa;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_1

    .line 8
    sget-object p1, Lcom/smartisanos/smengine/Ba;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "############################ onZoomOut"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    :cond_1
    iput-boolean v1, p0, Lcom/smartisanos/smengine/Ba;->gT:Z

    return v2

    :cond_2
    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/smartisanos/smengine/Ba;->kT:Lcom/smartisanos/smengine/xa;

    invoke-interface {p1}, Lcom/smartisanos/smengine/xa;->f()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_3

    .line 12
    sget-object p1, Lcom/smartisanos/smengine/Ba;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "############################ onZoomIn"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 13
    :cond_3
    iput-boolean v1, p0, Lcom/smartisanos/smengine/Ba;->gT:Z

    return v2

    :cond_4
    return v1
.end method

.method private v(Lcom/smartisanos/smengine/va;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/Ba;->kT:Lcom/smartisanos/smengine/xa;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/smartisanos/smengine/Ba;->gT:Z

    if-eqz v0, :cond_5

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Ba;->t(Lcom/smartisanos/smengine/va;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Ba;->u(Lcom/smartisanos/smengine/va;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 5
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/Ba;->i(Lcom/smartisanos/smengine/va;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    sget-boolean p1, Lcom/smartisanos/launcher/va;->ai:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/smartisanos/smengine/Ba;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "############################ onSweep III "

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ba;->Hs()V

    return-void

    .line 8
    :cond_3
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Ba;->s(Lcom/smartisanos/smengine/va;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 9
    sget-boolean p1, Lcom/smartisanos/launcher/va;->ai:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/smartisanos/smengine/Ba;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "############################ onSweep IV "

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ba;->Hs()V

    :cond_5
    return-void
.end method


# virtual methods
.method public Fs()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Ba;->gT:Z

    return-void
.end method

.method public Gs()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/Ba;->dT:Z

    return p0
.end method

.method public Hs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/Ba;->lT:Lcom/smartisanos/smengine/za;

    invoke-static {v0}, Lcom/smartisanos/smengine/za;->a(Lcom/smartisanos/smengine/za;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/Ba;->kT:Lcom/smartisanos/smengine/xa;

    invoke-interface {v0}, Lcom/smartisanos/smengine/xa;->e()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Ba;->gT:Z

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/xa;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/smengine/Ba;->kT:Lcom/smartisanos/smengine/xa;

    return-void
.end method

.method public getXVelocity()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/Ba;->hT:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/smengine/Ba;->u(IZ)F

    move-result p0

    return p0
.end method

.method public getXVelocity(I)F
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/smengine/Ba;->u(IZ)F

    move-result p0

    return p0
.end method

.method public getYVelocity()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/Ba;->hT:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/smengine/Ba;->u(IZ)F

    move-result p0

    return p0
.end method

.method public getYVelocity(I)F
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/smengine/Ba;->u(IZ)F

    move-result p0

    return p0
.end method

.method public h(Lcom/smartisanos/smengine/va;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/smengine/Ba;->clear()V

    .line 3
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sweep_threshold:I

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/smartisanos/smengine/Ba;->cT:F

    .line 4
    iput-boolean v1, p0, Lcom/smartisanos/smengine/Ba;->dT:Z

    .line 5
    iput-boolean v1, p0, Lcom/smartisanos/smengine/Ba;->eT:Z

    .line 6
    iput-boolean v1, p0, Lcom/smartisanos/smengine/Ba;->fT:Z

    .line 7
    iput-boolean v1, p0, Lcom/smartisanos/smengine/Ba;->gT:Z

    .line 8
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/Ba;->mIndex:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/smartisanos/smengine/Ba;->mIndex:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    .line 9
    iput v1, p0, Lcom/smartisanos/smengine/Ba;->mIndex:I

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/Ba;->jT:[Lcom/smartisanos/smengine/ya;

    iget v3, p0, Lcom/smartisanos/smengine/Ba;->mIndex:I

    aget-object v0, v0, v3

    .line 11
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getEventTime()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;J)J

    .line 12
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getPointerIdBits()I

    move-result v3

    invoke-static {v0, v3}, Lcom/smartisanos/smengine/ya;->e(Lcom/smartisanos/smengine/ya;I)I

    .line 13
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getPointerCount()I

    move-result v3

    invoke-static {v0, v3}, Lcom/smartisanos/smengine/ya;->f(Lcom/smartisanos/smengine/ya;I)I

    .line 14
    iget-boolean v3, p0, Lcom/smartisanos/smengine/Ba;->dT:Z

    if-nez v3, :cond_3

    invoke-static {v0}, Lcom/smartisanos/smengine/ya;->c(Lcom/smartisanos/smengine/ya;)I

    move-result v3

    if-le v3, v2, :cond_3

    .line 15
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_2

    .line 16
    sget-object v3, Lcom/smartisanos/smengine/Ba;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "############################ might zoom"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 17
    :cond_2
    iput-boolean v2, p0, Lcom/smartisanos/smengine/Ba;->dT:Z

    .line 18
    :cond_3
    iget-boolean v3, p0, Lcom/smartisanos/smengine/Ba;->fT:Z

    if-nez v3, :cond_4

    invoke-static {v0}, Lcom/smartisanos/smengine/ya;->c(Lcom/smartisanos/smengine/ya;)I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_4

    .line 19
    iput-boolean v2, p0, Lcom/smartisanos/smengine/Ba;->fT:Z

    :cond_4
    move v3, v1

    .line 20
    :goto_0
    invoke-static {v0}, Lcom/smartisanos/smengine/ya;->c(Lcom/smartisanos/smengine/ya;)I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 21
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v4

    .line 22
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/va;->getSize(I)F

    move-result v5

    .line 23
    invoke-static {v0}, Lcom/smartisanos/smengine/ya;->d(Lcom/smartisanos/smengine/ya;)[I

    move-result-object v6

    aput v4, v6, v3

    .line 24
    invoke-static {v0}, Lcom/smartisanos/smengine/ya;->e(Lcom/smartisanos/smengine/ya;)[F

    move-result-object v6

    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/va;->getX(I)F

    move-result v7

    aput v7, v6, v4

    .line 25
    invoke-static {v0}, Lcom/smartisanos/smengine/ya;->f(Lcom/smartisanos/smengine/ya;)[F

    move-result-object v6

    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/va;->getY(I)F

    move-result v7

    aput v7, v6, v4

    .line 26
    invoke-static {v0}, Lcom/smartisanos/smengine/ya;->g(Lcom/smartisanos/smengine/ya;)[F

    move-result-object v6

    aput v5, v6, v4

    .line 27
    sget-boolean v6, Lcom/smartisanos/launcher/va;->ai:Z

    if-eqz v6, :cond_5

    sget-object v6, Lcom/smartisanos/smengine/Ba;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addMovement size ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "], mSweepThreshold ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/smartisanos/smengine/Ba;->cT:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 28
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 29
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 30
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/smartisanos/smengine/Ba;->cT:F

    cmpl-float v6, v5, v6

    if-gtz v6, :cond_6

    .line 31
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v6

    if-eqz v6, :cond_6

    .line 32
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v6

    if-ne v6, v2, :cond_8

    .line 33
    :cond_6
    iget v6, p0, Lcom/smartisanos/smengine/Ba;->cT:F

    cmpl-float v6, v5, v6

    if-lez v6, :cond_7

    .line 34
    iput-boolean v2, p0, Lcom/smartisanos/smengine/Ba;->eT:Z

    .line 35
    :cond_7
    iget-object v6, p0, Lcom/smartisanos/smengine/Ba;->lT:Lcom/smartisanos/smengine/za;

    invoke-static {v0}, Lcom/smartisanos/smengine/ya;->a(Lcom/smartisanos/smengine/ya;)J

    move-result-wide v7

    invoke-static {v0}, Lcom/smartisanos/smengine/ya;->f(Lcom/smartisanos/smengine/ya;)[F

    move-result-object v9

    aget v4, v9, v4

    invoke-static {v6, v7, v8, v4, v5}, Lcom/smartisanos/smengine/za;->a(Lcom/smartisanos/smengine/za;JFF)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 36
    :cond_9
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/Ba;->hT:I

    .line 37
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Ba;->v(Lcom/smartisanos/smengine/va;)V

    return-void
.end method

.method public i(Lcom/smartisanos/smengine/va;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/Ba;->j(Lcom/smartisanos/smengine/va;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/smengine/Ba;->kT:Lcom/smartisanos/smengine/xa;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/smengine/Ba;->lT:Lcom/smartisanos/smengine/za;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getEventTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/smartisanos/smengine/za;->a(Lcom/smartisanos/smengine/za;J)F

    move-result p1

    sub-float/2addr v0, p1

    const/high16 p1, -0x3e600000    # -20.0f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2

    .line 3
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/J;->Oa()Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/smengine/Ba;->ZS:[I

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->getLocationOnScreen([I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/J;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/smengine/Ba;->ZS:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/smartisanos/smengine/Ba;->ZS:[I

    const/4 p1, 0x1

    aget p0, p0, p1

    if-nez p0, :cond_2

    .line 7
    sget-boolean p0, Lcom/smartisanos/launcher/va;->ai:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/smartisanos/smengine/Ba;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "############################ can sweep"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public j(Lcom/smartisanos/smengine/va;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/Ba;->lT:Lcom/smartisanos/smengine/za;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getEventTime()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/smartisanos/smengine/za;->b(Lcom/smartisanos/smengine/za;J)Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
