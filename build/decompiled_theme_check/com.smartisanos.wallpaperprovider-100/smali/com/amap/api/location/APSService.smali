.class public Lcom/amap/api/location/APSService;
.super Landroid/app/Service;
.source "APSService.java"


# instance fields
.field a:Landroid/os/Messenger;

.field b:Lcom/amap/api/location/APSServiceBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    :try_start_0
    const-string v0, "apiKey"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-static {p1}, Lcom/loc/n;->a(Ljava/lang/String;)V

    .line 34
    :cond_0
    new-instance p1, Landroid/os/Messenger;

    iget-object v0, p0, Lcom/amap/api/location/APSService;->b:Lcom/amap/api/location/APSServiceBase;

    invoke-interface {v0}, Lcom/amap/api/location/APSServiceBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/amap/api/location/APSService;->a:Landroid/os/Messenger;

    .line 35
    iget-object p0, p0, Lcom/amap/api/location/APSService;->a:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    .line 56
    invoke-virtual {p0, p0}, Lcom/amap/api/location/APSService;->onCreate(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    const-string v0, "2.3.0"

    .line 44
    invoke-static {v0}, Lcom/loc/e;->a(Ljava/lang/String;)Lcom/loc/v;

    move-result-object v2

    const-string v3, "com.amap.api.location.APSServiceWrapper"

    .line 45
    const-class v4, Lcom/loc/d;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v6

    move-object v1, p1

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/loc/af;->a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/location/APSServiceBase;

    iput-object p1, p0, Lcom/amap/api/location/APSService;->b:Lcom/amap/api/location/APSServiceBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    new-instance p1, Lcom/loc/d;

    invoke-direct {p1, p0}, Lcom/loc/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/location/APSService;->b:Lcom/amap/api/location/APSServiceBase;

    .line 51
    :goto_0
    iget-object p1, p0, Lcom/amap/api/location/APSService;->b:Lcom/amap/api/location/APSServiceBase;

    invoke-interface {p1}, Lcom/amap/api/location/APSServiceBase;->onCreate()V

    .line 52
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/APSService;->b:Lcom/amap/api/location/APSServiceBase;

    invoke-interface {v0}, Lcom/amap/api/location/APSServiceBase;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/APSService;->b:Lcom/amap/api/location/APSServiceBase;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/location/APSServiceBase;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method
