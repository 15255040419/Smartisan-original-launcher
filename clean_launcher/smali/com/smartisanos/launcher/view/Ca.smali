.class public Lcom/smartisanos/launcher/view/Ca;
.super Lcom/smartisanos/smengine/SceneNode;
.source "DownloadWithWaveView.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field protected AL:Z

.field private BL:Lcom/smartisanos/smengine/g;

.field private CL:Lcom/smartisanos/smengine/g;

.field private DL:Lcom/smartisanos/smengine/g;

.field private EL:Lcom/smartisanos/smengine/g;

.field private FL:Lcom/smartisanos/smengine/Ja;

.field private GL:Lcom/smartisanos/smengine/Ja;

.field private HL:F

.field private IL:I

.field public KL:F

.field public LL:F

.field public ML:F

.field private OL:Z

.field private UH:Ljava/lang/String;

.field private mProgress:I

.field public nL:I

.field private oL:I

.field public pL:Lcom/smartisanos/launcher/view/Uc;

.field public qL:Lcom/smartisanos/launcher/view/Uc;

.field private rL:Lcom/smartisanos/smengine/F;

.field private sL:Lcom/smartisanos/smengine/SceneNode;

.field private tL:Ljava/lang/String;

.field private uL:Ljava/lang/String;

.field private vL:Ljava/lang/String;

.field protected wL:Lcom/smartisanos/launcher/animations/Pa;

.field protected xL:Lcom/smartisanos/launcher/animations/a/g;

.field protected yL:Lcom/smartisanos/smengine/SceneNode;

.field protected zL:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/Ca;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/Ca;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/view/Ca;->nL:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/smartisanos/launcher/view/Ca;->mProgress:I

    .line 4
    iput p1, p0, Lcom/smartisanos/launcher/view/Ca;->oL:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 6
    iput p1, p0, Lcom/smartisanos/launcher/view/Ca;->zL:F

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ca;->AL:Z

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    .line 9
    iput p1, p0, Lcom/smartisanos/launcher/view/Ca;->IL:I

    .line 10
    iput v0, p0, Lcom/smartisanos/launcher/view/Ca;->KL:F

    .line 11
    iput v0, p0, Lcom/smartisanos/launcher/view/Ca;->LL:F

    .line 12
    iput v0, p0, Lcom/smartisanos/launcher/view/Ca;->ML:F

    .line 13
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ca;->OL:Z

    return-void
.end method

