.class public Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;
.super Lcom/android/settings/SupportFragment;
.source "AdvancedAccessPointSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private launchBywifiSetup:Z

.field private mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mController:Lcom/android/settings/wifi/WifiConfigControllerEx;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/android/settings/SupportFragment;-><init>()V

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    .line 42
    new-instance v0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment$1;-><init>(Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;)V
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->finish()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;)V
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->finish()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;)Lcom/android/settings/wifi/WifiConfigControllerEx;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mController:Lcom/android/settings/wifi/WifiConfigControllerEx;

    return-object p0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "supplicantError"

    .line 150
    invoke-virtual {p2, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f12181a

    const/4 p2, 0x0

    .line 151
    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string p1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "wifiConfiguration"

    .line 156
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    const/4 v0, -0x1

    const-string v1, "changeReason"

    .line 157
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 159
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object p2, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget p2, p2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne p1, p2, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->finish()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->submit()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/SupportFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "wifi"

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_wifi_configuration"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "launch_by_wifiSetup"

    const/4 v2, 0x0

    .line 56
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->launchBywifiSetup:Z

    if-eqz v0, :cond_0

    .line 58
    instance-of v1, v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->_mActivity:Landroid/app/Activity;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v2, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const-string v0, "extra_wifi_info"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    const-string v1, "extra_detailed_state"

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez p1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->finish()V

    return-void

    .line 73
    :cond_1
    new-instance p1, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment$2;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment$2;-><init>(Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;)V

    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 88
    iget-object p1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object p0, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0034

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mRootView:Landroid/view/View;

    .line 96
    new-instance p1, Lcom/android/settings/wifi/WifiConfigControllerEx;

    iget-object p2, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mRootView:Landroid/view/View;

    iget-object p3, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/settings/wifi/WifiConfigControllerEx;-><init>(Lcom/android/settings/SupportFragment;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;)V

    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mController:Lcom/android/settings/wifi/WifiConfigControllerEx;

    .line 97
    iget-object p1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mController:Lcom/android/settings/wifi/WifiConfigControllerEx;

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->setSaveButtonListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p0, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mController:Lcom/android/settings/wifi/WifiConfigControllerEx;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->onKeyDown()V

    const/4 p0, 0x1

    return p0

    .line 177
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SupportFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onSupportInvisible()V
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportInvisible()V

    .line 143
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onSupportVisible()V
    .locals 2

    .line 136
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportVisible()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2}, Lcom/android/settings/SupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 104
    iget-object p1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mBackView:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment$3;

    invoke-direct {p2, p0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment$3;-><init>(Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method submit()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mController:Lcom/android/settings/wifi/WifiConfigControllerEx;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->launchBywifiSetup:Z

    if-eqz v1, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 126
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "extra_ap_configuration"

    .line 127
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->setFragmentResult(ILandroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
