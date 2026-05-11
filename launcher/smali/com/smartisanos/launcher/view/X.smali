.class final Lcom/smartisanos/launcher/view/X;
.super Lcom/smartisanos/smengine/a;
.source "DotView.java"


# instance fields
.field public kB:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/Z;


# direct methods
.method private constructor <init>(Lcom/smartisanos/launcher/view/Z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/X;->this$0:Lcom/smartisanos/launcher/view/Z;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/launcher/view/Z;Lcom/smartisanos/launcher/view/W;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/X;-><init>(Lcom/smartisanos/launcher/view/Z;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/X;->this$0:Lcom/smartisanos/launcher/view/Z;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/X;->kB:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/X;->kB:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Naa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/X;->this$0:Lcom/smartisanos/launcher/view/Z;

    sget-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Laa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Laa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    if-ne v0, v1, :cond_2

    .line 5
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/Z;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "## send dot disappear event ###"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/X;->this$0:Lcom/smartisanos/launcher/view/Z;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/Z;->b(Lcom/smartisanos/launcher/view/Z;)Lcom/smartisanos/smengine/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/X;->this$0:Lcom/smartisanos/launcher/view/Z;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Z;->b(Lcom/smartisanos/launcher/view/Z;)Lcom/smartisanos/smengine/n;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Maa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    if-ne v0, v1, :cond_3

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/view/X;->this$0:Lcom/smartisanos/launcher/view/Z;

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/X;->kB:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Naa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/X;->this$0:Lcom/smartisanos/launcher/view/Z;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/Z;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_0
    return-void
.end method
