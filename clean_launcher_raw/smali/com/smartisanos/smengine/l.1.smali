.class public Lcom/smartisanos/smengine/l;
.super Ljava/lang/Object;
.source "CollisionData.java"


# instance fields
.field private gD:Lcom/smartisanos/smengine/SceneNode;

.field private hD:Lcom/smartisanos/smengine/SceneNode;

.field private iD:Lcom/smartisanos/smengine/SceneNode;

.field private jD:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/l;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method


# virtual methods
.method public Yj()Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/l;->hD:Lcom/smartisanos/smengine/SceneNode;

    return-object p0
.end method

.method public Zj()Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/l;->gD:Lcom/smartisanos/smengine/SceneNode;

    return-object p0
.end method

.method public _j()Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/l;->iD:Lcom/smartisanos/smengine/SceneNode;

    return-object p0
.end method

.method public a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/l;->gD:Lcom/smartisanos/smengine/SceneNode;

    .line 2
    iput-object p2, p0, Lcom/smartisanos/smengine/l;->hD:Lcom/smartisanos/smengine/SceneNode;

    return-void
.end method

.method public ak()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/l;->jD:Z

    return p0
.end method

.method public d(Lcom/smartisanos/smengine/l;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/l;->gD:Lcom/smartisanos/smengine/SceneNode;

    iget-object v2, p1, Lcom/smartisanos/smengine/l;->gD:Lcom/smartisanos/smengine/SceneNode;

    if-ne v1, v2, :cond_2

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/l;->hD:Lcom/smartisanos/smengine/SceneNode;

    iget-object v1, p1, Lcom/smartisanos/smengine/l;->hD:Lcom/smartisanos/smengine/SceneNode;

    const/4 v2, 0x1

    if-ne p0, v1, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object p1, p1, Lcom/smartisanos/smengine/l;->iD:Lcom/smartisanos/smengine/SceneNode;

    if-eqz p1, :cond_2

    if-ne p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public h(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/l;->iD:Lcom/smartisanos/smengine/SceneNode;

    return-void
.end method

.method public wa(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/l;->jD:Z

    return-void
.end method
