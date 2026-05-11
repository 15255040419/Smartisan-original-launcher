.class public Lcom/smartisanos/smengine/mymaterial/D;
.super Lcom/smartisanos/smengine/mymaterial/f;
.source "TwoTextureBatchMaterial.java"


# instance fields
.field private qW:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/smengine/mymaterial/f;->bW:Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/smengine/mymaterial/f;->cW:Z

    return-void
.end method


# virtual methods
.method protected Rt()V
    .locals 9

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/smengine/a/k;

    const/4 v1, 0x6

    const-string v2, "uModularColorArray"

    .line 2
    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/D;->qW:[F

    if-nez v2, :cond_0

    .line 4
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [F

    .line 5
    iput-object v2, p0, Lcom/smartisanos/smengine/mymaterial/D;->qW:[F

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 6
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 7
    aget-object v4, v0, v2

    .line 8
    iget-object v5, p0, Lcom/smartisanos/smengine/mymaterial/D;->qW:[F

    mul-int/lit8 v6, v2, 0x4

    iget v7, v4, Lcom/smartisanos/smengine/a/k;->x:F

    aput v7, v5, v6

    add-int/lit8 v7, v6, 0x1

    .line 9
    iget v8, v4, Lcom/smartisanos/smengine/a/k;->y:F

    aput v8, v5, v7

    add-int/lit8 v7, v6, 0x2

    .line 10
    iget v8, v4, Lcom/smartisanos/smengine/a/k;->z:F

    aput v8, v5, v7

    add-int/lit8 v6, v6, 0x3

    .line 11
    iget v4, v4, Lcom/smartisanos/smengine/a/k;->w:F

    aput v4, v5, v6

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/D;->qW:[F

    array-length v4, v2

    if-ne v3, v4, :cond_2

    .line 13
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    array-length v0, v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/smartisanos/smengine/sa;->a(I[FI)V

    return-void

    .line 14
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "create mvp array error"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/y;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->As()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Ht()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p3, p2, v1, v0}, Lcom/smartisanos/smengine/mymaterial/f;->a(ZLcom/smartisanos/smengine/y;ZZ)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->q(Lcom/smartisanos/smengine/SceneNode;)V

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/D;->Rt()V

    .line 6
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->tc(I)V

    .line 7
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->wc(I)V

    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;->b(Lcom/smartisanos/smengine/y;Z)V

    return-void
.end method
