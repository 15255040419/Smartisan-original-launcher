.class Lcom/smartisanos/securitycenter/h;
.super Ljava/lang/Object;
.source "PrivacySecurity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/securitycenter/PrivacySecurity;


# direct methods
.method constructor <init>(Lcom/smartisanos/securitycenter/PrivacySecurity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/h;->this$0:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/h;->this$0:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->access$200(Lcom/smartisanos/securitycenter/PrivacySecurity;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder$DeathRecipient;->binderDied()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/smartisanos/securitycenter/h;->this$0:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->access$000(Lcom/smartisanos/securitycenter/PrivacySecurity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/smartisanos/securitycenter/h;->this$0:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->access$100(Lcom/smartisanos/securitycenter/PrivacySecurity;)Lcom/smartisanos/securitycenter/g;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smartisanos/securitycenter/h;->this$0:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->access$100(Lcom/smartisanos/securitycenter/PrivacySecurity;)Lcom/smartisanos/securitycenter/g;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/securitycenter/h;->this$0:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->access$100(Lcom/smartisanos/securitycenter/PrivacySecurity;)Lcom/smartisanos/securitycenter/g;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v1, p0, Lcom/smartisanos/securitycenter/h;->this$0:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-static {v1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->access$200(Lcom/smartisanos/securitycenter/PrivacySecurity;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/securitycenter/h;->this$0:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-static {p2}, Lcom/smartisanos/securitycenter/f;->asInterface(Landroid/os/IBinder;)Lcom/smartisanos/securitycenter/g;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->access$102(Lcom/smartisanos/securitycenter/PrivacySecurity;Lcom/smartisanos/securitycenter/g;)Lcom/smartisanos/securitycenter/g;

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/smartisanos/securitycenter/h;->this$0:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->access$200(Lcom/smartisanos/securitycenter/PrivacySecurity;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/securitycenter/h;->this$0:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->access$400(Lcom/smartisanos/securitycenter/PrivacySecurity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/smartisanos/securitycenter/h;->this$0:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-static {p2}, Lcom/smartisanos/securitycenter/PrivacySecurity;->access$300(Lcom/smartisanos/securitycenter/PrivacySecurity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    iget-object p1, p0, Lcom/smartisanos/securitycenter/h;->this$0:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->access$500(Lcom/smartisanos/securitycenter/PrivacySecurity;)Lcom/smartisanos/securitycenter/d;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/smartisanos/securitycenter/h;->this$0:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->access$500(Lcom/smartisanos/securitycenter/PrivacySecurity;)Lcom/smartisanos/securitycenter/d;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/securitycenter/PrivacySecurity;->registerObserver(Lcom/smartisanos/securitycenter/d;)V

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/securitycenter/h;->this$0:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->access$600(Lcom/smartisanos/securitycenter/PrivacySecurity;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/securitycenter/h;->this$0:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->access$000(Lcom/smartisanos/securitycenter/PrivacySecurity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/h;->this$0:Lcom/smartisanos/securitycenter/PrivacySecurity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->access$102(Lcom/smartisanos/securitycenter/PrivacySecurity;Lcom/smartisanos/securitycenter/g;)Lcom/smartisanos/securitycenter/g;

    return-void
.end method
