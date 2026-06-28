.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/SupportFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;,
        Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;,
        Lcom/android/settings/wifi/WifiSettings$Scanner;,
        Lcom/android/settings/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field public static final ACTION_WIFI_AUTHORIZATION_START:Ljava/lang/String; = "action.intent.smartisanos.wifi_authorization_start"

.field public static final ACTION_WIFI_AUTHORIZATION_SUCCESS:Ljava/lang/String; = "action.intent.smartisanos.wifi_authorization_success"

.field private static final ACTIVATE_FLAG_CELLULAR:I = 0x1

.field private static final ACTIVATE_FLAG_SMS:I = 0x2

.field private static final ACTIVATE_FLAG_WIFI:I = 0x0

.field private static final DELAY_UPDATE_ACCESS_POINT:J = 0x96L

.field private static final EXTRA_KEY_NETWORK_ID:Ljava/lang/String; = "extra_key_network_id"

.field private static final EXTRA_KEY_SECURITY:Ljava/lang/String; = "extra_key_security"

.field private static final EXTRA_KEY_SSID:Ljava/lang/String; = "extra_key_ssid"

.field private static final MSG_UPDATE_ACCESS_POINT:I = 0x1

.field private static final REQ_CODE_LAUNCH_CAMERA:I = 0xc

.field private static final TAG:Ljava/lang/String; = "WifiSettings"

.field public static final WAPI_CERT_MANAGE_ACTION:Ljava/lang/String; = "android.Wapi.CertManage"

.field public static final WIFI_DIALOG_ID:I = 0x1

.field private static final WIFI_RESCAN_INTERVAL_MS:I = 0x1770

.field static final WPS_PBC_DIALOG_ID:I = 0x2

.field private static mListFooterCount:I

.field private static savedNetworksExist:Z


# instance fields
.field private mActivateByCellular:Lcom/android/settings/widget/SettingItemButton;

.field private mActivateBySms:Lcom/android/settings/widget/SettingItemButton;

.field private mActivateFooter:Landroid/view/View;

.field private mActivateHeader:Landroid/view/View;

.field mActivateRequested:Z

.field private mAddNetworkLayout:Landroid/view/View;

.field private mAddNetworkSettingItem:Lcom/android/settings/widget/SettingItemButton;

.field private mBottomSwitchesContainer:Landroid/widget/RelativeLayout;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectSSID:Ljava/lang/String;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCurrentAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

.field private mFallbackDilog:Landroid/app/AlertDialog;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mIsListScrollIdle:Z

.field private mKeepConnectionSwitch:Lsmartisanos/widget/SwitchEx;

.field private mKeyStoreNetworkId:I

.field private mLastConnectAccessPointTs:J

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mListView:Landroid/widget/ListView;

.field private mNoSIMTip:Landroid/view/View;

.field private mNoSIMTipContainer:Landroid/view/View;