.method private A(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/launcher/view/Ca;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "pauseDownload return by isActivityReady false"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/view/wa;

    invoke-direct {v0, p0, p1, p2}, Lcom/smartisanos/launcher/view/wa;-><init>(Lcom/smartisanos/launcher/view/Ca;J)V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private B(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/launcher/view/Ca;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "resumeDownload return by isActivityReady false"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/view/xa;

    invoke-direct {v0, p0, p1, p2}, Lcom/smartisanos/launcher/view/xa;-><init>(Lcom/smartisanos/launcher/view/Ca;J)V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private By()V
    .locals 6

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/Ja;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Ja;-><init>(Lcom/smartisanos/launcher/view/Uc;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->FL:Lcom/smartisanos/smengine/Ja;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->FL:Lcom/smartisanos/smengine/Ja;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->FL:Lcom/smartisanos/smengine/Ja;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->FL:Lcom/smartisanos/smengine/Ja;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v4}, Lcom/smartisanos/smengine/Ja;->a(IFF)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->FL:Lcom/smartisanos/smengine/Ja;

    new-instance v5, Lcom/smartisanos/launcher/view/aa;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/view/aa;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/Ja;->a(Lcom/smartisanos/smengine/a;)V

    .line 6
    new-instance v0, Lcom/smartisanos/smengine/Ja;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-direct {v0, v5}, Lcom/smartisanos/smengine/Ja;-><init>(Lcom/smartisanos/launcher/view/Uc;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->GL:Lcom/smartisanos/smengine/Ja;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->GL:Lcom/smartisanos/smengine/Ja;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->GL:Lcom/smartisanos/smengine/Ja;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->GL:Lcom/smartisanos/smengine/Ja;

    invoke-virtual {v0, v3, v4, v4}, Lcom/smartisanos/smengine/Ja;->a(IFF)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->GL:Lcom/smartisanos/smengine/Ja;

    new-instance v1, Lcom/smartisanos/launcher/view/ba;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/ba;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ja;->a(Lcom/smartisanos/smengine/a;)V

    return-void
.end method

.method private Cy()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/smartisanos/launcher/view/b/M;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->isCulled()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    if-eqz v0, :cond_3

    .line 5
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/Ca;->OL:Z

    :cond_3
    return v2
.end method

.method private Dy()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->EL:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->kill()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->EL:Lcom/smartisanos/smengine/g;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->DL:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 6
    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->DL:Lcom/smartisanos/smengine/g;

    .line 7
    new-instance v0, Lcom/smartisanos/smengine/Ja;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Ja;-><init>(Lcom/smartisanos/launcher/view/Uc;)V

    const/16 v1, 0x13

    .line 8
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const v2, 0x3e99999a    # 0.3f

    .line 9
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 10
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/smartisanos/launcher/view/Tc;->a:F

    const v5, 0x3d755555

    invoke-virtual {v0, v4, v3, v5}, Lcom/smartisanos/smengine/Ja;->a(IFF)V

    .line 11
    new-instance v3, Lcom/smartisanos/launcher/view/ja;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/ja;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/Ja;->a(Lcom/smartisanos/smengine/a;)V

    .line 12
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ca;->DL:Lcom/smartisanos/smengine/g;

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 13
    new-instance v0, Lcom/smartisanos/smengine/Ja;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/Ja;-><init>(Lcom/smartisanos/launcher/view/Uc;)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 15
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 16
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    aget-object v3, v3, v4

    iget v3, v3, Lcom/smartisanos/launcher/view/Tc;->a:F

    const v7, 0x3d555555

    invoke-virtual {v0, v4, v3, v7}, Lcom/smartisanos/smengine/Ja;->a(IFF)V

    .line 17
    new-instance v3, Lcom/smartisanos/launcher/view/la;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/la;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/Ja;->a(Lcom/smartisanos/smengine/a;)V

    .line 18
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ca;->DL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v3, v6, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 19
    new-instance v0, Lcom/smartisanos/smengine/Ja;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/Ja;-><init>(Lcom/smartisanos/launcher/view/Uc;)V

    .line 20
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 21
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 22
    invoke-virtual {v0, v4, v5, v6}, Lcom/smartisanos/smengine/Ja;->a(IFF)V

    .line 23
    new-instance v5, Lcom/smartisanos/launcher/view/ma;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/view/ma;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/Ja;->a(Lcom/smartisanos/smengine/a;)V

    .line 24
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Ca;->DL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v5, v2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 25
    new-instance v0, Lcom/smartisanos/smengine/Ja;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-direct {v0, v5}, Lcom/smartisanos/smengine/Ja;-><init>(Lcom/smartisanos/launcher/view/Uc;)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 27
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 28
    invoke-virtual {v0, v4, v7, v6}, Lcom/smartisanos/smengine/Ja;->a(IFF)V

    .line 29
    new-instance v1, Lcom/smartisanos/launcher/view/na;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/na;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ja;->a(Lcom/smartisanos/smengine/a;)V

    .line 30
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->DL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->DL:Lcom/smartisanos/smengine/g;

    new-instance v1, Lcom/smartisanos/launcher/view/oa;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/oa;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 32
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->DL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    .line 33
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->Ra()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    sget v2, Lcom/smartisanos/launcher/ob;->paused_app_name_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/g;->Na(Ljava/lang/String;)V

    .line 35
    sget v1, Lcom/smartisanos/launcher/ob;->paused_app_name_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->vL:Ljava/lang/String;

    return-void
.end method

.method private Ey()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->kill()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/smartisanos/launcher/view/Tc;->d:F

    const/high16 v2, -0x41800000    # -0.25f

    sub-float v0, v2, v0

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    .line 5
    iget v0, p0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 6
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/view/Ca;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download_log_tag mProgressAnimationDuration success = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    .line 8
    new-instance v0, Lcom/smartisanos/smengine/Ja;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-direct {v0, v4}, Lcom/smartisanos/smengine/Ja;-><init>(Lcom/smartisanos/launcher/view/Uc;)V

    const/16 v4, 0x13

    .line 9
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 10
    iget v5, p0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 11
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    iget-object v5, v5, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/smartisanos/launcher/view/Tc;->d:F

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v5, v2}, Lcom/smartisanos/smengine/Ja;->a(IFF)V

    .line 12
    new-instance v5, Lcom/smartisanos/launcher/view/ga;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/view/ga;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/Ja;->a(Lcom/smartisanos/smengine/a;)V

    .line 13
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v5, v3, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 14
    new-instance v0, Lcom/smartisanos/smengine/Ja;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-direct {v0, v5}, Lcom/smartisanos/smengine/Ja;-><init>(Lcom/smartisanos/launcher/view/Uc;)V

    .line 15
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 16
    iget v4, p0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 17
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    aget-object v1, v4, v1

    iget v1, v1, Lcom/smartisanos/launcher/view/Tc;->d:F

    invoke-virtual {v0, v6, v1, v2}, Lcom/smartisanos/smengine/Ja;->a(IFF)V

    .line 18
    new-instance v1, Lcom/smartisanos/launcher/view/ha;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/ha;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ja;->a(Lcom/smartisanos/smengine/a;)V

    .line 19
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v3, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    new-instance v1, Lcom/smartisanos/launcher/view/ia;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/ia;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    .line 22
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->Ra()Landroid/content/res/Resources;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    sget v2, Lcom/smartisanos/launcher/ob;->installing_app_name_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/g;->Na(Ljava/lang/String;)V

    .line 24
    sget v1, Lcom/smartisanos/launcher/ob;->installing_app_name_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->vL:Ljava/lang/String;

    return-void
.end method

.method private Fy()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->kill()V

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Lcom/smartisanos/launcher/view/Tc;->d:F

    const/4 v3, 0x0

    sub-float v1, v3, v1

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v1, v4

    iput v1, v0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    .line 5
    iget v1, v0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    return-void

    .line 6
    :cond_1
    sget-boolean v1, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/smartisanos/launcher/view/Ca;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download_log_tag playInstallSuccess(). mProgressAnimationDuration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    :cond_2
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v1, v0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    .line 8
    new-instance v1, Lcom/smartisanos/smengine/Ja;

    iget-object v5, v0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-direct {v1, v5}, Lcom/smartisanos/smengine/Ja;-><init>(Lcom/smartisanos/launcher/view/Uc;)V

    const/4 v5, 0x3

    .line 9
    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 10
    iget v6, v0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 11
    iget-object v6, v0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    iget-object v6, v6, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/smartisanos/launcher/view/Tc;->d:F

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v6, v3}, Lcom/smartisanos/smengine/Ja;->a(IFF)V

    .line 12
    new-instance v6, Lcom/smartisanos/launcher/view/ya;

    invoke-direct {v6, v0}, Lcom/smartisanos/launcher/view/ya;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/Ja;->a(Lcom/smartisanos/smengine/a;)V

    .line 13
    iget-object v6, v0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v6, v3, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 14
    new-instance v1, Lcom/smartisanos/smengine/Ja;

    iget-object v6, v0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-direct {v1, v6}, Lcom/smartisanos/smengine/Ja;-><init>(Lcom/smartisanos/launcher/view/Uc;)V

    .line 15
    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 16
    iget v5, v0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 17
    iget-object v5, v0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    iget-object v5, v5, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/smartisanos/launcher/view/Tc;->d:F

    invoke-virtual {v1, v7, v5, v3}, Lcom/smartisanos/smengine/Ja;->a(IFF)V

    .line 18
    new-instance v5, Lcom/smartisanos/launcher/view/za;

    invoke-direct {v5, v0}, Lcom/smartisanos/launcher/view/za;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/Ja;->a(Lcom/smartisanos/smengine/a;)V

    .line 19
    iget-object v5, v0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v5, v3, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 20
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    if-eqz v1, :cond_3

    .line 21
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v1, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/4 v3, 0x5

    .line 22
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 23
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c;->Ka(I)Laurelienribon/tweenengine/n;

    move-result-object v3

    check-cast v3, Laurelienribon/tweenengine/a/d;

    invoke-virtual {v3, v4}, Laurelienribon/tweenengine/a/d;->i(F)Laurelienribon/tweenengine/a/d;

    const v3, 0x3e99999a    # 0.3f

    .line 24
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 25
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 26
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    const/4 v6, 0x1

    .line 27
    iget v4, v2, Lcom/smartisanos/smengine/a/j;->x:F

    const v5, 0x3f19999a    # 0.6f

    mul-float v7, v4, v5

    iget v8, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float v9, v8, v5

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float v10, v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    mul-float v11, v8, v5

    mul-float v12, v2, v5

    move-object v5, v1

    move v8, v9

    move v9, v10

    move v10, v4

    invoke-virtual/range {v5 .. v12}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 28
    new-instance v2, Lcom/smartisanos/launcher/view/Aa;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/Aa;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 29
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    iget v4, v0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    invoke-virtual {v2, v4, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 30
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/4 v2, 0x2

    .line 31
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 32
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v5, v1

    .line 33
    invoke-virtual/range {v5 .. v14}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 34
    iget-object v4, v0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    iget v5, v0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    invoke-virtual {v4, v5, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 35
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/smartisanos/launcher/view/activeicon/a;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 36
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    iget-object v6, v0, Lcom/smartisanos/launcher/view/Ca;->UH:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 37
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Ul()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v9, v1

    iget-object v1, v0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 38
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Ul()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v10, v1

    .line 39
    invoke-static/range {v4 .. v10}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/launcher/view/activeicon/a;Lcom/smartisanos/launcher/data/ItemInfo;Ljava/lang/String;ZZII)Lcom/smartisanos/smengine/Da;

    .line 40
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    invoke-direct {v1, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 41
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 42
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v12, 0x3

    const v13, 0x3e19999a    # 0.15f

    const v14, 0x3e19999a    # 0.15f

    const v15, 0x3e19999a    # 0.15f

    const v16, 0x3e19999a    # 0.15f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    move-object v11, v1

    .line 43
    invoke-virtual/range {v11 .. v20}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 44
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    iget v3, v0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 45
    :cond_3
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/view/Ba;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/Ba;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 46
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/view/Ca;->vL:Ljava/lang/String;

    return-void
.end method

.method private Gy()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->DL:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->kill()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->DL:Lcom/smartisanos/smengine/g;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->EL:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->EL:Lcom/smartisanos/smengine/g;

    .line 6
    new-instance v0, Lcom/smartisanos/smengine/Ja;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Ja;-><init>(Lcom/smartisanos/launcher/view/Uc;)V

    const/16 v1, 0x13

    .line 7
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const v2, 0x3e99999a    # 0.3f

    .line 8
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 9
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/smartisanos/launcher/view/Tc;->a:F

    const v5, 0x3d755555

    invoke-virtual {v0, v4, v3, v5}, Lcom/smartisanos/smengine/Ja;->a(IFF)V

    .line 10
    new-instance v3, Lcom/smartisanos/launcher/view/pa;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/pa;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/Ja;->a(Lcom/smartisanos/smengine/a;)V

    .line 11
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ca;->EL:Lcom/smartisanos/smengine/g;

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 12
    new-instance v0, Lcom/smartisanos/smengine/Ja;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/Ja;-><init>(Lcom/smartisanos/launcher/view/Uc;)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 14
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 15
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    aget-object v3, v3, v4

    iget v3, v3, Lcom/smartisanos/launcher/view/Tc;->a:F

    const v7, 0x3d555555

    invoke-virtual {v0, v4, v3, v7}, Lcom/smartisanos/smengine/Ja;->a(IFF)V

    .line 16
    new-instance v3, Lcom/smartisanos/launcher/view/qa;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/qa;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/Ja;->a(Lcom/smartisanos/smengine/a;)V

    .line 17
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ca;->EL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v3, v6, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 18
    new-instance v0, Lcom/smartisanos/smengine/Ja;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/Ja;-><init>(Lcom/smartisanos/launcher/view/Uc;)V

    .line 19
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 20
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    const v6, 0x3d19999a    # 0.0375f

    .line 21
    invoke-virtual {v0, v4, v5, v6}, Lcom/smartisanos/smengine/Ja;->a(IFF)V

    .line 22
    new-instance v5, Lcom/smartisanos/launcher/view/ra;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/view/ra;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/Ja;->a(Lcom/smartisanos/smengine/a;)V

    .line 23
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Ca;->EL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v5, v2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 24
    new-instance v0, Lcom/smartisanos/smengine/Ja;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-direct {v0, v5}, Lcom/smartisanos/smengine/Ja;-><init>(Lcom/smartisanos/launcher/view/Uc;)V

    .line 25
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 26
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    const v1, 0x3caaaaab

    .line 27
    invoke-virtual {v0, v4, v7, v1}, Lcom/smartisanos/smengine/Ja;->a(IFF)V

    .line 28
    new-instance v1, Lcom/smartisanos/launcher/view/sa;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/sa;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ja;->a(Lcom/smartisanos/smengine/a;)V

    .line 29
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->EL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->EL:Lcom/smartisanos/smengine/g;

    new-instance v1, Lcom/smartisanos/launcher/view/ta;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/ta;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->EL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    .line 32
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->Ra()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    sget v2, Lcom/smartisanos/launcher/ob;->downing_app_name_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/g;->Na(Ljava/lang/String;)V

    .line 34
    sget v1, Lcom/smartisanos/launcher/ob;->downing_app_name_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->vL:Ljava/lang/String;

    return-void
.end method

.method private Hy()V
    .locals 3

    .line 1
    sget v0, Lcom/smartisanos/launcher/ob;->download_fail:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/Bb;->showToast(II)V

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/Ca;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag setDownloadFailed(). LauncherModel.removePackage(). pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast p0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Ca;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/smartisanos/launcher/view/Ca;->oL:I

    return p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Ca;)Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Ca;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->EL:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Ca;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ca;->tc(Z)V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/Ca;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/Ca;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/Ca;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/Ca;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ca;->CL:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/Ca;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->CL:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic d(Lcom/smartisanos/launcher/view/Ca;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/Ca;->mProgress:I

    return p0
.end method

.method static synthetic d(Lcom/smartisanos/launcher/view/Ca;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->DL:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic e(Lcom/smartisanos/launcher/view/Ca;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/Ca;->oL:I

    return p0
.end method

.method static synthetic f(Lcom/smartisanos/launcher/view/Ca;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/Ca;->IL:I

    return p0
.end method

.method static synthetic g(Lcom/smartisanos/launcher/view/Ca;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/Ca;->IL:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/smartisanos/launcher/view/Ca;->IL:I

    return v0
.end method

.method private na(F)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->kill()V

    .line 3
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    .line 4
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/Ca;->nL:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->Ra()Landroid/content/res/Resources;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    sget v3, Lcom/smartisanos/launcher/ob;->downing_app_name_text:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->Na(Ljava/lang/String;)V

    .line 7
    sget v2, Lcom/smartisanos/launcher/ob;->downing_app_name_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->vL:Ljava/lang/String;

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ca;->Cy()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    aget-object v0, v0, v2

    iput p1, v0, Lcom/smartisanos/launcher/view/Tc;->d:F

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    aget-object p0, p0, v2

    iput p1, p0, Lcom/smartisanos/launcher/view/Tc;->d:F

    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/smartisanos/launcher/view/Tc;->d:F

    sub-float v0, p1, v0

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    .line 12
    iget v0, p0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3

    return-void

    .line 13
    :cond_3
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/smartisanos/launcher/view/Ca;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download_log_tag playProgressAnimation(). mProgressAnimationDuration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 14
    :cond_4
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    .line 15
    new-instance v0, Lcom/smartisanos/smengine/Ja;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-direct {v0, v4}, Lcom/smartisanos/smengine/Ja;-><init>(Lcom/smartisanos/launcher/view/Uc;)V

    const/16 v4, 0x13

    .line 16
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 17
    iget v5, p0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 18
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    iget-object v5, v5, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/smartisanos/launcher/view/Tc;->d:F

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v5, p1}, Lcom/smartisanos/smengine/Ja;->a(IFF)V

    .line 19
    new-instance v5, Lcom/smartisanos/launcher/view/da;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/view/da;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/Ja;->a(Lcom/smartisanos/smengine/a;)V

    .line 20
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    invoke-virtual {v5, v3, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 21
    new-instance v0, Lcom/smartisanos/smengine/Ja;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-direct {v0, v5}, Lcom/smartisanos/smengine/Ja;-><init>(Lcom/smartisanos/launcher/view/Uc;)V

    .line 22
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 23
    iget v4, p0, Lcom/smartisanos/launcher/view/Ca;->HL:F

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 24
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    aget-object v2, v4, v2

    iget v2, v2, Lcom/smartisanos/launcher/view/Tc;->d:F

    invoke-virtual {v0, v6, v2, p1}, Lcom/smartisanos/smengine/Ja;->a(IFF)V

    .line 25
    new-instance p1, Lcom/smartisanos/launcher/view/ea;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/view/ea;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/Ja;->a(Lcom/smartisanos/smengine/a;)V

    .line 26
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1, v3, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 27
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    new-instance v0, Lcom/smartisanos/launcher/view/fa;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/fa;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 28
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->start()V

    .line 29
    iget p1, p0, Lcom/smartisanos/launcher/view/Ca;->nL:I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 30
    :cond_5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 31
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    :cond_6
    return-void
.end method

.method private setProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/Ca;->mProgress:I

    return-void
.end method

.method private t(IZ)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    .line 1
    invoke-static {p1, p0}, Lcom/smartisanos/launcher/Bb;->showToast(II)V

    :cond_0
    return-void
.end method

.method private tc(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ca;->Cy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->CL:Lcom/smartisanos/smengine/g;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 4
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->CL:Lcom/smartisanos/smengine/g;

    return-void

    :cond_1
    if-eqz p1, :cond_5

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->CL:Lcom/smartisanos/smengine/g;

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->FL:Lcom/smartisanos/smengine/Ja;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ja;->Nj()Laurelienribon/tweenengine/k;

    move-result-object p1

    if-nez p1, :cond_3

    .line 7
    sget-boolean p1, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/smartisanos/launcher/view/Ca;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "waveTime0.getCurrentTween() == null"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ca;->By()V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->CL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->kill()V

    .line 10
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->CL:Lcom/smartisanos/smengine/g;

    .line 11
    :cond_4
    new-instance p1, Lcom/smartisanos/smengine/g;

    invoke-direct {p1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->CL:Lcom/smartisanos/smengine/g;

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->CL:Lcom/smartisanos/smengine/g;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->FL:Lcom/smartisanos/smengine/Ja;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->CL:Lcom/smartisanos/smengine/g;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->GL:Lcom/smartisanos/smengine/Ja;

    invoke-virtual {p1, v1, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->CL:Lcom/smartisanos/smengine/g;

    new-instance v0, Lcom/smartisanos/launcher/view/ca;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/ca;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 15
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ca;->CL:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method private wd(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/Ca;->nL:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public Lb(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/Ca;->nL:I

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/SceneNode;Ljava/lang/String;Ljava/lang/String;FFI)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    if-eqz v1, :cond_4

    .line 5
    iput-object v1, v0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    .line 6
    iput-object v9, v0, Lcom/smartisanos/launcher/view/Ca;->tL:Ljava/lang/String;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_wave_bg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->UH:Ljava/lang/String;

    .line 8
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->UH:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-static {v2, v12, v13, v10, v11}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    .line 9
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/smartisanos/launcher/view/activeicon/a;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 10
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v15

    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->UH:Ljava/lang/String;

    const/16 v17, 0x1

    const/16 v18, 0x0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 11
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Ul()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v3, v3

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v4, Lcom/smartisanos/launcher/view/a/g;

    .line 12
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Ul()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v4, v4

    move-object/from16 v16, v2

    move/from16 v19, v3

    move/from16 v20, v4

    .line 13
    invoke-static/range {v14 .. v20}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/launcher/view/activeicon/a;Lcom/smartisanos/launcher/data/ItemInfo;Ljava/lang/String;ZZII)Lcom/smartisanos/smengine/Da;

    const-string v2, "WaveBackgroundMaterial"

    .line 14
    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v2

    .line 15
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 16
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v11}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 17
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 18
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    const/high16 v14, -0x40000000    # -2.0f

    const/high16 v15, -0x40800000    # -1.0f

    invoke-virtual {v2, v15, v14}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 19
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 20
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Ca;->UH:Ljava/lang/String;

    invoke-virtual {v2, v8, v3}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 21
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 22
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v11}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 23
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    add-int/lit8 v3, p6, 0x2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 24
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7, v7, v7, v7}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 25
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v8}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 26
    new-instance v6, Lcom/smartisanos/launcher/view/Uc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_waveview_in"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 27
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->getSinglePageMode()I

    move-result v16

    move-object v2, v6

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v14, v6

    move/from16 v6, p4

    move v15, v7

    move/from16 v7, p5

    move v10, v8

    move/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Lcom/smartisanos/launcher/view/Uc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFI)V

    iput-object v14, v0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    .line 28
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    add-int/lit8 v3, p6, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 29
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v15, v15, v15, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 30
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    aget-object v2, v2, v10

    const v3, 0x3d19999a    # 0.0375f

    iput v3, v2, Lcom/smartisanos/launcher/view/Tc;->a:F

    .line 31
    new-instance v14, Lcom/smartisanos/launcher/view/Uc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_waveview_out"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 32
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->getSinglePageMode()I

    move-result v8

    move-object v2, v14

    invoke-direct/range {v2 .. v8}, Lcom/smartisanos/launcher/view/Uc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFI)V

    iput-object v14, v0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    .line 33
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    add-int/lit8 v3, p6, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 34
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v2, v15, v15, v15, v15}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 35
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    aget-object v2, v2, v10

    const v3, 0x3caaaaab

    iput v3, v2, Lcom/smartisanos/launcher/view/Tc;->a:F

    .line 36
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 37
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 38
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 39
    move-object v2, v1

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Ul()Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 40
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Hl()[I

    move-result-object v3

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_flagnew_wave_view"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/smartisanos/launcher/view/Ca;->uL:Ljava/lang/String;

    .line 42
    iget-object v4, v0, Lcom/smartisanos/launcher/view/Ca;->uL:Ljava/lang/String;

    aget v5, v3, v10

    int-to-float v5, v5

    aget v3, v3, v11

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v11}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v3

    iput-object v3, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    const-string v3, "TextureModularColorMaterial"

    .line 43
    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    .line 44
    iget-object v4, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 45
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v3, v10}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 46
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v3, v11}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 47
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    const-string v4, "newapp.png"

    invoke-static {v4}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 48
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 49
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    const/high16 v4, -0x40000000    # -2.0f

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v3, v5, v4}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 50
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 51
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 52
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 53
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Fl()F

    move-result v3

    iput v3, v0, Lcom/smartisanos/launcher/view/Ca;->KL:F

    .line 54
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Gl()F

    move-result v2

    iput v2, v0, Lcom/smartisanos/launcher/view/Ca;->LL:F

    const/4 v2, 0x0

    .line 55
    iput v2, v0, Lcom/smartisanos/launcher/view/Ca;->ML:F

    .line 56
    sget-boolean v2, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/launcher/view/Ca;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download_log_tag mNewFlagDeltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/smartisanos/launcher/view/Ca;->KL:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mNewFlagDeltaY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/smartisanos/launcher/view/Ca;->LL:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mNewFlagDeltaZ = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/smartisanos/launcher/view/Ca;->ML:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 57
    :cond_0
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    iget v3, v0, Lcom/smartisanos/launcher/view/Ca;->KL:F

    iget v4, v0, Lcom/smartisanos/launcher/view/Ca;->LL:F

    iget v5, v0, Lcom/smartisanos/launcher/view/Ca;->ML:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 58
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Cl()Lcom/smartisanos/smengine/a/k;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/a/k;->x:F

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v4, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Cl()Lcom/smartisanos/smengine/a/k;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/a/k;->y:F

    iget-object v5, v0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v5, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Cl()Lcom/smartisanos/smengine/a/k;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/a/k;->z:F

    iget-object v6, v0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v6, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Cl()Lcom/smartisanos/smengine/a/k;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 59
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 60
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    add-int/lit8 v3, p6, 0x3

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 61
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Lcom/smartisanos/smengine/mymaterial/f;->r(IZ)V

    .line 62
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v2

    new-instance v3, Lcom/smartisanos/smengine/Ca;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v11, v11, v11}, Lcom/smartisanos/smengine/Ca;-><init>(IIII)V

    invoke-virtual {v2, v10, v3}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    .line 63
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 64
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->wL:Lcom/smartisanos/launcher/animations/Pa;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 65
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->pr()Lcom/smartisanos/launcher/animations/Qa;

    move-result-object v2

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Ca;->wL:Lcom/smartisanos/launcher/animations/Pa;

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/animations/Qa;->b(Lcom/smartisanos/launcher/animations/Pa;)V

    .line 66
    iput-object v3, v0, Lcom/smartisanos/launcher/view/Ca;->wL:Lcom/smartisanos/launcher/animations/Pa;

    .line 67
    :cond_1
    new-instance v2, Lcom/smartisanos/launcher/view/ka;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/ka;-><init>(Lcom/smartisanos/launcher/view/Ca;)V

    iput-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->wL:Lcom/smartisanos/launcher/animations/Pa;

    .line 68
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->pr()Lcom/smartisanos/launcher/animations/Qa;

    move-result-object v2

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Ca;->wL:Lcom/smartisanos/launcher/animations/Pa;

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/animations/Qa;->a(Lcom/smartisanos/launcher/animations/Pa;)V

    .line 69
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->xL:Lcom/smartisanos/launcher/animations/a/g;

    if-eqz v2, :cond_2

    .line 70
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Ha;->rp()Lcom/smartisanos/launcher/animations/a/i;

    move-result-object v2

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Ca;->xL:Lcom/smartisanos/launcher/animations/a/g;

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/animations/a/i;->b(Lcom/smartisanos/launcher/animations/a/g;)V

    .line 71
    iput-object v3, v0, Lcom/smartisanos/launcher/view/Ca;->xL:Lcom/smartisanos/launcher/animations/a/g;

    .line 72
    :cond_2
    new-instance v2, Lcom/smartisanos/launcher/view/ua;

    invoke-direct {v2, v0, v1}, Lcom/smartisanos/launcher/view/ua;-><init>(Lcom/smartisanos/launcher/view/Ca;Lcom/smartisanos/smengine/SceneNode;)V

    iput-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->xL:Lcom/smartisanos/launcher/animations/a/g;

    .line 73
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Ha;->rp()Lcom/smartisanos/launcher/animations/a/i;

    move-result-object v1

    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->xL:Lcom/smartisanos/launcher/animations/a/g;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/animations/a/i;->a(Lcom/smartisanos/launcher/animations/a/g;)V

    .line 74
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Ca;->By()V

    .line 75
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Uc;->pq()V

    .line 76
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Uc;->pq()V

    .line 77
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    invoke-virtual {v0, v10}, Lcom/smartisanos/launcher/view/Ca;->setVisibility(Z)V

    .line 79
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->Ra()Landroid/content/res/Resources;

    move-result-object v1

    .line 80
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    sget v3, Lcom/smartisanos/launcher/ob;->pend_app_name_text:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->Na(Ljava/lang/String;)V

    .line 81
    sget v2, Lcom/smartisanos/launcher/ob;->pend_app_name_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/view/Ca;->vL:Ljava/lang/String;

    return-void

    .line 82
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "### initDownloadView, parentCell is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ca;->mp()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 4
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 7
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 10
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 13
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->wL:Lcom/smartisanos/launcher/animations/Pa;

    if-eqz v0, :cond_4

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->pr()Lcom/smartisanos/launcher/animations/Qa;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ca;->wL:Lcom/smartisanos/launcher/animations/Pa;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/animations/Qa;->b(Lcom/smartisanos/launcher/animations/Pa;)V

    .line 16
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->wL:Lcom/smartisanos/launcher/animations/Pa;

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->xL:Lcom/smartisanos/launcher/animations/a/g;

    if-eqz v0, :cond_5

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Ha;->rp()Lcom/smartisanos/launcher/animations/a/i;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ca;->xL:Lcom/smartisanos/launcher/animations/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/animations/a/i;->b(Lcom/smartisanos/launcher/animations/a/g;)V

    .line 19
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->xL:Lcom/smartisanos/launcher/animations/a/g;

    .line 20
    :cond_5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->tL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->uL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->UH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 23
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Uc;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Uc;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 5
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/Ca;->OL:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ca;->tc(Z)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ca;->OL:Z

    :cond_0
    return-void
