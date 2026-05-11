.class public Lcom/smartisanos/smengine/mymaterial/j;
.super Lcom/smartisanos/smengine/mymaterial/f;
.source "SdfShadowMaterial.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vs = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NewLauncher"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fs = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/smengine/mymaterial/f;->hW:Z

    return-void
.end method


# virtual methods
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
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->p(Lcom/smartisanos/smengine/SceneNode;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->r(Lcom/smartisanos/smengine/SceneNode;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->tc(I)V

    .line 7
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->vc(I)V

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Mt()V

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Nt()V

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Lt()V

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Qt()V

    const/16 p1, 0x1d

    .line 12
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->xc(I)V

    const/16 p1, 0x1b

    .line 13
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->xc(I)V

    const/16 p1, 0x1a

    .line 14
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->xc(I)V

    const/16 p1, 0x1c

    .line 15
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->xc(I)V

    const/16 p1, 0x21

    .line 16
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->xc(I)V

    const/16 p1, 0x1f

    .line 17
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->xc(I)V

    const/16 p1, 0x1e

    .line 18
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->xc(I)V

    const/16 p1, 0x20

    .line 19
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->xc(I)V

    const/16 p1, 0x23

    .line 20
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->xc(I)V

    const/16 p1, 0x22

    .line 21
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->xc(I)V

    .line 22
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;->b(Lcom/smartisanos/smengine/y;Z)V

    return-void
.end method
