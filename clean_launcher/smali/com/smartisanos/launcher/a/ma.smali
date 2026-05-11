.class Lcom/smartisanos/launcher/a/ma;
.super Ljava/lang/Object;
.source "UninstallApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mInfo:Lcom/smartisanos/launcher/data/ItemInfo;

.field private packageName:Ljava/lang/String;

.field final synthetic this$1:Lcom/smartisanos/launcher/a/na;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/a/na;Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/ma;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/smartisanos/launcher/a/ma;->packageName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/smartisanos/launcher/a/ma;->mInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

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
    iget-object p1, p0, Lcom/smartisanos/launcher/a/ma;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {p1}, Lcom/smartisanos/launcher/a/na;->d(Lcom/smartisanos/launcher/a/na;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/a/ma;->mInfo:Lcom/smartisanos/launcher/data/ItemInfo;

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

    if-eqz p1, :cond_8

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p1

    .line 8
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->MAIN:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 10
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x103012b

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 11
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    iget-object v1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/smartisanos/launcher/data/T;->EMAIL:Lcom/smartisanos/launcher/data/S;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 13
    sget p1, Lcom/smartisanos/launcher/ob;->uninstall_email:I

    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    .line 14
    iget-object v3, p0, Lcom/smartisanos/launcher/a/ma;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {v3}, Lcom/smartisanos/launcher/a/na;->c(Lcom/smartisanos/launcher/a/na;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    aput-object v3, v1, p2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 15
    :cond_4
    iget-object v1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/smartisanos/launcher/data/T;->NOTE:Lcom/smartisanos/launcher/data/S;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    sget p1, Lcom/smartisanos/launcher/ob;->uninstall_notes:I

    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    .line 17
    iget-object v3, p0, Lcom/smartisanos/launcher/a/ma;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {v3}, Lcom/smartisanos/launcher/a/na;->c(Lcom/smartisanos/launcher/a/na;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    aput-object v3, v1, p2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 18
    :cond_5
    iget-object v1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/smartisanos/launcher/data/T;->REMOTE_ASSISTANCE:Lcom/smartisanos/launcher/data/S;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    sget p1, Lcom/smartisanos/launcher/ob;->uninstall_remote_assistance:I

    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    .line 20
    iget-object v3, p0, Lcom/smartisanos/launcher/a/ma;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {v3}, Lcom/smartisanos/launcher/a/na;->c(Lcom/smartisanos/launcher/a/na;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    aput-object v3, v1, p2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 21
    :cond_6
    iget-object p1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/smartisanos/launcher/data/T;->SMARTISAN_SCREEN_RECORDER:Lcom/smartisanos/launcher/data/S;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 22
    sget p1, Lcom/smartisanos/launcher/ob;->uninstall_screen_recorder:I

    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    iget-object v3, p0, Lcom/smartisanos/launcher/a/ma;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {v3}, Lcom/smartisanos/launcher/a/na;->c(Lcom/smartisanos/launcher/a/na;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    aput-object v3, v1, p2

    iget-object p2, p0, Lcom/smartisanos/launcher/a/ma;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {p2}, Lcom/smartisanos/launcher/a/na;->c(Lcom/smartisanos/launcher/a/na;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p2

    iget-object p2, p2, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 24
    :cond_7
    sget p1, Lcom/smartisanos/launcher/ob;->uninstall_system_app_again:I

    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    .line 25
    iget-object v3, p0, Lcom/smartisanos/launcher/a/ma;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {v3}, Lcom/smartisanos/launcher/a/na;->c(Lcom/smartisanos/launcher/a/na;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    aput-object v3, v1, p2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 26
    :goto_1
    iget-object p2, p0, Lcom/smartisanos/launcher/a/ma;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {p2, v0, p1}, Lcom/smartisanos/launcher/a/na;->a(Lcom/smartisanos/launcher/a/na;Landroid/app/AlertDialog$Builder;Ljava/lang/String;)V

    .line 27
    new-instance p1, Lcom/smartisanos/launcher/a/ia;

    iget-object p2, p0, Lcom/smartisanos/launcher/a/ma;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {p2}, Lcom/smartisanos/launcher/a/na;->c(Lcom/smartisanos/launcher/a/na;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/smartisanos/launcher/a/ma;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {v3}, Lcom/smartisanos/launcher/a/na;->d(Lcom/smartisanos/launcher/a/na;)Z

    move-result v3

    invoke-direct {p1, p2, v1, v3}, Lcom/smartisanos/launcher/a/ia;-><init>(Lcom/smartisanos/launcher/a/na;Lcom/smartisanos/launcher/data/ItemInfo;Z)V

    .line 28
    sget p2, Lcom/smartisanos/launcher/ob;->ok:I

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 29
    sget p1, Lcom/smartisanos/launcher/ob;->waring_again:I

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 30
    sget p1, Lcom/smartisanos/launcher/ob;->cancel:I

    new-instance p2, Lcom/smartisanos/launcher/a/ja;

    invoke-direct {p2, p0}, Lcom/smartisanos/launcher/a/ja;-><init>(Lcom/smartisanos/launcher/a/ma;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 31
    new-instance p1, Lcom/smartisanos/launcher/a/ka;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/a/ka;-><init>(Lcom/smartisanos/launcher/a/ma;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 32
    new-instance p1, Lcom/smartisanos/launcher/a/la;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/a/la;-><init>(Lcom/smartisanos/launcher/a/ma;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 33
    invoke-static {v2}, Lcom/smartisanos/launcher/a/oa;->x(Z)Z

    .line 34
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    .line 35
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    sget-object p1, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/J;->a(Landroid/app/AlertDialog;)V

    .line 36
    sget-object p0, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 37
    :cond_8
    :goto_2
    invoke-static {p2}, Lcom/smartisanos/launcher/a/oa;->w(Z)Z

    return-void
.end method
