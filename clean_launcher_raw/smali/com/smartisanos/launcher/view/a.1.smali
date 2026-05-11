.class public Lcom/smartisanos/launcher/view/a;
.super Lcom/smartisanos/smengine/SceneNode;
.source "BaseNode.java"


# instance fields
.field private UG:Lcom/smartisanos/smengine/SceneNode;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _k()Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a;->UG:Lcom/smartisanos/smengine/SceneNode;

    return-object p0
.end method

.method public changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a;->UG:Lcom/smartisanos/smengine/SceneNode;

    .line 2
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result p0

    return p0
.end method

.method public clear(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a;->UG:Lcom/smartisanos/smengine/SceneNode;

    .line 2
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    return-void
.end method

.method public k(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a;->UG:Lcom/smartisanos/smengine/SceneNode;

    return-void
.end method
