.class public final Lcom/smartisanos/smengine/a/f;
.super Ljava/lang/Object;
.source "Matrix4f.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final IDENTITY:Lcom/smartisanos/smengine/a/f;

.field public static final ZERO:Lcom/smartisanos/smengine/a/f;

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field public BV:F

.field public CV:F

.field public DV:F

.field public EV:F

.field public oV:F

.field public pV:F

.field public qV:F

.field public rV:F

.field public sV:F

.field public tV:F

.field public uV:F

.field public vV:F

.field public wV:F

.field public xV:F

.field public yV:F

.field public zV:F


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    const-class v0, Lcom/smartisanos/smengine/a/f;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/a/f;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/f;

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/smartisanos/smengine/a/f;-><init>(FFFFFFFFFFFFFFFF)V

    sput-object v0, Lcom/smartisanos/smengine/a/f;->ZERO:Lcom/smartisanos/smengine/a/f;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/f;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/a/f;->IDENTITY:Lcom/smartisanos/smengine/a/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>(FFFFFFFFFFFFFFFF)V
    .locals 2

    move-object v0, p0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 4
    iput v1, v0, Lcom/smartisanos/smengine/a/f;->oV:F

    move v1, p2

    .line 5
    iput v1, v0, Lcom/smartisanos/smengine/a/f;->pV:F

    move v1, p3

    .line 6
    iput v1, v0, Lcom/smartisanos/smengine/a/f;->qV:F

    move v1, p4

    .line 7
    iput v1, v0, Lcom/smartisanos/smengine/a/f;->xV:F

    move v1, p5

    .line 8
    iput v1, v0, Lcom/smartisanos/smengine/a/f;->rV:F

    move v1, p6

    .line 9
    iput v1, v0, Lcom/smartisanos/smengine/a/f;->sV:F

    move v1, p7

    .line 10
    iput v1, v0, Lcom/smartisanos/smengine/a/f;->tV:F

    move v1, p8

    .line 11
    iput v1, v0, Lcom/smartisanos/smengine/a/f;->yV:F

    move v1, p9

    .line 12
    iput v1, v0, Lcom/smartisanos/smengine/a/f;->uV:F

    move v1, p10

    .line 13
    iput v1, v0, Lcom/smartisanos/smengine/a/f;->vV:F

    move v1, p11

    .line 14
    iput v1, v0, Lcom/smartisanos/smengine/a/f;->wV:F

    move v1, p12

    .line 15
    iput v1, v0, Lcom/smartisanos/smengine/a/f;->zV:F

    move v1, p13

    .line 16
    iput v1, v0, Lcom/smartisanos/smengine/a/f;->BV:F

    move/from16 v1, p14

    .line 17
    iput v1, v0, Lcom/smartisanos/smengine/a/f;->CV:F

    move/from16 v1, p15

    .line 18
    iput v1, v0, Lcom/smartisanos/smengine/a/f;->DV:F

    move/from16 v1, p16

    .line 19
    iput v1, v0, Lcom/smartisanos/smengine/a/f;->EV:F

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/a/f;Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p2, :cond_0

    .line 87
    new-instance v2, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/a/f;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    .line 88
    :goto_0
    iget v3, v0, Lcom/smartisanos/smengine/a/f;->oV:F

    iget v4, v1, Lcom/smartisanos/smengine/a/f;->oV:F

    mul-float v5, v3, v4

    iget v6, v0, Lcom/smartisanos/smengine/a/f;->pV:F

    iget v7, v1, Lcom/smartisanos/smengine/a/f;->rV:F

    mul-float v8, v6, v7

    add-float/2addr v5, v8

    iget v8, v0, Lcom/smartisanos/smengine/a/f;->qV:F

    iget v9, v1, Lcom/smartisanos/smengine/a/f;->uV:F

    mul-float v10, v8, v9

    add-float/2addr v5, v10

    iget v10, v0, Lcom/smartisanos/smengine/a/f;->xV:F

    iget v11, v1, Lcom/smartisanos/smengine/a/f;->BV:F

    mul-float v12, v10, v11

    add-float/2addr v5, v12

    .line 89
    iget v12, v1, Lcom/smartisanos/smengine/a/f;->pV:F

    mul-float v13, v3, v12

    iget v14, v1, Lcom/smartisanos/smengine/a/f;->sV:F

    mul-float v15, v6, v14

    add-float/2addr v13, v15

    iget v15, v1, Lcom/smartisanos/smengine/a/f;->vV:F

    mul-float v16, v8, v15

    add-float v13, v13, v16

    move-object/from16 v16, v2

    iget v2, v1, Lcom/smartisanos/smengine/a/f;->CV:F

    mul-float v17, v10, v2

    add-float v13, v13, v17

    move/from16 p2, v13

    .line 90
    iget v13, v1, Lcom/smartisanos/smengine/a/f;->qV:F

    mul-float v17, v3, v13

    move/from16 v18, v5

    iget v5, v1, Lcom/smartisanos/smengine/a/f;->tV:F

    mul-float v19, v6, v5

    add-float v17, v17, v19

    move/from16 v19, v5

    iget v5, v1, Lcom/smartisanos/smengine/a/f;->wV:F

    mul-float v20, v8, v5

    add-float v17, v17, v20

    move/from16 v20, v5

    iget v5, v1, Lcom/smartisanos/smengine/a/f;->DV:F

    mul-float v21, v10, v5

    move/from16 v22, v5

    add-float v5, v17, v21

    move/from16 v17, v5

    .line 91
    iget v5, v1, Lcom/smartisanos/smengine/a/f;->xV:F

    mul-float/2addr v3, v5

    move/from16 v21, v5

    iget v5, v1, Lcom/smartisanos/smengine/a/f;->yV:F

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    iget v6, v1, Lcom/smartisanos/smengine/a/f;->zV:F

    mul-float/2addr v8, v6

    add-float/2addr v3, v8

    iget v1, v1, Lcom/smartisanos/smengine/a/f;->EV:F

    mul-float/2addr v10, v1

    add-float/2addr v3, v10

    .line 92
    iget v8, v0, Lcom/smartisanos/smengine/a/f;->rV:F

    mul-float v10, v8, v4

    move/from16 p1, v3

    iget v3, v0, Lcom/smartisanos/smengine/a/f;->sV:F

    mul-float v23, v3, v7

    add-float v10, v10, v23

    move/from16 v23, v7

    iget v7, v0, Lcom/smartisanos/smengine/a/f;->tV:F

    mul-float v24, v7, v9

    add-float v10, v10, v24

    move/from16 v24, v9

    iget v9, v0, Lcom/smartisanos/smengine/a/f;->yV:F

    mul-float v25, v9, v11

    add-float v10, v10, v25

    mul-float v25, v8, v12

    mul-float v26, v3, v14

    add-float v25, v25, v26

    mul-float v26, v7, v15

    add-float v25, v25, v26

    mul-float v26, v9, v2

    move/from16 v27, v10

    add-float v10, v25, v26

    mul-float v25, v8, v13

    mul-float v26, v3, v19

    add-float v25, v25, v26

    mul-float v26, v7, v20

    add-float v25, v25, v26

    mul-float v26, v9, v22

    move/from16 v28, v10

    add-float v10, v25, v26

    mul-float v8, v8, v21

    mul-float/2addr v3, v5

    add-float/2addr v8, v3

    mul-float/2addr v7, v6

    add-float/2addr v8, v7

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    .line 93
    iget v3, v0, Lcom/smartisanos/smengine/a/f;->uV:F

    mul-float v7, v3, v4

    iget v9, v0, Lcom/smartisanos/smengine/a/f;->vV:F

    mul-float v25, v9, v23

    add-float v7, v7, v25

    move/from16 v25, v8

    iget v8, v0, Lcom/smartisanos/smengine/a/f;->wV:F

    mul-float v26, v8, v24

    add-float v7, v7, v26

    move/from16 v26, v10

    iget v10, v0, Lcom/smartisanos/smengine/a/f;->zV:F

    mul-float v29, v10, v11

    add-float v7, v7, v29

    mul-float v29, v3, v12

    mul-float v30, v9, v14

    add-float v29, v29, v30

    mul-float v30, v8, v15

    add-float v29, v29, v30

    mul-float v30, v10, v2

    move/from16 v31, v7

    add-float v7, v29, v30

    mul-float v29, v3, v13

    mul-float v30, v9, v19

    add-float v29, v29, v30

    mul-float v30, v8, v20

    add-float v29, v29, v30

    mul-float v30, v10, v22

    move/from16 v32, v7

    add-float v7, v29, v30

    mul-float v3, v3, v21

    mul-float/2addr v9, v5

    add-float/2addr v3, v9

    mul-float/2addr v8, v6

    add-float/2addr v3, v8

    mul-float/2addr v10, v1

    add-float/2addr v3, v10

    .line 94
    iget v8, v0, Lcom/smartisanos/smengine/a/f;->BV:F

    mul-float/2addr v4, v8

    iget v9, v0, Lcom/smartisanos/smengine/a/f;->CV:F

    mul-float v10, v9, v23

    add-float/2addr v4, v10

    iget v10, v0, Lcom/smartisanos/smengine/a/f;->DV:F

    mul-float v23, v10, v24

    add-float v4, v4, v23

    iget v0, v0, Lcom/smartisanos/smengine/a/f;->EV:F

    mul-float/2addr v11, v0

    add-float/2addr v4, v11

    mul-float/2addr v12, v8

    mul-float/2addr v14, v9

    add-float/2addr v12, v14

    mul-float/2addr v15, v10

    add-float/2addr v12, v15

    mul-float/2addr v2, v0

    add-float/2addr v12, v2

    mul-float/2addr v13, v8

    mul-float v2, v9, v19

    add-float/2addr v13, v2

    mul-float v2, v10, v20

    add-float/2addr v13, v2

    mul-float v2, v0, v22

    add-float/2addr v13, v2

    mul-float v8, v8, v21

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v10, v6

    add-float/2addr v8, v10

    mul-float/2addr v0, v1

    add-float/2addr v8, v0

    move-object/from16 v2, v16

    move/from16 v5, v18

    .line 95
    iput v5, v2, Lcom/smartisanos/smengine/a/f;->oV:F

    move/from16 v0, p2

    .line 96
    iput v0, v2, Lcom/smartisanos/smengine/a/f;->pV:F

    move/from16 v0, v17

    .line 97
    iput v0, v2, Lcom/smartisanos/smengine/a/f;->qV:F

    move/from16 v0, p1

    .line 98
    iput v0, v2, Lcom/smartisanos/smengine/a/f;->xV:F

    move/from16 v10, v27

    .line 99
    iput v10, v2, Lcom/smartisanos/smengine/a/f;->rV:F

    move/from16 v0, v28

    .line 100
    iput v0, v2, Lcom/smartisanos/smengine/a/f;->sV:F

    move/from16 v0, v26

    .line 101
    iput v0, v2, Lcom/smartisanos/smengine/a/f;->tV:F

    move/from16 v0, v25

    .line 102
    iput v0, v2, Lcom/smartisanos/smengine/a/f;->yV:F

    move/from16 v0, v31

    .line 103
    iput v0, v2, Lcom/smartisanos/smengine/a/f;->uV:F

    move/from16 v0, v32

    .line 104
    iput v0, v2, Lcom/smartisanos/smengine/a/f;->vV:F

    .line 105
    iput v7, v2, Lcom/smartisanos/smengine/a/f;->wV:F

    .line 106
    iput v3, v2, Lcom/smartisanos/smengine/a/f;->zV:F

    .line 107
    iput v4, v2, Lcom/smartisanos/smengine/a/f;->BV:F

    .line 108
    iput v12, v2, Lcom/smartisanos/smengine/a/f;->CV:F

    .line 109
    iput v13, v2, Lcom/smartisanos/smengine/a/f;->DV:F

    .line 110
    iput v8, v2, Lcom/smartisanos/smengine/a/f;->EV:F

    return-object v2
