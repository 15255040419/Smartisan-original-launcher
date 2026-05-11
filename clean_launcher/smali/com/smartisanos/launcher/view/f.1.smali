.class Lcom/smartisanos/launcher/view/f;
.super Ljava/lang/Object;
.source "CellStatusForDock.java"

# interfaces
.implements Lcom/smartisanos/smengine/fa;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/l;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/f;->this$0:Lcom/smartisanos/launcher/view/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lcom/smartisanos/smengine/Fa;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/l;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p1

    const-string v0, "onClick begin"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/f;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/f;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/f;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-boolean v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v0, :cond_4

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/f;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    check-cast p1, Lcom/smartisanos/launcher/view/Ca;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/f;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/Ca;->n(Lcom/smartisanos/launcher/data/ItemInfo;)V

    :cond_3
    return-void

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/f;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/view/l;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "in MULTI_PAGE_MODE, setting button is done, so return !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    const/4 v0, 0x2

    .line 10
    iget-byte p1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-ne v0, p1, :cond_7

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/view/f;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Hm()V

    return-void

    .line 12
    :cond_7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/f;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/a/g;->wH:Z

    if-nez p1, :cond_8

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/l;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "can\'t execute app by APP_CAN_EXEC is false !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_8
    new-instance p1, Lcom/smartisanos/launcher/a/P;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/a/P;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    .line 15
    invoke-virtual {p1}, Lcom/smartisanos/launcher/a/P;->ed()V

    return-void
.end method
