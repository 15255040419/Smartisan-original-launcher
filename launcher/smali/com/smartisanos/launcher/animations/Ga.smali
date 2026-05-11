.class Lcom/smartisanos/launcher/animations/Ga;
.super Lcom/smartisanos/smengine/a;
.source "MultiSelectSpreadOutAnimation.java"


# instance fields
.field private YA:Lcom/smartisanos/launcher/view/a/g;

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/Ha;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/Ha;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Ga;->this$0:Lcom/smartisanos/launcher/animations/Ha;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/ga;->Oi()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->this$0:Lcom/smartisanos/launcher/animations/Ha;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/Ha;->a(Lcom/smartisanos/launcher/animations/Ha;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->this$0:Lcom/smartisanos/launcher/animations/Ha;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/Ha;->a(Lcom/smartisanos/launcher/animations/Ha;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/ga;->ma(Z)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/Z;->ha(Z)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->this$0:Lcom/smartisanos/launcher/animations/Ha;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/Ha;->a(Lcom/smartisanos/launcher/animations/Ha;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/Z;->ea(Z)V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v0

    const/4 v4, 0x5

    const/4 v5, 0x3

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;F)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;F)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;F)V

    .line 16
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;F)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;F)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;F)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;F)V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const v1, 0x3ee66666    # 0.45f

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;F)V

    .line 22
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;F)V

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;F)V

    .line 25
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;F)V

    .line 26
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ga;->YA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    :cond_4
    return-void
.end method
