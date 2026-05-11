.class Lcom/smartisanos/launcher/theme/q;
.super Lcom/smartisanos/smengine/a;
.source "ChangeThemeHandler.java"


# instance fields
.field final synthetic Qf:Z

.field final synthetic rj:Lcom/smartisanos/launcher/theme/v;

.field final synthetic this$0:Lcom/smartisanos/launcher/theme/t;

.field final synthetic val$index:I

.field final synthetic val$page:Lcom/smartisanos/launcher/view/b/M;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/t;ZILcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/launcher/theme/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/q;->this$0:Lcom/smartisanos/launcher/theme/t;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/theme/q;->Qf:Z

    iput p3, p0, Lcom/smartisanos/launcher/theme/q;->val$index:I

    iput-object p4, p0, Lcom/smartisanos/launcher/theme/q;->val$page:Lcom/smartisanos/launcher/view/b/M;

    iput-object p5, p0, Lcom/smartisanos/launcher/theme/q;->rj:Lcom/smartisanos/launcher/theme/v;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/q;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/t;->e(Lcom/smartisanos/launcher/theme/t;)[Lcom/smartisanos/smengine/F;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/theme/q;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/q;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/t;->e(Lcom/smartisanos/launcher/theme/t;)[Lcom/smartisanos/smengine/F;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/theme/q;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/q;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/t;->e(Lcom/smartisanos/launcher/theme/t;)[Lcom/smartisanos/smengine/F;

    move-result-object v0

    iget v2, p0, Lcom/smartisanos/launcher/theme/q;->val$index:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/q;->Qf:Z

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    const-string v2, "t_blur_anim_background"

    .line 6
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/q;->Qf:Z

    if-eqz v0, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/q;->this$0:Lcom/smartisanos/launcher/theme/t;

    iget-object v2, p0, Lcom/smartisanos/launcher/theme/q;->rj:Lcom/smartisanos/launcher/theme/v;

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/theme/t;->a(Lcom/smartisanos/launcher/theme/t;Lcom/smartisanos/launcher/theme/v;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/q;->val$page:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/a/g;

    .line 13
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/ga;->Gi()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/q;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/t;->c(Lcom/smartisanos/launcher/theme/t;)[Lcom/smartisanos/smengine/F;

    move-result-object v0

    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 15
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/q;->this$0:Lcom/smartisanos/launcher/theme/t;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/t;->st:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    .line 17
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/q;->this$0:Lcom/smartisanos/launcher/theme/t;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/t;->tt:Lcom/smartisanos/launcher/theme/s;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/q;->start()V

    :goto_2
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/q;->Qf:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/q;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/t;->e(Lcom/smartisanos/launcher/theme/t;)[Lcom/smartisanos/smengine/F;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/theme/q;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/q;->val$page:Lcom/smartisanos/launcher/view/b/M;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/q;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/t;->c(Lcom/smartisanos/launcher/theme/t;)[Lcom/smartisanos/smengine/F;

    move-result-object p0

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    .line 5
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