.field private mPerParamVal:[I

.field private mPerf:Landroid/util/BoostFramework;

.field private final mPerfLockDuration:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSavedWifiSettings:Lsmartisanos/widget/ListContentItemText;

.field private mScanQRcodeSettingItem:Lcom/android/settings/widget/SettingItemButton;

.field private final mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

.field private mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

.field private mSetupWizardMode:Z

.field private mSmsTip:Landroid/view/View;

.field private mSmsTipContainer:Landroid/view/View;

.field private mUpdateWifiListInstantWhenFirstIn:Z

.field private mViewKeepConnetcion:Lsmartisanos/widget/ListContentItemSwitch;

.field private mViewWifiAssistantPosition:Lsmartisanos/widget/ListContentItemSwitch;

.field private mViewWifiAssistantPositionSwitch:Lsmartisanos/widget/SwitchEx;

.field private mViewWifiCellularFallback:Lsmartisanos/widget/ListContentItemSwitch;

.field private mViewWifiSwitch:Lsmartisanos/widget/ListContentItemSwitch;

.field private mWapiCertManaget:Lsmartisanos/widget/ListContentItemText;

.field private mWifiAdvancedSettings:Lsmartisanos/widget/ListContentItemText;

.field private final mWifiAuthorizationReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiCellularFallbackSwitch:Lsmartisanos/widget/SwitchEx;

.field private mWifiDisplay:Lsmartisanos/widget/ListContentItemText;

.field private mWifiListAdapter:Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2p:Lsmartisanos/widget/ListContentItemText;

.field private mWifiPickerMode:Z

.field private mWifiRefreshed:Z

.field private mWifiStateTipView:Lsmartisanos/widget/TipsView;

.field private mWifiSwitch:Lsmartisanos/widget/SwitchEx;

.field private mWifiSwitchEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiSwitchLayout:Landroid/widget/RelativeLayout;

.field private retryDilog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 286
    invoke-direct {p0}, Lcom/android/settings/SupportFragment;-><init>()V

    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, -0x1

    .line 143
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 178
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 179
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerMode:Z

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsListScrollIdle:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiRefreshed:Z

    .line 252
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateRequested:Z

    const/4 v2, 0x0

    .line 253
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectSSID:Ljava/lang/String;

    .line 262
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mPerf:Landroid/util/BoostFramework;

    const/16 v2, 0x7d0

    .line 263
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->mPerfLockDuration:I

    const/4 v2, 0x2

    new-array v2, v2, [Lsmartisanos/util/DeviceType;

    .line 268
    sget-object v3, Lsmartisanos/util/DeviceType;->ODIN:Lsmartisanos/util/DeviceType;

    aput-object v3, v2, v1

    sget-object v1, Lsmartisanos/util/DeviceType;->OSCAR:Lsmartisanos/util/DeviceType;

    aput-object v1, v2, v0

    invoke-static {v2}, Lsmartisanos/util/DeviceType;->isOneOf([Lsmartisanos/util/DeviceType;)Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateWifiListInstantWhenFirstIn:Z

    .line 269
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHandler:Landroid/os/Handler;

    .line 287
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 288
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 311
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAuthorizationReceiver:Landroid/content/BroadcastReceiver;

    .line 327
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsListScrollIdle:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiSettings;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsListScrollIdle:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiRefreshed:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiSettings;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiRefreshed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/ArrayList;
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->constructAccessPoints(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiSettings;Ljava/util/ArrayList;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPointsUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiSettings;Z)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->enableCheckedChangeListener(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/WifiSettings;)Landroid/app/Activity;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->_mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Intent;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiSettings;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->startActivate(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiSettings;)I
    .locals 0

    .line 102
    iget p0, p0, Lcom/android/settings/wifi/WifiSettings;->mTitleResId:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiSettings;)I
    .locals 0

    .line 102
    iget p0, p0, Lcom/android/settings/wifi/WifiSettings;->mTitleResId:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiSettings;)Landroid/util/BoostFramework;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mPerf:Landroid/util/BoostFramework;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiSettings;)[I
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mPerParamVal:[I

    return-object p0
.end method

.method private avoidBadWifiCurrentSettings()Z
    .locals 1

    .line 687
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "network_avoid_bad_wifi"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private constructAccessPoints(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            "Landroid/net/wifi/WifiInfo;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/wifi/AccessPointInfo;",
            ">;"
        }
    .end annotation

    const-string p0, "WifiSettings"

    .line 975
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 976
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 979
    new-instance v2, Lcom/android/settings/wifi/WifiSettings$Multimap;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/settings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/settings/wifi/WifiSettings$1;)V

    .line 983
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 985
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConfiguredNetworks exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move v6, v5

    .line 988
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 989
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 990
    iget-boolean v8, v7, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v8, :cond_0

    iget v8, v7, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-nez v8, :cond_0

    goto :goto_2

    .line 993
    :cond_0
    new-instance v8, Lcom/android/settings/wifi/AccessPointInfo;

    invoke-direct {v8, v7}, Lcom/android/settings/wifi/AccessPointInfo;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 995
    invoke-virtual {v8, p2, p3}, Lcom/android/settings/wifi/AccessPointInfo;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 997
    :cond_1
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    iget-object v7, v8, Lcom/android/settings/wifi/AccessPointInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1004
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 1006
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "wifiManager.getScanResults(), e:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz v3, :cond_7

    .line 1009
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/ScanResult;

    .line 1011
    iget-object p2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz p2, :cond_3

    iget-object p2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string p3, "[IBSS]"

    .line 1012
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_4

    .line 1017
    :cond_4
    iget-object p2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lcom/android/settings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    move p3, v5

    move v3, p3

    .line 1018
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge p3, v4, :cond_6

    .line 1019
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/AccessPointInfo;

    .line 1020
    invoke-virtual {v4, p1}, Lcom/android/settings/wifi/AccessPointInfo;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v3, 0x1

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_6
    if-nez v3, :cond_3

    .line 1024
    new-instance p2, Lcom/android/settings/wifi/AccessPointInfo;

    invoke-direct {p2, p1}, Lcom/android/settings/wifi/AccessPointInfo;-><init>(Landroid/net/wifi/ScanResult;)V

    .line 1025
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    iget-object p1, p2, Lcom/android/settings/wifi/AccessPointInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v2, p1, p2}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 1031
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/AccessPointInfo;

    .line 1032
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPointInfo;->getLevel()I

    move-result p2

    .line 1033
    iget p3, p1, Lcom/android/settings/wifi/AccessPointInfo;->networkId:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_9

    if-eq p2, v0, :cond_8

    .line 1034
    :cond_9
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1037
    :cond_a
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method private enableCheckedChangeListener(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1094
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiCellularFallbackSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 1096
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiCellularFallbackSwitch:Lsmartisanos/widget/SwitchEx;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lsmartisanos/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 3

    .line 1101
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEvent action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiSettings"

    invoke-static {v2, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 1128
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    const-string v1, "wifi_state"

    .line 1129
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateWifiState(I)V

    goto/16 :goto_1

    :cond_0
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 1131
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 1132
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 1133
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 1135
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    const-string v0, "supplicantError"

    .line 1136
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "extra_failedAuthConfig"

    .line 1138
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1139
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/android/settings/MultiSDKAdapter;->isWrongPSWDReason(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1140
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showRetryDialog(Landroid/net/wifi/WifiConfiguration;)V

    .line 1146
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->forceScan()V

    :cond_3
    const-string v0, "newState"

    .line 1149
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SupplicantState;

    .line 1151
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1152
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_1

    .line 1153
    :cond_4
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-ne p1, v0, :cond_5

    .line 1154
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_1

    .line 1159
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_1

    :cond_6
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 1161
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "networkInfo"

    .line 1162
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1164
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1165
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->retryDilog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1166
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->retryDilog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1168
    :cond_7
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1169
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    const-string v1, "bssid"

    .line 1171
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 1172
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectSSID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1173
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectSSID:Ljava/lang/String;

    .line 1174
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateRequested:Z

    .line 1177
    :cond_8
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateRequested:Z

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isActivateMode()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1178
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->startActivate(I)V

    .line 1179
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateRequested:Z

    .line 1181
    :cond_9
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateRequested:Z

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isActivateMode()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1182
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->startActivate(I)V

    .line 1183
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateRequested:Z

    goto :goto_1

    :cond_a
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    .line 1185
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, -0xc8

    const-string v1, "newRssi"

    .line 1186
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1187
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->updateConnectedAccessPointRssi(I)V

    .line 1188
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_1

    :cond_b
    const-string p1, "android.intent.action.SIM_STATE_CHANGED"

    .line 1189
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1190
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateSimStateView()V

    goto :goto_1

    .line 1134
    :cond_c
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    :cond_d
    :goto_1
    return-void
.end method

.method private handleExtraAccessPointInfoIfNeed(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/wifi/AccessPointInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 870
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isFromNetworkPanel()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 874
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_key_ssid"

    .line 875
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "extra_key_security"

    .line 876
    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    const-string v7, "extra_key_network_id"

    .line 877
    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 879
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/AccessPointInfo;

    .line 880
    iget-object v9, v8, Lcom/android/settings/wifi/AccessPointInfo;->ssid:Ljava/lang/String;

    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget v9, v8, Lcom/android/settings/wifi/AccessPointInfo;->networkId:I

    if-ne v6, v9, :cond_1

    iget v9, v8, Lcom/android/settings/wifi/AccessPointInfo;->security:I

    if-ne v5, v9, :cond_1

    .line 883
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "edit"

    .line 884
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 885
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    const-string v5, "text_is_selectable"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 886
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 887
    invoke-virtual {v8, v0}, Lcom/android/settings/wifi/AccessPointInfo;->saveWifiState(Landroid/os/Bundle;)V

    const-string v5, "access_point"

    .line 888
    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 889
    new-instance v0, Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSetupFragment;-><init>()V

    .line 890
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WifiSetupFragment;->setArguments(Landroid/os/Bundle;)V

    .line 891
    sget-object p1, Lme/yokeyword/fragmentation/ISupportFragment$TRANSACTION;->POPUP:Lme/yokeyword/fragmentation/ISupportFragment$TRANSACTION;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->start(Lme/yokeyword/fragmentation/ISupportFragment;Lme/yokeyword/fragmentation/ISupportFragment$TRANSACTION;)V

    .line 892
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return v3

    :cond_2
    :goto_0
    return v0
.end method

.method private initActivateHeader(Landroid/view/LayoutInflater;)V
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7f0d002f

    .line 644
    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateHeader:Landroid/view/View;

    .line 645
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2070032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 646
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateHeader:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 648
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateHeader:Landroid/view/View;

    const v2, 0x7f0a0a53

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisanos/widget/TipsView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiStateTipView:Lsmartisanos/widget/TipsView;

    const v1, 0x7f0d002e

    .line 649
    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateFooter:Landroid/view/View;

    .line 650
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateFooter:Landroid/view/View;

    const v0, 0x7f0a005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SettingItemButton;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateByCellular:Lcom/android/settings/widget/SettingItemButton;

    .line 651
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateFooter:Landroid/view/View;

    const v0, 0x7f0a005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SettingItemButton;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateBySms:Lcom/android/settings/widget/SettingItemButton;

    .line 652
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateFooter:Landroid/view/View;

    const v0, 0x7f0a06a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mNoSIMTip:Landroid/view/View;

    .line 653
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateFooter:Landroid/view/View;

    const v0, 0x7f0a0866

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSmsTip:Landroid/view/View;

    .line 654
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateFooter:Landroid/view/View;

    const v0, 0x7f0a06a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mNoSIMTipContainer:Landroid/view/View;

    .line 655
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateFooter:Landroid/view/View;

    const v0, 0x7f0a0867

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSmsTipContainer:Landroid/view/View;

    .line 656
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateByCellular:Lcom/android/settings/widget/SettingItemButton;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$16;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$16;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingItemButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateBySms:Lcom/android/settings/widget/SettingItemButton;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$17;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$17;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingItemButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initAddNetworkButton(Landroid/view/LayoutInflater;)V
    .locals 2

    const v0, 0x7f0d035e

    const/4 v1, 0x0

    .line 498
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkLayout:Landroid/view/View;

    .line 500
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkLayout:Landroid/view/View;

    const v0, 0x7f0a0066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SettingItemButton;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkSettingItem:Lcom/android/settings/widget/SettingItemButton;

    .line 501
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkSettingItem:Lcom/android/settings/widget/SettingItemButton;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$8;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingItemButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkLayout:Landroid/view/View;

    const v0, 0x7f0a07b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SettingItemButton;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mScanQRcodeSettingItem:Lcom/android/settings/widget/SettingItemButton;

    .line 510
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsExtDisplaying:Z

    if-eqz p1, :cond_0

    .line 511
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mScanQRcodeSettingItem:Lcom/android/settings/widget/SettingItemButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingItemButton;->setVisibility(I)V

    .line 512
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkLayout:Landroid/view/View;

    const v1, 0x7f0a076c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 513
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkSettingItem:Lcom/android/settings/widget/SettingItemButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingItemButton;->setBackgroundStyle(I)V

    .line 515
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mScanQRcodeSettingItem:Lcom/android/settings/widget/SettingItemButton;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$9;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingItemButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initBottomLayout(Landroid/view/LayoutInflater;)V
    .locals 4

    const v0, 0x7f0d035f

    const/4 v1, 0x0

    .line 533
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mBottomSwitchesContainer:Landroid/widget/RelativeLayout;

    .line 535
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mBottomSwitchesContainer:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$10;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 542
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mBottomSwitchesContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0a4b

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 545
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    .line 546
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 549
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mBottomSwitchesContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a08f3

    .line 550
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemSwitch;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mViewKeepConnetcion:Lsmartisanos/widget/ListContentItemSwitch;

    .line 551
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mViewKeepConnetcion:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700b7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemSwitch;->setMaxTitleSize(F)V

    .line 553
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mBottomSwitchesContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0a3b

    .line 554
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemSwitch;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mViewWifiCellularFallback:Lsmartisanos/widget/ListContentItemSwitch;

    .line 555
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mViewWifiCellularFallback:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemSwitch;->setMaxTitleSize(F)V

    .line 556
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mViewWifiCellularFallback:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p1}, Lsmartisanos/widget/ListContentItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiCellularFallbackSwitch:Lsmartisanos/widget/SwitchEx;

    .line 558
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mViewWifiCellularFallback:Lsmartisanos/widget/ListContentItemSwitch;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->hasTelephonyFeature(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemSwitch;->setVisibility(I)V

    .line 560
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mBottomSwitchesContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0a39

    .line 561
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemSwitch;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mViewWifiAssistantPosition:Lsmartisanos/widget/ListContentItemSwitch;

    .line 562
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mViewWifiAssistantPosition:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemSwitch;->setMaxTitleSize(F)V

    .line 563
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mViewWifiAssistantPosition:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p1}, Lsmartisanos/widget/ListContentItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mViewWifiAssistantPositionSwitch:Lsmartisanos/widget/SwitchEx;

    .line 565
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mBottomSwitchesContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0516

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemText;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiP2p:Lsmartisanos/widget/ListContentItemText;

    .line 566
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mBottomSwitchesContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0515

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemText;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDisplay:Lsmartisanos/widget/ListContentItemText;

    .line 567
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsExtDisplaying:Z

    if-eqz p1, :cond_2

    .line 568
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDisplay:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p1, v1}, Lsmartisanos/widget/ListContentItemText;->setVisibility(I)V

    .line 569
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiP2p:Lsmartisanos/widget/ListContentItemText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemText;->setBackgroundStyle(I)V

    .line 571
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mViewKeepConnetcion:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p1}, Lsmartisanos/widget/ListContentItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mKeepConnectionSwitch:Lsmartisanos/widget/SwitchEx;

    .line 572
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mBottomSwitchesContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a055b

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemText;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedWifiSettings:Lsmartisanos/widget/ListContentItemText;

    .line 574
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiP2p:Lsmartisanos/widget/ListContentItemText;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$11;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDisplay:Lsmartisanos/widget/ListContentItemText;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$12;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedWifiSettings:Lsmartisanos/widget/ListContentItemText;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$13;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lsmartisanos/util/config/Features;->isFeatureCMCCEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 602
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mBottomSwitchesContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0072

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 603
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemText;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvancedSettings:Lsmartisanos/widget/ListContentItemText;

    .line 604
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvancedSettings:Lsmartisanos/widget/ListContentItemText;

    const v0, 0x7f120104

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemText;->setTitle(I)V

    .line 605
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvancedSettings:Lsmartisanos/widget/ListContentItemText;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$14;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$14;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mBottomSwitchesContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0a22

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 616
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mBottomSwitchesContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0a23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/ListContentItemText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWapiCertManaget:Lsmartisanos/widget/ListContentItemText;

    .line 617
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4

    if-eqz p1, :cond_4

    .line 618
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 620
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWapiCertManaget:Lsmartisanos/widget/ListContentItemText;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$15;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$15;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initSetupWizardViews()V
    .locals 4

    .line 460
    sget-boolean v0, Lcom/android/settings/Utils;->ACTIVATE_MODE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SmartisanButton;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    const v2, 0x2020165

    invoke-virtual {v0, v2}, Lsmartisanos/widget/SmartisanButton;->setBackgroundResource(I)V

    .line 463
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2040007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsmartisanos/widget/SmartisanButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 464
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    const v2, 0x7f1203c8

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsmartisanos/widget/SmartisanButton;->setButtonText(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$6;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v2}, Lsmartisanos/widget/SmartisanButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTitleView:Lsmartisanos/widget/TitleBar;

    const v2, 0x7f1200ce

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsmartisanos/widget/TitleBar;->setCenterText(Ljava/lang/String;)V

    .line 474
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "CMCC_WIFI_SETTING"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mBackView:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private initWifiSwitch(Landroid/view/LayoutInflater;)V
    .locals 2

    const v0, 0x7f0d0365

    const/4 v1, 0x0

    .line 480
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSwitchLayout:Landroid/widget/RelativeLayout;

    .line 481
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSwitchLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$7;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 487
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSwitchLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0911

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemSwitch;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mViewWifiSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    .line 488
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mViewWifiSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p1}, Lsmartisanos/widget/ListContentItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSwitch:Lsmartisanos/widget/SwitchEx;

    .line 489
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSwitchLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0a53

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/TipsView;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiStateTipView:Lsmartisanos/widget/TipsView;

    .line 490
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz p1, :cond_0

    .line 491
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSwitchLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0734

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    const/4 v0, 0x0

    .line 492
    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 493
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mViewWifiSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lsmartisanos/widget/ListContentItemSwitch;->setBackgroundStyle(I)V

    :cond_0
    return-void
