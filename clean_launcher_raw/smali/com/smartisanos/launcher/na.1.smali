.class Lcom/smartisanos/launcher/na;
.super Ljava/lang/Object;
.source "ConfirmPasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/na;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/na;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/na;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.content.pm.extra.package.name.for.locked.package"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/na;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-static {v1}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->f(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/smartisanos/launcher/ua;->getPendingIntentForLockedPackage(Landroid/app/ActivityManager;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->a(Lcom/smartisanos/launcher/ConfirmPasswordActivity;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/na;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->e(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/launcher/na;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->e(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/na;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 9
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->x()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/na;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 13
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/smartisanos/launcher/na;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 14
    invoke-static {}, Lsmartisanos/api/PowerManagerSmt;->getInstance()Lsmartisanos/api/PowerManagerSmt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lsmartisanos/api/PowerManagerSmt;->setFeaturePhoneMode(Landroid/os/PowerManager;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/smartisanos/launcher/na;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->finish()V

    return-void
.end method
