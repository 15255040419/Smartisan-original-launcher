.class public Lcom/smartisanos/smengine/mymaterial/m;
.super Lcom/smartisanos/smengine/mymaterial/f;
.source "SimpleTextureModularColorClipPlaneMaterial.java"


# instance fields
.field private mMode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/smartisanos/smengine/mymaterial/m;->mMode:I

    .line 3
    iput p4, p0, Lcom/smartisanos/smengine/mymaterial/m;->mMode:I

    .line 4
    iget p1, p0, Lcom/smartisanos/smengine/mymaterial/m;->mMode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 5
    iput-boolean p2, p0, Lcom/smartisanos/smengine/mymaterial/f;->hW:Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    .line 6
    iput-boolean p2, p0, Lcom/smartisanos/smengine/mymaterial/f;->dW:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private dA()V
    .locals 15

    const/16 v0, 0xf

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/a/k;

    const-string v1, "uClipPlane"

    const/4 v2, 0x4

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v2, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v4

    .line 3
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/smartisanos/smengine/sa;->a(IFFFF)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v10

    .line 5
    iget-object v9, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    iget v11, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v12, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v13, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v14, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual/range {v9 .. v14}, Lcom/smartisanos/smengine/sa;->a(IFFFF)V

    :goto_0
    return-void
.end method

.method private eA()V
    .locals 15

    const/16 v0, 0x11

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    const-string v1, "uClipPlaneHeight"

    const/16 v2, 0x10

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v2, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v4

    .line 3
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/smartisanos/smengine/sa;->a(IFFFF)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v10

    .line 5
    iget-object v9, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual/range {v9 .. v14}, Lcom/smartisanos/smengine/sa;->a(IFFFF)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/y;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->As()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Ht()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p3, p2, v1, v0}, Lcom/smartisanos/smengine/mymaterial/f;->a(ZLcom/smartisanos/smengine/y;ZZ)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->p(Lcom/smartisanos/smengine/SceneNode;)V

    .line 5
    iget v2, p0, Lcom/smartisanos/smengine/mymaterial/m;->mMode:I

    if-ne v2, v1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->r(Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v2, v1, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->o(Lcom/smartisanos/smengine/SceneNode;)V

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/smengine/mymaterial/m;->eA()V

    .line 9
    :goto_0
    invoke-direct {p0}, Lcom/smartisanos/smengine/mymaterial/m;->dA()V

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Pt()V

    .line 11
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->tc(I)V

    .line 12
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;->b(Lcom/smartisanos/smengine/y;Z)V

    return-void

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mode error : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/smengine/mymaterial/m;->mMode:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
