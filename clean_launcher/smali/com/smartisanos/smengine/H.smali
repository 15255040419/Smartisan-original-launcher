.class public final Lcom/smartisanos/smengine/H;
.super Ljava/lang/Object;
.source "RenderManager.java"


# instance fields
.field public jF:[[[Lcom/smartisanos/smengine/SceneNode;

.field private kF:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x104

    const/4 v1, 0x4

    const/16 v2, 0x1f4

    .line 2
    filled-new-array {v1, v0, v2}, [I

    move-result-object v2

    const-class v3, Lcom/smartisanos/smengine/SceneNode;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[Lcom/smartisanos/smengine/SceneNode;

    iput-object v2, p0, Lcom/smartisanos/smengine/H;->jF:[[[Lcom/smartisanos/smengine/SceneNode;

    .line 3
    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/smartisanos/smengine/H;->kF:[[I

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/smengine/H;)[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/H;->kF:[[I

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    const/16 v3, 0x104

    if-ge v2, v3, :cond_0

    .line 1
    iget-object v3, p0, Lcom/smartisanos/smengine/H;->kF:[[I

    aget-object v3, v3, v1

    aput v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public i(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/L;->Kk()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/L;->Mk()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/L;->Nk()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 4
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v2

    const-string v3, ", sn name = "

    if-ltz v2, :cond_6

    const/16 v4, 0x104

    if-lt v2, v4, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    iget-object v4, p0, Lcom/smartisanos/smengine/H;->kF:[[I

    aget-object v5, v4, v0

    aget v5, v5, v2

    const/16 v6, 0x1f4

    if-lt v5, v6, :cond_5

    .line 6
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v0, "render unit num is too large. offset = "

    if-nez p0, :cond_4

    .line 7
    invoke-static {}, Lcom/smartisanos/smengine/J;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_5
    iget-object p0, p0, Lcom/smartisanos/smengine/H;->jF:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v0

    aget-object p0, p0, v2

    aput-object p1, p0, v5

    .line 10
    aget-object p0, v4, v0

    aget p1, p0, v2

    add-int/2addr p1, v1

    aput p1, p0, v2

    return-void

    .line 11
    :cond_6
    :goto_2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v0, "### layer index = "

    if-nez p0, :cond_7

    .line 12
    invoke-static {}, Lcom/smartisanos/smengine/J;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
