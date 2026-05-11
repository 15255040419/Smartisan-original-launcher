.class Lcom/smartisanos/launcher/I;
.super Landroid/content/BroadcastReceiver;
.source "ActivityProxy.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/J;


# direct methods
.method private constructor <init>(Lcom/smartisanos/launcher/J;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/I;->this$0:Lcom/smartisanos/launcher/J;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/launcher/J;Lcom/smartisanos/launcher/p;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/I;-><init>(Lcom/smartisanos/launcher/J;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/I;->this$0:Lcom/smartisanos/launcher/J;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/smartisanos/launcher/J;->a(Lcom/smartisanos/launcher/J;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p1

    const-string p2, "time zone change : "

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/I;->this$0:Lcom/smartisanos/launcher/J;

    invoke-static {p0}, Lcom/smartisanos/launcher/J;->d(Lcom/smartisanos/launcher/J;)V

    return-void
.end method
