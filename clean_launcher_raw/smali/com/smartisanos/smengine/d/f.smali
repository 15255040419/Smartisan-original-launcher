.class public Lcom/smartisanos/smengine/d/f;
.super Ljava/lang/Object;
.source "TempVars.java"


# static fields
.field private static final JY:Lcom/smartisanos/smengine/d/e;


# instance fields
.field public final AY:[F

.field public final BY:[F

.field public final CY:[F

.field public final DY:[F

.field public final EY:[F

.field public final FY:[F

.field public final GY:[F

.field public final HY:[F

.field public final IY:Lcom/smartisanos/smengine/i;

.field private eY:Z

.field public final fY:Lcom/smartisanos/smengine/a/j;

.field public final gY:Lcom/smartisanos/smengine/a/j;

.field public final hY:Lcom/smartisanos/smengine/a/j;

.field public final iY:Lcom/smartisanos/smengine/a/j;

.field public final jY:Lcom/smartisanos/smengine/a/j;

.field public final kY:Lcom/smartisanos/smengine/a/j;

.field public final lY:Lcom/smartisanos/smengine/a/j;

.field public final nY:Lcom/smartisanos/smengine/a/j;

.field public final oY:Lcom/smartisanos/smengine/a/j;

.field public final pY:Lcom/smartisanos/smengine/a/j;

.field public final qY:Lcom/smartisanos/smengine/a/k;

.field public final rY:Lcom/smartisanos/smengine/a/k;

.field public final sY:[Lcom/smartisanos/smengine/a/j;

.field public final tY:Lcom/smartisanos/smengine/a/i;

.field public final uY:Lcom/smartisanos/smengine/a/i;

.field public final vY:Lcom/smartisanos/smengine/a/e;

.field public final wY:Lcom/smartisanos/smengine/a/f;

.field public final xY:Lcom/smartisanos/smengine/a/f;

.field public final yY:Lcom/smartisanos/smengine/a/g;

.field public final zY:Lcom/smartisanos/smengine/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/d/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/d/e;-><init>(Lcom/smartisanos/smengine/d/d;)V

    sput-object v0, Lcom/smartisanos/smengine/d/f;->JY:Lcom/smartisanos/smengine/d/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/smengine/d/f;->eY:Z

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    .line 4
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/d/f;->gY:Lcom/smartisanos/smengine/a/j;

    .line 5
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/d/f;->hY:Lcom/smartisanos/smengine/a/j;

    .line 6
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/d/f;->iY:Lcom/smartisanos/smengine/a/j;

    .line 7
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/d/f;->jY:Lcom/smartisanos/smengine/a/j;

    .line 8
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/d/f;->kY:Lcom/smartisanos/smengine/a/j;

    .line 9
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/d/f;->lY:Lcom/smartisanos/smengine/a/j;

    .line 10
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/d/f;->nY:Lcom/smartisanos/smengine/a/j;

    .line 11
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/d/f;->oY:Lcom/smartisanos/smengine/a/j;

    .line 12
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/d/f;->pY:Lcom/smartisanos/smengine/a/j;

    .line 13
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/k;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/d/f;->qY:Lcom/smartisanos/smengine/a/k;

    .line 14
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/k;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/d/f;->rY:Lcom/smartisanos/smengine/a/k;

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/smartisanos/smengine/a/j;

    .line 15
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    aput-object v3, v2, v0

    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    const/4 v3, 0x1

    aput-object v0, v2, v3

    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    const/4 v3, 0x2

    aput-object v0, v2, v3

    iput-object v2, p0, Lcom/smartisanos/smengine/d/f;->sY:[Lcom/smartisanos/smengine/a/j;

    .line 16
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/i;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/d/f;->tY:Lcom/smartisanos/smengine/a/i;

    .line 17
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/i;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/d/f;->uY:Lcom/smartisanos/smengine/a/i;

    .line 18
    new-instance v0, Lcom/smartisanos/smengine/a/e;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/e;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/d/f;->vY:Lcom/smartisanos/smengine/a/e;

    .line 19
    new-instance v0, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/d/f;->wY:Lcom/smartisanos/smengine/a/f;

    .line 20
    new-instance v0, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/d/f;->xY:Lcom/smartisanos/smengine/a/f;

    .line 21
    new-instance v0, Lcom/smartisanos/smengine/a/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/d/f;->yY:Lcom/smartisanos/smengine/a/g;

    .line 22
    new-instance v0, Lcom/smartisanos/smengine/a/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/d/f;->zY:Lcom/smartisanos/smengine/a/g;

    new-array v0, v1, [F

    .line 23
    iput-object v0, p0, Lcom/smartisanos/smengine/d/f;->AY:[F

    new-array v0, v1, [F

    .line 24
    iput-object v0, p0, Lcom/smartisanos/smengine/d/f;->BY:[F

    new-array v0, v1, [F

    .line 25
    iput-object v0, p0, Lcom/smartisanos/smengine/d/f;->CY:[F

    new-array v0, v1, [F

    .line 26
    iput-object v0, p0, Lcom/smartisanos/smengine/d/f;->DY:[F

    new-array v0, v1, [F

    .line 27
    iput-object v0, p0, Lcom/smartisanos/smengine/d/f;->EY:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 28
    iput-object v0, p0, Lcom/smartisanos/smengine/d/f;->FY:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 29
    iput-object v0, p0, Lcom/smartisanos/smengine/d/f;->GY:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 30
    iput-object v0, p0, Lcom/smartisanos/smengine/d/f;->HY:[F

    .line 31
    new-instance v0, Lcom/smartisanos/smengine/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/i;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/d/f;->IY:Lcom/smartisanos/smengine/i;

    return-void
.end method

.method public static get()Lcom/smartisanos/smengine/d/f;
    .locals 4

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/d/f;->JY:Lcom/smartisanos/smengine/d/e;

    .line 2
    iget-object v1, v0, Lcom/smartisanos/smengine/d/e;->dY:[Lcom/smartisanos/smengine/d/f;

    iget v2, v0, Lcom/smartisanos/smengine/d/e;->index:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/d/f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/d/f;-><init>()V

    .line 4
    iget-object v2, v0, Lcom/smartisanos/smengine/d/e;->dY:[Lcom/smartisanos/smengine/d/f;

    iget v3, v0, Lcom/smartisanos/smengine/d/e;->index:I

    aput-object v1, v2, v3

    .line 5
    :cond_0
    iget v2, v0, Lcom/smartisanos/smengine/d/e;->index:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/smartisanos/smengine/d/e;->index:I

    .line 6
    iput-boolean v3, v1, Lcom/smartisanos/smengine/d/f;->eY:Z

    return-object v1
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/d/f;->eY:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/smengine/d/f;->eY:Z

    .line 3
    sget-object v0, Lcom/smartisanos/smengine/d/f;->JY:Lcom/smartisanos/smengine/d/e;

    .line 4
    iget v1, v0, Lcom/smartisanos/smengine/d/e;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/smartisanos/smengine/d/e;->index:I

    .line 5
    iget-object v1, v0, Lcom/smartisanos/smengine/d/e;->dY:[Lcom/smartisanos/smengine/d/f;

    iget v0, v0, Lcom/smartisanos/smengine/d/e;->index:I

    aget-object v0, v1, v0

    if-ne v0, p0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "An instance of TempVars has not been released in a called method!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This instance of TempVars was already released!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
