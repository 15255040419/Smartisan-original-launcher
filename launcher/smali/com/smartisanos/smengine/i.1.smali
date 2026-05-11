.class public Lcom/smartisanos/smengine/i;
.super Lcom/smartisanos/smengine/j;
.source "BoundingRect.java"


# instance fields
.field private HC:Lcom/smartisanos/smengine/a/i;

.field private IC:Lcom/smartisanos/smengine/a/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/smartisanos/smengine/j;-><init>()V

    .line 10
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/i;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/i;->HC:Lcom/smartisanos/smengine/a/i;

    .line 11
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/i;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/i;->IC:Lcom/smartisanos/smengine/a/i;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/smengine/j;-><init>()V

    .line 6
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/i;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/i;->HC:Lcom/smartisanos/smengine/a/i;

    .line 7
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/i;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/i;->IC:Lcom/smartisanos/smengine/a/i;

    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/i;->c(FFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/smengine/j;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/i;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/i;->HC:Lcom/smartisanos/smengine/a/i;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/i;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/i;->IC:Lcom/smartisanos/smengine/a/i;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/i;->a(Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/i;)V

    return-void
.end method


# virtual methods
.method public Pj()Lcom/smartisanos/smengine/a/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/i;->IC:Lcom/smartisanos/smengine/a/i;

    return-object p0
.end method

.method public Qj()Lcom/smartisanos/smengine/a/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/i;->HC:Lcom/smartisanos/smengine/a/i;

    return-object p0
.end method

.method public a(Lcom/smartisanos/smengine/a/h;Lcom/smartisanos/smengine/j;)V
    .locals 9

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/h;->Ct()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v0

    .line 7
    iget-object v2, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    .line 8
    iget-object v3, v0, Lcom/smartisanos/smengine/d/f;->gY:Lcom/smartisanos/smengine/a/j;

    .line 9
    iget-object v4, v0, Lcom/smartisanos/smengine/d/f;->hY:Lcom/smartisanos/smengine/a/j;

    .line 10
    iget-object v5, v0, Lcom/smartisanos/smengine/d/f;->iY:Lcom/smartisanos/smengine/a/j;

    .line 11
    iget-object v6, p0, Lcom/smartisanos/smengine/i;->HC:Lcom/smartisanos/smengine/a/i;

    iget v7, v6, Lcom/smartisanos/smengine/a/i;->x:F

    iget v6, v6, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v2, v7, v6, v1}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 12
    iget-object v6, p0, Lcom/smartisanos/smengine/i;->IC:Lcom/smartisanos/smengine/a/i;

    iget v6, v6, Lcom/smartisanos/smengine/a/i;->x:F

    iget-object v7, p0, Lcom/smartisanos/smengine/i;->HC:Lcom/smartisanos/smengine/a/i;

    iget v7, v7, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v3, v6, v7, v1}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 13
    iget-object v6, p0, Lcom/smartisanos/smengine/i;->IC:Lcom/smartisanos/smengine/a/i;

    iget v7, v6, Lcom/smartisanos/smengine/a/i;->x:F

    iget v6, v6, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v4, v7, v6, v1}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 14
    iget-object v6, p0, Lcom/smartisanos/smengine/i;->HC:Lcom/smartisanos/smengine/a/i;

    iget v6, v6, Lcom/smartisanos/smengine/a/i;->x:F

    iget-object p0, p0, Lcom/smartisanos/smengine/i;->IC:Lcom/smartisanos/smengine/a/i;

    iget p0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v5, v6, p0, v1}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 15
    iget-object p0, v0, Lcom/smartisanos/smengine/d/f;->jY:Lcom/smartisanos/smengine/a/j;

    .line 16
    iget-object v1, v0, Lcom/smartisanos/smengine/d/f;->kY:Lcom/smartisanos/smengine/a/j;

    .line 17
    iget-object v6, v0, Lcom/smartisanos/smengine/d/f;->lY:Lcom/smartisanos/smengine/a/j;

    .line 18
    iget-object v7, v0, Lcom/smartisanos/smengine/d/f;->nY:Lcom/smartisanos/smengine/a/j;

    .line 19
    invoke-virtual {p1, v2, p0}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    .line 20
    invoke-virtual {p1, v3, v1}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 21
    invoke-virtual {p1, v4, v6}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 22
    invoke-virtual {p1, v5, v7}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 23
    iget v3, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 24
    iget p0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v4, 0x3

    new-array v5, v4, [Lcom/smartisanos/smengine/a/j;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object p1, v5, v1

    move v1, p0

    move p1, v3

    :goto_0
    if-ge v6, v4, :cond_4

    .line 25
    aget-object v2, v5, v6

    .line 26
    iget v7, v2, Lcom/smartisanos/smengine/a/j;->x:F

    cmpg-float v8, v7, v3

    if-gez v8, :cond_0

    move v3, v7

    .line 27
    :cond_0
    iget v7, v2, Lcom/smartisanos/smengine/a/j;->y:F

    cmpg-float v8, v7, p0

    if-gez v8, :cond_1

    move p0, v7

    .line 28
    :cond_1
    iget v7, v2, Lcom/smartisanos/smengine/a/j;->x:F

    cmpl-float v8, v7, p1

    if-lez v8, :cond_2

    move p1, v7

    .line 29
    :cond_2
    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    cmpl-float v7, v2, v1

    if-lez v7, :cond_3

    move v1, v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 30
    :cond_4
    check-cast p2, Lcom/smartisanos/smengine/i;

    .line 31
    invoke-virtual {p2, v3, p0, p1, v1}, Lcom/smartisanos/smengine/i;->c(FFFF)V

    .line 32
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    goto :goto_3

    .line 33
    :cond_5
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v0

    .line 34
    iget-object v2, v0, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    .line 35
    iget-object v3, p0, Lcom/smartisanos/smengine/i;->HC:Lcom/smartisanos/smengine/a/i;

    iget v4, v3, Lcom/smartisanos/smengine/a/i;->x:F

    iput v4, v2, Lcom/smartisanos/smengine/a/j;->x:F

    .line 36
    iget v3, v3, Lcom/smartisanos/smengine/a/i;->y:F

    iput v3, v2, Lcom/smartisanos/smengine/a/j;->y:F

    .line 37
    iput v1, v2, Lcom/smartisanos/smengine/a/j;->z:F

    .line 38
    iget-object v3, v0, Lcom/smartisanos/smengine/d/f;->gY:Lcom/smartisanos/smengine/a/j;

    .line 39
    iget-object p0, p0, Lcom/smartisanos/smengine/i;->IC:Lcom/smartisanos/smengine/a/i;

    iget v4, p0, Lcom/smartisanos/smengine/a/i;->x:F

    iput v4, v3, Lcom/smartisanos/smengine/a/j;->x:F

    .line 40
    iget p0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    iput p0, v3, Lcom/smartisanos/smengine/a/j;->y:F

    .line 41
    iput v1, v3, Lcom/smartisanos/smengine/a/j;->z:F

    .line 42
    iget-object p0, v0, Lcom/smartisanos/smengine/d/f;->hY:Lcom/smartisanos/smengine/a/j;

    .line 43
    iget-object v1, v0, Lcom/smartisanos/smengine/d/f;->iY:Lcom/smartisanos/smengine/a/j;

    .line 44
    invoke-virtual {p1, v2, p0}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 45
    invoke-virtual {p1, v3, v1}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 46
    iget p1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 47
    iget p0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 48
    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    cmpg-float v3, v2, p1

    if-gez v3, :cond_6

    goto :goto_1

    :cond_6
    move v2, p1

    .line 49
    :goto_1
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    cmpg-float v4, v3, p0

    if-gez v4, :cond_7

    goto :goto_2

    :cond_7
    move v3, p0

    .line 50
    :goto_2
    iget v4, v1, Lcom/smartisanos/smengine/a/j;->x:F

    cmpl-float v5, v4, p1

    if-lez v5, :cond_8

    move p1, v4

    .line 51
    :cond_8
    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    cmpl-float v4, v1, p0

    if-lez v4, :cond_9

    move p0, v1

    .line 52
    :cond_9
    check-cast p2, Lcom/smartisanos/smengine/i;

    .line 53
    invoke-virtual {p2, v2, v3, p1, p0}, Lcom/smartisanos/smengine/i;->c(FFFF)V

    .line 54
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    :goto_3
    return-void
.end method

.method public a(Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/i;->HC:Lcom/smartisanos/smengine/a/i;

    iget v1, p1, Lcom/smartisanos/smengine/a/i;->x:F

    iput v1, v0, Lcom/smartisanos/smengine/a/i;->x:F

    .line 2
    iget p1, p1, Lcom/smartisanos/smengine/a/i;->y:F

    iput p1, v0, Lcom/smartisanos/smengine/a/i;->y:F

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/i;->IC:Lcom/smartisanos/smengine/a/i;

    iget p1, p2, Lcom/smartisanos/smengine/a/i;->x:F

    iput p1, p0, Lcom/smartisanos/smengine/a/i;->x:F

    .line 4
    iget p1, p2, Lcom/smartisanos/smengine/a/i;->y:F

    iput p1, p0, Lcom/smartisanos/smengine/a/i;->y:F

    return-void
.end method

.method public c(FFFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/i;->HC:Lcom/smartisanos/smengine/a/i;

    iput p1, v0, Lcom/smartisanos/smengine/a/i;->x:F

    .line 2
    iput p2, v0, Lcom/smartisanos/smengine/a/i;->y:F

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/i;->IC:Lcom/smartisanos/smengine/a/i;

    iput p3, p0, Lcom/smartisanos/smengine/a/i;->x:F

    .line 4
    iput p4, p0, Lcom/smartisanos/smengine/a/i;->y:F

    return-void
.end method

.method public isPointInBoundingVolume(FFF)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/i;->m(FF)Z

    move-result p0

    return p0
.end method

.method public isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z
    .locals 1

    .line 1
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/smengine/i;->m(FF)Z

    move-result p0

    return p0
.end method

.method public m(FF)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/i;->HC:Lcom/smartisanos/smengine/a/i;

    iget v1, v0, Lcom/smartisanos/smengine/a/i;->x:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v0, v0, Lcom/smartisanos/smengine/a/i;->y:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/smartisanos/smengine/i;->IC:Lcom/smartisanos/smengine/a/i;

    iget v0, p0, Lcom/smartisanos/smengine/a/i;->x:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget p0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinPoint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/smengine/i;->HC:Lcom/smartisanos/smengine/a/i;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , mMaxPoint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/smengine/i;->IC:Lcom/smartisanos/smengine/a/i;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/i;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
