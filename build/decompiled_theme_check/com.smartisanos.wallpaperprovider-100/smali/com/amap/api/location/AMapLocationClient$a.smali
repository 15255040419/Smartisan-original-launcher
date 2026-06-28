.class Lcom/amap/api/location/AMapLocationClient$a;
.super Landroid/os/Handler;
.source "AMapLocationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/AMapLocationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/amap/api/location/AMapLocationClient;


# direct methods
.method public constructor <init>(Lcom/amap/api/location/AMapLocationClient;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    .line 122
    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/location/AMapLocationClient;Landroid/os/Looper;)V
    .locals 0

    .line 116
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 114
    iput-object p2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    .line 117
    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 128
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 129
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 237
    :pswitch_0
    iget-object p1, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object p1, p1, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {p1}, Lcom/amap/api/location/LocationManagerBase;->onDestroy()V

    .line 238
    iget-object p1, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    .line 239
    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    goto/16 :goto_0

    .line 206
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/fence/Fence;

    .line 207
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    iget-object v0, p1, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    iget-object p1, p1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lcom/amap/api/location/LocationManagerBase;->removeGeoFenceAlert(Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :pswitch_2
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    .line 228
    invoke-interface {p0}, Lcom/amap/api/location/LocationManagerBase;->stopAssistantLocation()V

    goto/16 :goto_0

    .line 217
    :pswitch_3
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    .line 218
    invoke-interface {p0}, Lcom/amap/api/location/LocationManagerBase;->startAssistantLocation()V

    goto :goto_0

    .line 196
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/PendingIntent;

    .line 197
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {p0, p1}, Lcom/amap/api/location/LocationManagerBase;->removeGeoFenceAlert(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 184
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/fence/Fence;

    .line 185
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    iget-object v1, p1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    iget-wide v2, p1, Lcom/amap/api/fence/Fence;->d:D

    iget-wide v4, p1, Lcom/amap/api/fence/Fence;->c:D

    iget v6, p1, Lcom/amap/api/fence/Fence;->e:F

    iget-wide v7, p1, Lcom/amap/api/fence/Fence;->f:J

    iget-object v9, p1, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    invoke-interface/range {v0 .. v9}, Lcom/amap/api/location/LocationManagerBase;->addGeoFenceAlert(Ljava/lang/String;DDFJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 155
    :pswitch_6
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/location/AMapLocationListener;

    iput-object p1, v0, Lcom/amap/api/location/AMapLocationClient;->e:Lcom/amap/api/location/AMapLocationListener;

    .line 156
    iget-object p1, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object p1, p1, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->e:Lcom/amap/api/location/AMapLocationListener;

    .line 157
    invoke-interface {p1, p0}, Lcom/amap/api/location/LocationManagerBase;->unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    goto :goto_0

    .line 175
    :pswitch_7
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {p0}, Lcom/amap/api/location/LocationManagerBase;->stopLocation()V

    goto :goto_0

    .line 166
    :pswitch_8
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {p0}, Lcom/amap/api/location/LocationManagerBase;->startLocation()V

    goto :goto_0

    .line 144
    :pswitch_9
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/location/AMapLocationListener;

    iput-object p1, v0, Lcom/amap/api/location/AMapLocationClient;->e:Lcom/amap/api/location/AMapLocationListener;

    .line 145
    iget-object p1, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object p1, p1, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->e:Lcom/amap/api/location/AMapLocationListener;

    .line 146
    invoke-interface {p1, p0}, Lcom/amap/api/location/LocationManagerBase;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    goto :goto_0

    .line 133
    :pswitch_a
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/location/AMapLocationClientOption;

    iput-object p1, v0, Lcom/amap/api/location/AMapLocationClient;->d:Lcom/amap/api/location/AMapLocationClientOption;

    .line 134
    iget-object p1, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object p1, p1, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->d:Lcom/amap/api/location/AMapLocationClientOption;

    .line 135
    invoke-interface {p1, p0}, Lcom/amap/api/location/LocationManagerBase;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
