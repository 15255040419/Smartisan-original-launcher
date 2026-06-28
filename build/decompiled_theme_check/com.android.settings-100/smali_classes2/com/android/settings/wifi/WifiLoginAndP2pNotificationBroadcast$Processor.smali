.class public final Lcom/android/settings/wifi/WifiLoginAndP2pNotificationBroadcast$Processor;
.super Ljava/lang/Object;
.source "WifiLoginAndP2pNotificationBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiLoginAndP2pNotificationBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Processor"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/settings/wifi/WifiLoginAndP2pNotificationBroadcast$Processor;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getCurrenWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p2

    .line 152
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object p1, p0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 158
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v1, p2, :cond_1

    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method private handleWifiApStateChanged(Landroid/content/Context;I)V
    .locals 4

    const/16 p0, 0xb

    const-wide/16 v0, 0x0

    if-eq p2, p0, :cond_1

    const/16 p0, 0xd

    if-eq p2, p0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/Utils;->getDataUsage()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/android/settings/wifi/Utils;->storeStartUpDataUsage(Landroid/content/Context;J)V

    .line 171
    invoke-static {p1, v0, v1}, Lcom/android/settings/wifi/Utils;->storeLastDataUsage(Landroid/content/Context;J)V

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {p1, v0, v1}, Lcom/android/settings/wifi/Utils;->storeStartUpDataUsage(Landroid/content/Context;J)V

    .line 175
    invoke-static {p1, v0, v1}, Lcom/android/settings/wifi/Utils;->storeLastDataUsage(Landroid/content/Context;J)V

    :goto_0
    return-void
.end method

.method private updateNeedLoginConfig(Landroid/content/Context;Landroid/net/wifi/WifiInfo;)V
    .locals 1

    const-string v0, "wifi"

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiLoginAndP2pNotificationBroadcast$Processor;->getCurrenWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 136
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object p2

    invoke-virtual {p2, p0}, Lsmartisanos/api/WifiConfigurationSmt;->get_needLogin(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 137
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p0, v0}, Lsmartisanos/api/WifiConfigurationSmt;->set_needLogin(Landroid/net/wifi/WifiConfiguration;Z)V

    const/4 p2, 0x0

    .line 138
    invoke-virtual {p1, p0, p2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public process(Landroid/content/Intent;)V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLoginAndP2pNotificationBroadcast$Processor;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiLoginAndP2pNotificationBroadcast"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.intent.action.PRE_BOOT_COMPLETED"

    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-static {v0}, Lcom/android/settings/wifi/WifiAuthorizeUtils;->moveDatabase2ProviderForOta(Landroid/content/Context;)I

    move-result p0

    .line 73
    invoke-static {v0}, Lcom/android/settings/wifi/WifiAuthorizeUtils;->deleteDatabaseForOta(Landroid/content/Context;)Z

    move-result p1

    .line 74
    invoke-static {v0}, Lcom/android/settings/wifi/WifiAuthorizeUtils;->movePreferenceData2ProviderForOta(Landroid/content/Context;)I

    move-result v1

    .line 75
    invoke-static {v0}, Lcom/android/settings/wifi/WifiAuthorizeUtils;->deleteSharePreferenceForOta(Landroid/content/Context;)Z

    move-result v0

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTA completed, move auth records: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", delete auth database: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", move data from sharePreference count: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", delete sharePreference: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 80
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xb

    const-string v2, "wifi_state"

    .line 81
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 83
    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiLoginAndP2pNotificationBroadcast$Processor;->handleWifiApStateChanged(Landroid/content/Context;I)V

    .line 87
    invoke-static {}, Lcom/android/settings/wifi/WifiLoginAndP2pNotificationBroadcast;->access$000()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    const/16 p0, 0xd

    if-ne v1, p0, :cond_9

    .line 92
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 93
    const-class p1, Lcom/android/settings/wifi/WifiApService;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 94
    invoke-virtual {v0, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_9

    const-string p0, "Can\'t start WifiApService"

    .line 95
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_2
    const-string p0, "smartisanos.net.conn.CONNECTIVITY_CHANGE"

    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-eqz p0, :cond_7

    const-string p0, "networkInfo"

    .line 101
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkInfo;

    if-eqz p0, :cond_6

    .line 103
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 104
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-eq p1, v3, :cond_3

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-eq p1, v1, :cond_3

    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 108
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-eqz p1, :cond_5

    .line 109
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-eq p1, v3, :cond_5

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :cond_5
    :goto_0
    if-nez v1, :cond_9

    .line 114
    invoke-static {}, Lcom/android/settings/wifi/Utils;->getDataUsage()J

    move-result-wide p0

    invoke-static {v0, p0, p1}, Lcom/android/settings/wifi/Utils;->storeLastDataUsage(Landroid/content/Context;J)V

    goto :goto_2

    :cond_6
    :goto_1
    return-void

    :cond_7
    const-string p0, "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

    .line 116
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "connectivity"

    .line 118
    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 119
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 120
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 121
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_8

    .line 122
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v3, :cond_9

    :cond_8
    const-string p0, "connected_devices_count"

    .line 123
    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_9

    .line 126
    invoke-static {}, Lcom/android/settings/wifi/Utils;->getDataUsage()J

    move-result-wide p0

    invoke-static {v0, p0, p1}, Lcom/android/settings/wifi/Utils;->storeLastDataUsage(Landroid/content/Context;J)V

    :cond_9
    :goto_2
    return-void
.end method
