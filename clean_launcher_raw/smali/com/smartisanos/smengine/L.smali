.class public Lcom/smartisanos/smengine/L;
.super Ljava/lang/Object;
.source "RenderState.java"


# static fields
.field private static log:Lcom/smartisanos/launcher/va;


# instance fields
.field private CF:Z

.field private DF:I

.field private EF:I

.field private FF:Z

.field private GF:I

.field private HF:I

.field private IF:I

.field private JF:I

.field private KF:Lcom/smartisanos/smengine/a/k;

.field private MF:Z

.field private NF:I

.field private OF:Lcom/smartisanos/smengine/a/k;

.field private PF:Lcom/smartisanos/smengine/a/k;

.field private QF:Z

.field private RF:Z

.field private SF:I

.field private TF:I

.field private UF:I

.field private VF:I

.field private WF:Z

.field private XF:I

.field private YF:I

.field private ZF:I

.field private _F:I

.field private aG:I

.field private bG:I

.field private cG:Z

.field private dG:I

.field private eG:Z

.field private fG:Z

.field private gG:Z

.field private hG:Z

.field private iG:Z

.field private jG:Z

.field private kG:F

.field private lG:F

.field private mAlpha:Lcom/smartisanos/smengine/a/k;

.field private mBlendMode:I

.field private mDepthMask:Z

.field private nG:Z

.field private oG:Z

.field private pG:Z

.field private qG:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/L;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/L;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/smengine/L;->CF:Z

    .line 3
    iput v0, p0, Lcom/smartisanos/smengine/L;->DF:I

    .line 4
    iput v0, p0, Lcom/smartisanos/smengine/L;->EF:I

    const/4 v1, 0x5

    .line 5
    iput v1, p0, Lcom/smartisanos/smengine/L;->mBlendMode:I

    .line 6
    iput v0, p0, Lcom/smartisanos/smengine/L;->GF:I

    .line 7
    iput v1, p0, Lcom/smartisanos/smengine/L;->HF:I

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/smartisanos/smengine/L;->IF:I

    .line 9
    iput v0, p0, Lcom/smartisanos/smengine/L;->JF:I

    .line 10
    iput-boolean v0, p0, Lcom/smartisanos/smengine/L;->MF:Z

    const/4 v2, 0x2

    .line 11
    iput v2, p0, Lcom/smartisanos/smengine/L;->NF:I

    .line 12
    iput-boolean v0, p0, Lcom/smartisanos/smengine/L;->mDepthMask:Z

    .line 13
    iput v1, p0, Lcom/smartisanos/smengine/L;->XF:I

    .line 14
    iput v1, p0, Lcom/smartisanos/smengine/L;->YF:I

    .line 15
    iput v1, p0, Lcom/smartisanos/smengine/L;->ZF:I

    .line 16
    iput v1, p0, Lcom/smartisanos/smengine/L;->_F:I

    .line 17
    iput-boolean v1, p0, Lcom/smartisanos/smengine/L;->cG:Z

    .line 18
    iput v1, p0, Lcom/smartisanos/smengine/L;->dG:I

    .line 19
    iput-boolean v0, p0, Lcom/smartisanos/smengine/L;->fG:Z

    .line 20
    iput-boolean v0, p0, Lcom/smartisanos/smengine/L;->gG:Z

    .line 21
    iput-boolean v0, p0, Lcom/smartisanos/smengine/L;->hG:Z

    .line 22
    iput-boolean v0, p0, Lcom/smartisanos/smengine/L;->iG:Z

    .line 23
    iput-boolean v1, p0, Lcom/smartisanos/smengine/L;->jG:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 24
    iput v0, p0, Lcom/smartisanos/smengine/L;->kG:F

    const/high16 v0, -0x40000000    # -2.0f

    .line 25
    iput v0, p0, Lcom/smartisanos/smengine/L;->lG:F

    .line 26
    iput-boolean v1, p0, Lcom/smartisanos/smengine/L;->nG:Z

    .line 27
    iput-boolean v1, p0, Lcom/smartisanos/smengine/L;->oG:Z

    .line 28
    iput-boolean v1, p0, Lcom/smartisanos/smengine/L;->pG:Z

    .line 29
    iput v1, p0, Lcom/smartisanos/smengine/L;->qG:I

    return-void
.end method

