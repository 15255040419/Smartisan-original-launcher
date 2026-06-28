.class public Lcom/amap/api/location/AMapLocationClient;
.super Ljava/lang/Object;
.source "AMapLocationClient.java"

# interfaces
.implements Lcom/amap/api/location/LocationManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/AMapLocationClient$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/location/AMapLocationClient$a;

.field b:Landroid/content/Context;

.field c:Lcom/amap/api/location/LocationManagerBase;

.field d:Lcom/amap/api/location/AMapLocationClientOption;

.field e:Lcom/amap/api/location/AMapLocationListener;

.field f:Lcom/amap/api/location/AMapLocationClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 47
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient;->b:Landroid/content/Context;

    .line 48
    new-instance p1, Lcom/amap/api/location/AMapLocationClient;

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    .line 49
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    .line 50
    new-instance p1, Lcom/amap/api/location/AMapLocationClient$a;

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->b:Landroid/content/Context;

    .line 51
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/amap/api/location/AMapLocationClient$a;-><init>(Lcom/amap/api/location/AMapLocationClient;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    goto :goto_1

    .line 53
    :cond_0
    new-instance p1, Lcom/amap/api/location/AMapLocationClient$a;

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {p1, v0}, Lcom/amap/api/location/AMapLocationClient$a;-><init>(Lcom/amap/api/location/AMapLocationClient;)V

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 73
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient;->b:Landroid/content/Context;

    .line 74
    new-instance p1, Lcom/amap/api/location/AMapLocationClient;

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p2, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    .line 75
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    .line 76
    new-instance p1, Lcom/amap/api/location/AMapLocationClient$a;

    iget-object p2, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Landroid/content/Context;

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/amap/api/location/AMapLocationClient$a;-><init>(Lcom/amap/api/location/AMapLocationClient;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    goto :goto_1

    .line 79
    :cond_0
    new-instance p1, Lcom/amap/api/location/AMapLocationClient$a;

    iget-object p2, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {p1, p2}, Lcom/amap/api/location/AMapLocationClient$a;-><init>(Lcom/amap/api/location/AMapLocationClient;)V

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 71
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 7

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient;->b:Landroid/content/Context;

    const-string p3, "2.3.0"

    .line 90
    invoke-static {p3}, Lcom/loc/e;->a(Ljava/lang/String;)Lcom/loc/v;

    move-result-object v1

    const-string v2, "com.amap.api.location.LocationManagerWrapper"

    .line 91
    const-class v3, Lcom/loc/a;

    const/4 p3, 0x2

    new-array v4, p3, [Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-class v0, Landroid/content/Intent;

    const/4 v6, 0x1

    aput-object v0, v4, v6

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v5

    aput-object p2, p3, v6

    move-object v0, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/loc/af;->a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amap/api/location/LocationManagerBase;

    iput-object p3, p0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    new-instance p3, Lcom/loc/a;

    invoke-direct {p3, p1, p2}, Lcom/loc/a;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object p3, p0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    :goto_0
    return-void
.end method

.method public static setApiKey(Ljava/lang/String;)V
    .locals 0

    .line 473
    :try_start_0
    sput-object p0, Lcom/loc/e;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 475
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addGeoFenceAlert(Ljava/lang/String;DDFJLandroid/app/PendingIntent;)V
    .locals 2

    .line 347
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 348
    new-instance v1, Lcom/amap/api/fence/Fence;

    invoke-direct {v1}, Lcom/amap/api/fence/Fence;-><init>()V

    .line 349
    iput-object p1, v1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    .line 350
    iput-wide p2, v1, Lcom/amap/api/fence/Fence;->d:D

    .line 351
    iput-wide p4, v1, Lcom/amap/api/fence/Fence;->c:D

    .line 352
    iput p6, v1, Lcom/amap/api/fence/Fence;->e:F

    .line 353
    iput-object p9, v1, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    .line 354
    iput-wide p7, v1, Lcom/amap/api/fence/Fence;->f:J

    .line 355
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 356
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 357
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 359
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getLastKnownLocation()Lcom/amap/api/location/AMapLocation;
    .locals 1

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    iget-object v0, v0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    if-eqz v0, :cond_0

    .line 411
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    .line 412
    invoke-interface {p0}, Lcom/amap/api/location/LocationManagerBase;->getLastKnownLocation()Lcom/amap/api/location/AMapLocation;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    .line 456
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {p0}, Lcom/amap/api/location/LocationManagerBase;->getVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 459
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isStarted()Z
    .locals 1

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    .line 487
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {p0}, Lcom/amap/api/location/LocationManagerBase;->isStarted()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 490
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDestroy()V
    .locals 2

    .line 518
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    .line 519
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 520
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 522
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;)V
    .locals 1

    .line 393
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 394
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 395
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 396
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 398
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 2

    .line 373
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 374
    new-instance v1, Lcom/amap/api/fence/Fence;

    invoke-direct {v1}, Lcom/amap/api/fence/Fence;-><init>()V

    .line 375
    iput-object p2, v1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    .line 376
    iput-object p1, v1, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    .line 377
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 378
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 379
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 381
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 291
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 292
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 293
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 294
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 289
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 271
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 272
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 273
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 269
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "LocationManagerOption\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public startAssistantLocation()V
    .locals 2

    .line 427
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x8

    .line 428
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 429
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 431
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startLocation()V
    .locals 2

    .line 305
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 306
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 307
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 309
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopAssistantLocation()V
    .locals 2

    .line 440
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    .line 441
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 442
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 444
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopLocation()V
    .locals 2

    .line 318
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 319
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 320
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 322
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 2

    .line 502
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 503
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 504
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 505
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 507
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
