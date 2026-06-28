.class public final Lcom/android/settings/wifi/WifiApService;
.super Landroid/app/Service;
.source "WifiApService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiApService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final CHECK_STATUS_INTERVAL_MSECONDS:I = 0x7530

.field private static final DEBUG:Z = true

.field private static final MSG_AP_DISABLED:I = 0x65

.field private static final MSG_CHECK_CONNETIVITY_STATUS:I = 0x66

.field private static final MSG_CLOSE_SOFTAP:I = 0x64

.field private static final POST_DELAY_MSECONDS:I = 0x927c0

.field private static final TAG:Ljava/lang/String; = "WifiApService"

.field private static final WIFIAP_SERVICE_ID:I = 0x1


# instance fields
.field private mConnectStateChanged:Z

.field private mConnectedDeviceSize:I

.field private mForegroundNotification:Landroid/app/Notification;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mServiceHandler:Lcom/android/settings/wifi/WifiApService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private sServiceWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApService;->mConnectStateChanged:Z

    .line 51
    new-instance v0, Lcom/android/settings/wifi/WifiApService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApService$1;-><init>(Lcom/android/settings/wifi/WifiApService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApService;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApService;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiApService;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApService;->mConnectStateChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApService;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/android/settings/wifi/WifiApService;->mConnectedDeviceSize:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiApService;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/android/settings/wifi/WifiApService;->mConnectedDeviceSize:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApService;)Lcom/android/settings/wifi/WifiApService$ServiceHandler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApService;->mServiceHandler:Lcom/android/settings/wifi/WifiApService$ServiceHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApService;Landroid/os/Message;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApService;->processMessage(Landroid/os/Message;)V

    return-void
.end method

.method private checkConnectivityStatus()V
    .locals 3

    .line 154
    invoke-static {}, Lcom/android/settings/wifi/Utils;->hasAssignedIp()Z

    move-result v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkConnectivityStatus hsCilent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiApService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 157
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApService;->mConnectStateChanged:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiApService;->mConnectedDeviceSize:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApService;->mServiceHandler:Lcom/android/settings/wifi/WifiApService$ServiceHandler;

    const/16 v0, 0x66

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiApService$ServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 158
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApService;->mServiceHandler:Lcom/android/settings/wifi/WifiApService$ServiceHandler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApService$ServiceHandler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method private disabledSoftap()V
    .locals 6

    const-string v0, "wifi_saved_state"

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    .line 227
    :try_start_0
    invoke-static {v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WifiApService"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 235
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/android/settings/MultiSDKAdapter;->setWifiApEnabled(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 242
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 243
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method private handleWifiApStateChanged(I)V
    .locals 2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApService;->mServiceHandler:Lcom/android/settings/wifi/WifiApService$ServiceHandler;

    const/16 p1, 0x66

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/wifi/WifiApService$ServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 172
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApService;->mServiceHandler:Lcom/android/settings/wifi/WifiApService$ServiceHandler;

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiApService$ServiceHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private declared-synchronized processMessage(Landroid/os/Message;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "WifiApService"

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessage msg.what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 200
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApService;->checkConnectivityStatus()V

    goto :goto_0

    .line 204
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApService;->disabledSoftap()V

    .line 205
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApService;->mServiceHandler:Lcom/android/settings/wifi/WifiApService$ServiceHandler;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiApService$ServiceHandler;->stop()V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApService;->stopSelf()V

    :pswitch_2
    const-string p1, "WifiApService"

    const-string v0, "softAp disabled then stop this service."

    .line 209
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApService;->mServiceHandler:Lcom/android/settings/wifi/WifiApService$ServiceHandler;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiApService$ServiceHandler;->stop()V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApService;->stopSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 4

    const-string v0, "WifiApService"

    const-string v1, "onCreate"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "wifi"

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 79
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    const-string p0, "Can\'t get WifiManager: exiting"

    .line 80
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApService;->sServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    const-string v1, "power"

    .line 85
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "sWifiApServiceWakeLock"

    .line 86
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApService;->sServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApService;->sServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 92
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 93
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiApService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 100
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApService;->mServiceLooper:Landroid/os/Looper;

    .line 101
    new-instance v1, Lcom/android/settings/wifi/WifiApService$ServiceHandler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApService;->mServiceLooper:Landroid/os/Looper;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/wifi/WifiApService$ServiceHandler;-><init>(Lcom/android/settings/wifi/WifiApService;Landroid/os/Looper;Lcom/android/settings/wifi/WifiApService$1;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApService;->mServiceHandler:Lcom/android/settings/wifi/WifiApService$ServiceHandler;

    const/4 v1, 0x2

    .line 105
    invoke-static {p0, v1}, Lcom/android/settings/MultiSDKAdapter;->getNotificationManager(Landroid/content/Context;I)Landroid/app/NotificationManager;

    .line 106
    invoke-static {p0, v1}, Lcom/android/settings/MultiSDKAdapter;->getNotificationBuilder(Landroid/content/Context;I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 107
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApService;->mForegroundNotification:Landroid/app/Notification;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "WifiApService"

    const-string v1, "onDestroy"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApService;->sServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 123
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApService;->sServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 126
    :cond_1
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApService;->mServiceLooper:Landroid/os/Looper;

    const/4 p0, 0x0

    .line 128
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand startId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " flags: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WifiApService"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xe

    const-string p3, "wifi_state"

    .line 143
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 145
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApService;->handleWifiApStateChanged(I)V

    const/4 p1, 0x1

    .line 146
    iget-object p2, p0, Lcom/android/settings/wifi/WifiApService;->mForegroundNotification:Landroid/app/Notification;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/WifiApService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    const/4 p0, 0x2

    return p0
.end method
