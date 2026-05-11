.class public final Lcom/smartisanos/smengine/G;
.super Ljava/lang/Object;
.source "RenderManager.java"


# instance fields
.field public jF:[[Lcom/smartisanos/smengine/SceneNode;

.field public kF:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x104

    const/16 v1, 0x1f4

    .line 2
    filled-new-array {v0, v1}, [I

    move-result-object v1

    const-class v2, Lcom/smartisanos/smengine/SceneNode;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/smartisanos/smengine/SceneNode;

    iput-object v1, p0, Lcom/smartisanos/smengine/G;->jF:[[Lcom/smartisanos/smengine/SceneNode;

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lcom/smartisanos/smengine/G;->kF:[I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x104

    if-ge v1, v2, :cond_0

    .line 1
    iget-object v2, p0, Lcom/smartisanos/smengine/G;->kF:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/smengine/G;->kF:[I

    aget v2, v1, v0

    const/16 v3, 0x1f4

    if-gt v2, v3, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/G;->jF:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v0

    aput-object p1, p0, v2

    .line 4
    aget p0, v1, v0

    add-int/lit8 p0, p0, 0x1

    aput p0, v1, v0

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "render unit num is too large"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
