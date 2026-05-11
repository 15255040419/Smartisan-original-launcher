.class Lcom/smartisanos/launcher/service/a;
.super Ljava/lang/Object;
.source "SmartisanBrainMessage.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/service/b;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/service/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/service/a;->this$0:Lcom/smartisanos/launcher/service/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/service/b;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/service/a;->this$0:Lcom/smartisanos/launcher/service/b;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/smartisanos/launcher/service/b;->a(Lcom/smartisanos/launcher/service/b;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/service/a;->this$0:Lcom/smartisanos/launcher/service/b;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/smartisanos/launcher/service/b;->a(Lcom/smartisanos/launcher/service/b;Z)Z

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/service/a;->this$0:Lcom/smartisanos/launcher/service/b;

    invoke-static {p0}, Lcom/smartisanos/launcher/service/b;->a(Lcom/smartisanos/launcher/service/b;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/service/b;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/service/a;->this$0:Lcom/smartisanos/launcher/service/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/launcher/service/b;->a(Lcom/smartisanos/launcher/service/b;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/service/a;->this$0:Lcom/smartisanos/launcher/service/b;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/service/b;->a(Lcom/smartisanos/launcher/service/b;Z)Z

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/service/b;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "onServiceConnected"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method