.end method

.method public a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;
    .locals 5

    if-nez p1, :cond_1

    .line 111
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/smengine/a/f;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "Source vector is null, null result returned."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    if-nez p2, :cond_2

    .line 112
    new-instance p2, Lcom/smartisanos/smengine/a/k;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/k;-><init>()V

    .line 113
    :cond_2
    iget v0, p1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v2, p1, Lcom/smartisanos/smengine/a/k;->z:F

    iget p1, p1, Lcom/smartisanos/smengine/a/k;->w:F

    .line 114
    iget v3, p0, Lcom/smartisanos/smengine/a/f;->oV:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/a/f;->pV:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/a/f;->qV:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/a/f;->xV:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/a/k;->x:F

    .line 115
    iget v3, p0, Lcom/smartisanos/smengine/a/f;->rV:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/a/f;->sV:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/a/f;->tV:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/a/f;->yV:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/a/k;->y:F

    .line 116
    iget v3, p0, Lcom/smartisanos/smengine/a/f;->uV:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/a/f;->vV:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/a/f;->wV:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/a/f;->zV:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/a/k;->z:F

    .line 117
    iget v3, p0, Lcom/smartisanos/smengine/a/f;->BV:F

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/smartisanos/smengine/a/f;->CV:F

    mul-float/2addr v0, v1

    add-float/2addr v3, v0

    iget v0, p0, Lcom/smartisanos/smengine/a/f;->DV:F

    mul-float/2addr v0, v2

    add-float/2addr v3, v0

    iget p0, p0, Lcom/smartisanos/smengine/a/f;->EV:F

    mul-float/2addr p0, p1

    add-float/2addr v3, p0

    iput v3, p2, Lcom/smartisanos/smengine/a/k;->w:F

    return-object p2