.end method

.method public lp()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ca;->vL:Ljava/lang/String;

    return-object p0
.end method

.method public mp()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/Ca;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "download_log_tag releaseAnimation"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->kill()V

    .line 4
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->CL:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->kill()V

    .line 7
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->CL:Lcom/smartisanos/smengine/g;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->DL:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->kill()V

    .line 10
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->DL:Lcom/smartisanos/smengine/g;

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->EL:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->kill()V

    .line 13
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->EL:Lcom/smartisanos/smengine/g;

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->FL:Lcom/smartisanos/smengine/Ja;

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ja;->kill()V

    .line 16
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->FL:Lcom/smartisanos/smengine/Ja;

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->GL:Lcom/smartisanos/smengine/Ja;

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ja;->kill()V

    .line 19
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->GL:Lcom/smartisanos/smengine/Ja;

    :cond_6
    return-void
.end method

.method public n(Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ca;->AL:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Ca;->AL:Z

    .line 3
    new-instance v1, Lcom/smartisanos/launcher/view/va;

    const/16 v2, 0x64

    invoke-direct {v1, p0, v2}, Lcom/smartisanos/launcher/view/va;-><init>(Lcom/smartisanos/launcher/view/Ca;I)V

    iget v2, p0, Lcom/smartisanos/launcher/view/Ca;->zL:F

    .line 4
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/n;->q(F)V

    const/4 v1, 0x4

    .line 5
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/Ca;->wd(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-wide v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->downloadId:J

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/view/Ca;->A(J)V

    .line 7
    sget p1, Lcom/smartisanos/launcher/ob;->paused_toast:I

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/view/Ca;->t(IZ)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    .line 8
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/Ca;->wd(I)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/Ca;->wd(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x10

    .line 9
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ca;->wd(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    sget p1, Lcom/smartisanos/launcher/ob;->installing_toast:I

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/view/Ca;->t(IZ)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/Ca;->wd(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12
    sget p1, Lcom/smartisanos/launcher/ob;->pend_toast:I

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/view/Ca;->t(IZ)V

    goto :goto_1

    .line 13
    :cond_4
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    iget-wide v1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->downloadId:J

    invoke-direct {p0, v1, v2}, Lcom/smartisanos/launcher/view/Ca;->B(J)V

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Eg()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ca;->Gy()V

    .line 18
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/Ca;->tc(Z)V

    .line 19
    sget p1, Lcom/smartisanos/launcher/ob;->downing_toast:I

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/view/Ca;->t(IZ)V

    goto :goto_1

    .line 20
    :cond_5
    sget p1, Lcom/smartisanos/launcher/ob;->no_net_connect:I

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/view/Ca;->t(IZ)V

    :cond_6
    :goto_1
    return-void
.end method

.method public np()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->tL:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/launcher/data/ItemInfo;Ljava/lang/String;Z)Lcom/smartisanos/smengine/Da;

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/view/Ca;->nL:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->sl()V

    .line 4
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/Ca;->nL:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->fb(Z)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Xm()V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast p0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->sl()V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ca;->vL:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/a/g;->Na(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public s(II)V
    .locals 5

    .line 1
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/view/Ca;->setProgress(I)V

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/Ca;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag setDownloadState: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/provider/Downloads$Impl;->statusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0xbe

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x100

    if-eq p1, v0, :cond_5

    const/16 v0, 0x190

    if-eq p1, v0, :cond_4

    const/16 v0, 0x196

    if-eq p1, v0, :cond_4

    const/16 v0, 0x19b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x19c

    if-eq p1, v0, :cond_4

    const/high16 v0, -0x40c00000    # -0.75f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x42c80000    # 100.0f

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 3
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/smartisanos/launcher/view/Ca;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "setDownloadState NONE. it should not"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4
    :pswitch_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ca;->Ey()V

    .line 5
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/Ca;->tc(Z)V

    const/16 p1, 0x10

    .line 6
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Ca;->Lb(I)V

    goto/16 :goto_0

    .line 7
    :pswitch_1
    iget p1, p0, Lcom/smartisanos/launcher/view/Ca;->nL:I

    const/16 v4, 0x8

    if-eq p1, v4, :cond_1

    .line 8
    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/Ca;->Lb(I)V

    .line 9
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/Ca;->tc(Z)V

    .line 10
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ca;->Dy()V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    if-nez p1, :cond_7

    if-lez p2, :cond_7

    int-to-float p1, p2

    div-float/2addr p1, v3

    mul-float/2addr p1, v2

    add-float/2addr p1, v0

    .line 12
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ca;->na(F)V

    .line 13
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/Ca;->tc(Z)V

    goto :goto_0

    .line 14
    :pswitch_2
    iget p1, p0, Lcom/smartisanos/launcher/view/Ca;->nL:I

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    .line 15
    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/Ca;->Lb(I)V

    .line 16
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/Ca;->tc(Z)V

    .line 17
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ca;->Dy()V

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->BL:Lcom/smartisanos/smengine/g;

    if-nez p1, :cond_7

    if-lez p2, :cond_7

    int-to-float p1, p2

    div-float/2addr p1, v3

    mul-float/2addr p1, v2

    add-float/2addr p1, v0

    .line 19
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ca;->na(F)V

    .line 20
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/Ca;->tc(Z)V

    goto :goto_0

    .line 21
    :pswitch_3
    iget p1, p0, Lcom/smartisanos/launcher/view/Ca;->nL:I

    const/4 v4, 0x4

    if-eq p1, v4, :cond_3

    .line 22
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/Ca;->tc(Z)V

    .line 23
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ca;->Gy()V

    .line 24
    :cond_3
    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/Ca;->Lb(I)V

    if-lez p2, :cond_7

    int-to-float p1, p2

    div-float/2addr p1, v3

    mul-float/2addr p1, v2

    add-float/2addr p1, v0

    .line 25
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ca;->na(F)V

    .line 26
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/Ca;->tc(Z)V

    goto :goto_0

    :cond_4
    :pswitch_4
    const/16 p1, 0x40

    .line 27
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Ca;->Lb(I)V

    .line 28
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ca;->Hy()V

    goto :goto_0

    .line 29
    :cond_5
    iget p1, p0, Lcom/smartisanos/launcher/view/Ca;->nL:I

    if-eq p1, v0, :cond_7

    .line 30
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Ca;->Lb(I)V

    .line 31
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ca;->Fy()V

    goto :goto_0

    .line 32
    :cond_6
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Ca;->Lb(I)V

    .line 33
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/J;->Ra()Landroid/content/res/Resources;

    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast p2, Lcom/smartisanos/launcher/view/a/g;

    sget v0, Lcom/smartisanos/launcher/ob;->pend_app_name_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/smartisanos/launcher/view/a/g;->Na(Ljava/lang/String;)V

    .line 35
    sget p2, Lcom/smartisanos/launcher/ob;->pend_app_name_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ca;->vL:Ljava/lang/String;

    :cond_7
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc6
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e8
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public setLayer(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method public setRenderQueue(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    return-void
.end method

.method public setRenderTarget(Lcom/smartisanos/smengine/N;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    return-void
.end method

.method public setScale(FFF)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    return-void
.end method

.method public setTranslate(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/launcher/view/Uc;->setTranslate(FFF)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/launcher/view/Uc;->setTranslate(FFF)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    iget v1, p0, Lcom/smartisanos/launcher/view/Ca;->KL:F

    add-float/2addr p1, v1

    iget v1, p0, Lcom/smartisanos/launcher/view/Ca;->LL:F

    add-float/2addr p2, v1

    iget p0, p0, Lcom/smartisanos/launcher/view/Ca;->ML:F

    add-float/2addr p3, p0

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    return-void
.end method

.method public setViewPort(IIII)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    return-void
.end method

.method public setViewPort(Lcom/smartisanos/smengine/Ga;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ca;->tc(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateGeometricState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->qL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ca;->sL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 5
    invoke-super {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method
