.class Lcom/smartisanos/launcher/O;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationProxy.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ja;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/O;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/O;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-static {p1}, Lcom/smartisanos/launcher/ja;->h(Lcom/smartisanos/launcher/ja;)Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/smartisanos/launcher/data/M;->USER_SETUP_COMPLETE:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/smartisanos/launcher/N;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/N;-><init>(Lcom/smartisanos/launcher/O;)V

    invoke-static {p1}, Lcom/smartisanos/launcher/data/A;->e(Ljava/lang/Runnable;)V

    return-void
.end method