.end method

.method public a(FFFFFFZ)V
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/f;->loadIdentity()V

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p7, :cond_0

    sub-float p7, p4, p3

    div-float v1, v0, p7

    .line 72
    iput v1, p0, Lcom/smartisanos/smengine/a/f;->oV:F

    sub-float v1, p5, p6

    div-float/2addr v0, v1

    .line 73
    iput v0, p0, Lcom/smartisanos/smengine/a/f;->sV:F

    const/high16 v0, -0x40000000    # -2.0f

    sub-float v2, p2, p1

    div-float/2addr v0, v2

    .line 74
    iput v0, p0, Lcom/smartisanos/smengine/a/f;->wV:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 75
    iput v0, p0, Lcom/smartisanos/smengine/a/f;->EV:F

    add-float/2addr p4, p3

    neg-float p3, p4

    div-float/2addr p3, p7

    .line 76
    iput p3, p0, Lcom/smartisanos/smengine/a/f;->xV:F

    add-float/2addr p5, p6

    neg-float p3, p5

    div-float/2addr p3, v1

    .line 77
    iput p3, p0, Lcom/smartisanos/smengine/a/f;->yV:F

    add-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, v2

    .line 78
    iput p1, p0, Lcom/smartisanos/smengine/a/f;->zV:F

    goto :goto_0

    :cond_0
    mul-float p7, p1, v0

    sub-float v1, p4, p3

    div-float v2, p7, v1

    .line 79
    iput v2, p0, Lcom/smartisanos/smengine/a/f;->oV:F

    sub-float v2, p5, p6

    div-float/2addr p7, v2

    .line 80
    iput p7, p0, Lcom/smartisanos/smengine/a/f;->sV:F

    const/high16 p7, -0x40800000    # -1.0f

    .line 81
    iput p7, p0, Lcom/smartisanos/smengine/a/f;->DV:F

    const/high16 p7, -0x80000000

    .line 82
    iput p7, p0, Lcom/smartisanos/smengine/a/f;->EV:F

    add-float/2addr p4, p3

    div-float/2addr p4, v1

    .line 83
    iput p4, p0, Lcom/smartisanos/smengine/a/f;->qV:F

    add-float/2addr p5, p6

    div-float/2addr p5, v2

    .line 84
    iput p5, p0, Lcom/smartisanos/smengine/a/f;->tV:F

    add-float p3, p2, p1

    neg-float p3, p3

    sub-float p4, p2, p1

    div-float/2addr p3, p4

    .line 85
    iput p3, p0, Lcom/smartisanos/smengine/a/f;->wV:F

    mul-float/2addr p2, v0

    mul-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, p4

    .line 86
    iput p1, p0, Lcom/smartisanos/smengine/a/f;->zV:F

    :goto_0
    return-void
.end method

