.class public Lcom/smartisanos/smengine/mymaterial/d;
.super Lcom/smartisanos/smengine/mymaterial/f;
.source "InnerShadowColorMaterial.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(IILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/smengine/a/k;

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    iget v2, p1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, p1, Lcom/smartisanos/smengine/a/k;->z:F

    iget v5, p1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/sa;->a(IFFFF)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/sa;->a(IFFFF)V

    :goto_0
    return-void
.end method

.method public a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/y;Z)V
    .locals 4

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->As()V

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Ht()V

    const/16 v0, 0xa

    const/16 v1, 0x9

    const-string v2, "uInnerShadowSizeH"

    .line 7
    invoke-virtual {p0, v1, v0, v2}, Lcom/smartisanos/smengine/mymaterial/d;->a(IILjava/lang/String;)V

    const/16 v1, 0xc

    const/16 v2, 0xb

    const-string v3, "uInnerShadowSizeV"

    .line 8
    invoke-virtual {p0, v2, v1, v3}, Lcom/smartisanos/smengine/mymaterial/d;->a(IILjava/lang/String;)V

    const-string v3, "uInnerShadowAlphaRangeH"

    .line 9
    invoke-virtual {p0, v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/d;->a(IILjava/lang/String;)V

    const/16 v0, 0xd

    const-string v2, "uInnerShadowAlphaRangeV"

    .line 10
    invoke-virtual {p0, v1, v0, v2}, Lcom/smartisanos/smengine/mymaterial/d;->a(IILjava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, p3, p2, v1, v0}, Lcom/smartisanos/smengine/mymaterial/f;->a(ZLcom/smartisanos/smengine/y;ZZ)V

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Pt()V

    .line 13
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->p(Lcom/smartisanos/smengine/SceneNode;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->tc(I)V

    .line 15
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;->b(Lcom/smartisanos/smengine/y;Z)V

    return-void
.end method
