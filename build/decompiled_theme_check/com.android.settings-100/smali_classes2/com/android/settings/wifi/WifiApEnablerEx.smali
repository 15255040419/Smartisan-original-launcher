.class public Lcom/android/settings/wifi/WifiApEnablerEx;
.super Ljava/lang/Object;
.source "WifiApEnablerEx.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mLock:Ljava/lang/Object;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitchItem:Lsmartisanos/widget/ListContentItemSwitch;

.field private mWaitForWifiStateChange:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsmartisanos/widget/ListContentItemSwitch;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mWaitForWifiStateChange:Z

    .line 55
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mLock:Ljava/lang/Object;

    .line 57
    new-instance v1, Lcom/android/settings/wifi/WifiApEnablerEx$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApEnablerEx$1;-><init>(Lcom/android/settings/wifi/WifiApEnablerEx;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mSwitchItem:Lsmartisanos/widget/ListContentItemSwitch;

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mWaitForWifiStateChange:Z

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "wifi"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mCm:Landroid/net/ConnectivityManager;

    .line 91
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mWifiRegexs:[Ljava/lang/String;

    .line 93
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mIntentFilter:Landroid/content/IntentFilter;

    .line 94
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApEnablerEx;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnablerEx;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApEnablerEx;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mWaitForWifiStateChange:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApEnablerEx;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnablerEx;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApEnablerEx;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiApEnablerEx;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApEnablerEx;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnablerEx;->enableWifiCheckBox()V

    return-void
.end method

.method private enableWifiCheckBox()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 115
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mSwitchItem:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p0, v2}, Lsmartisanos/widget/ListContentItemSwitch;->setEnabled(Z)V

    goto :goto_1

    .line 118
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mSwitchItem:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p0, v1}, Lsmartisanos/widget/ListContentItemSwitch;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private handleWifiApStateChanged(I)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mSwitchItem:Lsmartisanos/widget/ListContentItemSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 219
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mSwitchItem:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 221
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnablerEx;->enableWifiCheckBox()V

    goto :goto_0

    .line 203
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mSwitchItem:Lsmartisanos/widget/ListContentItemSwitch;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 205
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mSwitchItem:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemSwitch;->setEnabled(Z)V

    goto :goto_0

    .line 197
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mSwitchItem:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemSwitch;->setEnabled(Z)V

    goto :goto_0

    .line 212
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mSwitchItem:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 214
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mWaitForWifiStateChange:Z

    if-nez p1, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnablerEx;->enableWifiCheckBox()V

    goto :goto_0

    .line 209
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mSwitchItem:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemSwitch;->setEnabled(Z)V

    .line 223
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mSwitchItem:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnablerEx;->enableWifiCheckBox()V

    const/4 p1, 0x0

    .line 263
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mWaitForWifiStateChange:Z

    :goto_0
    return-void
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 8

    .line 171
    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v3, p2, v1

    .line 172
    check-cast v3, Ljava/lang/String;

    .line 173
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mWifiRegexs:[Ljava/lang/String;

    array-length v5, v4

    move v6, v2

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v4, v2

    .line 174
    invoke-virtual {v3, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v6

    goto :goto_0

    .line 177
    :cond_2
    array-length p1, p3

    move p2, v0

    :goto_2
    if-ge p2, p1, :cond_4

    aget-object v1, p3, p2

    .line 178
    check-cast v1, Ljava/lang/String;

    .line 179
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mWifiRegexs:[Ljava/lang/String;

    array-length v4, v3

    move v5, v0

    :goto_3
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 180
    invoke-virtual {v1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    .line 185
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiApEnablerEx;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    .line 228
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    new-instance v1, Lcom/android/settings/HandInHandProcessor;

    invoke-direct {v1}, Lcom/android/settings/HandInHandProcessor;-><init>()V

    if-eqz p2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/settings/HandInHandProcessor;->isHandInHandle(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    new-instance v4, Lcom/android/settings/wifi/WifiApEnablerEx$2;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/wifi/WifiApEnablerEx$2;-><init>(Lcom/android/settings/wifi/WifiApEnablerEx;Landroid/widget/CompoundButton;)V

    new-instance v5, Lcom/android/settings/wifi/WifiApEnablerEx$3;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiApEnablerEx$3;-><init>(Lcom/android/settings/wifi/WifiApEnablerEx;)V

    new-instance v6, Lcom/android/settings/wifi/WifiApEnablerEx$4;

    invoke-direct {v6, p0, p1}, Lcom/android/settings/wifi/WifiApEnablerEx$4;-><init>(Lcom/android/settings/wifi/WifiApEnablerEx;Landroid/widget/CompoundButton;)V

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/HandInHandProcessor;->showDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiApEnablerEx;->setSoftapEnabled(Z)V

    .line 254
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const p0, 0x111d5

    .line 255
    invoke-static {p0, p2}, Lcom/android/settings/SettingsTracker;->onSwitcherClick(IZ)V

    return-void

    :catchall_0
    move-exception p0

    .line 254
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public pause()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mSwitchItem:Lsmartisanos/widget/ListContentItemSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public resume()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mSwitchItem:Lsmartisanos/widget/ListContentItemSwitch;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mSwitchItem:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {v0, p0}, Lsmartisanos/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnablerEx;->enableWifiCheckBox()V

    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-eqz p1, :cond_0

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/android/settings/MultiSDKAdapter;->getWifiStaSapConcurrency(Landroid/net/wifi/WifiManager;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    :try_start_0
    const-string v1, "wifi_saved_state"

    .line 140
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v0, v2

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 146
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mWaitForWifiStateChange:Z

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/settings/MultiSDKAdapter;->setWifiApEnabled(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 153
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mSwitchItem:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p0, v2}, Lsmartisanos/widget/ListContentItemSwitch;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnablerEx;->mContext:Landroid/content/Context;

    const p1, 0x104087d

    .line 161
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    return-void
.end method
