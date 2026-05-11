.class Lcom/smartisanos/launcher/view/Rb;
.super Lcom/smartisanos/smengine/a;
.source "MultiSelectNode.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/ec;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Rb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Rb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/ec;->c(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/animations/va;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/animations/va;->Dn:Z

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Rb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/ec;->d(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Rb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/ec;->c(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/animations/va;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/va;->xn:Ljava/util/List;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Rb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/ec;->d(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Rb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/ec;->c(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/animations/va;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/va;->xn:Ljava/util/List;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Rb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/ec;->d(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Rb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/ec;->c(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/animations/va;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/va;->xn:Ljava/util/List;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Rb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/ec;->d(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    move v0, v1

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Rb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/ec;->c(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/animations/va;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/animations/va;->xn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Rb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/ec;->c(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/animations/va;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/animations/va;->xn:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 8
    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 10
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 11
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_1

    .line 12
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Rb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/ec;->i(Lcom/smartisanos/launcher/view/ec;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/a/ga;->ma(Z)V

    .line 14
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/a/Z;->ha(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Rb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/ec;->i(Lcom/smartisanos/launcher/view/ec;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Rb;->this$0:Lcom/smartisanos/launcher/view/ec;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Rb;->this$0:Lcom/smartisanos/launcher/view/ec;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/Z;->ea(Z)V

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    .line 19
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->isMeetingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Eh()Lcom/smartisanos/smengine/F;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Eh()Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 22
    :cond_4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Rb;->this$0:Lcom/smartisanos/launcher/view/ec;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/ec;->b(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Rb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/ec;->c(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/animations/va;

    move-result-object p0

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/va;->xn:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    const/16 v1, 0x10

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    goto :goto_0

    :cond_0
    return-void
.end method
