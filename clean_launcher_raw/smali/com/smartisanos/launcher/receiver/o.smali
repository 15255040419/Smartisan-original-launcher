.class Lcom/smartisanos/launcher/receiver/o;
.super Ljava/lang/Object;
.source "LauncherReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/receiver/LauncherReceiver;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/receiver/LauncherReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/receiver/o;->this$0:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/receiver/o;->this$0:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->a(Lcom/smartisanos/launcher/receiver/LauncherReceiver;Z)Z

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x103012b

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/smartisanos/launcher/ob;->theme_dialog_title:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/smartisanos/launcher/ob;->theme_uninstall_dialog_content:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/smartisanos/launcher/ob;->ok:I

    new-instance v2, Lcom/smartisanos/launcher/receiver/n;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/receiver/n;-><init>(Lcom/smartisanos/launcher/receiver/o;)V

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/receiver/m;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/receiver/m;-><init>(Lcom/smartisanos/launcher/receiver/o;)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/J;->a(Landroid/app/AlertDialog;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