.method public a(Lcom/smartisanos/smengine/a/f;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/f;->loadIdentity()V

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->oV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->oV:F

    .line 3
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->pV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->pV:F

    .line 4
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->qV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->qV:F

    .line 5
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->xV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->xV:F

    .line 6
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->rV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->rV:F

    .line 7
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->sV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->sV:F

    .line 8
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->tV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->tV:F

    .line 9
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->yV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->yV:F

    .line 10
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->uV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->uV:F

    .line 11
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->vV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->vV:F

    .line 12
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->wV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->wV:F

    .line 13
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->zV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->zV:F

    .line 14
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->BV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->BV:F

    .line 15
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->CV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->CV:F

    .line 16
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->DV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->DV:F

    .line 17
    iget p1, p1, Lcom/smartisanos/smengine/a/f;->EV:F

    iput p1, p0, Lcom/smartisanos/smengine/a/f;->EV:F

    :goto_0
    return-void
.end method

.method public a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/e;)V
    .locals 3

    .line 134
    iget v0, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p3, Lcom/smartisanos/smengine/a/e;->oV:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/a/f;->oV:F

    .line 135
    iget v1, p2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v2, p3, Lcom/smartisanos/smengine/a/e;->pV:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/smartisanos/smengine/a/f;->pV:F

    .line 136
    iget p2, p2, Lcom/smartisanos/smengine/a/j;->z:F

    iget v2, p3, Lcom/smartisanos/smengine/a/e;->qV:F

    mul-float/2addr v2, p2

    iput v2, p0, Lcom/smartisanos/smengine/a/f;->qV:F

    .line 137
    iget v2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v2, p0, Lcom/smartisanos/smengine/a/f;->xV:F

    .line 138
    iget v2, p3, Lcom/smartisanos/smengine/a/e;->rV:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/smartisanos/smengine/a/f;->rV:F

    .line 139
    iget v2, p3, Lcom/smartisanos/smengine/a/e;->sV:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/smartisanos/smengine/a/f;->sV:F

    .line 140
    iget v2, p3, Lcom/smartisanos/smengine/a/e;->tV:F

    mul-float/2addr v2, p2

    iput v2, p0, Lcom/smartisanos/smengine/a/f;->tV:F

    .line 141
    iget v2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iput v2, p0, Lcom/smartisanos/smengine/a/f;->yV:F

    .line 142
    iget v2, p3, Lcom/smartisanos/smengine/a/e;->uV:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->uV:F

    .line 143
    iget v0, p3, Lcom/smartisanos/smengine/a/e;->vV:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/a/f;->vV:F

    .line 144
    iget p3, p3, Lcom/smartisanos/smengine/a/e;->wV:F

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/smartisanos/smengine/a/f;->wV:F

    .line 145
    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    iput p1, p0, Lcom/smartisanos/smengine/a/f;->zV:F

    const/4 p1, 0x0

    .line 146
    iput p1, p0, Lcom/smartisanos/smengine/a/f;->BV:F

    .line 147
    iput p1, p0, Lcom/smartisanos/smengine/a/f;->CV:F

    .line 148
    iput p1, p0, Lcom/smartisanos/smengine/a/f;->DV:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 149
    iput p1, p0, Lcom/smartisanos/smengine/a/f;->EV:F

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/e;Lcom/smartisanos/smengine/a/j;)V
    .locals 8

    .line 118
    iget v0, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p3, Lcom/smartisanos/smengine/a/e;->oV:F

    mul-float v2, v0, v1

    iget v3, p3, Lcom/smartisanos/smengine/a/e;->pV:F

    mul-float v4, v3, v0

    iget v5, p4, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/smartisanos/smengine/a/f;->oV:F

    .line 119
    iget v2, p2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v1, v2

    iget p4, p4, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v1, p4

    mul-float/2addr v3, v2

    mul-float v4, p4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v4, v6

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    iput v1, p0, Lcom/smartisanos/smengine/a/f;->pV:F

    .line 120
    iget p2, p2, Lcom/smartisanos/smengine/a/j;->z:F

    iget v1, p3, Lcom/smartisanos/smengine/a/e;->qV:F

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/smartisanos/smengine/a/f;->qV:F

    .line 121
    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v1, p0, Lcom/smartisanos/smengine/a/f;->xV:F

    .line 122
    iget v1, p3, Lcom/smartisanos/smengine/a/e;->rV:F

    mul-float v3, v0, v1

    iget v4, p3, Lcom/smartisanos/smengine/a/e;->sV:F

    mul-float v7, v4, v0

    mul-float/2addr v7, v5

    add-float/2addr v3, v7

    iput v3, p0, Lcom/smartisanos/smengine/a/f;->rV:F

    mul-float/2addr v4, v2

    mul-float v3, p4, v5

    add-float/2addr v3, v6

    mul-float/2addr v4, v3

    mul-float/2addr v1, v2

    mul-float/2addr v1, p4

    add-float/2addr v4, v1

    .line 123
    iput v4, p0, Lcom/smartisanos/smengine/a/f;->sV:F

    .line 124
    iget v1, p3, Lcom/smartisanos/smengine/a/e;->tV:F

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/smartisanos/smengine/a/f;->tV:F

    .line 125
    iget v1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iput v1, p0, Lcom/smartisanos/smengine/a/f;->yV:F

    .line 126
    iget v1, p3, Lcom/smartisanos/smengine/a/e;->uV:F

    mul-float v3, v0, v1

    iget v4, p3, Lcom/smartisanos/smengine/a/e;->vV:F

    mul-float/2addr v0, v4

    mul-float/2addr v0, v5

    add-float/2addr v3, v0

    iput v3, p0, Lcom/smartisanos/smengine/a/f;->uV:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, p4

    mul-float/2addr v4, v2

    mul-float/2addr p4, v5

    add-float/2addr p4, v6

    mul-float/2addr v4, p4

    add-float/2addr v1, v4

    .line 127
    iput v1, p0, Lcom/smartisanos/smengine/a/f;->vV:F

    .line 128
    iget p3, p3, Lcom/smartisanos/smengine/a/e;->wV:F

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/smartisanos/smengine/a/f;->wV:F

    .line 129
    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    iput p1, p0, Lcom/smartisanos/smengine/a/f;->zV:F

    const/4 p1, 0x0

    .line 130
    iput p1, p0, Lcom/smartisanos/smengine/a/f;->BV:F

    .line 131
    iput p1, p0, Lcom/smartisanos/smengine/a/f;->CV:F

    .line 132
    iput p1, p0, Lcom/smartisanos/smengine/a/f;->DV:F

    .line 133
    iput v6, p0, Lcom/smartisanos/smengine/a/f;->EV:F

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V
    .locals 2

    .line 18
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/f;->loadIdentity()V

    .line 19
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object p4

    .line 20
    iget-object v0, p4, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 21
    iget-object p2, p4, Lcom/smartisanos/smengine/d/f;->gY:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p2, p3}, Lcom/smartisanos/smengine/a/j;->o(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 22
    iget-object p3, p4, Lcom/smartisanos/smengine/d/f;->hY:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p3, p2}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p3, v0}, Lcom/smartisanos/smengine/a/j;->o(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 23
    iget v1, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iput v1, p0, Lcom/smartisanos/smengine/a/f;->oV:F

    .line 24
    iget v1, p2, Lcom/smartisanos/smengine/a/j;->y:F

    iput v1, p0, Lcom/smartisanos/smengine/a/f;->pV:F

    .line 25
    iget p2, p2, Lcom/smartisanos/smengine/a/j;->z:F

    iput p2, p0, Lcom/smartisanos/smengine/a/f;->qV:F

    .line 26
    iget p2, p3, Lcom/smartisanos/smengine/a/j;->x:F

    iput p2, p0, Lcom/smartisanos/smengine/a/f;->rV:F

    .line 27
    iget p2, p3, Lcom/smartisanos/smengine/a/j;->y:F

    iput p2, p0, Lcom/smartisanos/smengine/a/f;->sV:F

    .line 28
    iget p2, p3, Lcom/smartisanos/smengine/a/j;->z:F

    iput p2, p0, Lcom/smartisanos/smengine/a/f;->tV:F

    .line 29
    iget p2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    neg-float p2, p2

    iput p2, p0, Lcom/smartisanos/smengine/a/f;->uV:F

    .line 30
    iget p2, v0, Lcom/smartisanos/smengine/a/j;->y:F

    neg-float p2, p2

    iput p2, p0, Lcom/smartisanos/smengine/a/f;->vV:F

    .line 31
    iget p2, v0, Lcom/smartisanos/smengine/a/j;->z:F

    neg-float p2, p2

    iput p2, p0, Lcom/smartisanos/smengine/a/f;->wV:F

    .line 32
    iget-object p2, p4, Lcom/smartisanos/smengine/d/f;->wY:Lcom/smartisanos/smengine/a/f;

    .line 33
    invoke-virtual {p2}, Lcom/smartisanos/smengine/a/f;->loadIdentity()V

    .line 34
    iget p3, p1, Lcom/smartisanos/smengine/a/j;->x:F

    neg-float p3, p3

    iput p3, p2, Lcom/smartisanos/smengine/a/f;->xV:F

    .line 35
    iget p3, p1, Lcom/smartisanos/smengine/a/j;->y:F

    neg-float p3, p3

    iput p3, p2, Lcom/smartisanos/smengine/a/f;->yV:F

    .line 36
    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    neg-float p1, p1

    iput p1, p2, Lcom/smartisanos/smengine/a/f;->zV:F

    .line 37
    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/a/f;->d(Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;

    .line 38
    invoke-virtual {p4}, Lcom/smartisanos/smengine/d/f;->release()V

    return-void
.end method

.method public a([FZ)V
    .locals 16

    move-object/from16 v0, p0

    const/16 v2, 0xd

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz p2, :cond_0

    .line 39
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->oV:F

    aput v1, p1, v15

    .line 40
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->rV:F

    aput v1, p1, v14

    .line 41
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->uV:F

    aput v1, p1, v13

    .line 42
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->BV:F

    aput v1, p1, v12

    .line 43
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->pV:F

    aput v1, p1, v11

    .line 44
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->sV:F

    aput v1, p1, v10

    .line 45
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->vV:F

    aput v1, p1, v9

    .line 46
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->CV:F

    aput v1, p1, v8

    .line 47
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->qV:F

    aput v1, p1, v7

    .line 48
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->tV:F

    aput v1, p1, v6

    .line 49
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->wV:F

    aput v1, p1, v5

    .line 50
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->DV:F

    aput v1, p1, v4

    .line 51
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->xV:F

    aput v1, p1, v3

    .line 52
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->yV:F

    aput v1, p1, v2

    .line 53
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->zV:F

    const/16 v2, 0xe

    aput v1, p1, v2

    const/16 v1, 0xf

    .line 54
    iget v0, v0, Lcom/smartisanos/smengine/a/f;->EV:F

    aput v0, p1, v1

    goto :goto_0

    .line 55
    :cond_0
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->oV:F

    aput v1, p1, v15

    .line 56
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->pV:F

    aput v1, p1, v14

    .line 57
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->qV:F

    aput v1, p1, v13

    .line 58
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->xV:F

    aput v1, p1, v12

    .line 59
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->rV:F

    aput v1, p1, v11

    .line 60
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->sV:F

    aput v1, p1, v10

    .line 61
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->tV:F

    aput v1, p1, v9

    .line 62
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->yV:F

    aput v1, p1, v8

    .line 63
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->uV:F

    aput v1, p1, v7

    .line 64
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->vV:F

    aput v1, p1, v6

    .line 65
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->wV:F

    aput v1, p1, v5

    .line 66
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->zV:F

    aput v1, p1, v4

    .line 67
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->BV:F

    aput v1, p1, v3

    .line 68
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->CV:F

    aput v1, p1, v2

    .line 69
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->DV:F

    const/16 v2, 0xe

    aput v1, p1, v2

    const/16 v1, 0xf

    .line 70
    iget v0, v0, Lcom/smartisanos/smengine/a/f;->EV:F

    aput v0, p1, v1

    :goto_0
    return-void
.end method

.method public aa(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->oV:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->oV:F

    .line 2
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->pV:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->pV:F

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->qV:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->qV:F

    .line 4
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->xV:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->xV:F

    .line 5
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->rV:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->rV:F

    .line 6
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->sV:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->sV:F

    .line 7
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->tV:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->tV:F

    .line 8
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->yV:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->yV:F

    .line 9
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->uV:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->uV:F

    .line 10
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->vV:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->vV:F

    .line 11
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->wV:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->wV:F

    .line 12
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->zV:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->zV:F

    .line 13
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->BV:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->BV:F

    .line 14
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->CV:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->CV:F

    .line 15
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->DV:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->DV:F

    .line 16
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->EV:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->EV:F

    return-void
.end method

.method public b(Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;
    .locals 20

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 35
    new-instance v1, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/f;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    .line 36
    :goto_0
    iget v2, v0, Lcom/smartisanos/smengine/a/f;->oV:F

    iget v3, v0, Lcom/smartisanos/smengine/a/f;->sV:F

    mul-float v4, v2, v3

    iget v5, v0, Lcom/smartisanos/smengine/a/f;->pV:F

    iget v6, v0, Lcom/smartisanos/smengine/a/f;->rV:F

    mul-float v7, v5, v6

    sub-float/2addr v4, v7

    .line 37
    iget v7, v0, Lcom/smartisanos/smengine/a/f;->tV:F

    mul-float v8, v2, v7

    iget v9, v0, Lcom/smartisanos/smengine/a/f;->qV:F

    mul-float v10, v9, v6

    sub-float/2addr v8, v10

    .line 38
    iget v10, v0, Lcom/smartisanos/smengine/a/f;->yV:F

    mul-float/2addr v2, v10

    iget v11, v0, Lcom/smartisanos/smengine/a/f;->xV:F

    mul-float/2addr v6, v11

    sub-float/2addr v2, v6

    mul-float v6, v5, v7

    mul-float v12, v9, v3

    sub-float/2addr v6, v12

    mul-float/2addr v5, v10

    mul-float/2addr v3, v11

    sub-float/2addr v5, v3

    mul-float/2addr v9, v10

    mul-float/2addr v11, v7

    sub-float/2addr v9, v11

    .line 39
    iget v3, v0, Lcom/smartisanos/smengine/a/f;->uV:F

    iget v7, v0, Lcom/smartisanos/smengine/a/f;->CV:F

    mul-float v10, v3, v7

    iget v11, v0, Lcom/smartisanos/smengine/a/f;->vV:F

    iget v12, v0, Lcom/smartisanos/smengine/a/f;->BV:F

    mul-float v13, v11, v12

    sub-float/2addr v10, v13

    .line 40
    iget v13, v0, Lcom/smartisanos/smengine/a/f;->DV:F

    mul-float v14, v3, v13

    iget v15, v0, Lcom/smartisanos/smengine/a/f;->wV:F

    mul-float v16, v15, v12

    sub-float v14, v14, v16

    move-object/from16 v16, v1

    .line 41
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->EV:F

    mul-float/2addr v3, v1

    move/from16 p1, v9

    iget v9, v0, Lcom/smartisanos/smengine/a/f;->zV:F

    mul-float/2addr v12, v9

    sub-float/2addr v3, v12

    mul-float v12, v11, v13

    mul-float v17, v15, v7

    sub-float v12, v12, v17

    mul-float/2addr v11, v1

    mul-float/2addr v7, v9

    sub-float/2addr v11, v7

    mul-float/2addr v15, v1

    mul-float/2addr v9, v13

    sub-float/2addr v15, v9

    mul-float v1, v4, v15

    mul-float v7, v8, v11

    sub-float/2addr v1, v7

    mul-float v7, v2, v12

    add-float/2addr v1, v7

    mul-float v7, v6, v3

    add-float/2addr v1, v7

    mul-float v7, v5, v14

    sub-float/2addr v1, v7

    mul-float v9, p1, v10

    add-float/2addr v1, v9

    .line 42
    invoke-static {v1}, Lcom/smartisanos/smengine/a/a;->abs(F)F

    move-result v7

    const/4 v9, 0x0

    cmpg-float v7, v7, v9

    if-lez v7, :cond_1

    .line 43
    iget v7, v0, Lcom/smartisanos/smengine/a/f;->sV:F

    mul-float v9, v7, v15

    iget v13, v0, Lcom/smartisanos/smengine/a/f;->tV:F

    mul-float v17, v13, v11

    sub-float v9, v9, v17

    move/from16 v17, v1

    iget v1, v0, Lcom/smartisanos/smengine/a/f;->yV:F

    mul-float v18, v1, v12

    add-float v9, v9, v18

    move/from16 v18, v4

    move-object/from16 v4, v16

    iput v9, v4, Lcom/smartisanos/smengine/a/f;->oV:F

    .line 44
    iget v9, v0, Lcom/smartisanos/smengine/a/f;->rV:F

    neg-float v9, v9

    mul-float/2addr v9, v15

    mul-float v16, v13, v3

    add-float v9, v9, v16

    mul-float v16, v1, v14

    sub-float v9, v9, v16

    iput v9, v4, Lcom/smartisanos/smengine/a/f;->rV:F

    .line 45
    iget v9, v0, Lcom/smartisanos/smengine/a/f;->rV:F

    mul-float v16, v9, v11

    mul-float v19, v7, v3

    sub-float v16, v16, v19

    mul-float/2addr v1, v10

    add-float v1, v16, v1

    iput v1, v4, Lcom/smartisanos/smengine/a/f;->uV:F

    neg-float v1, v9

    mul-float/2addr v1, v12

    mul-float/2addr v7, v14

    add-float/2addr v1, v7

    mul-float/2addr v13, v10

    sub-float/2addr v1, v13

    .line 46
    iput v1, v4, Lcom/smartisanos/smengine/a/f;->BV:F

    .line 47
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->pV:F

    neg-float v1, v1

    mul-float/2addr v1, v15

    iget v7, v0, Lcom/smartisanos/smengine/a/f;->qV:F

    mul-float v9, v7, v11

    add-float/2addr v1, v9

    iget v9, v0, Lcom/smartisanos/smengine/a/f;->xV:F

    mul-float v13, v9, v12

    sub-float/2addr v1, v13

    iput v1, v4, Lcom/smartisanos/smengine/a/f;->pV:F

    .line 48
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->oV:F

    mul-float/2addr v15, v1

    mul-float v13, v7, v3

    sub-float/2addr v15, v13

    mul-float v13, v9, v14

    add-float/2addr v15, v13

    iput v15, v4, Lcom/smartisanos/smengine/a/f;->sV:F

    neg-float v13, v1

    mul-float/2addr v13, v11

    .line 49
    iget v11, v0, Lcom/smartisanos/smengine/a/f;->pV:F

    mul-float/2addr v3, v11

    add-float/2addr v13, v3

    mul-float/2addr v9, v10

    sub-float/2addr v13, v9

    iput v13, v4, Lcom/smartisanos/smengine/a/f;->vV:F

    mul-float/2addr v1, v12

    mul-float/2addr v11, v14

    sub-float/2addr v1, v11

    mul-float/2addr v7, v10

    add-float/2addr v1, v7

    .line 50
    iput v1, v4, Lcom/smartisanos/smengine/a/f;->CV:F

    .line 51
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->CV:F

    mul-float v9, v1, p1

    iget v3, v0, Lcom/smartisanos/smengine/a/f;->DV:F

    mul-float v7, v3, v5

    sub-float/2addr v9, v7

    iget v7, v0, Lcom/smartisanos/smengine/a/f;->EV:F

    mul-float v10, v7, v6

    add-float/2addr v9, v10

    iput v9, v4, Lcom/smartisanos/smengine/a/f;->qV:F

    .line 52
    iget v9, v0, Lcom/smartisanos/smengine/a/f;->BV:F

    neg-float v10, v9

    mul-float v10, v10, p1

    mul-float v11, v3, v2

    add-float/2addr v10, v11

    mul-float v11, v7, v8

    sub-float/2addr v10, v11

    iput v10, v4, Lcom/smartisanos/smengine/a/f;->tV:F

    mul-float v10, v9, v5

    mul-float v11, v1, v2

    sub-float/2addr v10, v11

    mul-float v7, v7, v18

    add-float/2addr v10, v7

    .line 53
    iput v10, v4, Lcom/smartisanos/smengine/a/f;->wV:F

    neg-float v7, v9

    mul-float/2addr v7, v6

    mul-float/2addr v1, v8

    add-float/2addr v7, v1

    mul-float v3, v3, v18

    sub-float/2addr v7, v3

    .line 54
    iput v7, v4, Lcom/smartisanos/smengine/a/f;->DV:F

    .line 55
    iget v1, v0, Lcom/smartisanos/smengine/a/f;->vV:F

    neg-float v3, v1

    mul-float v3, v3, p1

    iget v7, v0, Lcom/smartisanos/smengine/a/f;->wV:F

    mul-float v9, v7, v5

    add-float/2addr v3, v9

    iget v9, v0, Lcom/smartisanos/smengine/a/f;->zV:F

    mul-float v10, v9, v6

    sub-float/2addr v3, v10

    iput v3, v4, Lcom/smartisanos/smengine/a/f;->xV:F

    .line 56
    iget v0, v0, Lcom/smartisanos/smengine/a/f;->uV:F

    mul-float v3, v0, p1

    mul-float v10, v7, v2

    sub-float/2addr v3, v10

    mul-float v10, v9, v8

    add-float/2addr v3, v10

    iput v3, v4, Lcom/smartisanos/smengine/a/f;->yV:F

    neg-float v3, v0

    mul-float/2addr v3, v5

    mul-float/2addr v2, v1

    add-float/2addr v3, v2

    mul-float v9, v9, v18

    sub-float/2addr v3, v9

    .line 57
    iput v3, v4, Lcom/smartisanos/smengine/a/f;->zV:F

    mul-float/2addr v0, v6

    mul-float/2addr v1, v8

    sub-float/2addr v0, v1

    mul-float v7, v7, v18

    add-float/2addr v0, v7

    .line 58
    iput v0, v4, Lcom/smartisanos/smengine/a/f;->EV:F

    const/high16 v0, 0x3f800000    # 1.0f

    div-float v0, v0, v17

    .line 59
    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/a/f;->aa(F)V

    return-object v4

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "This matrix cannot be inverted"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b([FZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    const/16 v2, 0xb

    const/4 v3, 0x7

    const/4 v4, 0x3

    const/16 v6, 0xa

    const/4 v7, 0x6

    const/4 v8, 0x2

    const/16 v9, 0xd

    const/16 v10, 0x9

    const/4 v11, 0x5

    const/4 v12, 0x1

    const/16 v13, 0xc

    const/16 v14, 0x8

    const/4 v15, 0x4

    const/16 v16, 0x0

    if-eqz p2, :cond_0

    .line 2
    aget v5, v1, v16

    iput v5, v0, Lcom/smartisanos/smengine/a/f;->oV:F

    .line 3
    aget v5, v1, v12

    iput v5, v0, Lcom/smartisanos/smengine/a/f;->pV:F

    .line 4
    aget v5, v1, v8

    iput v5, v0, Lcom/smartisanos/smengine/a/f;->qV:F

    .line 5
    aget v4, v1, v4

    iput v4, v0, Lcom/smartisanos/smengine/a/f;->xV:F

    .line 6
    aget v4, v1, v15

    iput v4, v0, Lcom/smartisanos/smengine/a/f;->rV:F

    .line 7
    aget v4, v1, v11

    iput v4, v0, Lcom/smartisanos/smengine/a/f;->sV:F

    .line 8
    aget v4, v1, v7

    iput v4, v0, Lcom/smartisanos/smengine/a/f;->tV:F

    .line 9
    aget v3, v1, v3

    iput v3, v0, Lcom/smartisanos/smengine/a/f;->yV:F

    .line 10
    aget v3, v1, v14

    iput v3, v0, Lcom/smartisanos/smengine/a/f;->uV:F

    .line 11
    aget v3, v1, v10

    iput v3, v0, Lcom/smartisanos/smengine/a/f;->vV:F

    .line 12
    aget v3, v1, v6

    iput v3, v0, Lcom/smartisanos/smengine/a/f;->wV:F

    .line 13
    aget v2, v1, v2

    iput v2, v0, Lcom/smartisanos/smengine/a/f;->zV:F

    .line 14
    aget v2, v1, v13

    iput v2, v0, Lcom/smartisanos/smengine/a/f;->BV:F

    .line 15
    aget v2, v1, v9

    iput v2, v0, Lcom/smartisanos/smengine/a/f;->CV:F

    const/16 v2, 0xe

    .line 16
    aget v2, v1, v2

    iput v2, v0, Lcom/smartisanos/smengine/a/f;->DV:F

    const/16 v2, 0xf

    .line 17
    aget v1, v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/a/f;->EV:F

    goto :goto_0

    .line 18
    :cond_0
    aget v5, v1, v16

    iput v5, v0, Lcom/smartisanos/smengine/a/f;->oV:F

    .line 19
    aget v5, v1, v15

    iput v5, v0, Lcom/smartisanos/smengine/a/f;->pV:F

    .line 20
    aget v5, v1, v14

    iput v5, v0, Lcom/smartisanos/smengine/a/f;->qV:F

    .line 21
    aget v5, v1, v13

    iput v5, v0, Lcom/smartisanos/smengine/a/f;->xV:F

    .line 22
    aget v5, v1, v12

    iput v5, v0, Lcom/smartisanos/smengine/a/f;->rV:F

    .line 23
    aget v5, v1, v11

    iput v5, v0, Lcom/smartisanos/smengine/a/f;->sV:F

    .line 24
    aget v5, v1, v10

    iput v5, v0, Lcom/smartisanos/smengine/a/f;->tV:F

    .line 25
    aget v5, v1, v9

    iput v5, v0, Lcom/smartisanos/smengine/a/f;->yV:F

    .line 26
    aget v5, v1, v8

    iput v5, v0, Lcom/smartisanos/smengine/a/f;->uV:F

    .line 27
    aget v5, v1, v7

    iput v5, v0, Lcom/smartisanos/smengine/a/f;->vV:F

    .line 28
    aget v5, v1, v6

    iput v5, v0, Lcom/smartisanos/smengine/a/f;->wV:F

    const/16 v5, 0xe

    .line 29
    aget v5, v1, v5

    iput v5, v0, Lcom/smartisanos/smengine/a/f;->zV:F

    .line 30
    aget v4, v1, v4

    iput v4, v0, Lcom/smartisanos/smengine/a/f;->BV:F

    .line 31
    aget v3, v1, v3

    iput v3, v0, Lcom/smartisanos/smengine/a/f;->CV:F

    .line 32
    aget v2, v1, v2

    iput v2, v0, Lcom/smartisanos/smengine/a/f;->DV:F

    const/16 v2, 0xf

    .line 33
    aget v1, v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/a/f;->EV:F

    :goto_0
    return-void

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array must be of size 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/a/f;->a(Lcom/smartisanos/smengine/a/f;Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/smartisanos/smengine/a/f;
    .locals 0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/a/f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/f;->clone()Lcom/smartisanos/smengine/a/f;

    move-result-object p0

    return-object p0
.end method

.method public d(Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p0}, Lcom/smartisanos/smengine/a/f;->a(Lcom/smartisanos/smengine/a/f;Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;

    move-result-object p0

    return-object p0
.end method

.method public d(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 4

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 3
    :cond_0
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    .line 4
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->oV:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/smartisanos/smengine/a/f;->pV:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/a/f;->qV:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/a/f;->xV:F

    add-float/2addr v2, v3

    iput v2, p2, Lcom/smartisanos/smengine/a/j;->x:F

    .line 5
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->rV:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/smartisanos/smengine/a/f;->sV:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/a/f;->tV:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/a/f;->yV:F

    add-float/2addr v2, v3

    iput v2, p2, Lcom/smartisanos/smengine/a/j;->y:F

    .line 6
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->uV:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/smartisanos/smengine/a/f;->vV:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/smartisanos/smengine/a/f;->wV:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    iget p0, p0, Lcom/smartisanos/smengine/a/f;->zV:F

    add-float/2addr v2, p0

    iput v2, p2, Lcom/smartisanos/smengine/a/j;->z:F

    return-object p2
.end method

.method public e(Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;
    .locals 1

    .line 1
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->oV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->oV:F

    .line 2
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->pV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->pV:F

    .line 3
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->qV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->qV:F

    .line 4
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->xV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->xV:F

    .line 5
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->rV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->rV:F

    .line 6
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->sV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->sV:F

    .line 7
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->tV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->tV:F

    .line 8
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->yV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->yV:F

    .line 9
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->uV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->uV:F

    .line 10
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->vV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->vV:F

    .line 11
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->wV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->wV:F

    .line 12
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->zV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->zV:F

    .line 13
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->BV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->BV:F

    .line 14
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->CV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->CV:F

    .line 15
    iget v0, p1, Lcom/smartisanos/smengine/a/f;->DV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->DV:F

    .line 16
    iget p1, p1, Lcom/smartisanos/smengine/a/f;->EV:F

    iput p1, p0, Lcom/smartisanos/smengine/a/f;->EV:F

    return-object p0
.end method

.method public e(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/a/f;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/smartisanos/smengine/a/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lcom/smartisanos/smengine/a/f;

    .line 3
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->oV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/f;->oV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->pV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/f;->pV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->qV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/f;->qV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->xV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/f;->xV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 7
    :cond_5
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->rV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/f;->rV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_6

    return v1

    .line 8
    :cond_6
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->sV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/f;->sV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_7

    return v1

    .line 9
    :cond_7
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->tV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/f;->tV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_8

    return v1

    .line 10
    :cond_8
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->yV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/f;->yV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_9

    return v1

    .line 11
    :cond_9
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->uV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/f;->uV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_a

    return v1

    .line 12
    :cond_a
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->vV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/f;->vV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_b

    return v1

    .line 13
    :cond_b
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->wV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/f;->wV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_c

    return v1

    .line 14
    :cond_c
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->zV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/f;->zV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_d

    return v1

    .line 15
    :cond_d
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->BV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/f;->BV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_e

    return v1

    .line 16
    :cond_e
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->CV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/f;->CV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_f

    return v1

    .line 17
    :cond_f
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->DV:F

    iget v3, p1, Lcom/smartisanos/smengine/a/f;->DV:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_10

    return v1

    .line 18
    :cond_10
    iget p0, p0, Lcom/smartisanos/smengine/a/f;->EV:F

    iget p1, p1, Lcom/smartisanos/smengine/a/f;->EV:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_11

    return v1

    :cond_11
    return v0

    :cond_12
    :goto_0
    return v1
.end method

.method public f(FFF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/a/f;->xV:F

    .line 2
    iput p2, p0, Lcom/smartisanos/smengine/a/f;->yV:F

    .line 3
    iput p3, p0, Lcom/smartisanos/smengine/a/f;->zV:F

    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->oV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x559

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 2
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->pV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->qV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 4
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->xV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 5
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->rV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 6
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->sV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 7
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->tV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 8
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->yV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 9
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->uV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 10
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->vV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 11
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->wV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 12
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->zV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 13
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->BV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 14
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->CV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 15
    iget v0, p0, Lcom/smartisanos/smengine/a/f;->DV:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 16
    iget p0, p0, Lcom/smartisanos/smengine/a/f;->EV:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public loadIdentity()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/smartisanos/smengine/a/f;->xV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->qV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->pV:F

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/a/f;->yV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->tV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->rV:F

    .line 3
    iput v0, p0, Lcom/smartisanos/smengine/a/f;->zV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->vV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->uV:F

    .line 4
    iput v0, p0, Lcom/smartisanos/smengine/a/f;->DV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->CV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->BV:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/smartisanos/smengine/a/f;->EV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->wV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->sV:F

    iput v0, p0, Lcom/smartisanos/smengine/a/f;->oV:F

    return-void
.end method

.method public setScale(FFF)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    iget v2, p0, Lcom/smartisanos/smengine/a/f;->oV:F

    iget v3, p0, Lcom/smartisanos/smengine/a/f;->rV:F

    iget v4, p0, Lcom/smartisanos/smengine/a/f;->uV:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 3
    iget-object v1, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->zt()Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/a/j;->aa(F)Lcom/smartisanos/smengine/a/j;

    .line 4
    iget-object p1, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v1, p0, Lcom/smartisanos/smengine/a/f;->oV:F

    .line 5
    iget v1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iput v1, p0, Lcom/smartisanos/smengine/a/f;->rV:F

    .line 6
    iget v1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    iput v1, p0, Lcom/smartisanos/smengine/a/f;->uV:F

    .line 7
    iget v1, p0, Lcom/smartisanos/smengine/a/f;->pV:F

    iget v2, p0, Lcom/smartisanos/smengine/a/f;->sV:F

    iget v3, p0, Lcom/smartisanos/smengine/a/f;->vV:F

    invoke-virtual {p1, v1, v2, v3}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 8
    iget-object p1, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/j;->zt()Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/a/j;->aa(F)Lcom/smartisanos/smengine/a/j;

    .line 9
    iget-object p1, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    iget p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iput p2, p0, Lcom/smartisanos/smengine/a/f;->pV:F

    .line 10
    iget p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iput p2, p0, Lcom/smartisanos/smengine/a/f;->sV:F

    .line 11
    iget p2, p1, Lcom/smartisanos/smengine/a/j;->z:F

    iput p2, p0, Lcom/smartisanos/smengine/a/f;->vV:F

    .line 12
    iget p2, p0, Lcom/smartisanos/smengine/a/f;->qV:F

    iget v1, p0, Lcom/smartisanos/smengine/a/f;->tV:F

    iget v2, p0, Lcom/smartisanos/smengine/a/f;->wV:F

    invoke-virtual {p1, p2, v1, v2}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 13
    iget-object p1, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/j;->zt()Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1, p3}, Lcom/smartisanos/smengine/a/j;->aa(F)Lcom/smartisanos/smengine/a/j;

    .line 14
    iget-object p1, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    iget p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iput p2, p0, Lcom/smartisanos/smengine/a/f;->qV:F

    .line 15
    iget p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iput p2, p0, Lcom/smartisanos/smengine/a/f;->tV:F

    .line 16
    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    iput p1, p0, Lcom/smartisanos/smengine/a/f;->wV:F

    .line 17
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Matrix4f\n(\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget v2, p0, Lcom/smartisanos/smengine/a/f;->oV:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget v3, p0, Lcom/smartisanos/smengine/a/f;->pV:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget v3, p0, Lcom/smartisanos/smengine/a/f;->qV:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget v3, p0, Lcom/smartisanos/smengine/a/f;->xV:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " \n"

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget v4, p0, Lcom/smartisanos/smengine/a/f;->rV:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v4, p0, Lcom/smartisanos/smengine/a/f;->sV:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v4, p0, Lcom/smartisanos/smengine/a/f;->tV:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v4, p0, Lcom/smartisanos/smengine/a/f;->yV:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v4, p0, Lcom/smartisanos/smengine/a/f;->uV:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget v4, p0, Lcom/smartisanos/smengine/a/f;->vV:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget v4, p0, Lcom/smartisanos/smengine/a/f;->wV:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v4, p0, Lcom/smartisanos/smengine/a/f;->zV:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget v1, p0, Lcom/smartisanos/smengine/a/f;->BV:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v1, p0, Lcom/smartisanos/smengine/a/f;->CV:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v1, p0, Lcom/smartisanos/smengine/a/f;->DV:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget p0, p0, Lcom/smartisanos/smengine/a/f;->EV:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " \n)"

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
