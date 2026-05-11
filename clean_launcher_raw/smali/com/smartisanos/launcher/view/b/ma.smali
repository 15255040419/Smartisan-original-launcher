.class Lcom/smartisanos/launcher/view/b/ma;
.super Lcom/smartisanos/smengine/a;
.source "SwitchPageNode.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/ra;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/ra;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ma;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ma;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/ra;->b(Lcom/smartisanos/launcher/view/b/ra;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ma;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/ra;->b(Lcom/smartisanos/launcher/view/b/ra;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ma;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/b/ra;->g(Lcom/smartisanos/launcher/view/b/ra;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    .line 4
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/ma;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/b/ra;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v4

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_4_MODE(I)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    move v3, v5

    goto :goto_1

    .line 5
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/ma;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/b/ra;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v4

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_9_MODE(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x3

    .line 6
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/ma;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/b/ra;->h(Lcom/smartisanos/launcher/view/b/ra;)I

    move-result v4

    if-nez v4, :cond_2

    .line 7
    rem-int/2addr v2, v3

    if-nez v2, :cond_3

    .line 8
    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/view/b/M;->mb(I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 9
    rem-int/2addr v2, v3

    if-nez v2, :cond_3

    .line 10
    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/view/b/M;->mb(I)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onComplete()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ma;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/ra;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_4_MODE(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ma;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/ra;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_9_MODE(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_1
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/ma;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/b/ra;->b(Lcom/smartisanos/launcher/view/b/ra;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/ma;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/b/ra;->b(Lcom/smartisanos/launcher/view/b/ra;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 6
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/ma;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/b/ra;->g(Lcom/smartisanos/launcher/view/b/ra;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 7
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/ma;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/b/ra;->h(Lcom/smartisanos/launcher/view/b/ra;)I

    move-result v5

    if-nez v5, :cond_2

    .line 8
    rem-int/2addr v4, v0

    if-nez v4, :cond_3

    .line 9
    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/b/M;->mb(I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 10
    rem-int/2addr v4, v0

    if-nez v4, :cond_3

    .line 11
    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/b/M;->mb(I)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ma;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/ra;->i(Lcom/smartisanos/launcher/view/b/ra;)Lcom/smartisanos/launcher/animations/fb;

    move-result-object v0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/animations/fb;->Dn:Z

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ma;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/b/ra;->c(Lcom/smartisanos/launcher/view/b/ra;Z)Z

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ma;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/ra;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/animations/r;->B(Z)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ma;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/b/ra;->a(Lcom/smartisanos/launcher/view/b/ra;Lcom/smartisanos/launcher/animations/fb;)Lcom/smartisanos/launcher/animations/fb;

    .line 16
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ma;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/view/b/ra;->b(Lcom/smartisanos/launcher/view/b/ra;Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;

    .line 17
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/view/b/ra;->y()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "############################ change screen finish"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
