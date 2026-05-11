.class public Lcom/smartisanos/launcher/ConfirmPasswordActivity$HomeWatcherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfirmPasswordActivity.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity$HomeWatcherReceiver;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v1, "HomeReceiver"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->y()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/va;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "reason"

    .line 4
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-boolean p2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->y()Lcom/smartisanos/launcher/va;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/smartisanos/launcher/va;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p2, "recentapps"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity$HomeWatcherReceiver;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->g(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)V

    goto :goto_0

    :cond_2
    const-string p2, "homekey"

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity$HomeWatcherReceiver;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->a(Lcom/smartisanos/launcher/ConfirmPasswordActivity;Z)Z

    :cond_3
    :goto_0
    return-void
.end method
