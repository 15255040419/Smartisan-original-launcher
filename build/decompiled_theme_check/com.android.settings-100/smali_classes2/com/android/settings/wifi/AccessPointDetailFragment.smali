.class public Lcom/android/settings/wifi/AccessPointDetailFragment;
.super Lcom/android/settings/SupportFragment;
.source "AccessPointDetailFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MSG_UPDATE_WIFI_CONFIGURATION:I = 0x1

.field public static final TRUST_AP_CHANGED_ACTION:Ljava/lang/String; = "com.android.settings.wifi.TRUST_AP_CHANGED"

.field public static final WIFI_PRIORIT_NETWORK:Ljava/lang/String; = "persist.wifi.manual.sort"


# instance fields
.field private cancelCallback:Lcom/android/settings/wifi/TrustedNetworkHelper$CancelCallback;

.field private currentConfig:Landroid/net/wifi/WifiConfiguration;

.field private mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mAdvancedOptions:Lsmartisanos/widget/ListContentItemText;

.field private mAutoConnectNeedLoginNetwork:Lsmartisanos/widget/ListContentItemSwitch;

.field private mAutoLogin:Lsmartisanos/widget/ListContentItemSwitch;

.field private mBackBtnTextResId:I

.field private mClickForgetButton:Z

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnectionSpeed:Lsmartisanos/widget/ListContentItemText;

.field private mDisconnectBtn:Lcom/android/settings/widget/SettingItemButton;

.field private mDisconnectLayout:Landroid/widget/LinearLayout;

.field private mForgetBtn:Lcom/android/settings/widget/SettingItemButton;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIpAddress:Lsmartisanos/widget/ListContentItemText;

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mModifyBtn:Lcom/android/settings/widget/SettingItemButton;

.field private mModifyLayout:Landroid/widget/LinearLayout;

.field private mNetworkSharing:Landroid/widget/LinearLayout;

.field private mNetworkSharingQrcode:Landroid/widget/ImageView;

.field private mPerioritConnectNetwork:Lsmartisanos/widget/ListContentItemSwitch;

.field private mPrioritNetowk:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSecurity:Lsmartisanos/widget/ListContentItemText;

.field private mSignalStrength:Lsmartisanos/widget/ListContentItemText;

.field private mStatusInfo:Lsmartisanos/widget/ListContentItemText;

.field private mTrustApTips:Lsmartisanos/widget/TipsView;

.field private mTrustNetwork:Lsmartisanos/widget/ListContentItemSwitch;

.field private mTrustView:Landroid/view/View;

.field private mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

.field private mWifiConfigParcelable:Landroid/os/Parcelable;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private resetConfirmFlagWhenPause:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/android/settings/SupportFragment;-><init>()V

    .line 104
    new-instance v0, Lcom/android/settings/wifi/AccessPointDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AccessPointDetailFragment$1;-><init>(Lcom/android/settings/wifi/AccessPointDetailFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->resetConfirmFlagWhenPause:Z

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mClickForgetButton:Z

    .line 119
    new-instance v0, Lcom/android/settings/wifi/AccessPointDetailFragment$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/AccessPointDetailFragment$2;-><init>(Lcom/android/settings/wifi/AccessPointDetailFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/android/settings/wifi/AccessPointDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AccessPointDetailFragment$3;-><init>(Lcom/android/settings/wifi/AccessPointDetailFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->cancelCallback:Lcom/android/settings/wifi/TrustedNetworkHelper$CancelCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/AccessPointDetailFragment;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/AccessPointDetailFragment;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/AccessPointDetailFragment;Ljava/util/List;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointDetailFragment;->updateWifiConfigurationView(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/AccessPointDetailFragment;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointDetailFragment;->updateTrustedAp(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/AccessPointDetailFragment;)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->finish()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/AccessPointDetailFragment;)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->finish()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/AccessPointDetailFragment;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/AccessPointDetailFragment;)Landroid/os/Handler;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/AccessPointDetailFragment;)Lsmartisanos/widget/ListContentItemSwitch;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPerioritConnectNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/AccessPointDetailFragment;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPrioritNetowk:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/AccessPointDetailFragment;)Lcom/android/settings/wifi/AccessPoint;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    return-object p0
.end method

