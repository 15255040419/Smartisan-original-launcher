.class Lcom/smartisanos/launcher/view/Aa;
.super Lcom/smartisanos/smengine/a;
.source "DownloadWithWaveView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ca;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ca;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Aa;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Aa;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Ca;->a(Lcom/smartisanos/launcher/view/Ca;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Aa;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Ca;->b(Lcom/smartisanos/launcher/view/Ca;)Lcom/smartisanos/smengine/F;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method
