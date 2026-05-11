.class public Lcom/smartisanos/smengine/mymaterial/G;
.super Lcom/smartisanos/smengine/mymaterial/f;
.source "TwoTextureDifferentTexColorAlphaMaskMaterial.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->tc(I)V

    .line 6
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->wc(I)V

    const/4 p1, 0x2

    .line 7
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->vc(I)V

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Pt()V

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Ot()V

    .line 10
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;->b(Lcom/smartisanos/smengine/y;Z)V

    return-void
.end method