.end method

.method private isFromNetworkPanel()Z
    .locals 1

    .line 862
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "extra_key_ssid"

    .line 863
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private keepConnectionWhileSleep()Z
    .locals 2

    .line 682
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x2

    const-string v1, "wifi_sleep_policy"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showRetryDialog(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7

    .line 1195
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->constructAccessPoints(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPointsUI(Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 1199
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiListAdapter:Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1201
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_0
    if-ltz v3, :cond_1

    .line 1202
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/AccessPointInfo;

    .line 1203
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/android/settings/wifi/AccessPointInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/android/settings/wifi/AccessPointInfo;->security:I

    .line 1204
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1206
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mCurrentAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 1212
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mCurrentAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    .line 1216
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mCurrentAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    if-eqz p1, :cond_4

    .line 1220
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->retryDilog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 1222
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1217af

    .line 1223
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1217ad

    .line 1224
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1225
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1217ac

    const/4 v2, 0x0

    .line 1226
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1217ae

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$24;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wifi/WifiSettings$24;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPointInfo;)V

    .line 1227
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1244
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->retryDilog:Landroid/app/AlertDialog;

    .line 1245
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->retryDilog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_4
    return-void
.end method

.method private showSwitchConfirmDialog(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 6

    .line 727
    new-instance v0, Lcom/android/settings/HandInHandProcessor;

    invoke-direct {v0}, Lcom/android/settings/HandInHandProcessor;-><init>()V

    .line 728
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/settings/HandInHandProcessor;->isHandInHandle(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 729
    new-instance v3, Lcom/android/settings/wifi/WifiSettings$18;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiSettings$18;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    new-instance v4, Lcom/android/settings/wifi/WifiSettings$19;

    invoke-direct {v4, p0, p2, p3}, Lcom/android/settings/wifi/WifiSettings$19;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    new-instance v5, Lcom/android/settings/wifi/WifiSettings$20;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$20;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/HandInHandProcessor;->showDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 745
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p2, p3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :goto_0
    return-void
.end method

.method private startActivate(I)V
    .locals 3

    .line 1357
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/activate/ActivateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "flag"

    .line 1358
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1359
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v1}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    return-void
.end method

.method private updateAccessPoints()V
    .locals 4

    .line 828
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateWifiListInstantWhenFirstIn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 829
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateWifiListInstantWhenFirstIn:Z

    .line 830
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    new-array p0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, p0}, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 831
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTransactionAnimEnd:Z

    if-eqz v0, :cond_2

    .line 832
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 835
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateAccessPointsUI(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/wifi/AccessPointInfo;",
            ">;)V"
        }
    .end annotation

    .line 903
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "WifiSettings"

    const-string v1, "updateAccessPointsUI----"

    .line 905
    invoke-static {v0, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/16 v2, -0xc8

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 910
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    const v0, 0x7f1217f8

    .line 913
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateWifiStateTips(I)V

    goto :goto_1

    .line 915
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateWifiStateTips(I)V

    .line 917
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->handleExtraAccessPointInfoIfNeed(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 920
    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiListAdapter:Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->updateData(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 924
    :cond_6
    invoke-static {v2}, Lcom/android/settings/wifi/AccessPointInfo;->updateConnectedAccessPointRssi(I)V

    const p1, 0x7f1218bf

    .line 925
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateWifiStateTips(I)V

    .line 926
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiListAdapter:Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->updateData(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 935
    :cond_7
    invoke-static {v2}, Lcom/android/settings/wifi/AccessPointInfo;->updateConnectedAccessPointRssi(I)V

    const p1, 0x7f1217f7

    .line 936
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateWifiStateTips(I)V

    .line 937
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiListAdapter:Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->updateData(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_8
    const p1, 0x7f1218cd

    .line 930
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateWifiStateTips(I)V

    .line 931
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiListAdapter:Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->updateData(Ljava/util/ArrayList;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private updateBottomViews(Z)V
    .locals 4

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBottomViews "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 955
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkLayout:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 956
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mBottomSwitchesContainer:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/widget/ListView;

    .line 957
    invoke-virtual {p1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result p1

    sget v3, Lcom/android/settings/wifi/WifiSettings;->mListFooterCount:I

    sub-int/2addr v3, v0

    if-ne p1, v3, :cond_1

    .line 958
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mBottomSwitchesContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0

    .line 961
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkLayout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 962
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiListAdapter:Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->updateData(Ljava/util/ArrayList;)V

    .line 963
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mBottomSwitchesContainer:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    .line 964
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 967
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAddNetworkLayout isShow = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAddNetworkLayout visible ="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAddNetworkSettingItem isShow = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkSettingItem:Lcom/android/settings/widget/SettingItemButton;

    invoke-virtual {v3}, Lcom/android/settings/widget/SettingItemButton;->isShown()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAddNetworkSettingItem visible ="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkSettingItem:Lcom/android/settings/widget/SettingItemButton;

    invoke-virtual {p0}, Lcom/android/settings/widget/SettingItemButton;->getVisibility()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 1

    .line 1251
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1252
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    return-void

    .line 1256
    :cond_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    .line 1257
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    goto :goto_0

    .line 1259
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 1262
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_2

    .line 1264
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 1267
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    return-void
.end method

.method private updateSimStateView()V
    .locals 5

    .line 672
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isActivateMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 673
    invoke-static {}, Lcom/android/settings/Utils;->isSimExists()Z

    move-result v0

    .line 674
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateByCellular:Lcom/android/settings/widget/SettingItemButton;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingItemButton;->setEnabled(Z)V

    .line 675
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateBySms:Lcom/android/settings/widget/SettingItemButton;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingItemButton;->setEnabled(Z)V

    .line 676
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mNoSIMTipContainer:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 677
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSmsTipContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateWifiState(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v1, 0x4

    const v2, 0x7f1218eb

    if-eq p1, v1, :cond_0

    .line 1300
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->updateWifiStateTips(I)V

    .line 1301
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateBottomViews(Z)V

    goto :goto_0

    .line 1296
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->updateWifiStateTips(I)V

    .line 1297
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateBottomViews(Z)V

    goto :goto_0

    .line 1273
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 1274
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->updateBottomViews(Z)V

    return-void

    :cond_2
    const p1, 0x7f1218bf

    .line 1278
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateWifiStateTips(I)V

    .line 1279
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->updateBottomViews(Z)V

    goto :goto_0

    :cond_3
    const p1, 0x7f1217f7

    .line 1283
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateWifiStateTips(I)V

    .line 1284
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateBottomViews(Z)V

    .line 1285
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mFallbackDilog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1286
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mFallbackDilog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_0

    :cond_4
    const p1, 0x7f1218cd

    .line 1292
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateWifiStateTips(I)V

    .line 1293
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateBottomViews(Z)V

    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 1306
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 1307
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 1308
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    return-void
.end method

.method private updateWifiStateTips(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 944
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiStateTipView:Lsmartisanos/widget/TipsView;

    invoke-virtual {v0, p1}, Lsmartisanos/widget/TipsView;->setText(I)V

    .line 945
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiStateTipView:Lsmartisanos/widget/TipsView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lsmartisanos/widget/TipsView;->setVisibility(I)V

    goto :goto_0

    .line 947
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiStateTipView:Lsmartisanos/widget/TipsView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lsmartisanos/widget/TipsView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected connect(I)V
    .locals 1

    .line 1316
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, p0}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, p0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method isActivateMode()Z
    .locals 0

    .line 1353
    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/settings/Utils;->ACTIVATE_MODE:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method onAddNetworkPressed()V
    .locals 3

    const/4 v0, 0x0

    .line 1324
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    .line 1325
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "edit"

    .line 1326
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1327
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    xor-int/2addr v1, v2

    const-string v2, "text_is_selectable"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1328
    new-instance v1, Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-direct {v1}, Lcom/android/settings/wifi/WifiSetupFragment;-><init>()V

    .line 1329
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiSetupFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1330
    sget-object v0, Lme/yokeyword/fragmentation/ISupportFragment$TRANSACTION;->POPUP:Lme/yokeyword/fragmentation/ISupportFragment$TRANSACTION;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->start(Lme/yokeyword/fragmentation/ISupportFragment;Lme/yokeyword/fragmentation/ISupportFragment$TRANSACTION;)V

    const/16 p0, 0xca

    .line 1331
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1043
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mKeepConnectionSwitch:Lsmartisanos/widget/SwitchEx;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 1044
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->sendAccessibilityEvent(I)V

    .line 1045
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p2, :cond_0

    const/4 v1, 0x2

    :cond_0
    const-string p1, "wifi_sleep_policy"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "A131001"

    const-string p1, "close_screen"

    .line 1048
    invoke-static {p0, p1, p2}, Lcom/android/settings/SettingsTracker;->onSwitchStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 p0, 0xcc

    .line 1049
    invoke-static {p0, p2}, Lcom/android/settings/SettingsTracker;->onSwitcherClick(IZ)V

    goto :goto_0

    .line 1050
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiCellularFallbackSwitch:Lsmartisanos/widget/SwitchEx;

    if-ne p1, v0, :cond_3

    .line 1051
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->sendAccessibilityEvent(I)V

    if-eqz p2, :cond_2

    .line 1053
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1206d6

    .line 1054
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f12179c

    .line 1055
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 1056
    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f12046e

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$23;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/WifiSettings$23;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/widget/CompoundButton;)V

    .line 1057
    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f12179d

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$22;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/WifiSettings$22;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/widget/CompoundButton;)V

    .line 1064
    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$21;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/WifiSettings$21;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/widget/CompoundButton;)V

    .line 1074
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1080
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mFallbackDilog:Landroid/app/AlertDialog;

    .line 1081
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mFallbackDilog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1083
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "network_avoid_bad_wifi"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1085
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mViewWifiAssistantPositionSwitch:Lsmartisanos/widget/SwitchEx;

    if-ne p1, v0, :cond_4

    .line 1086
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->sendAccessibilityEvent(I)V

    .line 1087
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "wifi_scan_always_enabled"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 332
    invoke-super {p0, p1}, Lcom/android/settings/SupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/wifi/WifiPickerActivity;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 336
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerMode:Z

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/WifiPickerActivity;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiPickerActivity;->isSetupWizardMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    :cond_0
    const p1, 0x7f121895

    .line 340
    iput p1, p0, Lcom/android/settings/wifi/WifiSettings;->mTitleResId:I

    .line 342
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "action.intent.smartisanos.wifi_authorization_start"

    .line 343
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "action.intent.smartisanos.wifi_authorization_success"

    .line 344
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAuthorizationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "wifi"

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 349
    new-instance p1, Landroid/util/BoostFramework;

    invoke-direct {p1}, Landroid/util/BoostFramework;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mPerf:Landroid/util/BoostFramework;

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070098

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mPerParamVal:[I

    .line 353
    new-instance p1, Lcom/android/settings/wifi/WifiSettings$4;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/WifiSettings$4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    const v0, 0x7f0d035d

    .line 383
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mRootView:Landroid/view/View;

    const p2, 0x7f0a05f7

    .line 384
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/widget/ListView;

    .line 385
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 386
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$5;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 399
    iget-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsExtDisplayConnected:Z

    if-eqz p2, :cond_0

    .line 400
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 402
    :cond_0
    new-instance p2, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiListAdapter:Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;

    .line 403
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiListAdapter:Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 406
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->initAddNetworkButton(Landroid/view/LayoutInflater;)V

    .line 407
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkLayout:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 408
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addFooterView  mAddNetworkLayout "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkLayout:Landroid/view/View;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiSettings"

    invoke-static {v0, p2}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isActivateMode()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 411
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->initWifiSwitch(Landroid/view/LayoutInflater;)V

    .line 412
    new-instance p2, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->_mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-direct {p2, v1, v2}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lsmartisanos/widget/SwitchEx;)V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSwitchEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 413
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSwitchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 414
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, p3

    .line 416
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v1, p2}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    goto :goto_1

    .line 418
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->initActivateHeader(Landroid/view/LayoutInflater;)V

    .line 419
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateHeader:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 420
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mActivateFooter:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 424
    :goto_1
    iget-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerMode:Z

    if-nez p2, :cond_4

    .line 425
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->initBottomLayout(Landroid/view/LayoutInflater;)V

    .line 426
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mBottomSwitchesContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 427
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mKeepConnectionSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->keepConnectionWhileSleep()Z

    move-result p2

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    .line 428
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiCellularFallbackSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->avoidBadWifiCurrentSettings()Z

    move-result p2

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    .line 429
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mViewWifiAssistantPositionSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "wifi_scan_always_enabled"

    invoke-static {p2, v1, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v0, :cond_3

    move p3, v0

    :cond_3
    invoke-virtual {p1, p3}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    .line 431
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSwitchEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/WifiEnabler;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 432
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mKeepConnectionSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 433
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiCellularFallbackSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 434
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mViewWifiAssistantPositionSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 437
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result p1

    sput p1, Lcom/android/settings/wifi/WifiSettings;->mListFooterCount:I

    .line 438
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSwitchEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz p1, :cond_5

    .line 439
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiEnabler;->isChecked()Z

    move-result p1

    .line 440
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateBottomViews(Z)V

    if-eqz p1, :cond_5

    const p1, 0x7f1217f8

    .line 442
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateWifiStateTips(I)V

    .line 445
    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 370
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onDestroy()V

    .line 371
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAuthorizationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onEnterAnimationEnd(Landroid/os/Bundle;)V
    .locals 2

    .line 377
    invoke-super {p0, p1}, Lcom/android/settings/SupportFragment;->onEnterAnimationEnd(Landroid/os/Bundle;)V

    .line 378
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    const-wide/16 v0, 0x96

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 751
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p3, p1

    if-ltz p3, :cond_a

    .line 752
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiListAdapter:Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->getCount()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    if-le p3, p1, :cond_0

    goto/16 :goto_1

    .line 755
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiListAdapter:Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;

    invoke-virtual {p1, p3}, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->getItem(I)Lcom/android/settings/wifi/AccessPointInfo;

    move-result-object p1

    .line 758
    iget-object p3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    invoke-virtual {p1, p3}, Lcom/android/settings/wifi/AccessPointInfo;->equalsTo(Ljava/lang/Object;)Z

    move-result p3

    .line 763
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    .line 765
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    iget p1, p1, Lcom/android/settings/wifi/AccessPointInfo;->security:I

    const/4 p4, -0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    iget p1, p1, Lcom/android/settings/wifi/AccessPointInfo;->networkId:I

    if-ne p1, p4, :cond_2

    .line 767
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPointInfo;->generateOpenNetworkConfig()V

    .line 768
    sget-boolean p1, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez p1, :cond_1

    .line 769
    sput-boolean p2, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    .line 771
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    invoke-virtual {p2}, Lcom/android/settings/wifi/AccessPointInfo;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->showSwitchConfirmDialog(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_1

    .line 772
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    iget p1, p1, Lcom/android/settings/wifi/AccessPointInfo;->networkId:I

    const/4 p5, 0x0

    if-eq p1, p4, :cond_8

    .line 773
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPointInfo;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    .line 774
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    invoke-virtual {p2}, Lcom/android/settings/wifi/AccessPointInfo;->getLevel()I

    move-result p2

    if-nez p1, :cond_5

    if-ne p2, p4, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    if-eqz p3, :cond_a

    .line 802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastConnectAccessPointTs:J

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x7d0

    cmp-long p1, p1, p3

    if-lez p1, :cond_a

    .line 804
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastConnectAccessPointTs:J

    .line 805
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    invoke-virtual {p2}, Lcom/android/settings/wifi/AccessPointInfo;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->showSwitchConfirmDialog(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_1

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    .line 780
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, p2, :cond_6

    return-void

    .line 783
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isActivateMode()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 785
    invoke-direct {p0, p5}, Lcom/android/settings/wifi/WifiSettings;->startActivate(I)V

    goto :goto_1

    .line 787
    :cond_7
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 788
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    .line 789
    invoke-virtual {p2}, Lcom/android/settings/wifi/AccessPointInfo;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    const-string p3, "extra_wifi_configuration"

    .line 788
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 790
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    iget-object p2, p2, Lcom/android/settings/wifi/AccessPointInfo;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    const-string p3, "extra_psk_type"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 792
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    .line 793
    invoke-virtual {p2}, Lcom/android/settings/wifi/AccessPointInfo;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p2

    const-string p3, "extra_wifi_info"

    .line 792
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 794
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    .line 795
    invoke-virtual {p2}, Lcom/android/settings/wifi/AccessPointInfo;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    const-string p3, "extra_detailed_state"

    .line 794
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const p2, 0x7f121895

    const-string p3, "back_text_id"

    .line 796
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 797
    new-instance p2, Lcom/android/settings/wifi/AccessPointDetailFragment;

    invoke-direct {p2}, Lcom/android/settings/wifi/AccessPointDetailFragment;-><init>()V

    .line 798
    invoke-virtual {p2, p1}, Lcom/android/settings/wifi/AccessPointDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 799
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->start(Lme/yokeyword/fragmentation/ISupportFragment;)V

    goto :goto_1

    .line 809
    :cond_8
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "edit"

    .line 810
    invoke-virtual {p1, p3, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 811
    iget-boolean p3, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    xor-int/2addr p2, p3

    const-string p3, "text_is_selectable"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 812
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    if-eqz p2, :cond_9

    .line 813
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 814
    iget-object p3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPointInfo;

    invoke-virtual {p3, p2}, Lcom/android/settings/wifi/AccessPointInfo;->saveWifiState(Landroid/os/Bundle;)V

    const-string p3, "access_point"

    .line 815
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 817
    :cond_9
    new-instance p2, Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-direct {p2}, Lcom/android/settings/wifi/WifiSetupFragment;-><init>()V

    .line 818
    invoke-virtual {p2, p1}, Lcom/android/settings/wifi/WifiSetupFragment;->setArguments(Landroid/os/Bundle;)V

    .line 819
    sget-object p1, Lme/yokeyword/fragmentation/ISupportFragment$TRANSACTION;->POPUP:Lme/yokeyword/fragmentation/ISupportFragment$TRANSACTION;

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/wifi/WifiSettings;->start(Lme/yokeyword/fragmentation/ISupportFragment;Lme/yokeyword/fragmentation/ISupportFragment$TRANSACTION;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public onSupportInvisible()V
    .locals 2

    .line 718
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportInvisible()V

    .line 719
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSwitchEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 722
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 723
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    return-void
.end method

.method public onSupportVisible()V
    .locals 5

    .line 693
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->_mActivity:Landroid/app/Activity;

    .line 694
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportVisible()V

    .line 695
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSwitchEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v1, :cond_0

    .line 696
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 698
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerMode:Z

    if-nez v1, :cond_2

    .line 699
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mKeepConnectionSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->keepConnectionWhileSleep()Z

    move-result v2

    invoke-virtual {v1, v2}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    .line 700
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiCellularFallbackSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->avoidBadWifiCurrentSettings()Z

    move-result v2

    invoke-virtual {v1, v2}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    .line 701
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mViewWifiAssistantPositionSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "wifi_scan_always_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v1, v3}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    .line 705
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 706
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 707
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v2, :cond_3

    .line 708
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 710
    :cond_3
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 712
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateSimStateView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 450
    invoke-super {p0, p1, p2}, Lcom/android/settings/SupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 451
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isFromNetworkPanel()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    .line 452
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 454
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz p1, :cond_1

    .line 455
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->initSetupWizardViews()V

    :cond_1
    return-void
.end method

.method pauseWifiScan()V
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1339
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    :cond_0
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .line 1347
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    :cond_0
    return-void
.end method
