.class Lcom/smartisanos/launcher/view/b/ja;
.super Lcom/smartisanos/smengine/a;
.source "PageWithRenderTarget.java"


# instance fields
.field final synthetic hC:Lcom/smartisanos/smengine/SceneNode;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/ka;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/ka;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ja;->this$0:Lcom/smartisanos/launcher/view/b/ka;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/b/ja;->hC:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ja;->hC:Lcom/smartisanos/smengine/SceneNode;

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_0
    return-void
.end method
