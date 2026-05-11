.class public Lcom/smartisanos/smengine/mymaterial/s;
.super Lcom/smartisanos/smengine/mymaterial/r;
.source "TextureBatchPreColorMaterial.java"


# instance fields
.field private KF:Lcom/smartisanos/smengine/a/k;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {p1}, Lcom/smartisanos/smengine/a/k;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/smengine/mymaterial/s;->KF:Lcom/smartisanos/smengine/a/k;

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/y;Z)V
    .locals 8

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
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/r;->Rt()V

    const/16 p1, 0x16

    const-string v1, "uBlendColor"

    .line 6
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v3

    .line 7
    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    iget-object p1, p0, Lcom/smartisanos/smengine/mymaterial/s;->KF:Lcom/smartisanos/smengine/a/k;

    iget v4, p1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v5, p1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v6, p1, Lcom/smartisanos/smengine/a/k;->z:F

    iget v7, p1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual/range {v2 .. v7}, Lcom/smartisanos/smengine/sa;->a(IFFFF)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->tc(I)V

    .line 9
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;->b(Lcom/smartisanos/smengine/y;Z)V

    return-void
.end method

.method public setBlendColor(FFFF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/s;->KF:Lcom/smartisanos/smengine/a/k;

    iput p1, p0, Lcom/smartisanos/smengine/a/k;->x:F

    .line 2
    iput p2, p0, Lcom/smartisanos/smengine/a/k;->y:F

    .line 3
    iput p3, p0, Lcom/smartisanos/smengine/a/k;->z:F

    .line 4
    iput p4, p0, Lcom/smartisanos/smengine/a/k;->w:F

    return-void
.end method
