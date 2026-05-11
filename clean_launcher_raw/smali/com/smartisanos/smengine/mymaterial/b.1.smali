.class public Lcom/smartisanos/smengine/mymaterial/b;
.super Lcom/smartisanos/smengine/mymaterial/C;
.source "GaussianBlurEffectMaterial.java"


# static fields
.field private static log:Lcom/smartisanos/launcher/va;


# instance fields
.field private HW:Ljava/lang/String;

.field private IW:Lcom/smartisanos/smengine/mymaterial/f;

.field private JW:Z

.field KW:I

.field isDraw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/mymaterial/b;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/mymaterial/b;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/smartisanos/smengine/mymaterial/C;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/smengine/mymaterial/b;->HW:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/smengine/mymaterial/b;->JW:Z

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/smartisanos/smengine/mymaterial/b;->KW:I

    .line 5
    iput-boolean p2, p0, Lcom/smartisanos/smengine/mymaterial/b;->isDraw:Z

    const-string p3, "SimpleTextureMaterial"

    .line 6
    invoke-static {p3}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p3

    iput-object p3, p0, Lcom/smartisanos/smengine/mymaterial/b;->IW:Lcom/smartisanos/smengine/mymaterial/f;

    .line 7
    new-instance p3, Lcom/smartisanos/smengine/Ca;

    invoke-direct {p3}, Lcom/smartisanos/smengine/Ca;-><init>()V

    .line 8
    iget-boolean p4, p0, Lcom/smartisanos/smengine/mymaterial/C;->GW:Z

    if-eqz p4, :cond_0

    const/4 p4, 0x5

    .line 9
    iput p4, p3, Lcom/smartisanos/smengine/Ca;->mT:I

    .line 10
    iput p1, p3, Lcom/smartisanos/smengine/Ca;->nT:I

    .line 11
    iput p2, p3, Lcom/smartisanos/smengine/Ca;->mWrapS:I

    .line 12
    iput p2, p3, Lcom/smartisanos/smengine/Ca;->mWrapT:I

    .line 13
    iget-object p1, p0, Lcom/smartisanos/smengine/mymaterial/b;->IW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    goto :goto_0

    .line 14
    :cond_0
    iput p1, p3, Lcom/smartisanos/smengine/Ca;->mT:I

    .line 15
    iput p1, p3, Lcom/smartisanos/smengine/Ca;->nT:I

    .line 16
    iput p2, p3, Lcom/smartisanos/smengine/Ca;->mWrapS:I

    .line 17
    iput p2, p3, Lcom/smartisanos/smengine/Ca;->mWrapT:I

    .line 18
    iget-object p1, p0, Lcom/smartisanos/smengine/mymaterial/b;->IW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    .line 19
    :goto_0
    iput-boolean p2, p0, Lcom/smartisanos/smengine/mymaterial/C;->EW:Z

    return-void
.end method


