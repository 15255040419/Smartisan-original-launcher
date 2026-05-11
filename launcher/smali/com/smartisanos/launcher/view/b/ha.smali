.class Lcom/smartisanos/launcher/view/b/ha;
.super Lcom/smartisanos/smengine/a;
.source "PageWithRenderTarget.java"


# instance fields
.field final synthetic fC:Lcom/smartisanos/smengine/F;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/ka;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/ka;Lcom/smartisanos/smengine/F;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ha;->this$0:Lcom/smartisanos/launcher/view/b/ka;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/b/ha;->fC:Lcom/smartisanos/smengine/F;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ha;->fC:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_0

    .line 2
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_0
    return-void
.end method
