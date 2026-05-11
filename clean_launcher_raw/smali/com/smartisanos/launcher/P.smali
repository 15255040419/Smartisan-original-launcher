.class Lcom/smartisanos/launcher/P;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationProxy.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ja;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/P;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "com.smartisanos.launcher.new_message"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Za()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/P;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-static {p0}, Lcom/smartisanos/launcher/ja;->c(Lcom/smartisanos/launcher/ja;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    :try_start_0
    const-string p0, "extra_packagename"

    .line 5
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "extra_componentname"

    .line 6
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "extra_uid"

    const/4 v1, -0x1

    .line 7
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    :cond_3
    const-string v1, "extra_message_count"

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 10
    invoke-static {p0, p1, v0, p2}, Lcom/smartisanos/launcher/Aa;->a(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
