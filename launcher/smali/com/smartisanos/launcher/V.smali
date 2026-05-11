.class Lcom/smartisanos/launcher/V;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationProxy.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ja;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/V;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.smartisanos.action.PRIVACY_SECURITY_DISABLED"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->YZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/smartisanos/launcher/data/F;->a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V

    .line 4
    new-instance p1, Lcom/smartisanos/launcher/U;

    const/16 p2, 0x64

    invoke-direct {p1, p0, p2}, Lcom/smartisanos/launcher/U;-><init>(Lcom/smartisanos/launcher/V;I)V

    const/4 p0, 0x0

    .line 5
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/n;->q(F)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