# virtual methods
.method public Jt()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/b;->HW:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->yW:Lcom/smartisanos/smengine/mymaterial/f;

    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/f;->c(ILjava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/C;->yW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {v2, v1, v0}, Lcom/smartisanos/smengine/mymaterial/f;->c(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/smengine/mymaterial/b;->JW:Z

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/C;->Ut()V

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/C;->Vt()V

    .line 7
    iput-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/b;->JW:Z

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 8
    fill-array-data v0, :array_0

    .line 9
    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/C;->AW:Lcom/smartisanos/smengine/y;

    invoke-virtual {v2, v1, v0}, Lcom/smartisanos/smengine/y;->c(I[F)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->yW:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/C;->xW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/f;->c(ILjava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/C;->Ut()V

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/C;->Vt()V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->yW:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/C;->xW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/f;->c(ILjava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/C;->Ut()V

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/C;->Vt()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected Xt()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->sW:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 2
    iget-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/b;->JW:Z

    if-eqz v2, :cond_0

    .line 3
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/C;->yW:Lcom/smartisanos/smengine/mymaterial/f;

    const/16 v2, 0x11

    const-string v3, "uTexelWidthOffset"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/C;->yW:Lcom/smartisanos/smengine/mymaterial/f;

    const/16 v3, 0x12

    const-string v4, "uTexelHeightOffset"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/C;->yW:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object v3, v3, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    invoke-virtual {v3, v1, v0}, Lcom/smartisanos/smengine/sa;->h(IF)V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/C;->yW:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/smartisanos/smengine/sa;->h(IF)V

    return-void
.end method

.method protected Yt()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->tW:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 2
    iget-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/b;->JW:Z

    if-eqz v2, :cond_0

    .line 3
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/C;->zW:Lcom/smartisanos/smengine/mymaterial/f;

    const/16 v2, 0x11

    const-string v3, "uTexelWidthOffset"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/C;->zW:Lcom/smartisanos/smengine/mymaterial/f;

    const/16 v3, 0x12

    const-string v4, "uTexelHeightOffset"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/C;->zW:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object v3, v3, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/smartisanos/smengine/sa;->h(IF)V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/C;->zW:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    invoke-virtual {p0, v2, v0}, Lcom/smartisanos/smengine/sa;->h(IF)V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/b;->IW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/y;Z)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/b;->IW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/f;->As()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/b;->IW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/f;->Ht()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/b;->IW:Lcom/smartisanos/smengine/mymaterial/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p3, p2, v2, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ZLcom/smartisanos/smengine/y;ZZ)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/b;->IW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->p(Lcom/smartisanos/smengine/SceneNode;)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/smengine/mymaterial/b;->IW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/mymaterial/f;->tc(I)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/smengine/mymaterial/b;->IW:Lcom/smartisanos/smengine/mymaterial/f;

    instance-of v0, p1, Lcom/smartisanos/smengine/mymaterial/x;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/mymaterial/f;->wc(I)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/smengine/mymaterial/b;->IW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/mymaterial/f;->Pt()V

    goto :goto_0

    .line 10
    :cond_0
    instance-of v0, p1, Lcom/smartisanos/smengine/mymaterial/z;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/smartisanos/smengine/mymaterial/f;->Pt()V

    .line 12
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/b;->IW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;->b(Lcom/smartisanos/smengine/y;Z)V

    return-void
.end method

.method public b(Lcom/smartisanos/smengine/mymaterial/f;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/mymaterial/b;->IW:Lcom/smartisanos/smengine/mymaterial/f;

    .line 2
    new-instance p1, Lcom/smartisanos/smengine/Ca;

    invoke-direct {p1}, Lcom/smartisanos/smengine/Ca;-><init>()V

    .line 3
    iget-boolean v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->GW:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 4
    iput v0, p1, Lcom/smartisanos/smengine/Ca;->mT:I

    .line 5
    iput v1, p1, Lcom/smartisanos/smengine/Ca;->nT:I

    .line 6
    iput v2, p1, Lcom/smartisanos/smengine/Ca;->mWrapS:I

    .line 7
    iput v2, p1, Lcom/smartisanos/smengine/Ca;->mWrapT:I

    .line 8
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/b;->IW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    goto :goto_0

    .line 9
    :cond_0
    iput v1, p1, Lcom/smartisanos/smengine/Ca;->mT:I

    .line 10
    iput v1, p1, Lcom/smartisanos/smengine/Ca;->nT:I

    .line 11
    iput v2, p1, Lcom/smartisanos/smengine/Ca;->mWrapS:I

    .line 12
    iput v2, p1, Lcom/smartisanos/smengine/Ca;->mWrapT:I

    .line 13
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/b;->IW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    :goto_0
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/smartisanos/smengine/mymaterial/b;->IW:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/C;->wW:Ljava/lang/String;

    invoke-virtual {p2, p1, p0}, Lcom/smartisanos/smengine/mymaterial/f;->c(ILjava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/b;->IW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/f;->c(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public create()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/b;->IW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->create()V

    return-void
.end method

.method public f(ILjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput-object p2, p0, Lcom/smartisanos/smengine/mymaterial/C;->xW:Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_1
    iput-object p2, p0, Lcom/smartisanos/smengine/mymaterial/C;->wW:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public ib(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/mymaterial/b;->HW:Ljava/lang/String;

    return-void
.end method