.method private forget()V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/AccessPointDetailFragment;->removeAutoLogin(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 554
    iget v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPrioritNetowk:I

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v0, v2, :cond_1

    .line 555
    iput v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPrioritNetowk:I

    const-string v0, "persist.wifi.manual.sort"

    const-string v1, "-1"

    .line 556
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method private getNetworkSsid(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 602
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 604
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_0

    return-object v0

    .line 609
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 610
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, p1, :cond_1

    .line 611
    iget-object p0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v0
.end method

.method private getTrustApTipsText(Z)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const p1, 0x7f1218e8

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "use_fingerprint_in_lockscreen"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 385
    :goto_0
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isFaceRecognitionEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "faceid_enable"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    const p1, 0x7f12081b

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    const p1, 0x7f1207cc

    goto :goto_2

    :cond_4
    const p1, 0x7f12080b

    :goto_2
    const v2, 0x7f1218e9

    new-array v1, v1, [Ljava/lang/Object;

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 237
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "supplicantError"

    .line 238
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f12181a

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    const-string p1, "newState"

    .line 242
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SupplicantState;

    .line 244
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 245
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointDetailFragment;->updateAccessPointConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 246
    :cond_2
    sget-object p2, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-ne p1, p2, :cond_7

    .line 247
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointDetailFragment;->updateAccessPointConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :cond_3
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "networkInfo"

    .line 250
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_7

    .line 253
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 254
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointDetailFragment;->updateAccessPointConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :cond_4
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "wifiConfiguration"

    .line 258
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    const/4 v0, -0x1

    const-string v1, "changeReason"

    .line 259
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    if-eqz p1, :cond_7

    .line 261
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget p2, p2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne p1, p2, :cond_7

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->finish()V

    goto :goto_0

    :cond_5
    const-string v0, "com.android.settings.wifi.TRUST_AP_CHANGED"

    .line 265
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    .line 267
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, -0xc8

    const-string v0, "newRssi"

    .line 268
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 269
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->updateConnectedAccessPointRssi(I)V

    .line 271
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->updateAccessPointInfo()V

    return-void
.end method

.method private launchAdvancedOptions()V
    .locals 3

    .line 731
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 732
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v2, "extra_wifi_configuration"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 733
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    const-string v2, "extra_wifi_info"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 734
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    const-string v2, "extra_detailed_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 735
    new-instance v1, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;

    invoke-direct {v1}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->start(Lcom/android/settings/SupportFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method private modifyConfig()V
    .locals 4

    .line 571
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to modify network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get current network info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 579
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "edit"

    .line 580
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "cmcc"

    .line 581
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 582
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 583
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3, v2}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    const-string v3, "access_point"

    .line 584
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "invalid_network"

    .line 585
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 586
    new-instance v1, Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-direct {v1}, Lcom/android/settings/wifi/WifiSetupFragment;-><init>()V

    .line 587
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiSetupFragment;->setArguments(Landroid/os/Bundle;)V

    .line 588
    sget-object v0, Lme/yokeyword/fragmentation/ISupportFragment$TRANSACTION;->POPUP:Lme/yokeyword/fragmentation/ISupportFragment$TRANSACTION;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->start(Lme/yokeyword/fragmentation/ISupportFragment;Lme/yokeyword/fragmentation/ISupportFragment$TRANSACTION;)V

    return-void
.end method

.method public static removeAutoLogin(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 563
    invoke-static {p1, v0}, Lcom/android/settings/wifi/WifiAuthorizeUtils;->configKey(Landroid/net/wifi/WifiConfiguration;I)Ljava/lang/String;

    move-result-object p1

    .line 564
    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiAuthorizeUtils;->getLoginScript(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 566
    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiAuthorizeUtils;->removeFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showSetPrioritNetworkDialog(I)V
    .locals 3

    .line 618
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getNetworkSsid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get ssid of network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null !"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget p1, p1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPrioritNetowk:I

    .line 622
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget p0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.wifi.manual.sort"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 625
    :cond_0
    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f121851

    .line 626
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 627
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121852

    .line 628
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 629
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1206c9

    new-instance v1, Lcom/android/settings/wifi/AccessPointDetailFragment$9;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/AccessPointDetailFragment$9;-><init>(Lcom/android/settings/wifi/AccessPointDetailFragment;)V

    .line 630
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1206b7

    new-instance v1, Lcom/android/settings/wifi/AccessPointDetailFragment$8;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/AccessPointDetailFragment$8;-><init>(Lcom/android/settings/wifi/AccessPointDetailFragment;)V

    .line 639
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/AccessPointDetailFragment$7;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AccessPointDetailFragment$7;-><init>(Lcom/android/settings/wifi/AccessPointDetailFragment;)V

    .line 647
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 654
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 655
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateAccessPointConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_0

    .line 450
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 452
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    return-void
.end method

.method private updateAccessPointInfo()V
    .locals 5

    .line 456
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 461
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mStatusInfo:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v3, v2}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mStatusInfo:Lsmartisanos/widget/ListContentItemText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mStatusInfo:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v4}, Lsmartisanos/widget/ListContentItemText;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mStatusInfo:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v4}, Lsmartisanos/widget/ListContentItemText;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsmartisanos/widget/ListContentItemText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f030129

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 466
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSignalStrength:Lsmartisanos/widget/ListContentItemText;

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSignalStrength:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 470
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSignalStrength:Lsmartisanos/widget/ListContentItemText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSignalStrength:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v4}, Lsmartisanos/widget/ListContentItemText;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSignalStrength:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v4}, Lsmartisanos/widget/ListContentItemText;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsmartisanos/widget/ListContentItemText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 472
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 473
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mConnectionSpeed:Lsmartisanos/widget/ListContentItemText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "Mbps"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mConnectionSpeed:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 477
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mConnectionSpeed:Lsmartisanos/widget/ListContentItemText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mConnectionSpeed:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v2}, Lsmartisanos/widget/ListContentItemText;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mConnectionSpeed:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v2}, Lsmartisanos/widget/ListContentItemText;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSecurity:Lsmartisanos/widget/ListContentItemText;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSecurity:Lsmartisanos/widget/ListContentItemText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSecurity:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v2}, Lsmartisanos/widget/ListContentItemText;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSecurity:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v2}, Lsmartisanos/widget/ListContentItemText;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 480
    new-instance v0, Lcom/android/settings/wifi/AccessPointDetailFragment$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AccessPointDetailFragment$6;-><init>(Lcom/android/settings/wifi/AccessPointDetailFragment;)V

    invoke-static {v0}, Lcom/android/settings/ExecutorManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateAutoLoginSwitch()V
    .locals 4

    .line 422
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiConfigParcelable:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v0, v0, Lcom/android/settings/wifi/AccessPoint;->needLogin:Z

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_3

    .line 426
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiConfigParcelable:Landroid/os/Parcelable;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    :cond_3
    const/4 v1, 0x1

    .line 429
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiAuthorizeUtils;->configKey(Landroid/net/wifi/WifiConfiguration;I)Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/wifi/WifiAuthorizeUtils;->getAutoLoginHost(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/settings/wifi/WifiAuthorizeUtils;->checkSavedLoginInfo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 434
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/wifi/WifiAuthorizeUtils;->getLoginScript(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 436
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAutoLogin:Lsmartisanos/widget/ListContentItemSwitch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lsmartisanos/widget/ListContentItemSwitch;->setVisibility(I)V

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/wifi/WifiAuthorizeUtils;->autoLoginEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 438
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAutoLogin:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p0, v1}, Lsmartisanos/widget/ListContentItemSwitch;->setChecked(Z)V

    goto :goto_0

    .line 440
    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAutoLogin:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p0, v3}, Lsmartisanos/widget/ListContentItemSwitch;->setChecked(Z)V

    goto :goto_0

    .line 443
    :cond_6
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAutoLogin:Lsmartisanos/widget/ListContentItemSwitch;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lsmartisanos/widget/ListContentItemSwitch;->setVisibility(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method private updateQrCode()V
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiConfigParcelable:Landroid/os/Parcelable;

    if-nez v0, :cond_0

    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiConfigParcelable:Landroid/os/Parcelable;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/settings/wifi/Utils;->createContent(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mNetworkSharingQrcode:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings/wifi/Utils;->createQrCode(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 411
    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 413
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mIpAddress:Lsmartisanos/widget/ListContentItemText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemText;->setBackgroundStyle(I)V

    .line 414
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mNetworkSharing:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mIpAddress:Lsmartisanos/widget/ListContentItemText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemText;->setBackgroundStyle(I)V

    .line 417
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mNetworkSharing:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateTrustedAp(Z)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, p1}, Lsmartisanos/api/WifiConfigurationSmt;->set_isTrustedAp(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTrustNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {v0, p1}, Lsmartisanos/widget/ListContentItemSwitch;->setChecked(Z)V

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean p1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenTrust:Z

    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenTrust:Z

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method private updateWifiConfigurationView(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const-string v1, ""

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    if-eqz p1, :cond_3

    .line 501
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 502
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v2, v3, :cond_0

    .line 503
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_1

    .line 508
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v2}, Lsmartisanos/api/WifiConfigurationSmt;->get_isTrustedAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsmartisanos/api/WifiConfigurationSmt;->get_isTrustedAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-ne p1, v2, :cond_2

    .line 509
    :cond_1
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    .line 511
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsmartisanos/api/WifiConfigurationSmt;->get_needLogin(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/android/settings/wifi/AccessPoint;->needLogin:Z

    .line 512
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsmartisanos/api/WifiConfigurationSmt;->get_autoConnect(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/settings/wifi/AccessPoint;->isAutoConnected:Z

    .line 518
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_6

    .line 519
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object p1

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne p1, v0, :cond_4

    .line 521
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 522
    iget-object v0, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v0, :cond_5

    .line 523
    iget-object p1, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    .line 526
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 528
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p1

    .line 529
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit16 v1, p1, 0xff

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v2, p1, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v2, p1, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    .line 532
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 533
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-virtual {p1}, Lcom/android/settings/wifi/TrustedNetworkHelper;->isDialogShowing()Z

    move-result p1

    if-nez p1, :cond_6

    .line 537
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTrustNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v2}, Lsmartisanos/api/WifiConfigurationSmt;->get_isTrustedAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 541
    :cond_6
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mIpAddress:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p1, v1}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 542
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mIpAddress:Lsmartisanos/widget/ListContentItemText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mIpAddress:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v1}, Lsmartisanos/widget/ListContentItemText;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mIpAddress:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p0}, Lsmartisanos/widget/ListContentItemText;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lsmartisanos/widget/ListContentItemText;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 132
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SupportFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/wifi/TrustedNetworkHelper;->handleChooseOrConfirmPasswordResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 135
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointDetailFragment;->updateTrustedAp(Z)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 660
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAutoConnectNeedLoginNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisanos/widget/ListContentItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    const-string v1, "Failed to forget invalid network "

    const/4 v2, -0x1

    if-ne p1, v0, :cond_3

    .line 661
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_2

    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0}, Lsmartisanos/api/WifiConfigurationSmt;->get_autoConnect(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 663
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget p1, p1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne p1, v2, :cond_1

    .line 664
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 668
    :cond_1
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, p2}, Lsmartisanos/api/WifiConfigurationSmt;->set_autoConnect(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 669
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, p2, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_1

    :cond_2
    :goto_0
    return-void

    .line 670
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAutoLogin:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisanos/widget/ListContentItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x2

    if-eqz p2, :cond_4

    .line 672
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v0, "on"

    invoke-static {p2, p0, v0, p1}, Lcom/android/settings/wifi/WifiAuthorizeUtils;->saveToSharedPreferences(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 674
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v0, "off"

    invoke-static {p2, p0, v0, p1}, Lcom/android/settings/wifi/WifiAuthorizeUtils;->saveToSharedPreferences(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 676
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPerioritConnectNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisanos/widget/ListContentItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_8

    const-string p1, "persist.wifi.manual.sort"

    if-eqz p2, :cond_7

    .line 678
    iget p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPrioritNetowk:I

    if-ne p2, v2, :cond_6

    .line 679
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget p2, p2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPrioritNetowk:I

    .line 680
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget p0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    if-ltz p2, :cond_d

    .line 681
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget p1, p1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq p2, p1, :cond_d

    .line 682
    iget p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPrioritNetowk:I

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointDetailFragment;->showSetPrioritNetworkDialog(I)V

    goto/16 :goto_1

    .line 685
    :cond_7
    iget p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPrioritNetowk:I

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne p2, v0, :cond_d

    .line 686
    iput v2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPrioritNetowk:I

    const-string p0, "-1"

    .line 687
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 691
    :cond_8
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_d

    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0}, Lsmartisanos/api/WifiConfigurationSmt;->get_isTrustedAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    if-ne p1, p2, :cond_9

    goto :goto_1

    .line 693
    :cond_9
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget p1, p1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne p1, v2, :cond_a

    .line 694
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    if-eqz p2, :cond_c

    .line 697
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

    .line 698
    invoke-virtual {p1}, Lcom/android/settings/wifi/TrustedNetworkHelper;->isLockScreenSecure()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

    .line 699
    invoke-virtual {p1}, Lcom/android/settings/wifi/TrustedNetworkHelper;->isPasswordConfirmedSuccess()Z

    move-result p1

    if-nez p1, :cond_c

    .line 700
    :cond_b
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkHelper;->chooseOrConfirmPasswordDialog()V

    goto :goto_1

    .line 702
    :cond_c
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, p2}, Lsmartisanos/api/WifiConfigurationSmt;->set_isTrustedAp(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 703
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    if-eqz p2, :cond_d

    .line 704
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean p1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenTrust:Z

    if-eqz p1, :cond_d

    .line 705
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->currentConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroid/net/wifi/WifiConfiguration;->hiddenTrust:Z

    .line 706
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p2, p1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_d
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mForgetBtn:Lcom/android/settings/widget/SettingItemButton;

    if-ne v0, p1, :cond_1

    .line 715
    iget-boolean p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mClickForgetButton:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 717
    iput-boolean p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mClickForgetButton:Z

    .line 718
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->forget()V

    goto :goto_0

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mModifyBtn:Lcom/android/settings/widget/SettingItemButton;

    if-ne v0, p1, :cond_2

    .line 720
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->modifyConfig()V

    goto :goto_0

    .line 721
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mDisconnectBtn:Lcom/android/settings/widget/SettingItemButton;

    if-ne v0, p1, :cond_3

    .line 722
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 723
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->finish()V

    goto :goto_0

    .line 724
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAdvancedOptions:Lsmartisanos/widget/ListContentItemText;

    if-ne v0, p1, :cond_4

    const/4 p1, 0x0

    .line 725
    iput-boolean p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->resetConfirmFlagWhenPause:Z

    .line 726
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->launchAdvancedOptions()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 166
    invoke-super {p0, p1}, Lcom/android/settings/SupportFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "wifi"

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_wifi_configuration"

    .line 170
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 174
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiConfigParcelable:Landroid/os/Parcelable;

    .line 176
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiConfigParcelable:Landroid/os/Parcelable;

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiConfigParcelable:Landroid/os/Parcelable;

    .line 179
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiConfigParcelable:Landroid/os/Parcelable;

    if-eqz p1, :cond_3

    instance-of p1, p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_3

    .line 180
    new-instance p1, Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->_mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiConfigParcelable:Landroid/os/Parcelable;

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p1, v1, v2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const-string p1, "extra_psk_type"

    .line 181
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 182
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-object p1, v1, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    const-string p1, "extra_wifi_info"

    .line 183
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiInfo;

    const-string v1, "extra_detailed_state"

    .line 185
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 187
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 191
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez p1, :cond_4

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->finish()V

    return-void

    .line 196
    :cond_4
    new-instance p1, Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/TrustedNetworkHelper;-><init>(Landroid/app/Fragment;)V

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

    .line 197
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->cancelCallback:Lcom/android/settings/wifi/TrustedNetworkHelper$CancelCallback;

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/TrustedNetworkHelper;->setCancelCallback(Lcom/android/settings/wifi/TrustedNetworkHelper$CancelCallback;)V

    .line 199
    new-instance p1, Lcom/android/settings/wifi/AccessPointDetailFragment$4;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/AccessPointDetailFragment$4;-><init>(Lcom/android/settings/wifi/AccessPointDetailFragment;)V

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 212
    new-instance p1, Lcom/android/settings/wifi/AccessPointDetailFragment$5;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/AccessPointDetailFragment$5;-><init>(Lcom/android/settings/wifi/AccessPointDetailFragment;)V

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 223
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mIntentFilter:Landroid/content/IntentFilter;

    .line 224
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "com.android.settings.wifi.TRUST_AP_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    const v0, 0x7f0d001f

    .line 277
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 278
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mRootView:Landroid/view/View;

    .line 280
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez p2, :cond_0

    .line 281
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mRootView:Landroid/view/View;

    return-object p0

    :cond_0
    const p2, 0x7f0a030a

    .line 283
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/widget/SettingItemButton;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mForgetBtn:Lcom/android/settings/widget/SettingItemButton;

    const p2, 0x7f0a030b

    .line 284
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 285
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mForgetBtn:Lcom/android/settings/widget/SettingItemButton;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SettingItemButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    .line 287
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    const p2, 0x7f0a024f

    .line 292
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mDisconnectLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0a024e

    .line 293
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/widget/SettingItemButton;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mDisconnectBtn:Lcom/android/settings/widget/SettingItemButton;

    .line 294
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mDisconnectBtn:Lcom/android/settings/widget/SettingItemButton;

    invoke-virtual {p2, p0}, Lcom/android/settings/widget/SettingItemButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lsmartisanos/util/config/Features;->isFeatureCMCCEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 296
    invoke-virtual {p2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_2

    .line 297
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mDisconnectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    const p2, 0x7f0a0656

    .line 300
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mModifyLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0655

    .line 301
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/widget/SettingItemButton;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mModifyBtn:Lcom/android/settings/widget/SettingItemButton;

    .line 302
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mModifyBtn:Lcom/android/settings/widget/SettingItemButton;

    invoke-virtual {p2, p0}, Lcom/android/settings/widget/SettingItemButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lsmartisanos/util/config/Features;->isFeatureCMCCEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget p2, p2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq p2, v1, :cond_3

    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget p2, p2, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz p2, :cond_3

    .line 306
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mModifyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    const p2, 0x7f0a0096

    .line 309
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisanos/widget/ListContentItemText;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mStatusInfo:Lsmartisanos/widget/ListContentItemText;

    .line 310
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mStatusInfo:Lsmartisanos/widget/ListContentItemText;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lsmartisanos/widget/ListContentItemText;->setImportantForAccessibility(I)V

    const p2, 0x7f0a0095

    .line 311
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisanos/widget/ListContentItemText;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSignalStrength:Lsmartisanos/widget/ListContentItemText;

    .line 312
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSignalStrength:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p2, v0}, Lsmartisanos/widget/ListContentItemText;->setImportantForAccessibility(I)V

    const p2, 0x7f0a0090

    .line 313
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisanos/widget/ListContentItemText;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mConnectionSpeed:Lsmartisanos/widget/ListContentItemText;

    .line 314
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mConnectionSpeed:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p2, v0}, Lsmartisanos/widget/ListContentItemText;->setImportantForAccessibility(I)V

    const p2, 0x7f0a0094

    .line 315
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisanos/widget/ListContentItemText;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSecurity:Lsmartisanos/widget/ListContentItemText;

    .line 316
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mSecurity:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p2, v0}, Lsmartisanos/widget/ListContentItemText;->setImportantForAccessibility(I)V

    const p2, 0x7f0a0092

    .line 317
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisanos/widget/ListContentItemText;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mIpAddress:Lsmartisanos/widget/ListContentItemText;

    .line 318
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mIpAddress:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p2, v0}, Lsmartisanos/widget/ListContentItemText;->setImportantForAccessibility(I)V

    const p2, 0x7f0a0093

    .line 319
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mNetworkSharing:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0688

    .line 320
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mNetworkSharingQrcode:Landroid/widget/ImageView;

    .line 321
    invoke-static {}, Lsmartisanos/api/ViewSmt;->getInstance()Lsmartisanos/api/ViewSmt;

    move-result-object p2

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mNetworkSharingQrcode:Landroid/widget/ImageView;

    invoke-virtual {p2, v2, v0}, Lsmartisanos/api/ViewSmt;->setSupportOcrBoom(Landroid/view/View;Z)V

    const p2, 0x7f0a00c9

    .line 322
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisanos/widget/ListContentItemSwitch;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAutoConnectNeedLoginNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    .line 323
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAutoConnectNeedLoginNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v2, v2, Lcom/android/settings/wifi/AccessPoint;->isAutoConnected:Z

    invoke-virtual {p2, v2}, Lsmartisanos/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 324
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAutoConnectNeedLoginNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p2, p0}, Lsmartisanos/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p2, 0x7f0a00cf

    .line 325
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisanos/widget/ListContentItemSwitch;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAutoLogin:Lsmartisanos/widget/ListContentItemSwitch;

    .line 326
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAutoLogin:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p2, p0}, Lsmartisanos/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p2, 0x7f0a073d

    .line 327
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisanos/widget/ListContentItemSwitch;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPerioritConnectNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    const-string p2, "persist.wifi.manual.sort"

    .line 328
    invoke-static {p2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPrioritNetowk:I

    .line 329
    iget p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPrioritNetowk:I

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne p2, v2, :cond_4

    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget p2, p2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq p2, v1, :cond_4

    .line 331
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPerioritConnectNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p2, v0}, Lsmartisanos/widget/ListContentItemSwitch;->setChecked(Z)V

    goto :goto_1

    .line 333
    :cond_4
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPerioritConnectNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p2, p3}, Lsmartisanos/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 335
    :goto_1
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPerioritConnectNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p2, p0}, Lsmartisanos/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p2, 0x7f0a0098

    .line 336
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisanos/widget/ListContentItemSwitch;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTrustNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    .line 337
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTrustNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    iget-object p3, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean p3, p3, Lcom/android/settings/wifi/AccessPoint;->isTrusted:Z

    invoke-virtual {p2, p3}, Lsmartisanos/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 338
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTrustNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p2, p0}, Lsmartisanos/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p2, 0x7f0a099c

    .line 339
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTrustView:Landroid/view/View;

    const p2, 0x7f0a008f

    .line 340
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisanos/widget/ListContentItemText;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAdvancedOptions:Lsmartisanos/widget/ListContentItemText;

    .line 341
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAdvancedOptions:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p2, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0099

    .line 342
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/TipsView;

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTrustApTips:Lsmartisanos/widget/TipsView;

    .line 343
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 159
    invoke-super {p0, p1}, Lcom/android/settings/SupportFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiConfigParcelable:Landroid/os/Parcelable;

    const-string v1, "extra_wifi_configuration"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 161
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState mWifiConfigParcelable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mWifiConfigParcelable:Landroid/os/Parcelable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSupportInvisible()V
    .locals 1

    .line 593
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportInvisible()V

    .line 594
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 595
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->resetConfirmFlagWhenPause:Z

    if-eqz v0, :cond_0

    .line 596
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkHelper;->resetPasswordConfirmedFlag()V

    :cond_0
    return-void
