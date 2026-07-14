.class Lcom/smartisanos/launcher/a/ia;
.super Ljava/lang/Object;
.source "UninstallApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private Zj:Z

.field private mInfo:Lcom/smartisanos/launcher/data/ItemInfo;

.field private packageName:Ljava/lang/String;

.field final synthetic this$1:Lcom/smartisanos/launcher/a/na;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/a/na;Lcom/smartisanos/launcher/data/ItemInfo;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/ia;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/a/ia;->Zj:Z

    .line 3
    iget-object p1, p2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/smartisanos/launcher/a/ia;->packageName:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/smartisanos/launcher/a/ia;->Zj:Z

    .line 5
    iput-object p2, p0, Lcom/smartisanos/launcher/a/ia;->mInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$100()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p1

    const-string p2, "PositiveButton click"

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 3
    :cond_1
    iget-boolean p1, p0, Lcom/smartisanos/launcher/a/ia;->Zj:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/a/ia;->mInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->fm()I

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Gg()V

    .line 9
    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/a/g;->pb(I)V

    .line 10
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p1

    .line 11
    :goto_0
    iget-byte v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 12
    check-cast p1, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    .line 13
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object p1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->naa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {p1, v1, p0}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void

    .line 16
    :cond_5
    # Ordinary Android cannot use Smartisan's private deletePackage callback.
    # Do not start the original trash/database-removal animation before the
    # public package installer reports a real removal broadcast.
    if-nez v0, :cond_5_original

    invoke-static {p1}, Lcom/smartisanos/launcher/compat/UninstallCompat;->requestUninstallItem(Ljava/lang/Object;)V

    sget-object v0, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5_reset

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_5_reset
    invoke-static {p2}, Lcom/smartisanos/launcher/a/oa;->w(Z)Z

    return-void

    :cond_5_original
    invoke-static {v2}, Lcom/smartisanos/launcher/a/oa;->w(Z)Z

    .line 17
    sget-object v0, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/a/ia;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {v0}, Lcom/smartisanos/launcher/a/na;->c(Lcom/smartisanos/launcher/a/na;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-nez v0, :cond_8

    .line 19
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "am.unInstallPackage packageName ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/smartisanos/launcher/a/ia;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 20
    :cond_6
    iget-boolean v0, p0, Lcom/smartisanos/launcher/a/ia;->Zj:Z

    if-nez v0, :cond_7

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/a/ia;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {v0}, Lcom/smartisanos/launcher/a/na;->c(Lcom/smartisanos/launcher/a/na;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/Aa;->a(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 22
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iget-object v3, p0, Lcom/smartisanos/launcher/a/ia;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {v3}, Lcom/smartisanos/launcher/a/na;->c(Lcom/smartisanos/launcher/a/na;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v3, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->daa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v3, v1, v0}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 25
    sget-object v0, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 26
    sget-object v0, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 27
    invoke-static {p2}, Lcom/smartisanos/launcher/a/oa;->w(Z)Z

    .line 28
    iget-object p0, p0, Lcom/smartisanos/launcher/a/ia;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/a/na;->a(Lcom/smartisanos/launcher/a/na;Lcom/smartisanos/launcher/data/ItemInfo;)V

    goto :goto_1

    :cond_8
    const/4 p1, 0x2

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/a/ia;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {v0}, Lcom/smartisanos/launcher/a/na;->c(Lcom/smartisanos/launcher/a/na;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-ne p1, v0, :cond_9

    .line 30
    iget-object p0, p0, Lcom/smartisanos/launcher/a/ia;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {p0}, Lcom/smartisanos/launcher/a/na;->c(Lcom/smartisanos/launcher/a/na;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/Aa;->a(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 31
    sget-object p0, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 32
    sget-object p0, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 33
    invoke-static {p2}, Lcom/smartisanos/launcher/a/oa;->w(Z)Z

    :goto_1
    return-void

    .line 34
    :cond_9
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "error ! handle shortcut logic !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "don\'t support shortcut now !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_a
    :goto_2
    invoke-static {p2}, Lcom/smartisanos/launcher/a/oa;->w(Z)Z

    return-void
.end method
