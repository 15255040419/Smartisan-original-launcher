.class public Lcom/smartisanos/launcher/view/Ha;
.super Lcom/smartisanos/smengine/SceneNode;
.source "DragLayer.java"

# interfaces
.implements Lcom/smartisanos/launcher/view/cb;


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Bd:[F

.field private Cd:[F

.field private Dd:[F

.field private FH:Lcom/smartisanos/launcher/view/l;

.field private GH:Lcom/smartisanos/launcher/view/v;

.field private PL:I

.field private final QL:Z

.field private RL:F

.field private SL:F

.field private TL:Lcom/smartisanos/launcher/view/b/fa;

.field private UL:Lcom/smartisanos/launcher/animations/a/i;

.field private VL:Lcom/smartisanos/smengine/Ba;

.field private WL:Z

.field private XL:Z

.field private Xu:Lcom/smartisanos/launcher/view/V;

.field private YL:Z

.field private ZL:Z

.field private _L:I

.field private aM:I

.field private bM:Z

.field private cM:Z

.field private cp:Z

.field private dM:F

.field private dp:Z

.field private eM:F

.field private fM:Z

.field private gM:Z

.field private hM:I

.field private iM:Lcom/smartisanos/launcher/view/a/g;

.field private jM:Z

.field private kM:Lcom/smartisanos/launcher/view/b/M;

.field private lM:Lcom/smartisanos/launcher/view/b/ra;

.field private mM:Z

.field private mStartX:[F

.field private mStatus:I

.field private nM:Lcom/smartisanos/launcher/view/ec;

.field private oM:Lcom/smartisanos/launcher/view/a/g;

.field private pM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/Ha;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/smartisanos/launcher/view/Ha;->mStatus:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    .line 5
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->QL:Z

    .line 6
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->cp:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->dp:Z

    .line 8
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->WL:Z

    .line 9
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->XL:Z

    const/16 v1, 0xa

    new-array v2, v1, [F

    .line 10
    iput-object v2, p0, Lcom/smartisanos/launcher/view/Ha;->mStartX:[F

    new-array v2, v1, [F

    .line 11
    iput-object v2, p0, Lcom/smartisanos/launcher/view/Ha;->Dd:[F

    .line 12
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->YL:Z

    .line 13
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->ZL:Z

    .line 14
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->bM:Z

    new-array v0, v1, [F

    .line 15
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->Bd:[F

    new-array v0, v1, [F

    .line 16
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->Cd:[F

    .line 17
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->cM:Z

    .line 18
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->fM:Z

    .line 19
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->gM:Z

    .line 20
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->jM:Z

    .line 21
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->mM:Z

    .line 22
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->pM:Z

    .line 23
    new-instance p1, Lcom/smartisanos/smengine/Ba;

    invoke-direct {p1}, Lcom/smartisanos/smengine/Ba;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    .line 24
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    new-instance v0, Lcom/smartisanos/launcher/view/Da;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/Da;-><init>(Lcom/smartisanos/launcher/view/Ha;)V

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/Ba;->a(Lcom/smartisanos/smengine/xa;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/Da;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private Iy()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ha;->rp()Lcom/smartisanos/launcher/animations/a/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->je()F

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->je()F

    move-result p0

    return p0
.end method

.method private Jy()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ly()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->nM:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/ec;->Yg()V

    return-void
.end method

.method private Ky()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Ha;->Mb(I)Z

    move-result p0

    return p0
.end method

.method private Ly()Z
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Ha;->Mb(I)Z

    move-result p0

    return p0
.end method

.method private My()Z
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Ha;->Mb(I)Z

    move-result p0

    return p0
.end method

.method private Ny()Z
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Ha;->Mb(I)Z

    move-result p0

    return p0
.end method

.method private Oy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->WL:Z

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->XL:Z

    return-void
.end method

.method private Yg()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ky()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/X;->za(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->GH:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/v;->Yg()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->FH:Lcom/smartisanos/launcher/view/l;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/l;->Yg()V

    :goto_0
    return-void
.end method

.method private a(Lcom/smartisanos/smengine/va;Z)F
    .locals 7

    .line 10
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getPointerCount()I

    move-result v0

    const/high16 v1, 0x800000

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 11
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v4

    const/4 v5, 0x1

    shl-int/2addr v5, v4

    .line 12
    iget v6, p0, Lcom/smartisanos/launcher/view/Ha;->_L:I

    and-int/2addr v5, v6

    if-nez v5, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/va;->getX(I)F

    move-result v5

    if-eqz p2, :cond_1

    if-eqz v3, :cond_3

    .line 14
    :cond_1
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Ha;->Bd:[F

    aget v4, v6, v4

    sub-float v4, v5, v4

    cmpg-float v5, v1, v4

    if-gez v5, :cond_2

    move v1, v4

    :cond_2
    cmpl-float v5, v2, v4

    if-lez v5, :cond_3

    move v2, v4

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    cmpl-float p1, v1, p0

    if-lez p1, :cond_5

    cmpl-float p1, v2, p0

    if-lez p1, :cond_5

    return v1

    :cond_5
    cmpg-float p1, v1, p0

    if-gez p1, :cond_6

    cmpg-float p0, v2, p0

    if-gez p0, :cond_6

    return v2

    :cond_6
    add-float/2addr v1, v2

    return v1
.end method

.method private a(ZFLcom/smartisanos/smengine/a;)F
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/smartisanos/launcher/view/Ha;->a(ZFLcom/smartisanos/smengine/a;I)F

    move-result p0

    return p0
.end method

.method private a(ZFLcom/smartisanos/smengine/a;I)F
    .locals 6

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/Ha;->m(IZ)V

    .line 6
    iget v0, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ha;->rp()Lcom/smartisanos/launcher/animations/a/i;

    move-result-object p4

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p4, p1, p2, v0, p3}, Lcom/smartisanos/launcher/animations/a/i;->a(ZFFLcom/smartisanos/smengine/a;)F

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/view/Ha;->eM:F

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    const v3, 0x3e99999a    # 0.3f

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/launcher/view/b/fa;->a(ZFFLcom/smartisanos/smengine/a;I)F

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/view/Ha;->eM:F

    .line 9
    :goto_0
    iget p0, p0, Lcom/smartisanos/launcher/view/Ha;->eM:F

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Ha;)Lcom/smartisanos/launcher/view/b/fa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Ha;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->fM:Z

    return p1
.end method

.method static synthetic access$300()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/Ha;)Lcom/smartisanos/smengine/Ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    return-object p0
.end method

.method private b(Lcom/smartisanos/smengine/va;Z)V
    .locals 4

    .line 9
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 11
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#########endScrollPage while intercept touchEvent failed, isError = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    if-nez p2, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "###status error "

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ky()Z

    move-result v0

    const-string v1, "### status error "

    if-eqz v0, :cond_5

    .line 15
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    .line 16
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#########endDragIcon while intercept touchEvent failed, isError = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/view/Ha;->i(FF)V

    if-nez p2, :cond_4

    goto :goto_1

    .line 18
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->My()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_6

    .line 21
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##########endDragPage while intercept touchEvent failed, isError = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 22
    :cond_6
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->es()V

    if-nez p2, :cond_7

    goto :goto_2

    .line 23
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ly()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_9

    .line 26
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##########endDragMutiIcon while intercept touchEvent failed, isError = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 27
    :cond_9
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->n(Lcom/smartisanos/smengine/va;)V

    if-nez p2, :cond_a

    goto :goto_3

    .line 28
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_3
    return-void
.end method

.method private e(ZF)F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/launcher/view/Ha;->a(ZFLcom/smartisanos/smengine/a;)F

    move-result p0

    return p0
.end method

.method private ee()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->UL:Lcom/smartisanos/launcher/animations/a/i;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ha;->rp()Lcom/smartisanos/launcher/animations/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->UL:Lcom/smartisanos/launcher/animations/a/i;

    .line 3
    :cond_0
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/Ha;->cp:Z

    return p0
.end method

.method private es()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->My()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/Ha;->m(IZ)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->lM:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ra;->es()V

    return-void
.end method

.method private g(FFFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->My()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->lM:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/b/ra;->g(FFFF)V

    return-void
.end method

.method public static getInstance()Lcom/smartisanos/launcher/view/Ha;
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Ga;->access$000()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    return-object v0
.end method

.method private i(FF)V
    .locals 6

    .line 10
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ky()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/Ha;->m(IZ)V

    .line 12
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v2, :cond_5

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 15
    invoke-virtual {v2, p1, p2}, Lcom/smartisanos/smengine/SceneNode;->isTransformedTouchPointInView(FF)Z

    move-result v4

    .line 16
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v5, :cond_1

    new-array v5, v3, [F

    new-array v3, v3, [F

    .line 17
    invoke-static {p1, p2, v5, v3}, Lcom/smartisanos/launcher/a/t;->a(FF[F[F)Z

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz v4, :cond_4

    .line 18
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/smartisanos/launcher/view/a/X;->da(Z)V

    .line 19
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/V;->x(Lcom/smartisanos/launcher/view/a/g;)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/l;

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/launcher/view/l;->j(FF)V

    .line 21
    new-instance v0, Lcom/smartisanos/smengine/l;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/smengine/l;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 22
    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/Sc;->f(Lcom/smartisanos/smengine/l;)I

    .line 23
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-nez v0, :cond_7

    .line 24
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    .line 25
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "setWaitingUninstallCell ... "

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 26
    :cond_2
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-nez v0, :cond_3

    .line 27
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/Sc;->C(Lcom/smartisanos/launcher/view/a/g;)V

    goto :goto_1

    .line 28
    :cond_3
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/Sc;->C(Lcom/smartisanos/launcher/view/a/g;)V

    goto :goto_1

    .line 30
    :cond_4
    new-instance v0, Lcom/smartisanos/smengine/l;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/smengine/l;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 31
    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/Sc;->g(Lcom/smartisanos/smengine/l;)I

    const/4 v0, 0x0

    .line 32
    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/Sc;->C(Lcom/smartisanos/launcher/view/a/g;)V

    goto :goto_1

    .line 33
    :cond_5
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ha;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    if-eqz v2, :cond_8

    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_8

    .line 34
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v2

    if-eqz v2, :cond_8

    new-array v4, v3, [F

    new-array v3, v3, [F

    .line 36
    invoke-static {p1, p2, v4, v3}, Lcom/smartisanos/launcher/a/t;->a(FF[F[F)Z

    move-result v3

    .line 37
    invoke-virtual {v2, p1, p2}, Lcom/smartisanos/smengine/SceneNode;->isTransformedTouchPointInView(FF)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 38
    sget-object v1, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Saa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v2, v1, v0}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/TrashView$STATUS;Z)V

    goto :goto_1

    .line 39
    :cond_6
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Saa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v2, v0, v1}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/TrashView$STATUS;Z)V

    :cond_7
    :goto_1
    move v1, v3

    .line 40
    :cond_8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->GH:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/d;->S(Z)V

    .line 41
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->FH:Lcom/smartisanos/launcher/view/l;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/d;->S(Z)V

    .line 42
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 43
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->GH:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/v;->i(FF)V

    goto :goto_2

    .line 44
    :cond_9
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->FH:Lcom/smartisanos/launcher/view/l;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/l;->i(FF)V

    :goto_2
    return-void
.end method

.method private i(Lcom/smartisanos/smengine/va;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/Ba;->i(Lcom/smartisanos/smengine/va;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result p1

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ha;->Dd:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-float/2addr v2, p1

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->mStartX:[F

    aget p1, p1, v3

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 6
    iget v0, p0, Lcom/smartisanos/launcher/view/Ha;->dM:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Iy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    cmpl-float p1, v2, p1

    if-lez p1, :cond_0

    if-ne v0, v3, :cond_0

    const/4 p1, 0x0

    .line 8
    new-instance v0, Lcom/smartisanos/launcher/view/Ea;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/Ea;-><init>(Lcom/smartisanos/launcher/view/Ha;)V

    invoke-direct {p0, v1, p1, v0}, Lcom/smartisanos/launcher/view/Ha;->a(ZFLcom/smartisanos/smengine/a;)F

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    :cond_0
    return-void
.end method

.method private is()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->My()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->lM:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/ra;->gs()V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->lM:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ra;->is()V

    return-void
.end method

.method private k(Lcom/smartisanos/smengine/va;)F
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getPointerCount()I

    move-result v0

    const/high16 v1, 0x800000

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 2
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v4

    const/4 v5, 0x1

    shl-int/2addr v5, v4

    .line 3
    iget v6, p0, Lcom/smartisanos/launcher/view/Ha;->_L:I

    and-int/2addr v5, v6

    if-nez v5, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/va;->getX(I)F

    move-result v5

    .line 5
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Ha;->Bd:[F

    aget v4, v6, v4

    sub-float v4, v5, v4

    cmpg-float v5, v1, v4

    if-gez v5, :cond_1

    move v1, v4

    :cond_1
    cmpl-float v5, v2, v4

    if-lez v5, :cond_2

    move v2, v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    cmpl-float p1, v1, p0

    if-lez p1, :cond_4

    cmpl-float p1, v2, p0

    if-lez p1, :cond_4

    return v1

    :cond_4
    cmpg-float p1, v1, p0

    if-gez p1, :cond_5

    cmpg-float p0, v2, p0

    if-gez p0, :cond_5

    return v2

    :cond_5
    add-float/2addr v1, v2

    return v1
.end method

.method private k(FFFF)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ly()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->nM:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/ec;->a(FFFF)V

    return-void
.end method

.method private l(Lcom/smartisanos/smengine/va;)F
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getPointerCount()I

    move-result v0

    const/high16 v1, 0x800000

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 2
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v4

    const/4 v5, 0x1

    shl-int/2addr v5, v4

    .line 3
    iget v6, p0, Lcom/smartisanos/launcher/view/Ha;->_L:I

    and-int/2addr v5, v6

    if-nez v5, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/va;->getY(I)F

    move-result v5

    .line 5
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Ha;->Cd:[F

    aget v4, v6, v4

    sub-float v4, v5, v4

    cmpg-float v5, v1, v4

    if-gez v5, :cond_1

    move v1, v4

    :cond_1
    cmpl-float v5, v2, v4

    if-lez v5, :cond_2

    move v2, v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    cmpl-float p1, v1, p0

    if-lez p1, :cond_4

    cmpl-float p1, v2, p0

    if-lez p1, :cond_4

    return v1

    :cond_4
    cmpg-float p1, v1, p0

    if-gez p1, :cond_5

    cmpg-float p0, v2, p0

    if-gez p0, :cond_5

    return v2

    :cond_5
    add-float/2addr v1, v2

    return v1
.end method

.method private m(Lcom/smartisanos/smengine/va;)Z
    .locals 9

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-ge v2, v0, :cond_1

    .line 5
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v5

    .line 6
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/va;->getX(I)F

    move-result v6

    .line 7
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/va;->getY(I)F

    move-result v7

    .line 8
    iget-object v8, p0, Lcom/smartisanos/launcher/view/Ha;->mStartX:[F

    aget v8, v8, v5

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 9
    iget-object v8, p0, Lcom/smartisanos/launcher/view/Ha;->Dd:[F

    aget v5, v8, v5

    sub-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 10
    iget v7, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchSlop:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    cmpl-float v7, v6, v7

    if-lez v7, :cond_0

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v7

    cmpl-float v5, v6, v5

    if-lez v5, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 11
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v2

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    .line 12
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/Ha;->YL:Z

    if-nez v2, :cond_9

    if-eqz v0, :cond_9

    .line 13
    iput v5, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    .line 14
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->r(Lcom/smartisanos/smengine/va;)F

    return v4

    .line 15
    :cond_2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->ee()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 16
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v0

    .line 17
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/va;->getX(I)F

    move-result v2

    .line 18
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/va;->getY(I)F

    move-result v6

    .line 19
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Ha;->mStartX:[F

    aget v7, v7, v0

    sub-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 20
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Ha;->Dd:[F

    aget v0, v7, v0

    sub-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 21
    iget v6, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchSlop:I

    int-to-float v7, v6

    mul-float/2addr v7, v3

    cmpl-float v7, v0, v7

    if-gtz v7, :cond_4

    int-to-float v6, v6

    mul-float/2addr v6, v3

    cmpl-float v3, v2, v6

    if-lez v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v4

    .line 22
    :goto_3
    iget-boolean v6, p0, Lcom/smartisanos/launcher/view/Ha;->YL:Z

    if-nez v6, :cond_9

    if-eqz v3, :cond_9

    cmpl-float v0, v2, v0

    if-lez v0, :cond_5

    .line 23
    iput-boolean v4, p0, Lcom/smartisanos/launcher/view/Ha;->dp:Z

    goto :goto_4

    .line 24
    :cond_5
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/Ha;->dp:Z

    .line 25
    :goto_4
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->dp:Z

    if-eqz v0, :cond_6

    .line 26
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ha;->rp()Lcom/smartisanos/launcher/animations/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/a/i;->re()V

    goto :goto_5

    .line 27
    :cond_6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ha;->rp()Lcom/smartisanos/launcher/animations/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/a/i;->qe()V

    .line 28
    :goto_5
    iput v5, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    .line 29
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->r(Lcom/smartisanos/smengine/va;)F

    return v4

    .line 30
    :cond_7
    sget-boolean v2, Lcom/smartisanos/launcher/va;->_h:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMove = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " !mClickDownOnDock = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/smartisanos/launcher/view/Ha;->YL:Z

    xor-int/2addr v6, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 31
    :cond_8
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/Ha;->YL:Z

    if-nez v2, :cond_9

    if-eqz v0, :cond_9

    .line 32
    iput v5, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    .line 33
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->r(Lcom/smartisanos/smengine/va;)F

    return v4

    :cond_9
    return v1
.end method

.method private n(Lcom/smartisanos/smengine/va;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ly()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/Ha;->m(IZ)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->nM:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/ec;->g(Lcom/smartisanos/smengine/va;)V

    return-void
.end method

.method private o(Lcom/smartisanos/smengine/va;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->jM:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "############################begin drag icon at onDragIconEvent():ACTION_POINTER_DOWN"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/smartisanos/launcher/view/Ha;->hM:I

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Yg()V

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->jM:Z

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ky()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    .line 10
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "############################begin scroll page at onDragIconEvent():ACTION_POINTER_DOWN"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/X;->za(I)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 15
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->r(Lcom/smartisanos/smengine/va;)F

    :cond_4
    return-void
.end method

.method private p(Lcom/smartisanos/smengine/va;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->pM:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "###########################begin drag muti icon onDragMutiIconEvent():ACTION_POINTER_DOWN"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/smartisanos/launcher/view/Ha;->hM:I

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Jy()V

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->pM:Z

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    .line 9
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "###########################begin scroll page onDragMutiIconEvent():ACTION_POINTER_DOWN"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    :cond_2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->r(Lcom/smartisanos/smengine/va;)F

    :cond_3
    return-void
.end method

.method private q(Lcom/smartisanos/smengine/va;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->mM:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "###########################begin drag page onDragPageEvent():ACTION_POINTER_DOWN"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/smartisanos/launcher/view/Ha;->hM:I

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->is()V

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->mM:Z

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    .line 9
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "############################begin scroll page at onDragPageEvent():ACTION_POINTER_DOWN"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    :cond_2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->r(Lcom/smartisanos/smengine/va;)F

    :cond_3
    return-void
.end method

.method private r(Lcom/smartisanos/smengine/va;)F
    .locals 1

    .line 2
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "startScroll"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/launcher/view/Ha;->m(IZ)V

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->cM:Z

    .line 5
    iget p1, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ha;->rp()Lcom/smartisanos/launcher/animations/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/animations/a/i;->se()F

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/view/Ha;->dM:F

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->se()F

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/view/Ha;->dM:F

    .line 8
    :goto_0
    iget p0, p0, Lcom/smartisanos/launcher/view/Ha;->dM:F

    return p0
.end method

.method private updateScroll(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ha;->rp()Lcom/smartisanos/launcher/animations/a/i;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/animations/a/i;->updateScroll(F)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->updateScroll(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public Mb(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/Ha;->mStatus:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(FFFF)V
    .locals 9

    .line 15
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ky()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v0

    .line 17
    iget-object v1, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    .line 18
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 19
    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v2

    .line 20
    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v1

    .line 21
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    .line 22
    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/launcher/view/Ha;->r(FF)F

    move-result v0

    .line 23
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/animations/z;->b(Lcom/smartisanos/launcher/view/a/g;F)V

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 26
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v0

    .line 27
    iget-object v1, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    .line 28
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 29
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/bb;->yp()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object v5

    .line 30
    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    .line 32
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/db;->dh()V

    .line 33
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 34
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/animations/r;->vd()V

    .line 35
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p1

    iget-object p2, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/animations/r;->e(Lcom/smartisanos/launcher/view/a/g;)V

    .line 36
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v4}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 37
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object p1

    const p2, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v2, p2}, Lcom/smartisanos/launcher/view/a/X;->d(Lcom/smartisanos/smengine/g;F)V

    .line 38
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 39
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/bb;->Ap()Lcom/smartisanos/smengine/a/j;

    move-result-object p2

    .line 40
    iget-object p3, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    iget p4, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, p2, Lcom/smartisanos/smengine/a/j;->x:F

    div-float/2addr p4, v0

    iget v0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p2, p2, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr v0, p2

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p3, p4, v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 41
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 42
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/bb;->Fp()V

    return-void

    .line 43
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    .line 44
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/bb;->yp()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    goto/16 :goto_2

    .line 45
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/high16 v5, 0x1000000

    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_8

    .line 46
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v1

    iget-object v6, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/SceneNode;->isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    cmpl-float v0, v0, v6

    if-lez v0, :cond_8

    .line 47
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    .line 48
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/animations/r;->xl:Z

    if-nez v0, :cond_e

    .line 49
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 50
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1, v5}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 51
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 52
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->vd()V

    .line 53
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object v0

    .line 54
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->cl()V

    .line 55
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/db;->hh()Lcom/smartisanos/launcher/view/a/ka;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/view/a/g;->u(Lcom/smartisanos/launcher/view/a/g;)V

    .line 56
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    iget-wide v7, v7, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v0, v7, v8}, Lcom/smartisanos/launcher/view/db;->p(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 57
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 58
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v7, v2}, Lcom/smartisanos/launcher/view/a/g;->u(Lcom/smartisanos/launcher/view/a/g;)V

    .line 59
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->il()V

    goto :goto_0

    .line 60
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v7}, Lcom/smartisanos/launcher/view/a/g;->u(Lcom/smartisanos/launcher/view/a/g;)V

    .line 61
    :cond_5
    :goto_0
    invoke-direct {p0, v5, v6}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    .line 62
    invoke-virtual {v0, v4, v5}, Lcom/smartisanos/launcher/view/db;->b(ZZ)V

    .line 63
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/b/fa;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 64
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/animations/r;->f(Lcom/smartisanos/launcher/view/a/g;)V

    goto :goto_1

    .line 66
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 67
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/animations/r;->f(Lcom/smartisanos/launcher/view/a/g;)V

    .line 68
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->bl()V

    .line 69
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    goto/16 :goto_2

    .line 70
    :cond_8
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 71
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 72
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/ga;->Ki()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 73
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->Xu:Lcom/smartisanos/launcher/view/V;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    move-result v0

    if-nez v0, :cond_e

    .line 74
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/aa;->s(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 75
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 76
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/X;->da(Z)V

    goto/16 :goto_2

    .line 77
    :cond_9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 78
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/a/X;->da(Z)V

    goto/16 :goto_2

    .line 79
    :cond_a
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->Xu:Lcom/smartisanos/launcher/view/V;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 80
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->Xu:Lcom/smartisanos/launcher/view/V;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_2

    .line 81
    :cond_b
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 82
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/ga;->Ki()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 83
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    .line 84
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->Xu:Lcom/smartisanos/launcher/view/V;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    move-result v0

    if-nez v0, :cond_e

    .line 85
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/aa;->s(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 86
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 87
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/X;->da(Z)V

    goto :goto_2

    .line 88
    :cond_c
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 89
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/a/X;->da(Z)V

    goto :goto_2

    .line 90
    :cond_d
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->Xu:Lcom/smartisanos/launcher/view/V;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 91
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->Xu:Lcom/smartisanos/launcher/view/V;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    .line 92
    :cond_e
    :goto_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 93
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->GH:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/v;->a(FFFF)V

    .line 94
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, p3}, Lcom/smartisanos/launcher/view/a/g;->u(F)I

    move-result p1

    .line 95
    sget-boolean p2, Lcom/smartisanos/launcher/data/Constants;->isSidebarEnable:Z

    if-nez p2, :cond_f

    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p2

    if-eqz p2, :cond_10

    :cond_f
    move p1, v4

    .line 96
    :cond_10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->Sb(I)V

    goto :goto_3

    .line 97
    :cond_11
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->FH:Lcom/smartisanos/launcher/view/l;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/l;->a(FFFF)V

    :goto_3
    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/b/t;)V
    .locals 0

    const/4 p1, 0x7

    .line 108
    invoke-static {p1}, Lcom/smartisanos/launcher/animations/a/n;->da(I)Lcom/smartisanos/launcher/animations/a/i;

    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->b(Lcom/smartisanos/launcher/animations/a/i;)V

    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/b/M;FF)Z
    .locals 3

    .line 98
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "############################long press and startDragPage page index ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->lM:Lcom/smartisanos/launcher/view/b/ra;

    .line 101
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->kM:Lcom/smartisanos/launcher/view/b/M;

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->mM:Z

    .line 103
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->lM:Lcom/smartisanos/launcher/view/b/ra;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->kM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v1, p2, p3}, Lcom/smartisanos/launcher/view/b/ra;->a(Lcom/smartisanos/launcher/view/b/M;FF)Z

    const/4 p2, 0x4

    .line 104
    iput p2, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    .line 105
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Oy()V

    .line 106
    invoke-virtual {p0, p2, p1}, Lcom/smartisanos/launcher/view/Ha;->m(IZ)V

    .line 107
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->Bc()V

    return p1
.end method

.method public b(Lcom/smartisanos/launcher/animations/a/i;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->UL:Lcom/smartisanos/launcher/animations/a/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/a/i;->ge()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->UL:Lcom/smartisanos/launcher/animations/a/i;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/a/i;->onRelease()V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->UL:Lcom/smartisanos/launcher/animations/a/i;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/animations/a/i;->a(Lcom/smartisanos/launcher/animations/a/i;)V

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->UL:Lcom/smartisanos/launcher/animations/a/i;

    .line 7
    invoke-virtual {p1}, Lcom/smartisanos/launcher/animations/a/i;->ee()Z

    move-result p1

    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->cp:Z

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->dp:Z

    return-void
.end method

.method public b(Lcom/smartisanos/launcher/view/b/t;)V
    .locals 0

    .line 98
    sget p1, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    invoke-static {p1}, Lcom/smartisanos/launcher/animations/a/n;->da(I)Lcom/smartisanos/launcher/animations/a/i;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->b(Lcom/smartisanos/launcher/animations/a/i;)V

    return-void
.end method

.method public b(Lcom/smartisanos/smengine/va;)Z
    .locals 9

    .line 29
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v1, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v4, :cond_d

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 32
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ky()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 33
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    .line 35
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "############################end scroll page at onDragIconEvent():ACTION_UP A"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 36
    :cond_2
    invoke-direct {p0, v3, v5}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    .line 37
    :cond_3
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_4

    .line 38
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "############################end drag icon at onDragIconEvent():ACTION_UP"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 39
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/launcher/view/Ha;->i(FF)V

    .line 40
    :cond_5
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 41
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_6

    .line 42
    sget-object p1, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "############################end scroll page at onDragIconEvent():ACTION_UP B"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 43
    :cond_6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ba;->getXVelocity()F

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    goto/16 :goto_2

    .line 44
    :cond_7
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    .line 45
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ky()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 46
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 47
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_8

    .line 48
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "############################end scroll page at onDragIconEvent():ACTION_CANCEL A"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 49
    :cond_8
    invoke-direct {p0, v3, v5}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    .line 50
    :cond_9
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_a

    .line 51
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "############################end drag icon at onDragIconEvent():ACTION_CANCEL"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 52
    :cond_a
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/launcher/view/Ha;->i(FF)V

    .line 53
    :cond_b
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 54
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_c

    .line 55
    sget-object p1, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "############################end scroll page at onDragIconEvent():ACTION_CANCEL B"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 56
    :cond_c
    invoke-direct {p0, v3, v5}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    goto/16 :goto_2

    .line 57
    :cond_d
    :goto_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->jM:Z

    if-eqz v0, :cond_f

    .line 58
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_e

    .line 59
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v6, "############################begin drag icon at onDragIconEvent():ACTION_MOVE"

    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 60
    :cond_e
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/Ha;->hM:I

    .line 61
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Yg()V

    .line 62
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/Ha;->jM:Z

    .line 63
    :cond_f
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ky()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 64
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v0

    .line 65
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/Ha;->Bd:[F

    aget v7, v7, v0

    sub-float/2addr v6, v7

    .line 66
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/smartisanos/launcher/view/Ha;->Cd:[F

    aget v0, v8, v0

    sub-float/2addr v7, v0

    .line 67
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result v8

    invoke-virtual {p0, v6, v7, v0, v8}, Lcom/smartisanos/launcher/view/Ha;->a(FFFF)V

    .line 68
    :cond_10
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 69
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ky()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/view/Ha;->a(Lcom/smartisanos/smengine/va;Z)F

    move-result v0

    .line 70
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/Ha;->updateScroll(F)V

    .line 71
    :cond_11
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1b

    .line 72
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getActionIndex()I

    move-result v0

    .line 73
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v1

    iget v6, p0, Lcom/smartisanos/launcher/view/Ha;->hM:I

    if-ne v1, v6, :cond_15

    .line 74
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ky()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 75
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 76
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_12

    .line 77
    sget-object v1, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v6, "############################end scroll page at onDragIconEvent():ACTION_POINTER_UP A"

    invoke-virtual {v1, v6}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 78
    :cond_12
    invoke-direct {p0, v3, v5}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    .line 79
    :cond_13
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_14

    .line 80
    sget-object v1, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v5, "############################end drag icon at onDragIconEvent():ACTION_POINTER_UP"

    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 81
    :cond_14
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getY(I)F

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/smartisanos/launcher/view/Ha;->i(FF)V

    .line 82
    :cond_15
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 83
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ky()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 84
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getPointerCount()I

    move-result v0

    if-eq v0, v4, :cond_16

    iget v0, p0, Lcom/smartisanos/launcher/view/Ha;->aM:I

    if-ne v0, v3, :cond_1b

    .line 85
    :cond_16
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_17

    .line 86
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "############################end scroll page at onDragIconEvent():ACTION_POINTER_UP B"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 87
    :cond_17
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result p1

    .line 88
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/Ba;->getXVelocity(I)F

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    goto :goto_2

    .line 89
    :cond_18
    :goto_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->jM:Z

    if-eqz v0, :cond_1a

    .line 90
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "############################begin drag icon at onDragIconEvent():ACTION_DOWN"

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 91
    :cond_19
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/Ha;->hM:I

    .line 92
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Yg()V

    .line 93
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/Ha;->jM:Z

    .line 94
    :cond_1a
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1b

    .line 95
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v0

    shl-int v0, v3, v0

    .line 96
    iget v1, p0, Lcom/smartisanos/launcher/view/Ha;->_L:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 97
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->o(Lcom/smartisanos/smengine/va;)V

    :cond_1b
    :goto_2
    return v3
.end method

.method public c(Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    return-void
.end method

.method public c(Lcom/smartisanos/launcher/view/a/g;FF)Z
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "############long press and startDragIcon ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; cell = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Oooops, startDragIcon lose packageName! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_2

    .line 8
    invoke-static {p1, p2, p3}, Lcom/smartisanos/launcher/a/t;->a(Lcom/smartisanos/launcher/view/a/g;FF)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/smartisanos/launcher/a/w;->b(Lcom/smartisanos/launcher/view/a/g;FF)Z

    .line 10
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/smartisanos/launcher/Da;->N(I)V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/smengine/i;

    .line 12
    invoke-virtual {p2}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/i;->getY()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/Ha;->RL:F

    .line 13
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p2}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/i;->getY()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/Ha;->RL:F

    .line 15
    :cond_3
    invoke-virtual {p2}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/a/i;->getX()F

    move-result p2

    iput p2, p0, Lcom/smartisanos/launcher/view/Ha;->SL:F

    .line 16
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    .line 17
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p2

    instance-of p2, p2, Lcom/smartisanos/launcher/view/V;

    if-eqz p2, :cond_4

    .line 18
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Lcom/smartisanos/launcher/view/a/g;->t(F)V

    goto :goto_1

    .line 19
    :cond_4
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/smartisanos/launcher/view/a/g;->t(F)V

    :goto_1
    const/4 p2, 0x0

    .line 20
    iput-object p2, p0, Lcom/smartisanos/launcher/view/Ha;->GH:Lcom/smartisanos/launcher/view/v;

    .line 21
    iput-object p2, p0, Lcom/smartisanos/launcher/view/Ha;->FH:Lcom/smartisanos/launcher/view/l;

    .line 22
    invoke-static {p1}, Lcom/smartisanos/launcher/view/a/aa;->s(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 23
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p2, v1}, Lcom/smartisanos/launcher/view/b/fa;->z(Lcom/smartisanos/launcher/view/a/g;)V

    goto :goto_2

    .line 24
    :cond_5
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Ha;->Xu:Lcom/smartisanos/launcher/view/V;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p2, v1}, Lcom/smartisanos/launcher/view/V;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->requestDisallowInterceptTouchEvent(Z)V

    .line 26
    :goto_2
    invoke-virtual {p1, p3}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/launcher/view/v;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Ha;->GH:Lcom/smartisanos/launcher/view/v;

    .line 27
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/l;

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->FH:Lcom/smartisanos/launcher/view/l;

    .line 28
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 29
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/b/M;->zn()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/a/g;->pb(I)V

    .line 30
    :cond_6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 31
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->GH:Lcom/smartisanos/launcher/view/v;

    iget-object p2, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/v;->i(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result p1

    goto :goto_3

    .line 32
    :cond_7
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->FH:Lcom/smartisanos/launcher/view/l;

    iget-object p2, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/l;->i(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result p1

    :goto_3
    if-eqz p1, :cond_8

    .line 33
    iput-boolean p3, p0, Lcom/smartisanos/launcher/view/Ha;->jM:Z

    .line 34
    iput p3, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    .line 35
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Oy()V

    .line 36
    invoke-virtual {p0, p3, p3}, Lcom/smartisanos/launcher/view/Ha;->m(IZ)V

    :cond_8
    return p1
.end method

.method public c(Lcom/smartisanos/smengine/va;)Z
    .locals 8

    .line 37
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v1, 0x6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_9

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 40
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    .line 41
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "###########################end drag muti icon onDragMutiIconEvent():ACTION_UP"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 42
    :cond_2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    .line 44
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "###########################end scroll page onDragMutiIconEvent():ACTION_UP"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ba;->getXVelocity()F

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    .line 46
    :cond_4
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->n(Lcom/smartisanos/smengine/va;)V

    goto/16 :goto_2

    .line 47
    :cond_5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    .line 48
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_6

    .line 49
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "###########################end drag muti icon onDragMutiIconEvent():ACTION_CANCEL"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 50
    :cond_6
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 51
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_7

    .line 52
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "###########################end scroll page onDragMutiIconEvent():ACTION_CANCEL"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 53
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ba;->getXVelocity()F

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    .line 54
    :cond_8
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->n(Lcom/smartisanos/smengine/va;)V

    goto/16 :goto_2

    .line 55
    :cond_9
    :goto_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->pM:Z

    if-eqz v0, :cond_b

    .line 56
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_a

    .line 57
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v5, "###########################begin drag muti icon onDragMutiIconEvent():ACTION_MOVE"

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 58
    :cond_a
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/Ha;->hM:I

    .line 59
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Jy()V

    .line 60
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/Ha;->pM:Z

    .line 61
    :cond_b
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ly()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 62
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v0

    .line 63
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/Ha;->Bd:[F

    aget v6, v6, v0

    sub-float/2addr v5, v6

    .line 64
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/Ha;->Cd:[F

    aget v0, v7, v0

    sub-float/2addr v6, v0

    .line 65
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result v7

    invoke-direct {p0, v5, v6, v0, v7}, Lcom/smartisanos/launcher/view/Ha;->k(FFFF)V

    .line 66
    :cond_c
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 67
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ly()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/view/Ha;->a(Lcom/smartisanos/smengine/va;Z)F

    move-result v0

    .line 68
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/Ha;->updateScroll(F)V

    .line 69
    :cond_d
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_17

    .line 70
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v0

    iget v1, p0, Lcom/smartisanos/launcher/view/Ha;->hM:I

    const-string v5, "###########################end scroll page onDragMutiIconEvent():ACTION_POINTER_UP"

    if-ne v0, v1, :cond_11

    .line 71
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_e

    .line 72
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "###########################end drag muti icon onDragMutiIconEvent():ACTION_POINTER_UP"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 73
    :cond_e
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 74
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_f

    .line 75
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_f
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, v2, v0}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    .line 77
    :cond_10
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->n(Lcom/smartisanos/smengine/va;)V

    .line 78
    :cond_11
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 79
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ly()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 80
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getPointerCount()I

    move-result v0

    if-eq v0, v4, :cond_12

    iget v0, p0, Lcom/smartisanos/launcher/view/Ha;->aM:I

    if-ne v0, v2, :cond_17

    .line 81
    :cond_12
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_13

    .line 82
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 83
    :cond_13
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result p1

    .line 84
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/Ba;->getXVelocity(I)F

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    goto :goto_2

    .line 85
    :cond_14
    :goto_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->pM:Z

    if-eqz v0, :cond_16

    .line 86
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/Ha;->hM:I

    .line 87
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_15

    .line 88
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "###########################begin drag muti icon onDragMutiIconEvent():ACTION_DOWN"

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 89
    :cond_15
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Jy()V

    .line 90
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/Ha;->pM:Z

    .line 91
    :cond_16
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_17

    .line 92
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->p(Lcom/smartisanos/smengine/va;)V

    :cond_17
    :goto_2
    return v2
.end method

.method public clear(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->UL:Lcom/smartisanos/launcher/animations/a/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/a/i;->ge()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->UL:Lcom/smartisanos/launcher/animations/a/i;

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    return-void
.end method

.method public d(Lcom/smartisanos/launcher/view/a/g;FF)Z
    .locals 2

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->pM:Z

    .line 56
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->oM:Lcom/smartisanos/launcher/view/a/g;

    .line 57
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->nM:Lcom/smartisanos/launcher/view/ec;

    .line 58
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->nM:Lcom/smartisanos/launcher/view/ec;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ha;->oM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v1, p2, p3}, Lcom/smartisanos/launcher/view/ec;->c(Lcom/smartisanos/launcher/view/a/g;FF)Z

    const/16 p1, 0x8

    .line 59
    iput p1, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    .line 60
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Oy()V

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/Ha;->m(IZ)V

    return v0
.end method

.method public d(Lcom/smartisanos/smengine/va;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v1, 0x6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 4
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_2

    .line 5
    sget-object p1, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "###########################end drag page onDragPageEvent():ACTION_UP"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->es()V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 8
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_3

    .line 9
    sget-object p1, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "###########################end scroll page onDragPageEvent():ACTION_UP"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ba;->getXVelocity()F

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    goto/16 :goto_2

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_13

    .line 12
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_5

    .line 13
    sget-object p1, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "###########################end drag page onDragPageEvent():ACTION_CANCEL"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 14
    :cond_5
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->es()V

    .line 15
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 16
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_6

    .line 17
    sget-object p1, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "###########################end scroll page onDragPageEvent():ACTION_CANCEL"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 18
    :cond_6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ba;->getXVelocity()F

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    goto/16 :goto_2

    .line 19
    :cond_7
    :goto_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->mM:Z

    if-eqz v0, :cond_9

    .line 20
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_8

    .line 21
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v5, "###########################begin drag page onDragPageEvent():ACTION_MOVE"

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 22
    :cond_8
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/Ha;->hM:I

    .line 23
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->is()V

    .line 24
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/Ha;->mM:Z

    .line 25
    :cond_9
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->My()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v0

    .line 27
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/Ha;->Bd:[F

    aget v6, v6, v0

    sub-float/2addr v5, v6

    .line 28
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/Ha;->Cd:[F

    aget v0, v7, v0

    sub-float/2addr v6, v0

    .line 29
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result v7

    invoke-direct {p0, v5, v6, v0, v7}, Lcom/smartisanos/launcher/view/Ha;->g(FFFF)V

    .line 30
    :cond_a
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 31
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->My()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/view/Ha;->a(Lcom/smartisanos/smengine/va;Z)F

    move-result v0

    .line 32
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/Ha;->updateScroll(F)V

    .line 33
    :cond_b
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_13

    .line 34
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v0

    iget v1, p0, Lcom/smartisanos/launcher/view/Ha;->hM:I

    if-ne v0, v1, :cond_d

    .line 35
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_c

    .line 36
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "###########################end drag page onDragPageEvent():ACTION_POINTER_UP"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 37
    :cond_c
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->es()V

    .line 38
    :cond_d
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 39
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->My()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 40
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getPointerCount()I

    move-result v0

    if-eq v0, v4, :cond_e

    iget v0, p0, Lcom/smartisanos/launcher/view/Ha;->aM:I

    if-ne v0, v2, :cond_13

    .line 41
    :cond_e
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result p1

    .line 42
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_f

    .line 43
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "###########################end scroll page onDragPageEvent():ACTION_POINTER_UP"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 44
    :cond_f
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/Ba;->getXVelocity(I)F

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    goto :goto_2

    .line 45
    :cond_10
    :goto_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->mM:Z

    if-eqz v0, :cond_12

    .line 46
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_11

    .line 47
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "###########################begin drag page onDragPageEvent():ACTION_DOWN"

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 48
    :cond_11
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/Ha;->hM:I

    .line 49
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->is()V

    .line 50
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/Ha;->mM:Z

    .line 51
    :cond_12
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_13

    .line 52
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v0

    shl-int v0, v2, v0

    .line 53
    iget v1, p0, Lcom/smartisanos/launcher/view/Ha;->_L:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 54
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->q(Lcom/smartisanos/smengine/va;)V

    :cond_13
    :goto_2
    return v2
.end method

.method public dispatchTouchEvent(Lcom/smartisanos/smengine/va;)Z
    .locals 13

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->_h:Z

    const-string v1, "dispatchTouchEvent"

    if-nez v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/Ba;->h(Lcom/smartisanos/smengine/va;)V

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const-string v2, "mEffectivePointerIdBits add "

    const-string v3, " mStartY[pointerId] = "

    const-string v4, " mStartX[pointerId] = "

    const-string v5, " pointerId = "

    const/16 v6, 0x100

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_4

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/animations/b/k;->getInstance()Lcom/smartisanos/launcher/animations/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/b/k;->ye()V

    .line 6
    invoke-direct {p0, p1, v8}, Lcom/smartisanos/launcher/view/Ha;->b(Lcom/smartisanos/smengine/va;Z)V

    .line 7
    iput-boolean v7, p0, Lcom/smartisanos/launcher/view/Ha;->YL:Z

    .line 8
    iput v7, p0, Lcom/smartisanos/launcher/view/Ha;->_L:I

    .line 9
    iput v7, p0, Lcom/smartisanos/launcher/view/Ha;->aM:I

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    .line 11
    iput v7, p0, Lcom/smartisanos/launcher/view/Ha;->mStatus:I

    .line 12
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Oy()V

    .line 13
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getActionIndex()I

    move-result v0

    .line 14
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v9

    .line 15
    iget-object v10, p0, Lcom/smartisanos/launcher/view/Ha;->mStartX:[F

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getX(I)F

    move-result v11

    aput v11, v10, v9

    .line 16
    iget-object v10, p0, Lcom/smartisanos/launcher/view/Ha;->Dd:[F

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getY(I)F

    move-result v11

    aput v11, v10, v9

    .line 17
    sget-boolean v10, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v10, :cond_1

    .line 18
    sget-object v10, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "down actionIndex = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ha;->mStartX:[F

    aget v4, v4, v9

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ha;->Dd:[F

    aget v3, v3, v9

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ha;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/SceneNode;->isTransformedTouchPointInView(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 20
    iput-boolean v8, p0, Lcom/smartisanos/launcher/view/Ha;->YL:Z

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v3

    shl-int v3, v8, v3

    .line 22
    iget v4, p0, Lcom/smartisanos/launcher/view/Ha;->_L:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/smartisanos/launcher/view/Ha;->_L:I

    .line 23
    iget v3, p0, Lcom/smartisanos/launcher/view/Ha;->aM:I

    add-int/2addr v3, v8

    iput v3, p0, Lcom/smartisanos/launcher/view/Ha;->aM:I

    .line 24
    sget-boolean v3, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v3, :cond_3

    .line 25
    sget-object v3, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v0, :cond_8

    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClickDownOnDock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/Ha;->YL:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 27
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v9, 0x5

    if-ne v0, v9, :cond_7

    .line 28
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getActionIndex()I

    move-result v0

    .line 29
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v9

    .line 30
    iget-object v10, p0, Lcom/smartisanos/launcher/view/Ha;->mStartX:[F

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getX(I)F

    move-result v11

    aput v11, v10, v9

    .line 31
    iget-object v10, p0, Lcom/smartisanos/launcher/view/Ha;->Dd:[F

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getY(I)F

    move-result v11

    aput v11, v10, v9

    .line 32
    sget-boolean v10, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v10, :cond_5

    .line 33
    sget-object v10, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pointer_down actionIndex = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ha;->mStartX:[F

    aget v4, v4, v9

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ha;->Dd:[F

    aget v3, v3, v9

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_5
    iput-boolean v7, p0, Lcom/smartisanos/launcher/view/Ha;->ZL:Z

    .line 35
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ha;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/SceneNode;->isTransformedTouchPointInView(FF)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 36
    iput-boolean v8, p0, Lcom/smartisanos/launcher/view/Ha;->ZL:Z

    goto :goto_1

    .line 37
    :cond_6
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v3

    shl-int v3, v8, v3

    .line 38
    iget v4, p0, Lcom/smartisanos/launcher/view/Ha;->_L:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/smartisanos/launcher/view/Ha;->_L:I

    .line 39
    iget v3, p0, Lcom/smartisanos/launcher/view/Ha;->aM:I

    add-int/2addr v3, v8

    iput v3, p0, Lcom/smartisanos/launcher/view/Ha;->aM:I

    .line 40
    sget-boolean v3, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v3, :cond_8

    .line 41
    sget-object v3, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 42
    :cond_7
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_8

    .line 43
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getActionIndex()I

    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v2

    shl-int v2, v8, v2

    .line 45
    iget v3, p0, Lcom/smartisanos/launcher/view/Ha;->_L:I

    and-int v4, v3, v2

    if-eqz v4, :cond_8

    not-int v2, v2

    and-int/2addr v2, v3

    .line 46
    iput v2, p0, Lcom/smartisanos/launcher/view/Ha;->_L:I

    .line 47
    iget v2, p0, Lcom/smartisanos/launcher/view/Ha;->aM:I

    sub-int/2addr v2, v8

    iput v2, p0, Lcom/smartisanos/launcher/view/Ha;->aM:I

    .line 48
    sget-boolean v2, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v2, :cond_8

    .line 49
    sget-object v2, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEffectivePointerIdBits remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_8
    :goto_1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->i(Lcom/smartisanos/smengine/va;)V

    .line 51
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->dispatchTouchEvent(Lcom/smartisanos/smengine/va;)Z

    move-result v0

    .line 52
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/Ha;->WL:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/Ha;->XL:Z

    if-nez v1, :cond_9

    goto :goto_3

    .line 53
    :cond_9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getPointerCount()I

    move-result v1

    move v2, v7

    :goto_2
    if-ge v2, v1, :cond_a

    .line 54
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result v3

    .line 55
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ha;->Bd:[F

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/va;->getX(I)F

    move-result v5

    aput v5, v4, v3

    .line 56
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ha;->Cd:[F

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/va;->getY(I)F

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 57
    :cond_a
    :goto_3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result p0

    if-eq p0, v8, :cond_b

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_c

    .line 58
    :cond_b
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    :cond_c
    return v0
.end method

.method public e(Lcom/smartisanos/smengine/va;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public f(Lcom/smartisanos/smengine/va;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "onPageScrollEvent"

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v4, 0x2

    const/4 v5, 0x6

    if-eq v0, v4, :cond_9

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 5
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "end scroll page ACTION_UP"

    invoke-virtual {p1, v2, v0}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_2
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->dp:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ba;->getYVelocity()F

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    goto/16 :goto_7

    .line 8
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ba;->getXVelocity()F

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    goto/16 :goto_7

    .line 9
    :cond_5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_14

    .line 10
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 11
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_6

    sget-object p1, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "end scroll page ACTION_CANCEL"

    invoke-virtual {p1, v2, v0}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_6
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->dp:Z

    const/4 v0, 0x0

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    .line 13
    :cond_7
    invoke-direct {p0, v1, v0}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    goto/16 :goto_7

    .line 14
    :cond_8
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    goto/16 :goto_7

    .line 15
    :cond_9
    :goto_2
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->cM:Z

    if-eqz v0, :cond_b

    .line 16
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "begin scroll page ACTION_MOVE"

    invoke-virtual {v0, v2, v4}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_a
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/Ha;->cM:Z

    .line 18
    :cond_b
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 19
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->dp:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    .line 20
    :cond_c
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->l(Lcom/smartisanos/smengine/va;)F

    move-result v0

    .line 21
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/Ha;->updateScroll(F)V

    .line 22
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_f

    sget-object v4, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "begin scroll page ACTION_MOVE changeY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 23
    :cond_d
    :goto_3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->k(Lcom/smartisanos/smengine/va;)F

    move-result v0

    .line 24
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_e

    sget-object v4, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "begin scroll page ACTION_MOVE changeX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_e
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/Ha;->updateScroll(F)V

    .line 26
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/Ha;->XL:Z

    .line 27
    :cond_f
    :goto_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_14

    iget v0, p0, Lcom/smartisanos/launcher/view/Ha;->aM:I

    if-nez v0, :cond_14

    .line 28
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/va;->getPointerId(I)I

    move-result p1

    .line 29
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->dp:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->TL:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_5

    .line 30
    :cond_10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/Ba;->getYVelocity(I)F

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    goto :goto_7

    .line 31
    :cond_11
    :goto_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/Ba;->getXVelocity(I)F

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/smartisanos/launcher/view/Ha;->e(ZF)F

    goto :goto_7

    .line 32
    :cond_12
    :goto_6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result p1

    if-nez p1, :cond_14

    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->cM:Z

    if-eqz p1, :cond_14

    .line 33
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_13

    sget-object p1, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "begin scroll page ACTION_DOWN"

    invoke-virtual {p1, v2, v0}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_13
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/Ha;->cM:Z

    :cond_14
    :goto_7
    return v1
.end method

.method public getAllViewCanBeTouched()Ljava/util/ArrayList;
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setForceDispatchTouchToView(Z)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/smartisanos/smengine/SceneNode;->getAllViewCanBeTouched()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/Ha;->mStatus:I

    return p0
.end method

.method public m(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/Ha;->mStatus:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 2
    iget p2, p0, Lcom/smartisanos/launcher/view/Ha;->mStatus:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/smartisanos/launcher/view/Ha;->mStatus:I

    goto :goto_1

    .line 3
    :cond_2
    iget p2, p0, Lcom/smartisanos/launcher/view/Ha;->mStatus:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/smartisanos/launcher/view/Ha;->mStatus:I

    :goto_1
    return-void
.end method

.method public oe()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->UL:Lcom/smartisanos/launcher/animations/a/i;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->oe()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Lcom/smartisanos/smengine/va;)Z
    .locals 10

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " DragLayer onInterceptTouchEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onInterceptTouchEvent"

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->bM:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->Bs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ha;->tp()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "############################ nothing is doing, so don\'t intercept touchEvent at point down"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_1
    return v1

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v2, 0x5

    const-string v3, "ev getUserData is NOT_TRIGGER_ZOOM_OR_SWEEP"

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/16 v7, 0x10

    const/4 v8, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    goto/16 :goto_5

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v6, :cond_b

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v9, 0x6

    if-ne v0, v9, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-eq v0, v8, :cond_5

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v9, 0x3

    if-ne v0, v9, :cond_21

    .line 8
    :cond_5
    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/view/Ha;->Mb(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/Ha;->Mb(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/Ha;->Mb(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, v6}, Lcom/smartisanos/launcher/view/Ha;->Mb(I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 9
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 10
    :cond_7
    invoke-virtual {p1, v8}, Lcom/smartisanos/smengine/va;->ic(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 11
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_21

    sget-object p0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 12
    :cond_8
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_21

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ba;->Gs()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/Ba;->j(Lcom/smartisanos/smengine/va;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 13
    :cond_9
    iput v7, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    .line 14
    invoke-virtual {p0, v7, v8}, Lcom/smartisanos/launcher/view/Ha;->m(IZ)V

    .line 15
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ba;->Fs()V

    return v8

    .line 16
    :cond_a
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/smartisanos/launcher/view/Ha;->b(Lcom/smartisanos/smengine/va;Z)V

    goto/16 :goto_8

    .line 17
    :cond_b
    :goto_1
    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/view/Ha;->Mb(I)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/Ha;->Mb(I)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/Ha;->Mb(I)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    .line 18
    :cond_c
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 19
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_d

    .line 20
    sget-object p0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "############################page is on floating, so does not intercept touchEvent"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_d
    return v1

    .line 21
    :cond_e
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 23
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/t;->Xr()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 24
    :cond_f
    invoke-virtual {p1, v8}, Lcom/smartisanos/smengine/va;->ic(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 25
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 26
    :cond_10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ba;->Gs()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/Ba;->j(Lcom/smartisanos/smengine/va;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_3

    .line 27
    :cond_11
    :goto_2
    iput-boolean v8, p0, Lcom/smartisanos/launcher/view/Ha;->WL:Z

    .line 28
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->m(Lcom/smartisanos/smengine/va;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 29
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->onTouchEvent(Lcom/smartisanos/smengine/va;)Z

    :cond_12
    return v0

    .line 30
    :cond_13
    :goto_3
    iput v7, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    .line 31
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Oy()V

    .line 32
    invoke-virtual {p0, v7, v8}, Lcom/smartisanos/launcher/view/Ha;->m(IZ)V

    .line 33
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ba;->Fs()V

    return v8

    .line 34
    :cond_14
    :goto_4
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_15

    .line 35
    sget-object p0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "############################on drag somthing, so intercept touchEvent at move"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_15
    return v8

    .line 36
    :cond_16
    :goto_5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-nez v0, :cond_17

    .line 37
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->YL:Z

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 38
    iput v6, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    .line 39
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->r(Lcom/smartisanos/smengine/va;)F

    return v8

    .line 40
    :cond_17
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1e

    .line 41
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->ZL:Z

    if-nez v0, :cond_1b

    .line 42
    iget v0, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    if-eq v0, v8, :cond_1a

    if-eq v0, v5, :cond_19

    if-eq v0, v4, :cond_18

    goto :goto_6

    .line 43
    :cond_18
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->p(Lcom/smartisanos/smengine/va;)V

    return v8

    .line 44
    :cond_19
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->q(Lcom/smartisanos/smengine/va;)V

    return v8

    .line 45
    :cond_1a
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->o(Lcom/smartisanos/smengine/va;)V

    return v8

    .line 46
    :cond_1b
    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/view/Ha;->Mb(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/Ha;->Mb(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/Ha;->Mb(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 47
    :cond_1c
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1d

    sget-object p0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "############################on drag somthing, so intercept touchEvent at point down"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_1d
    return v8

    .line 48
    :cond_1e
    :goto_6
    invoke-virtual {p1, v8}, Lcom/smartisanos/smengine/va;->ic(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 49
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    goto :goto_7

    .line 50
    :cond_1f
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ba;->Gs()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/Ba;->j(Lcom/smartisanos/smengine/va;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_9

    .line 51
    :cond_20
    :goto_7
    invoke-virtual {p1, v6}, Lcom/smartisanos/smengine/va;->ic(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 52
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/Ha;->ZL:Z

    .line 53
    iput v6, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    .line 54
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->r(Lcom/smartisanos/smengine/va;)F

    return v8

    :cond_21
    :goto_8
    return v1

    .line 55
    :cond_22
    :goto_9
    iput v7, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    .line 56
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Oy()V

    .line 57
    invoke-virtual {p0, v7, v8}, Lcom/smartisanos/launcher/view/Ha;->m(IZ)V

    .line 58
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ba;->Fs()V

    return v8
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/va;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/view/Ha;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    const-class v2, Lcom/smartisanos/launcher/view/Ha;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentEventHandler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onTouchEvent"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->e(Lcom/smartisanos/smengine/va;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->c(Lcom/smartisanos/smengine/va;)Z

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->d(Lcom/smartisanos/smengine/va;)Z

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->f(Lcom/smartisanos/smengine/va;)Z

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->b(Lcom/smartisanos/smengine/va;)Z

    :goto_0
    return v1
.end method

.method public op()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/Ha;->PL:I

    return p0
.end method

.method public pp()Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->iM:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method public qp()Lcom/smartisanos/launcher/view/ec;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->nM:Lcom/smartisanos/launcher/view/ec;

    return-object p0
.end method

.method public r(FF)F
    .locals 6

    .line 9
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/high16 v0, 0x43960000    # 300.0f

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x3cea0000    # -150.0f

    const/high16 v5, 0x43160000    # 150.0f

    if-eqz p1, :cond_2

    .line 10
    iget p0, p0, Lcom/smartisanos/launcher/view/Ha;->RL:F

    sub-float/2addr p0, p2

    const/high16 p1, 0x41c80000    # 25.0f

    sub-float/2addr p0, p1

    cmpg-float p1, p0, v5

    if-gez p1, :cond_0

    cmpl-float p1, p0, v4

    if-lez p1, :cond_0

    div-float/2addr p0, v0

    sub-float v2, v1, p0

    goto :goto_0

    :cond_0
    cmpl-float p0, p0, v5

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    .line 11
    :cond_2
    iget p0, p0, Lcom/smartisanos/launcher/view/Ha;->RL:F

    sub-float/2addr p2, p0

    const/high16 p0, 0x42aa0000    # 85.0f

    add-float/2addr p2, p0

    cmpg-float p0, p2, v5

    if-gez p0, :cond_3

    cmpl-float p0, p2, v4

    if-lez p0, :cond_3

    div-float/2addr p2, v0

    sub-float v2, v1, p2

    goto :goto_1

    :cond_3
    cmpl-float p0, p2, v5

    if-ltz p0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    return v2
.end method

.method public r(Lcom/smartisanos/launcher/view/V;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ha;->Xu:Lcom/smartisanos/launcher/view/V;

    return-void
.end method

.method public rp()Lcom/smartisanos/launcher/animations/a/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->UL:Lcom/smartisanos/launcher/animations/a/i;

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/a/n;->da(I)Lcom/smartisanos/launcher/animations/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->UL:Lcom/smartisanos/launcher/animations/a/i;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ha;->UL:Lcom/smartisanos/launcher/animations/a/i;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/a/i;->ee()Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->cp:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->dp:Z

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->UL:Lcom/smartisanos/launcher/animations/a/i;

    return-object p0
.end method

.method public sp()Lcom/smartisanos/smengine/Ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ha;->VL:Lcom/smartisanos/smengine/Ba;

    return-object p0
.end method

.method public tp()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ny()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ky()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->Ly()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ha;->My()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public wb(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->dt()Lcom/smartisanos/smengine/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/v;->hk()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->fM:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Ha;->fM:Z

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/Ha;->r(Lcom/smartisanos/smengine/va;)F

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const p1, -0x3b85c000    # -1001.0f

    goto :goto_0

    :cond_1
    const p1, 0x447a4000    # 1001.0f

    .line 5
    :goto_0
    new-instance v1, Lcom/smartisanos/launcher/view/Fa;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/Fa;-><init>(Lcom/smartisanos/launcher/view/Ha;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/smartisanos/launcher/view/Ha;->a(ZFLcom/smartisanos/smengine/a;)F

    :cond_2
    return-void
.end method

.method public xb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ha;->bM:Z

    return-void
.end method