.end method

.method public onSupportVisible()V
    .locals 5

    .line 356
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportVisible()V

    .line 357
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->updateAccessPointInfo()V

    .line 358
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAutoConnectNeedLoginNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v1, v1, Lcom/android/settings/wifi/AccessPoint;->needLogin:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemSwitch;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    .line 360
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTrustView:Landroid/view/View;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 361
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->updateQrCode()V

    .line 362
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->updateAutoLoginSwitch()V

    .line 363
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wifi/AccessPointDetailFragment;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 364
    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->resetConfirmFlagWhenPause:Z

    .line 366
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v0, v0, Lcom/android/settings/wifi/AccessPoint;->needLogin:Z

    if-eqz v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPerioritConnectNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemSwitch;->setBackgroundStyle(I)V

    goto :goto_3

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mPerioritConnectNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemSwitch;->setBackgroundStyle(I)V

    .line 372
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isUseStrictLockScreen(Landroid/content/Context;)Z

    move-result v0

    .line 373
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTrustNetwork:Lsmartisanos/widget/ListContentItemSwitch;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lsmartisanos/widget/ListContentItemSwitch;->setEnabled(Z)V

    .line 374
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTrustApTips:Lsmartisanos/widget/TipsView;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->getTrustApTipsText(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lsmartisanos/widget/TipsView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 348
    invoke-super {p0, p1, p2}, Lcom/android/settings/SupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 349
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz p1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/TitleBar;->setCenterText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
