.class Lcom/smartisanos/launcher/view/p;
.super Ljava/lang/Object;
.source "CellStatusForPage.java"

# interfaces
.implements Lcom/smartisanos/smengine/fa;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/v;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lcom/smartisanos/smengine/Fa;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/Z;->xi()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    sget v2, Lcom/smartisanos/launcher/view/a/g;->qI:I

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->eb(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/ec;->Pp()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/ga;->Ni()I

    move-result p0

    if-ne p0, v1, :cond_16

    .line 8
    sget p0, Lcom/smartisanos/launcher/ob;->mutiselect_first_notice:I

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/Bb;->showToast(II)V

    goto/16 :goto_2

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    sget v3, Lcom/smartisanos/launcher/view/a/g;->qI:I

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->eb(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/ga;->Di()I

    goto/16 :goto_2

    .line 11
    :cond_3
    iget-object p1, p1, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/ec;->Pp()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->getSinglePageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result p0

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 14
    sget v0, Lcom/smartisanos/launcher/ob;->at_most:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {p0, v2}, Lcom/smartisanos/launcher/Bb;->h(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Dl()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getClickAction(I)Lcom/smartisanos/launcher/data/Constants$ClickAction;

    move-result-object v0

    .line 17
    iget-object v2, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 18
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/view/v;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v2, "set action to Constants.ClickAction.SWITCH_PAGE"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 19
    :cond_5
    sget-object v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;->PZ:Lcom/smartisanos/launcher/data/Constants$ClickAction;

    .line 20
    :cond_6
    sget-object v2, Lcom/smartisanos/launcher/data/Constants$ClickAction;->OZ:Lcom/smartisanos/launcher/data/Constants$ClickAction;

    if-eq v0, v2, :cond_b

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    .line 22
    :cond_7
    sget-object p1, Lcom/smartisanos/launcher/data/Constants$ClickAction;->PZ:Lcom/smartisanos/launcher/data/Constants$ClickAction;

    if-ne v0, p1, :cond_a

    .line 23
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/smartisanos/launcher/view/v;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p1

    const-string v0, "Constants.ClickAction.SWITCH_PAGE"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 24
    :cond_8
    iget-object p0, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/b/M;

    .line 25
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 26
    :cond_9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/b/fa;->w(Lcom/smartisanos/launcher/view/b/M;)Z

    goto/16 :goto_2

    .line 27
    :cond_a
    invoke-static {}, Lcom/smartisanos/launcher/view/v;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown click action, name ==> "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getActionName(Lcom/smartisanos/launcher/data/Constants$ClickAction;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    :goto_0
    if-nez p1, :cond_c

    return-void

    .line 28
    :cond_c
    iget-boolean v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v0, :cond_e

    .line 29
    iget-object p1, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 30
    check-cast p1, Lcom/smartisanos/launcher/view/Ca;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/Ca;->n(Lcom/smartisanos/launcher/data/ItemInfo;)V

    :cond_d
    return-void

    :cond_e
    const/4 v0, 0x2

    .line 31
    iget-byte p1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-ne v0, p1, :cond_14

    .line 32
    iget-object p1, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/a/aa;->r(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 33
    invoke-static {}, Lcom/smartisanos/launcher/view/v;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "### this cell create folder cell fail, miteminfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 34
    :cond_f
    iget-object p1, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 35
    iget-boolean v0, p1, Lcom/smartisanos/launcher/data/FolderInfo;->isGenIdInGL:Z

    if-eqz v0, :cond_11

    .line 36
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_10

    .line 37
    invoke-static {}, Lcom/smartisanos/launcher/view/v;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fi.isGenIdInGL == true. fi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/FolderInfo;->ef()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_10
    return-void

    .line 38
    :cond_11
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez p1, :cond_12

    .line 39
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/launcher/view/a/g;ZLjava/lang/Runnable;)V

    .line 40
    :cond_12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object p1

    if-eqz p1, :cond_13

    const v0, 0x3e4ccccd    # 0.2f

    .line 41
    new-instance v1, Lcom/smartisanos/launcher/view/o;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/o;-><init>(Lcom/smartisanos/launcher/view/p;)V

    invoke-virtual {p1, v0, v1}, Lcom/smartisanos/launcher/view/bb;->a(FLcom/smartisanos/smengine/a;)V

    goto :goto_1

    .line 42
    :cond_13
    iget-object p0, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Hm()V

    :goto_1
    return-void

    .line 43
    :cond_14
    iget-object p1, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean p1, p1, Lcom/smartisanos/launcher/view/a/g;->wH:Z

    if-nez p1, :cond_15

    .line 44
    invoke-static {}, Lcom/smartisanos/launcher/view/v;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "can\'t execute app by APP_CAN_EXEC is false !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 45
    :cond_15
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/Da;->I(Ljava/lang/String;)V

    .line 46
    new-instance p1, Lcom/smartisanos/launcher/a/P;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/p;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/a/P;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    .line 47
    invoke-virtual {p1}, Lcom/smartisanos/launcher/a/P;->ed()V

    :cond_16
    :goto_2
    return-void
.end method
