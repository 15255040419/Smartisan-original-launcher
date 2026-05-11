.class public abstract Lcom/smartisanos/launcher/animations/V;
.super Ljava/lang/Object;
.source "IAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/smartisanos/smengine/SceneNode;IFI)Lcom/smartisanos/smengine/oa;
    .locals 0

    .line 5
    new-instance p0, Lcom/smartisanos/smengine/oa;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 7
    :cond_0
    invoke-virtual {p0, p3}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 8
    invoke-virtual {p0, p4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    return-object p0
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFI)Lcom/smartisanos/smengine/oa;

    move-result-object p0

    .line 2
    iget v2, p5, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, p5, Lcom/smartisanos/smengine/a/j;->y:F

    iget v4, p5, Lcom/smartisanos/smengine/a/j;->z:F

    iget v5, p6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, p6, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, p6, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    return-object p0
.end method

.method public a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;
    .locals 11

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFI)Lcom/smartisanos/smengine/oa;

    move-result-object v10

    .line 4
    iget v2, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v5, v0, Lcom/smartisanos/smengine/a/k;->w:F

    iget v6, v1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v7, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v8, v1, Lcom/smartisanos/smengine/a/k;->z:F

    iget v9, v1, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v0, v10

    move v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    return-object v10
.end method
