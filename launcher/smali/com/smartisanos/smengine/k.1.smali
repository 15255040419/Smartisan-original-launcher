.class public Lcom/smartisanos/smengine/k;
.super Ljava/lang/Object;
.source "CameraManager.java"


# instance fields
.field private eD:Ljava/util/HashMap;

.field private fD:Lcom/smartisanos/smengine/Camera;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/k;->eD:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public Da(Ljava/lang/String;)Lcom/smartisanos/smengine/Camera;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/k;->eD:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/Camera;

    return-object p0
.end method

.method public Vj()Lcom/smartisanos/smengine/Camera;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/k;->fD:Lcom/smartisanos/smengine/Camera;

    return-object p0
.end method

.method public Wj()Lcom/smartisanos/smengine/Camera;
    .locals 1

    const-string v0, "mainCamera"

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/k;->Da(Ljava/lang/String;)Lcom/smartisanos/smengine/Camera;

    move-result-object p0

    return-object p0
.end method

.method public Xj()Lcom/smartisanos/smengine/Camera;
    .locals 1

    const-string v0, "orthoCamera"

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/k;->Da(Ljava/lang/String;)Lcom/smartisanos/smengine/Camera;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/smartisanos/smengine/Camera;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/smengine/k;->fD:Lcom/smartisanos/smengine/Camera;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/smartisanos/smengine/Camera;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/k;->eD:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