.method private c(Lcom/smartisanos/smengine/K;)V
    .locals 4

    .line 8
    iget-boolean p1, p0, Lcom/smartisanos/smengine/L;->FF:Z

    const/16 v0, 0xbe2

    if-eqz p1, :cond_1

    .line 9
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glEnable(I)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/smengine/L;->KF:Lcom/smartisanos/smengine/a/k;

    if-eqz p1, :cond_0

    .line 11
    iget v0, p1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v2, p1, Lcom/smartisanos/smengine/a/k;->z:F

    iget p1, p1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-static {v0, v1, v2, p1}, Lcom/smartisanos/smengine/P;->glBlendColor(FFFF)V

    .line 12
    :cond_0
    iget p1, p0, Lcom/smartisanos/smengine/L;->mBlendMode:I

    const/16 v0, 0x306

    const/16 v1, 0x302

    const/16 v2, 0x303

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    .line 13
    new-instance p0, Lcom/smartisanos/smengine/RenderState$RenderStateException;

    const-string p1, "unsupport blendmode"

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/RenderState$RenderStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :pswitch_0
    iget p1, p0, Lcom/smartisanos/smengine/L;->GF:I

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/L;->id(I)I

    move-result p1

    iget v0, p0, Lcom/smartisanos/smengine/L;->HF:I

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/L;->id(I)I

    move-result v0

    iget v1, p0, Lcom/smartisanos/smengine/L;->IF:I

    .line 15
    invoke-direct {p0, v1}, Lcom/smartisanos/smengine/L;->id(I)I

    move-result v1

    iget v2, p0, Lcom/smartisanos/smengine/L;->JF:I

    invoke-direct {p0, v2}, Lcom/smartisanos/smengine/L;->id(I)I

    move-result p0

    .line 16
    invoke-static {p1, v0, v1, p0}, Lcom/smartisanos/smengine/P;->glBlendFuncSeparate(IIII)V

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x300

    .line 17
    invoke-static {v0, p0}, Lcom/smartisanos/smengine/P;->glBlendFunc(II)V

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x0

    .line 18
    invoke-static {v0, p0}, Lcom/smartisanos/smengine/P;->glBlendFunc(II)V

    goto :goto_0

    .line 19
    :pswitch_3
    invoke-static {v1, v2}, Lcom/smartisanos/smengine/P;->glBlendFunc(II)V

    goto :goto_0

    :pswitch_4
    const/16 p0, 0x301

    .line 20
    invoke-static {v3, p0}, Lcom/smartisanos/smengine/P;->glBlendFunc(II)V

    goto :goto_0

    .line 21
    :pswitch_5
    invoke-static {v1, v3}, Lcom/smartisanos/smengine/P;->glBlendFunc(II)V

    goto :goto_0

    .line 22
    :pswitch_6
    invoke-static {v3, v2}, Lcom/smartisanos/smengine/P;->glBlendFunc(II)V

    goto :goto_0

    .line 23
    :pswitch_7
    invoke-static {v3, v3}, Lcom/smartisanos/smengine/P;->glBlendFunc(II)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glDisable(I)V

    :goto_0
    :pswitch_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d(Lcom/smartisanos/smengine/K;)V
    .locals 0

    .line 8
    iget-boolean p1, p0, Lcom/smartisanos/smengine/L;->cG:Z

    if-eqz p1, :cond_0

    .line 9
    iget p0, p0, Lcom/smartisanos/smengine/L;->dG:I

    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glClearStencil(I)V

    const-string p0, "clear stencil color"

    .line 10
    invoke-static {p0}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    const/16 p0, 0xb90

    .line 11
    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glEnable(I)V

    const-string p0, "enable stencil"

    .line 12
    invoke-static {p0}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    const/16 p0, 0x400

    .line 13
    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glClear(I)V

    const-string p0, "clear stencil"

    .line 14
    invoke-static {p0}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private e(Lcom/smartisanos/smengine/K;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/smartisanos/smengine/L;->eG:Z

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/smartisanos/smengine/L;->fG:Z

    iget-boolean v0, p0, Lcom/smartisanos/smengine/L;->gG:Z

    iget-boolean v1, p0, Lcom/smartisanos/smengine/L;->hG:Z

    iget-boolean p0, p0, Lcom/smartisanos/smengine/L;->iG:Z

    invoke-static {p1, v0, v1, p0}, Lcom/smartisanos/smengine/P;->glColorMask(ZZZZ)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 3
    invoke-static {p0, p0, p0, p0}, Lcom/smartisanos/smengine/P;->glColorMask(ZZZZ)V

    :goto_0
    return-void
.end method

.method private f(Lcom/smartisanos/smengine/K;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/smartisanos/smengine/L;->MF:Z

    const/16 v0, 0xb71

    if-eqz p1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glEnable(I)V

    .line 3
    iget p1, p0, Lcom/smartisanos/smengine/L;->NF:I

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/L;->kd(I)I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glDepthFunc(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glDisable(I)V

    :goto_0
    return-void
.end method

.method private g(Lcom/smartisanos/smengine/K;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/L;->jG:Z

    const v1, 0x8037

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Lcom/smartisanos/smengine/P;->glEnable(I)V

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/L;->kG:F

    iget p1, p1, Lcom/smartisanos/smengine/K;->layer:I

    add-int/lit8 v1, p1, 0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/smartisanos/smengine/L;->lG:F

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {v0, p0}, Lcom/smartisanos/smengine/P;->glPolygonOffset(FF)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1}, Lcom/smartisanos/smengine/P;->glDisable(I)V

    :goto_0
    return-void
.end method

.method private h(Lcom/smartisanos/smengine/K;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/smartisanos/smengine/L;->RF:Z

    const/16 v0, 0xc11

    if-eqz p1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glEnable(I)V

    .line 3
    iget p1, p0, Lcom/smartisanos/smengine/L;->SF:I

    iget v0, p0, Lcom/smartisanos/smengine/L;->TF:I

    iget v1, p0, Lcom/smartisanos/smengine/L;->UF:I

    iget p0, p0, Lcom/smartisanos/smengine/L;->VF:I

    invoke-static {p1, v0, v1, p0}, Lcom/smartisanos/smengine/P;->glScissor(IIII)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glDisable(I)V

    :goto_0
    return-void
.end method

.method private i(Lcom/smartisanos/smengine/K;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/smartisanos/smengine/L;->WF:Z

    const/16 v0, 0xb90

    if-eqz p1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glEnable(I)V

    const-string p1, "enable stencil test"

    .line 3
    invoke-static {p1}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 4
    iget p1, p0, Lcom/smartisanos/smengine/L;->_F:I

    packed-switch p1, :pswitch_data_0

    .line 5
    new-instance p0, Lcom/smartisanos/smengine/RenderState$RenderStateException;

    const-string p1, "unknown stencil function"

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/RenderState$RenderStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p1, 0x207

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x205

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x206

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x204

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x203

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x201

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x202

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x200

    .line 6
    :goto_0
    iget v0, p0, Lcom/smartisanos/smengine/L;->aG:I

    iget v1, p0, Lcom/smartisanos/smengine/L;->bG:I

    invoke-static {p1, v0, v1}, Lcom/smartisanos/smengine/P;->glStencilFunc(III)V

    const-string p1, "stencilfunc"

    .line 7
    invoke-static {p1}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 8
    iget p1, p0, Lcom/smartisanos/smengine/L;->XF:I

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/L;->jd(I)I

    move-result p1

    iget v0, p0, Lcom/smartisanos/smengine/L;->YF:I

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/L;->jd(I)I

    move-result v0

    iget v1, p0, Lcom/smartisanos/smengine/L;->ZF:I

    .line 9
    invoke-direct {p0, v1}, Lcom/smartisanos/smengine/L;->jd(I)I

    move-result p0

    .line 10
    invoke-static {p1, v0, p0}, Lcom/smartisanos/smengine/P;->glStencilOp(III)V

    const-string p0, "stencilop"

    .line 11
    invoke-static {p0}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glDisable(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private id(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown blend factor : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const p0, 0x8001

    return p0

    :pswitch_1
    const p0, 0x8002

    return p0

    :pswitch_2
    const p0, 0x8003

    return p0

    :pswitch_3
    const p0, 0x8004

    return p0

    :pswitch_4
    const/16 p0, 0x308

    return p0

    :pswitch_5
    const/16 p0, 0x307

    return p0

    :pswitch_6
    const/16 p0, 0x306

    return p0

    :pswitch_7
    const/16 p0, 0x305

    return p0

    :pswitch_8
    const/16 p0, 0x304

    return p0

    :pswitch_9
    const/16 p0, 0x303

    return p0

    :pswitch_a
    const/16 p0, 0x302

    return p0

    :pswitch_b
    const/16 p0, 0x301

    return p0

    :pswitch_c
    const/16 p0, 0x300

    return p0

    :pswitch_d
    const/4 p0, 0x1

    return p0

    :pswitch_e
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private jd(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unknown stencil op"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x150a

    goto :goto_0

    :pswitch_1
    const p0, 0x8508

    goto :goto_0

    :pswitch_2
    const p0, 0x8507

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x1e03

    goto :goto_0

    :pswitch_4
    const/16 p0, 0x1e02

    goto :goto_0

    :pswitch_5
    const/16 p0, 0x1e01

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_7
    const/16 p0, 0x1e00

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private kd(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance p0, Lcom/smartisanos/smengine/RenderState$RenderStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized test function: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/RenderState$RenderStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x207

    return p0

    :pswitch_1
    const/16 p0, 0x205

    return p0

    :pswitch_2
    const/16 p0, 0x206

    return p0

    :pswitch_3
    const/16 p0, 0x204

    return p0

    :pswitch_4
    const/16 p0, 0x203

    return p0

    :pswitch_5
    const/16 p0, 0x201

    return p0

    :pswitch_6
    const/16 p0, 0x202

    return p0

    :pswitch_7
    const/16 p0, 0x200

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public Ba(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/L;->QF:Z

    return-void
.end method

.method public Ca(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/L;->cG:Z

    return-void
.end method

.method public Da(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/L;->qG:I

    return-void
.end method

.method public Da(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/smengine/L;->CF:Z

    return-void
.end method

.method public Ea(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/L;->jG:Z

    return-void
.end method

.method public Fa(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/L;->oG:Z

    return-void
.end method

.method public Ga(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/L;->pG:Z

    return-void
.end method

.method public Ha(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/L;->RF:Z

    return-void
.end method

.method public Ia(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/L;->WF:Z

    return-void
.end method

.method public Ik()Lcom/smartisanos/smengine/a/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/L;->KF:Lcom/smartisanos/smengine/a/k;

    return-object p0
.end method

.method public Ja(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/L;->nG:Z

    return-void
.end method

.method public Jk()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/L;->qG:I

    return p0
.end method

.method public Kk()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/L;->FF:Z

    return p0
.end method

.method public Lk()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/L;->WF:Z

    return p0
.end method

.method public Mk()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/L;->oG:Z

    return p0
.end method

.method public Nk()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/L;->pG:Z

    return p0
.end method

.method public Ok()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/L;->RF:Z

    return p0
.end method

.method public Pk()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/L;->nG:Z

    return p0
.end method

.method public Va(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/L;->mBlendMode:I

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/K;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/L;->f(Lcom/smartisanos/smengine/K;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/L;->c(Lcom/smartisanos/smengine/K;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/L;->g(Lcom/smartisanos/smengine/K;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/L;->h(Lcom/smartisanos/smengine/K;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/L;->d(Lcom/smartisanos/smengine/K;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/L;->i(Lcom/smartisanos/smengine/K;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/L;->e(Lcom/smartisanos/smengine/K;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->b(Lcom/smartisanos/smengine/K;)V

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/L;->OF:Lcom/smartisanos/smengine/a/k;

    return-void
.end method

.method public b(Lcom/smartisanos/smengine/K;)V
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/smartisanos/smengine/L;->CF:Z

    const/16 p1, 0xb44

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/smartisanos/smengine/P;->glEnable(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/smengine/P;->glDisable(I)V

    :goto_0
    return-void
.end method

.method public b(Lcom/smartisanos/smengine/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/L;->KF:Lcom/smartisanos/smengine/a/k;

    return-void
.end method

.method public c(III)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/smartisanos/smengine/L;->XF:I

    .line 6
    iput p2, p0, Lcom/smartisanos/smengine/L;->YF:I

    .line 7
    iput p3, p0, Lcom/smartisanos/smengine/L;->ZF:I

    return-void
.end method

.method public c(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/L;->GF:I

    .line 2
    iput p2, p0, Lcom/smartisanos/smengine/L;->HF:I

    .line 3
    iput p3, p0, Lcom/smartisanos/smengine/L;->IF:I

    .line 4
    iput p4, p0, Lcom/smartisanos/smengine/L;->JF:I

    return-void
.end method

.method public d(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/L;->_F:I

    .line 2
    iput p2, p0, Lcom/smartisanos/smengine/L;->aG:I

    .line 3
    iput p3, p0, Lcom/smartisanos/smengine/L;->bG:I

    return-void
.end method

.method public d(IIII)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/smartisanos/smengine/L;->SF:I

    .line 5
    iput p2, p0, Lcom/smartisanos/smengine/L;->TF:I

    .line 6
    iput p3, p0, Lcom/smartisanos/smengine/L;->UF:I

    .line 7
    iput p4, p0, Lcom/smartisanos/smengine/L;->VF:I

    return-void
.end method

.method public n(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/L;->kG:F

    .line 2
    iput p2, p0, Lcom/smartisanos/smengine/L;->lG:F

    return-void
.end method

.method public restore()V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/L;->eG:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 2
    invoke-static {p0, p0, p0, p0}, Lcom/smartisanos/smengine/P;->glColorMask(ZZZZ)V

    :cond_0
    return-void
.end method

.method public setDepthTestFunc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/L;->NF:I

    return-void
.end method

.method public setIsEnableBlend(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/L;->FF:Z

    return-void
.end method

.method public setIsEnableDepthTest(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/L;->MF:Z

    return-void
.end method

.method public writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 4

    const-string v0, "RenderState"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/smartisanos/smengine/L;->CF:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mIsCullFaceEnable"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->DF:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mCullFace"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->EF:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mFrontFace"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/smartisanos/smengine/L;->FF:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mIsEnableBlend"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->mBlendMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mBlendMode"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->GF:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mBlendFactorForSrcRGB"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->IF:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mBlendFactorForSrcAlpha"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->HF:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mBlendFactorForDstRGB"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->JF:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mBlendFactorForDstAlpha"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/smengine/L;->KF:Lcom/smartisanos/smengine/a/k;

    const-string v2, "null"

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/k;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "mBlendColor"

    invoke-interface {p2, v3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/smartisanos/smengine/L;->MF:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mIsEnableDepthTest"

    invoke-interface {p2, v3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/smartisanos/smengine/L;->NF:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mDepthTestFunc"

    invoke-interface {p2, v3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/smengine/L;->OF:Lcom/smartisanos/smengine/a/k;

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/k;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v3, "mClearColor"

    invoke-interface {p2, v3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/smengine/L;->PF:Lcom/smartisanos/smengine/a/k;

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/k;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v3, "mClearDepthColor"

    invoke-interface {p2, v3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/smartisanos/smengine/L;->QF:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mClear"

    invoke-interface {p2, v3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/smengine/L;->mAlpha:Lcom/smartisanos/smengine/a/k;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/k;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    const-string v0, "mAlpha"

    invoke-interface {p2, v0, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/smartisanos/smengine/L;->mDepthMask:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mDepthMask"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/smartisanos/smengine/L;->RF:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mIsScissor"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->SF:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mScissorX"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->TF:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mScissorY"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->UF:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mScissorWidth"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->VF:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mScissorHeight"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/smartisanos/smengine/L;->WF:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mIsStencilTestEnable"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->XF:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mStencilOpStencilFail"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->YF:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mStencilOpDepthTestFail"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->ZF:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mStencilOpDepthTestPass"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->_F:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mStecilTestFunc"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->aG:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mStencilRef"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->bG:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mStencilMask"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/smartisanos/smengine/L;->cG:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mIsClearStencilBuffer"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->dG:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mClearStencilValue"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/smartisanos/smengine/L;->eG:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mIsEnableColorMask"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/smartisanos/smengine/L;->fG:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mColorRMask"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/smartisanos/smengine/L;->gG:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mColorGMask"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/smartisanos/smengine/L;->hG:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mColorBMask"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/smartisanos/smengine/L;->iG:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mColorAMask"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/smartisanos/smengine/L;->jG:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mIsPolygonOffsetEnable"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->kG:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mPolygonOffsetFactor"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/L;->lG:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mPolygonOffsetUnits"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/smartisanos/smengine/L;->nG:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mIsUseVBO"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/smartisanos/smengine/L;->oG:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mIsPostRender"

    invoke-interface {p2, v0, p0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method
