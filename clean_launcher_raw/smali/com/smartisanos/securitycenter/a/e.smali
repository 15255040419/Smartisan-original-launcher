.class Lcom/smartisanos/securitycenter/a/e;
.super Ljava/lang/Object;
.source "FaceIdServiceGlobal.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/securitycenter/a/g;


# direct methods
.method constructor <init>(Lcom/smartisanos/securitycenter/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/a/e;->this$0:Lcom/smartisanos/securitycenter/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "FaceIdServiceGlobal"

    const-string v0, "service bind success"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/e;->this$0:Lcom/smartisanos/securitycenter/a/g;

    invoke-static {p2}, Lb/a/a/b;->asInterface(Landroid/os/IBinder;)Lb/a/a/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/securitycenter/a/g;->a(Lcom/smartisanos/securitycenter/a/g;Lb/a/a/c;)Lb/a/a/c;

    .line 3
    :try_start_0
    invoke-static {}, Lcom/smartisanos/securitycenter/a/i;->getInstance()Lcom/smartisanos/securitycenter/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/securitycenter/a/e;->this$0:Lcom/smartisanos/securitycenter/a/g;

    invoke-static {v1}, Lcom/smartisanos/securitycenter/a/g;->b(Lcom/smartisanos/securitycenter/a/g;)Lcom/smartisanos/securitycenter/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/a/i;->a(Lcom/smartisanos/securitycenter/b/b;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/e;->this$0:Lcom/smartisanos/securitycenter/a/g;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/a/g;->a(Lcom/smartisanos/securitycenter/a/g;)Lb/a/a/c;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/c;->init()V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/e;->this$0:Lcom/smartisanos/securitycenter/a/g;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/a/g;->a(Lcom/smartisanos/securitycenter/a/g;)Lb/a/a/c;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/securitycenter/a/i;->getInstance()Lcom/smartisanos/securitycenter/a/i;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/a/a/c;->a(Lb/a/a/e;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/e;->this$0:Lcom/smartisanos/securitycenter/a/g;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/a/g;->c(Lcom/smartisanos/securitycenter/a/g;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "onServiceConnected: dead service"

    .line 7
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/smartisanos/securitycenter/a/e;->this$0:Lcom/smartisanos/securitycenter/a/g;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/smartisanos/securitycenter/a/g;->a(Lcom/smartisanos/securitycenter/a/g;Lb/a/a/c;)Lb/a/a/c;

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/securitycenter/a/e;->this$0:Lcom/smartisanos/securitycenter/a/g;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/a/g;->d(Lcom/smartisanos/securitycenter/a/g;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 10
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/e;->this$0:Lcom/smartisanos/securitycenter/a/g;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/smartisanos/securitycenter/a/g;->a(Lcom/smartisanos/securitycenter/a/g;Lb/a/a/c;)Lb/a/a/c;

    return-void
.end method
