.class public Lcom/smartisanos/smengine/Q;
.super Ljava/lang/Object;
.source "SceneManager.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private KG:Lcom/smartisanos/smengine/SceneNode;

.field private LG:Lcom/smartisanos/smengine/SceneNode;

.field private mRootNode:Lcom/smartisanos/smengine/SceneNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/Q;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/Q;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/SceneNode;

    const-string v1, "mRootNodeParent"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/Q;->KG:Lcom/smartisanos/smengine/SceneNode;

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/smengine/Q;->mRootNode:Lcom/smartisanos/smengine/SceneNode;

    .line 4
    new-instance v0, Lcom/smartisanos/smengine/SceneNode;

    const-string v1, "PostEffectRoot"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/Q;->LG:Lcom/smartisanos/smengine/SceneNode;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/smengine/Q;->mRootNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/smartisanos/smengine/Q;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nodeParent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/smengine/Q;->mRootNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/Q;->KG:Lcom/smartisanos/smengine/SceneNode;

    iget-object v1, p0, Lcom/smartisanos/smengine/Q;->mRootNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    move-result v0

    .line 8
    sget-object v1, Lcom/smartisanos/smengine/Q;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nodeChild size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " nodeParent = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/smartisanos/smengine/Q;->KG:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " node = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/smengine/Q;->mRootNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Vk()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/k;->Vj()Lcom/smartisanos/smengine/Camera;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/smengine/Q;->KG:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/smengine/Q;->LG:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    return-void
.end method

.method public Wk()Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Q;->LG:Lcom/smartisanos/smengine/SceneNode;

    return-object p0
.end method

.method public Xk()Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Q;->KG:Lcom/smartisanos/smengine/SceneNode;

    return-object p0
.end method

.method public getRootNode()Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Q;->mRootNode:Lcom/smartisanos/smengine/SceneNode;

    return-object p0
.end method
