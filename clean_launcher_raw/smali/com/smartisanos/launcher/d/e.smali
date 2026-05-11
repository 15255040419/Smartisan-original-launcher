.class public Lcom/smartisanos/launcher/d/e;
.super Ljava/lang/Object;
.source "InstallShortcutDialog.java"


# static fields
.field private static Ts:Landroid/app/AlertDialog;

.field private static intents:Ljava/util/ArrayList;

.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/a/pa;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/d/e;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/d/e;->intents:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "key"

    const-string v1, "pin_shortcut"

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "intent"

    .line 5
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->callbackLaunchpad(Landroid/os/Bundle;)V

    return-void

    .line 7
    :cond_1
    invoke-static {p0}, Lcom/smartisanos/launcher/d/j;->e(Landroid/content/Intent;)Lcom/smartisanos/launcher/d/k;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/d/k;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-static {v1}, Lcom/smartisanos/launcher/a/L;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    .line 10
    :cond_4
    sget-object v2, Lcom/smartisanos/launcher/data/T;->PHONE:Lcom/smartisanos/launcher/data/S;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 11
    invoke-static {p0}, Lcom/smartisanos/launcher/d/j;->f(Landroid/content/Intent;)V

    return-void

    .line 12
    :cond_5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/d/k;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_6

    .line 13
    invoke-virtual {v0}, Lcom/smartisanos/launcher/d/k;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v2

    :cond_6
    if-eqz v2, :cond_7

    .line 14
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    .line 15
    :goto_0
    sget-object v2, Lcom/smartisanos/launcher/d/e;->Ts:Landroid/app/AlertDialog;

    if-eqz v2, :cond_8

    .line 16
    sget-object p1, Lcom/smartisanos/launcher/d/e;->intents:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 17
    :cond_8
    invoke-static {p1, v1}, Lcom/smartisanos/launcher/e/s;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    return-void

    :cond_9
    const-string v2, "android.app.SmtPCUtils"

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 19
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v5, "isValidExtDisplayId"

    new-array v6, v3, [Ljava/lang/Class;

    .line 20
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v4

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v4

    .line 21
    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 22
    sget-boolean v5, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v5, :cond_a

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    move v2, v4

    :goto_1
    if-eqz v2, :cond_b

    .line 23
    sget v2, Lcom/smartisanos/launcher/ob;->pin_shortcut_message_to_drawer:I

    goto :goto_2

    :cond_b
    sget v2, Lcom/smartisanos/launcher/ob;->pin_shortcut_message:I

    .line 24
    :goto_2
    invoke-static {v2}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    aput-object v0, v5, v3

    .line 25
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x103012b

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 27
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    sget v1, Lcom/smartisanos/launcher/ob;->uninstall_app_dialog_title:I

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 29
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 30
    sget v0, Lcom/smartisanos/launcher/ob;->ok:I

    new-instance v1, Lcom/smartisanos/launcher/d/b;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/d/b;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 31
    sget p0, Lcom/smartisanos/launcher/ob;->cancel:I

    new-instance v0, Lcom/smartisanos/launcher/d/c;

    invoke-direct {v0}, Lcom/smartisanos/launcher/d/c;-><init>()V

    invoke-virtual {v2, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 32
    new-instance p0, Lcom/smartisanos/launcher/d/d;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/d/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 33
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/smartisanos/launcher/d/e;->Ts:Landroid/app/AlertDialog;

    .line 34
    sget-object p0, Lcom/smartisanos/launcher/d/e;->Ts:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7f6

    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    .line 35
    sget-object p0, Lcom/smartisanos/launcher/d/e;->Ts:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/d/e;->intents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 1
    sput-object p0, Lcom/smartisanos/launcher/d/e;->Ts:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static dismissDialog()V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/d/e;->Ts:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
