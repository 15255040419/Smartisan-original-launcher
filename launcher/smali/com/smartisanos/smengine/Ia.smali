.class public Lcom/smartisanos/smengine/Ia;
.super Ljava/lang/Object;
.source "WaveNodeTweenAnimation.java"


# instance fields
.field private ZT:F

.field private _T:F

.field private aU:F

.field private bU:F

.field private cU:F

.field private dU:F

.field private hS:Lcom/smartisanos/launcher/view/Uc;

.field private lS:Lcom/smartisanos/smengine/a;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/Uc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/smengine/Ia;->hS:Lcom/smartisanos/launcher/view/Uc;

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ia;->reset()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/smengine/Ia;)Lcom/smartisanos/smengine/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ia;->lS:Lcom/smartisanos/smengine/a;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/smengine/Ia;Lcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/smengine/Ia;->lS:Lcom/smartisanos/smengine/a;

    return-object p1
.end method

.method static synthetic b(Lcom/smartisanos/smengine/Ia;)Lcom/smartisanos/launcher/view/Uc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ia;->hS:Lcom/smartisanos/launcher/view/Uc;

    return-object p0
.end method


# virtual methods
.method public Ts()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Ia;->ZT:F

    return p0
.end method

.method public Us()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Ia;->_T:F

    return p0
.end method

.method public Vs()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Ia;->cU:F

    return p0
.end method

.method public Ws()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Ia;->dU:F

    return p0
.end method

.method public Xs()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Ia;->bU:F

    return p0
.end method

.method public Ys()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Ia;->aU:F

    return p0
.end method

.method public i(FZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/Ia;->ZT:F

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/Ia;->hS:Lcom/smartisanos/launcher/view/Uc;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Uc;->A(F)V

    :cond_0
    return-void
.end method

.method public j(FZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/Ia;->_T:F

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/Ia;->hS:Lcom/smartisanos/launcher/view/Uc;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Uc;->B(F)V

    :cond_0
    return-void
.end method

.method public k(FZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/Ia;->cU:F

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/Ia;->hS:Lcom/smartisanos/launcher/view/Uc;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Uc;->C(F)V

    :cond_0
    return-void
.end method

.method public l(FZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/Ia;->dU:F

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/Ia;->hS:Lcom/smartisanos/launcher/view/Uc;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Uc;->D(F)V

    :cond_0
    return-void
.end method

.method public m(FZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/Ia;->bU:F

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/Ia;->hS:Lcom/smartisanos/launcher/view/Uc;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Uc;->E(F)V

    :cond_0
    return-void
.end method

.method public n(FZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/Ia;->aU:F

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/Ia;->hS:Lcom/smartisanos/launcher/view/Uc;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Uc;->F(F)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/smartisanos/smengine/Ia;->ZT:F

    const/high16 v1, -0x40c00000    # -0.75f

    .line 2
    iput v1, p0, Lcom/smartisanos/smengine/Ia;->_T:F

    .line 3
    iput v0, p0, Lcom/smartisanos/smengine/Ia;->aU:F

    .line 4
    iput v0, p0, Lcom/smartisanos/smengine/Ia;->bU:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    iput v1, p0, Lcom/smartisanos/smengine/Ia;->cU:F

    .line 6
    iput v0, p0, Lcom/smartisanos/smengine/Ia;->dU:F

    return-void
.end method
