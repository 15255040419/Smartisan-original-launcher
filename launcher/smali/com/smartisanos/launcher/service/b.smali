.class public Lcom/smartisanos/launcher/service/b;
.super Ljava/lang/Object;
.source "SmartisanBrainMessage.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;

.field private static mInstance:Lcom/smartisanos/launcher/service/b;


# instance fields
.field private volatile Ps:Z

.field private Qs:Landroid/os/Messenger;

.field private Rs:Landroid/os/Bundle;

.field private Ss:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/service/b;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/service/b;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/service/b;->Ps:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/service/b;->Qs:Landroid/os/Messenger;

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/service/b;->Rs:Landroid/os/Bundle;

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/service/a;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/service/a;-><init>(Lcom/smartisanos/launcher/service/b;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/service/b;->Ss:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/service/b;)Landroid/os/Bundle;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/service/b;->Rs:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/service/b;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/service/b;->Qs:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/service/b;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/service/b;->Ps:Z

    return p1
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/service/b;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method public static getInstance()Lcom/smartisanos/launcher/service/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/service/b;->mInstance:Lcom/smartisanos/launcher/service/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/service/b;

    invoke-direct {v0}, Lcom/smartisanos/launcher/service/b;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/service/b;->mInstance:Lcom/smartisanos/launcher/service/b;

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/service/b;->mInstance:Lcom/smartisanos/launcher/service/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 4
    iget-boolean v0, p0, Lcom/smartisanos/launcher/service/b;->Ps:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/service/b;->Qs:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/service/b;->e(Landroid/os/Bundle;)V

    return-void

    .line 6
    :cond_0
    iput-object p2, p0, Lcom/smartisanos/launcher/service/b;->Rs:Landroid/os/Bundle;

    .line 7
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 8
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.smartisanos.smartisanbrain"

    const-string v2, "com.smartisanos.smartisanbrain.service.SmartisanBrain"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 10
    :try_start_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/service/b;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "bindService"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/service/b;->Ss:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/service/b;->Qs:Landroid/os/Messenger;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/service/b;->Rs:Landroid/os/Bundle;

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x400

    .line 4
    iput v1, v0, Landroid/os/Message;->what:I

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 6
    :try_start_0
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/smartisanos/launcher/service/b;->log:Lcom/smartisanos/launcher/va;

    const-string v1, " send Message"

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/service/b;->Qs:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
