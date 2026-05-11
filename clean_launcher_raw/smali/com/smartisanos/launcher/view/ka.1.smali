.class Lcom/smartisanos/launcher/view/ka;
.super Ljava/lang/Object;
.source "DownloadWithWaveView.java"

# interfaces
.implements Lcom/smartisanos/launcher/animations/Pa;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ca;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ca;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ka;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZI)V
    .locals 0

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ka;->this$0:Lcom/smartisanos/launcher/view/Ca;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ka;->this$0:Lcom/smartisanos/launcher/view/Ca;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast p1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/a/g;->Wa(Z)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ka;->this$0:Lcom/smartisanos/launcher/view/Ca;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Ca;->setVisibility(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ka;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/view/Ca;->setVisibility(Z)V

    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ka;->this$0:Lcom/smartisanos/launcher/view/Ca;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast p1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ka;->this$0:Lcom/smartisanos/launcher/view/Ca;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ka;->this$0:Lcom/smartisanos/launcher/view/Ca;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast p0, Lcom/smartisanos/launcher/view/a/g;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->Wa(Z)V

    :cond_0
    return-void
.end method
