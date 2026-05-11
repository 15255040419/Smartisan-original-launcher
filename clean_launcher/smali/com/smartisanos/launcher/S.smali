.class Lcom/smartisanos/launcher/S;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationProxy.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ja;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/S;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-boolean p2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p2, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 6
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDateTimeReceiver, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 8
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    .line 9
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    .line 10
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-virtual {v0, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    const-string p2, "smartisan.intent.action.update_calendar_date"

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 13
    iget-object p1, p0, Lcom/smartisanos/launcher/S;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-static {p1}, Lcom/smartisanos/launcher/ja;->d(Lcom/smartisanos/launcher/ja;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/smartisanos/launcher/Q;

    invoke-direct {p2, p0}, Lcom/smartisanos/launcher/Q;-><init>(Lcom/smartisanos/launcher/S;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string p2, "android.intent.action.TIME_SET"

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "android.intent.action.DATE_CHANGED"

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    sget-object p2, Lcom/smartisanos/launcher/view/activeicon/m;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/Eb;->sa(Ljava/lang/String;)Lcom/smartisanos/launcher/view/activeicon/a;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/activeicon/m;

    if-eqz p1, :cond_4

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/J;->ab()V

    .line 19
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/activeicon/m;->vq()V

    .line 20
    iget-object p0, p0, Lcom/smartisanos/launcher/S;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ja;->db()V

    .line 21
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    sget-object p1, Lcom/smartisanos/launcher/view/activeicon/H;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Eb;->sa(Ljava/lang/String;)Lcom/smartisanos/launcher/view/activeicon/a;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/activeicon/H;

    if-eqz p0, :cond_5

    .line 22
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->vq()V

    .line 23
    :cond_5
    :goto_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    :cond_6
    :goto_1
    return-void
.end method
