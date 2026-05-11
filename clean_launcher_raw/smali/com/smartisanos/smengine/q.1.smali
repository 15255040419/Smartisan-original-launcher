.class public Lcom/smartisanos/smengine/q;
.super Lcom/smartisanos/smengine/c;
.source "FrameAnimation.java"


# instance fields
.field protected sc:Ljava/util/ArrayList;

.field protected wC:I

.field protected xC:I

.field protected yC:Ljava/util/ArrayList;

.field protected zC:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/smartisanos/smengine/SceneNode;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/smengine/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/q;->sc:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/q;->yC:Ljava/util/ArrayList;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/smengine/q;->sc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iput p2, p0, Lcom/smartisanos/smengine/q;->wC:I

    return-void
.end method

.method public constructor <init>([Lcom/smartisanos/smengine/SceneNode;I)V
    .locals 4

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/smengine/c;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/q;->sc:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/q;->yC:Ljava/util/ArrayList;

    .line 9
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 10
    iget-object v3, p0, Lcom/smartisanos/smengine/q;->sc:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iput p2, p0, Lcom/smartisanos/smengine/q;->wC:I

    return-void
.end method


# virtual methods
.method public Ca(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/q;->zC:Ljava/lang/String;

    return-void
.end method

.method public Mj()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/smengine/q;->yC:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/smengine/q;->yC:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/smartisanos/smengine/q;->zC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6
    invoke-static {v2}, Lcom/smartisanos/smengine/s;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 7
    new-instance v4, Lcom/smartisanos/smengine/Da;

    invoke-direct {v4, v3}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 9
    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 10
    invoke-virtual {v0, v2, v4}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/q;->yC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/q;->yC:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/smartisanos/smengine/q;->wC:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/smartisanos/smengine/q;->xC:I

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c;->qC:Z

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c;->rC:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c;->mIsStarted:Z

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/d;->b(Lcom/smartisanos/smengine/c;)V

    return-void
.end method
