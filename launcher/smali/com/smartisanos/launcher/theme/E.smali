.class Lcom/smartisanos/launcher/theme/E;
.super Landroid/content/BroadcastReceiver;
.source "ThemeItemActivity.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/E;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/smartisanos/launcher/theme/E;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    xor-int/lit8 v0, p1, 0x1

    invoke-static {p2, v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->b(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z

    .line 5
    iget-object p2, p0, Lcom/smartisanos/launcher/theme/E;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p2}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->g(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Q;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const/4 v0, 0x5

    .line 6
    iput v0, p2, Landroid/os/Message;->what:I

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/E;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->g(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Q;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
