.class public Lcom/smartisanos/smengine/mymaterial/t;
.super Lcom/smartisanos/smengine/mymaterial/r;
.source "TextureBatchWithDirLightMaterial.java"


# instance fields
.field private rW:Lcom/smartisanos/smengine/a/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    const/4 p2, 0x0

    const/high16 p3, -0x40800000    # -1.0f

    invoke-direct {p1, p2, p2, p3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object p1, p0, Lcom/smartisanos/smengine/mymaterial/t;->rW:Lcom/smartisanos/smengine/a/j;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/smengine/mymaterial/f;->iW:Z

    return-void
.end method

.method private C(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 2

    const/16 v0, 0x15

    const-string v1, "uModelSpaceLightDir"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p0

    .line 2
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setModelSpaceLightDirArrayDataToShader(I)V

    return-void
.end method


# virtual methods
.method public St()Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/t;->rW:Lcom/smartisanos/smengine/a/j;

    return-object p0
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
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/mymaterial/t;->C(Lcom/smartisanos/smengine/SceneNode;)V

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/r;->Rt()V

    .line 7
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->tc(I)V

    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;->b(Lcom/smartisanos/smengine/y;Z)V

    return-void
.end method

.method public m(FFF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/t;->rW:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    return-void
.end method
