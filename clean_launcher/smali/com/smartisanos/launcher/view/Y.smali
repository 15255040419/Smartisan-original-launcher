.class Lcom/smartisanos/launcher/view/Y;
.super Lcom/smartisanos/smengine/n;
.source "DotView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Z;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/Z;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Y;->this$0:Lcom/smartisanos/launcher/view/Z;

    .line 2
    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getPageCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const-string v2, "## disappear event start run ###"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne v1, v0, :cond_4

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/Z;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Y;->this$0:Lcom/smartisanos/launcher/view/Z;

    sget-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Maa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {p0, v0, v3}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    goto :goto_1

    .line 6
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/Z;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 7
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Y;->this$0:Lcom/smartisanos/launcher/view/Z;

    sget-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Maa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {p0, v0, v3}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    :cond_4
    :goto_1
    return-void
.end method
