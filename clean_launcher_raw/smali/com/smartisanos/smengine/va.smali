.class public Lcom/smartisanos/smengine/va;
.super Ljava/lang/Object;
.source "TMotionEvent.java"


# static fields
.field private static final AE:Ljava/lang/Object;

.field private static DE:Lcom/smartisanos/smengine/va;

.field private static EE:I

.field private static final JS:[Ljava/lang/String;


# instance fields
.field private DS:J

.field private ES:I

.field private FS:[I

.field private GS:I

.field private HS:I

.field private IS:Z

.field private mAction:I

.field private mButtonState:I

.field private mPressure:[F

.field private mSize:[F

.field private mSource:I

.field private mUserData:Ljava/lang/Object;

.field private mX:[F

.field private mY:[F

.field private next:Lcom/smartisanos/smengine/va;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "BUTTON_PRIMARY"

    const-string v1, "BUTTON_SECONDARY"

    const-string v2, "BUTTON_TERTIARY"

    const-string v3, "BUTTON_BACK"

    const-string v4, "BUTTON_FORWARD"

    const-string v5, "BUTTON_STYLUS_PRIMARY"

    const-string v6, "BUTTON_STYLUS_SECONDARY"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/va;->JS:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    sput-object v0, Lcom/smartisanos/smengine/va;->AE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/smengine/va;->mUserData:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/smartisanos/smengine/va;->mButtonState:I

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Lcom/smartisanos/smengine/va;->FS:[I

    new-array v1, v0, [F

    .line 5
    iput-object v1, p0, Lcom/smartisanos/smengine/va;->mX:[F

    new-array v1, v0, [F

    .line 6
    iput-object v1, p0, Lcom/smartisanos/smengine/va;->mY:[F

    new-array v1, v0, [F

    .line 7
    iput-object v1, p0, Lcom/smartisanos/smengine/va;->mSize:[F

    new-array v0, v0, [F

    .line 8
    iput-object v0, p0, Lcom/smartisanos/smengine/va;->mPressure:[F

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/smengine/va;->reset()V

    return-void
.end method

.method public static a(Lcom/smartisanos/smengine/va;)Lcom/smartisanos/smengine/va;
    .locals 6

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/va;->AE:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/smengine/va;->DE:Lcom/smartisanos/smengine/va;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/va;

    invoke-direct {v1}, Lcom/smartisanos/smengine/va;-><init>()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/smartisanos/smengine/va;->DE:Lcom/smartisanos/smengine/va;

    .line 5
    iget-object v2, v1, Lcom/smartisanos/smengine/va;->next:Lcom/smartisanos/smengine/va;

    sput-object v2, Lcom/smartisanos/smengine/va;->DE:Lcom/smartisanos/smengine/va;

    .line 6
    sget v2, Lcom/smartisanos/smengine/va;->EE:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/smartisanos/smengine/va;->EE:I

    const/4 v2, 0x0

    .line 7
    iput-object v2, v1, Lcom/smartisanos/smengine/va;->next:Lcom/smartisanos/smengine/va;

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/smengine/va;->getActionIndex()I

    move-result v2

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/smengine/va;->getPointerCount()I

    move-result v3

    .line 12
    iput v0, v1, Lcom/smartisanos/smengine/va;->mAction:I

    .line 13
    iput v2, v1, Lcom/smartisanos/smengine/va;->ES:I

    .line 14
    iput v3, v1, Lcom/smartisanos/smengine/va;->GS:I

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/smengine/va;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/smartisanos/smengine/va;->DS:J

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 16
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v2

    .line 17
    iget-object v4, v1, Lcom/smartisanos/smengine/va;->FS:[I

    aput v2, v4, v0

    .line 18
    iget-object v2, v1, Lcom/smartisanos/smengine/va;->mX:[F

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/va;->getX(I)F

    move-result v4

    aput v4, v2, v0

    .line 19
    iget-object v2, v1, Lcom/smartisanos/smengine/va;->mY:[F

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/va;->getY(I)F

    move-result v4

    aput v4, v2, v0

    .line 20
    iget-object v2, v1, Lcom/smartisanos/smengine/va;->mSize:[F

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/va;->getSize(I)F

    move-result v4

    aput v4, v2, v0

    .line 21
    iget-object v2, v1, Lcom/smartisanos/smengine/va;->mPressure:[F

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/va;->getPressure(I)F

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/va;->getUserData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/smartisanos/smengine/va;->mUserData:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Lcom/smartisanos/smengine/va;->Es()Z

    move-result p0

    iput-boolean p0, v1, Lcom/smartisanos/smengine/va;->IS:Z

    goto :goto_2

    .line 24
    :cond_2
    invoke-virtual {v1}, Lcom/smartisanos/smengine/va;->reset()V

    :goto_2
    return-object v1

    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static c(IFF)Lcom/smartisanos/smengine/va;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/smartisanos/smengine/va;->a(Lcom/smartisanos/smengine/va;)Lcom/smartisanos/smengine/va;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/smartisanos/smengine/va;->ES:I

    .line 3
    iput p0, v0, Lcom/smartisanos/smengine/va;->mAction:I

    const/4 p0, 0x1

    .line 4
    iput p0, v0, Lcom/smartisanos/smengine/va;->GS:I

    .line 5
    iget-object v2, v0, Lcom/smartisanos/smengine/va;->FS:[I

    aput v1, v2, v1

    .line 6
    iget-object v2, v0, Lcom/smartisanos/smengine/va;->mX:[F

    aput p1, v2, v1

    .line 7
    iget-object p1, v0, Lcom/smartisanos/smengine/va;->mY:[F

    aput p2, p1, v1

    .line 8
    iget-object p1, v0, Lcom/smartisanos/smengine/va;->mSize:[F

    const/4 p2, 0x0

    aput p2, p1, v1

    .line 9
    iget-object p1, v0, Lcom/smartisanos/smengine/va;->mPressure:[F

    aput p2, p1, v1

    .line 10
    iput p0, v0, Lcom/smartisanos/smengine/va;->HS:I

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/smartisanos/smengine/va;->DS:J

    .line 12
    iput-boolean v1, v0, Lcom/smartisanos/smengine/va;->IS:Z

    return-object v0
.end method


# virtual methods
.method public Bs()Z
    .locals 1

    const/16 v0, 0x2002

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/va;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/smartisanos/smengine/va;->mButtonState:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Cs()Z
    .locals 1

    const/16 v0, 0x2002

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/va;->isFromSource(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Ds()Z
    .locals 1

    const/16 v0, 0x2002

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/va;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/smartisanos/smengine/va;->mButtonState:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Es()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/va;->IS:Z

    return p0
.end method

.method public a(Landroid/view/MotionEvent;Ljava/lang/Object;)Z
    .locals 0

    .line 26
    iput-object p2, p0, Lcom/smartisanos/smengine/va;->mUserData:Ljava/lang/Object;

    .line 27
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/va;->d(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/smartisanos/smengine/va;->DS:J

    const/4 v3, 0x0

    .line 5
    iput v3, p0, Lcom/smartisanos/smengine/va;->GS:I

    .line 6
    iput v3, p0, Lcom/smartisanos/smengine/va;->HS:I

    .line 7
    iput v3, p0, Lcom/smartisanos/smengine/va;->ES:I

    .line 8
    iput v0, p0, Lcom/smartisanos/smengine/va;->mAction:I

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    iput v4, p0, Lcom/smartisanos/smengine/va;->mSource:I

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    iput v4, p0, Lcom/smartisanos/smengine/va;->mButtonState:I

    .line 11
    invoke-static {}, Lsmartisanos/api/MotionEventSmt;->getInstance()Lsmartisanos/api/MotionEventSmt;

    move-result-object v4

    invoke-virtual {v4, p1}, Lsmartisanos/api/MotionEventSmt;->isGeneratedGesture(Landroid/view/MotionEvent;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/smartisanos/smengine/va;->IS:Z

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v2, :cond_3

    .line 12
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    const/16 v8, 0xa

    if-lt v7, v8, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    iget v8, p0, Lcom/smartisanos/smengine/va;->GS:I

    .line 14
    iget-object v9, p0, Lcom/smartisanos/smengine/va;->FS:[I

    aput v7, v9, v8

    .line 15
    iget-object v9, p0, Lcom/smartisanos/smengine/va;->mX:[F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    aput v10, v9, v8

    .line 16
    iget-object v9, p0, Lcom/smartisanos/smengine/va;->mY:[F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    aput v10, v9, v8

    .line 17
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v9

    .line 18
    iget-object v10, p0, Lcom/smartisanos/smengine/va;->mSize:[F

    const v11, 0x3f7fffef    # 0.999999f

    cmpl-float v11, v9, v11

    if-lez v11, :cond_1

    const/4 v9, 0x0

    :cond_1
    aput v9, v10, v8

    .line 19
    iget-object v9, p0, Lcom/smartisanos/smengine/va;->mPressure:[F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v10

    aput v10, v9, v8

    if-ne v1, v4, :cond_2

    .line 20
    iput v8, p0, Lcom/smartisanos/smengine/va;->ES:I

    move v5, v6

    .line 21
    :cond_2
    iget v8, p0, Lcom/smartisanos/smengine/va;->HS:I

    shl-int v7, v6, v7

    or-int/2addr v7, v8

    iput v7, p0, Lcom/smartisanos/smengine/va;->HS:I

    .line 22
    iget v7, p0, Lcom/smartisanos/smengine/va;->GS:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/smartisanos/smengine/va;->GS:I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 23
    :cond_3
    iget p1, p0, Lcom/smartisanos/smengine/va;->GS:I

    if-nez p1, :cond_4

    return v3

    :cond_4
    const/4 p1, 0x2

    const/4 v1, 0x5

    if-eqz v0, :cond_a

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x6

    if-eq v0, v6, :cond_7

    if-ne v0, v1, :cond_6

    goto :goto_2

    .line 24
    :cond_6
    iput v0, p0, Lcom/smartisanos/smengine/va;->mAction:I

    .line 25
    iput v3, p0, Lcom/smartisanos/smengine/va;->ES:I

    goto :goto_4

    :cond_7
    :goto_2
    if-eqz v5, :cond_9

    .line 26
    iget p1, p0, Lcom/smartisanos/smengine/va;->GS:I

    if-ne p1, v6, :cond_8

    .line 27
    iput v6, p0, Lcom/smartisanos/smengine/va;->mAction:I

    goto :goto_4

    .line 28
    :cond_8
    iput v1, p0, Lcom/smartisanos/smengine/va;->mAction:I

    goto :goto_4

    .line 29
    :cond_9
    iput p1, p0, Lcom/smartisanos/smengine/va;->mAction:I

    .line 30
    iput v3, p0, Lcom/smartisanos/smengine/va;->ES:I

    goto :goto_4

    :cond_a
    :goto_3
    if-eqz v5, :cond_c

    .line 31
    iget p1, p0, Lcom/smartisanos/smengine/va;->GS:I

    if-ne p1, v6, :cond_b

    .line 32
    iput v3, p0, Lcom/smartisanos/smengine/va;->mAction:I

    goto :goto_4

    .line 33
    :cond_b
    iput v1, p0, Lcom/smartisanos/smengine/va;->mAction:I

    goto :goto_4

    .line 34
    :cond_c
    iput p1, p0, Lcom/smartisanos/smengine/va;->mAction:I

    .line 35
    iput v3, p0, Lcom/smartisanos/smengine/va;->ES:I

    :goto_4
    return v6
.end method

.method public getAction()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/va;->mAction:I

    return p0
.end method

.method public getActionIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/va;->ES:I

    return p0
.end method

.method public getButtonState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/va;->mButtonState:I

    return p0
.end method

.method public getEventTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/va;->DS:J

    return-wide v0
.end method

.method public getPointerCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/va;->GS:I

    return p0
.end method

.method public getPointerId(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/va;->FS:[I

    aget p0, p0, p1

    return p0
.end method

.method public getPointerIdBits()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/va;->HS:I

    return p0
.end method

.method public final getPressure()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/va;->mPressure:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getPressure(I)F
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/va;->mPressure:[F

    aget p0, p0, p1

    return p0
.end method

.method public getSize(I)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/va;->mSize:[F

    aget p0, p0, p1

    return p0
.end method

.method public final getSource()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/va;->mSource:I

    return p0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/va;->mUserData:Ljava/lang/Object;

    return-object p0
.end method

.method public getX()F
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/va;->mX:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getX(I)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/va;->mX:[F

    aget p0, p0, p1

    return p0
.end method

.method public getY()F
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/va;->mY:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getY(I)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/va;->mY:[F

    aget p0, p0, p1

    return p0
.end method

.method public ic(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/va;->mUserData:Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 3
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return v0
.end method

.method public isFromSource(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/va;->getSource()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public recycle()V
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/va;->AE:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lcom/smartisanos/smengine/va;->EE:I

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/smengine/va;->DE:Lcom/smartisanos/smengine/va;

    iput-object v1, p0, Lcom/smartisanos/smengine/va;->next:Lcom/smartisanos/smengine/va;

    .line 4
    sput-object p0, Lcom/smartisanos/smengine/va;->DE:Lcom/smartisanos/smengine/va;

    .line 5
    sget p0, Lcom/smartisanos/smengine/va;->EE:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/smartisanos/smengine/va;->EE:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/smartisanos/smengine/va;->next:Lcom/smartisanos/smengine/va;

    .line 7
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/smartisanos/smengine/va;->ES:I

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/va;->GS:I

    .line 3
    iput v0, p0, Lcom/smartisanos/smengine/va;->HS:I

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/smengine/va;->FS:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 5
    iget-object v1, p0, Lcom/smartisanos/smengine/va;->mX:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 6
    iget-object v1, p0, Lcom/smartisanos/smengine/va;->mY:[F

    aput v2, v1, v0

    .line 7
    iget-object v1, p0, Lcom/smartisanos/smengine/va;->mSize:[F

    aput v2, v1, v0

    .line 8
    iget-object v1, p0, Lcom/smartisanos/smengine/va;->mPressure:[F

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/smartisanos/smengine/va;->mUserData:Ljava/lang/Object;

    return-void
.end method

.method public setAction(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/va;->mAction:I

    return-void
.end method

.method public setButtonState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/va;->mButtonState:I

    return-void
.end method

.method public split(I)Lcom/smartisanos/smengine/va;
    .locals 13

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/smartisanos/smengine/va;->a(Lcom/smartisanos/smengine/va;)Lcom/smartisanos/smengine/va;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/va;->getActionIndex()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/va;->getPointerCount()I

    move-result v3

    const/4 v4, 0x0

    .line 5
    iput v4, v0, Lcom/smartisanos/smengine/va;->GS:I

    .line 6
    iput v4, v0, Lcom/smartisanos/smengine/va;->ES:I

    .line 7
    iget-wide v5, p0, Lcom/smartisanos/smengine/va;->DS:J

    iput-wide v5, v0, Lcom/smartisanos/smengine/va;->DS:J

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v5, v3, :cond_2

    .line 8
    iget-object v9, p0, Lcom/smartisanos/smengine/va;->FS:[I

    aget v9, v9, v5

    shl-int v10, v8, v9

    and-int v11, v10, p1

    if-eqz v11, :cond_1

    .line 9
    iget v11, v0, Lcom/smartisanos/smengine/va;->GS:I

    .line 10
    iget-object v12, v0, Lcom/smartisanos/smengine/va;->FS:[I

    aput v9, v12, v11

    .line 11
    iget-object v9, v0, Lcom/smartisanos/smengine/va;->mX:[F

    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/va;->getX(I)F

    move-result v12

    aput v12, v9, v11

    .line 12
    iget-object v9, v0, Lcom/smartisanos/smengine/va;->mY:[F

    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/va;->getY(I)F

    move-result v12

    aput v12, v9, v11

    .line 13
    iget-object v9, v0, Lcom/smartisanos/smengine/va;->mSize:[F

    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/va;->getSize(I)F

    move-result v12

    aput v12, v9, v11

    .line 14
    iget-object v9, v0, Lcom/smartisanos/smengine/va;->mPressure:[F

    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/va;->getPressure(I)F

    move-result v12

    aput v12, v9, v11

    if-ne v2, v5, :cond_0

    .line 15
    iput v11, v0, Lcom/smartisanos/smengine/va;->ES:I

    move v7, v8

    :cond_0
    or-int/2addr v6, v10

    .line 16
    iget v9, v0, Lcom/smartisanos/smengine/va;->GS:I

    add-int/2addr v9, v8

    iput v9, v0, Lcom/smartisanos/smengine/va;->GS:I

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 17
    :cond_2
    iput v6, v0, Lcom/smartisanos/smengine/va;->HS:I

    const/4 p1, 0x2

    const/4 v2, 0x5

    if-eqz v1, :cond_8

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x6

    if-eq v1, v8, :cond_5

    if-ne v1, v2, :cond_4

    goto :goto_1

    .line 18
    :cond_4
    iput v1, v0, Lcom/smartisanos/smengine/va;->mAction:I

    .line 19
    iput v4, v0, Lcom/smartisanos/smengine/va;->ES:I

    goto :goto_3

    :cond_5
    :goto_1
    if-eqz v7, :cond_7

    .line 20
    iget p1, v0, Lcom/smartisanos/smengine/va;->GS:I

    if-ne p1, v8, :cond_6

    .line 21
    iput v8, v0, Lcom/smartisanos/smengine/va;->mAction:I

    goto :goto_3

    .line 22
    :cond_6
    iput v2, v0, Lcom/smartisanos/smengine/va;->mAction:I

    goto :goto_3

    .line 23
    :cond_7
    iput p1, v0, Lcom/smartisanos/smengine/va;->mAction:I

    .line 24
    iput v4, v0, Lcom/smartisanos/smengine/va;->ES:I

    goto :goto_3

    :cond_8
    :goto_2
    if-eqz v7, :cond_a

    .line 25
    iget p1, v0, Lcom/smartisanos/smengine/va;->GS:I

    if-ne p1, v8, :cond_9

    .line 26
    iput v4, v0, Lcom/smartisanos/smengine/va;->mAction:I

    goto :goto_3

    .line 27
    :cond_9
    iput v2, v0, Lcom/smartisanos/smengine/va;->mAction:I

    goto :goto_3

    .line 28
    :cond_a
    iput p1, v0, Lcom/smartisanos/smengine/va;->mAction:I

    .line 29
    iput v4, v0, Lcom/smartisanos/smengine/va;->ES:I

    .line 30
    :goto_3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/va;->getUserData()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/smartisanos/smengine/va;->mUserData:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPonitID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/smengine/va;->FS:[I

    iget v2, p0, Lcom/smartisanos/smengine/va;->ES:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mActionIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/smengine/va;->ES:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Action ="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget v2, p0, Lcom/smartisanos/smengine/va;->mAction:I

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ACTION_DOWN,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ACTION_POINTER_DOWN,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ACTION_POINTER_UP,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ACTION_UP,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ACTION_CANCEL,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ACTION_MOVE,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , ids ="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 11
    :goto_1
    iget v3, p0, Lcom/smartisanos/smengine/va;->GS:I

    if-ge v2, v3, :cond_6

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/smartisanos/smengine/va;->FS:[I

    aget v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mPointerCount = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/smartisanos/smengine/va;->GS:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", userData = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/smartisanos/smengine/va;->mUserData:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mSource = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/smartisanos/smengine/va;->mSource:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mButtonState = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/smengine/va;->mButtonState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
