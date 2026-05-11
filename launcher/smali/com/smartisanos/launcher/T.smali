.class Lcom/smartisanos/launcher/T;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationProxy.java"


# instance fields
.field final na:Ljava/lang/String;

.field final oa:Ljava/lang/String;

.field final synthetic this$0:Lcom/smartisanos/launcher/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ja;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/T;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string p1, "reason"

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/T;->na:Ljava/lang/String;

    const-string p1, "recentapps"

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/T;->oa:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "reason"

    .line 4
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "recentapps"

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/d/e;->dismissDialog()V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/high16 p1, 0x20000000

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 8
    invoke-static {p0}, Lcom/smartisanos/launcher/d/h;->dismiss(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
