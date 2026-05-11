.class Lcom/smartisanos/smengine/Ka;
.super Lcom/smartisanos/smengine/n;
.source "World.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/smengine/Ra;


# direct methods
.method constructor <init>(Lcom/smartisanos/smengine/Ra;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/Ka;->this$0:Lcom/smartisanos/smengine/Ra;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateShadowMap()V

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateNeedDisplay()V

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    return-void
.end method
