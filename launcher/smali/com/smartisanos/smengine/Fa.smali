.class public Lcom/smartisanos/smengine/Fa;
.super Ljava/lang/Object;
.source "TouchEvent.java"


# instance fields
.field private BT:F

.field private CT:F

.field private DT:F

.field private ET:F

.field private FT:F

.field private IT:F

.field private KT:Z

.field private MT:F

.field private NT:F

.field private OT:Z

.field private PT:I

.field private QT:I

.field private RT:Ljava/util/ArrayList;

.field private TT:F

.field private UT:F

.field private VT:I

.field private WT:F

.field private XT:F

.field private YT:I

.field private mConsumed:Z

.field private mDeltaX:F

.field private mDeltaY:F

.field private mKeyCode:I

.field private mPressure:F

.field private mSize:F

.field private mTime:J

.field private mType:I

.field public uT:I

.field private vT:I

.field private wT:F

.field private xT:F

.field private yT:I

.field private zT:F


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/Fa;->mType:I

    .line 3
    iput v0, p0, Lcom/smartisanos/smengine/Fa;->uT:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/smartisanos/smengine/Fa;->mConsumed:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/smartisanos/smengine/Fa;->PT:I

    .line 6
    iput v0, p0, Lcom/smartisanos/smengine/Fa;->QT:I

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Fa;->RT:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/smartisanos/smengine/Fa;->WT:F

    .line 9
    iput v0, p0, Lcom/smartisanos/smengine/Fa;->XT:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 10
    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/smengine/Fa;->b(IFFFF)V

    return-void
.end method

.method public constructor <init>(IFFFF)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/smartisanos/smengine/Fa;->mType:I

    .line 13
    iput v0, p0, Lcom/smartisanos/smengine/Fa;->uT:I

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/smartisanos/smengine/Fa;->mConsumed:Z

    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lcom/smartisanos/smengine/Fa;->PT:I

    .line 16
    iput v0, p0, Lcom/smartisanos/smengine/Fa;->QT:I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Fa;->RT:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/smartisanos/smengine/Fa;->WT:F

    .line 19
    iput v0, p0, Lcom/smartisanos/smengine/Fa;->XT:F

    .line 20
    invoke-virtual/range {p0 .. p5}, Lcom/smartisanos/smengine/Fa;->b(IFFFF)V

    return-void
.end method


# virtual methods
.method public Ks()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Fa;->vT:I

    return p0
.end method

.method public Ls()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Fa;->VT:I

    return p0
.end method

.method public Ms()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Fa;->YT:I

    return p0
.end method

.method public Ns()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Fa;->MT:F

    return p0
.end method

.method public Os()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Fa;->NT:F

    return p0
.end method

.method public b(IFFFF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/Fa;->mType:I

    .line 2
    iput p2, p0, Lcom/smartisanos/smengine/Fa;->wT:F

    .line 3
    iput p3, p0, Lcom/smartisanos/smengine/Fa;->xT:F

    .line 4
    iput p4, p0, Lcom/smartisanos/smengine/Fa;->mDeltaX:F

    .line 5
    iput p5, p0, Lcom/smartisanos/smengine/Fa;->mDeltaY:F

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/smartisanos/smengine/Fa;->vT:I

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/smartisanos/smengine/Fa;->mPressure:F

    .line 8
    iput p1, p0, Lcom/smartisanos/smengine/Fa;->mKeyCode:I

    .line 9
    iput p2, p0, Lcom/smartisanos/smengine/Fa;->ET:F

    .line 10
    iput p2, p0, Lcom/smartisanos/smengine/Fa;->FT:F

    .line 11
    iput p2, p0, Lcom/smartisanos/smengine/Fa;->IT:F

    .line 12
    iput-boolean p1, p0, Lcom/smartisanos/smengine/Fa;->KT:Z

    const/4 p3, 0x1

    .line 13
    iput-boolean p3, p0, Lcom/smartisanos/smengine/Fa;->mConsumed:Z

    .line 14
    iput p2, p0, Lcom/smartisanos/smengine/Fa;->NT:F

    iput p2, p0, Lcom/smartisanos/smengine/Fa;->MT:F

    .line 15
    iput p2, p0, Lcom/smartisanos/smengine/Fa;->mSize:F

    .line 16
    iput-boolean p1, p0, Lcom/smartisanos/smengine/Fa;->OT:Z

    const/4 p4, -0x1

    .line 17
    iput p4, p0, Lcom/smartisanos/smengine/Fa;->PT:I

    .line 18
    iput p3, p0, Lcom/smartisanos/smengine/Fa;->VT:I

    .line 19
    iput p2, p0, Lcom/smartisanos/smengine/Fa;->TT:F

    .line 20
    iput p2, p0, Lcom/smartisanos/smengine/Fa;->UT:F

    .line 21
    iput p2, p0, Lcom/smartisanos/smengine/Fa;->zT:F

    .line 22
    iput p2, p0, Lcom/smartisanos/smengine/Fa;->BT:F

    .line 23
    iput p4, p0, Lcom/smartisanos/smengine/Fa;->yT:I

    .line 24
    iput p2, p0, Lcom/smartisanos/smengine/Fa;->CT:F

    .line 25
    iput p2, p0, Lcom/smartisanos/smengine/Fa;->DT:F

    .line 26
    iput p2, p0, Lcom/smartisanos/smengine/Fa;->WT:F

    .line 27
    iput p2, p0, Lcom/smartisanos/smengine/Fa;->XT:F

    .line 28
    iput p1, p0, Lcom/smartisanos/smengine/Fa;->YT:I

    .line 29
    iput p1, p0, Lcom/smartisanos/smengine/Fa;->uT:I

    return-void
.end method

.method public getDeltaX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Fa;->mDeltaX:F

    return p0
.end method

.method public getDeltaY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Fa;->mDeltaY:F

    return p0
.end method

.method public getSize()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Fa;->mSize:F

    return p0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/Fa;->mTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Fa;->mType:I

    return p0
.end method

.method public getX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Fa;->wT:F

    return p0
.end method

.method public getY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Fa;->xT:F

    return p0
.end method

.method public lc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/Fa;->YT:I

    return-void
.end method

.method public set(I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Fa;->b(IFFFF)V

    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/Fa;->wT:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/Fa;->xT:F

    return-void
.end method
