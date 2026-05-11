.class Lcom/smartisanos/launcher/animations/Aa;
.super Lcom/smartisanos/smengine/a;
.source "MultiSelectFadeinFadeoutAnimation.java"


# instance fields
.field private XA:Lcom/smartisanos/launcher/view/a/g;

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/Ea;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/animations/Ea;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Aa;->this$0:Lcom/smartisanos/launcher/animations/Ea;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/Aa;->XA:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onBegin()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Aa;->XA:Lcom/smartisanos/launcher/view/a/g;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    return-void
.end method
