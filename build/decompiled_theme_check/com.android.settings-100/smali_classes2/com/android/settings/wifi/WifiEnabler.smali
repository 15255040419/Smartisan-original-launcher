.class public Lcom/android/settings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final EVENT_DATA_IS_WIFI_ON:Ljava/lang/String; = "is_wifi_on"

.field public static final KEY_TURN_OFF_WIFI_SHOW_AGAIN:Ljava/lang/String; = "TurnOffWifiShowAgain"

.field public static final MY_PREF_FILE:Ljava/lang/String; = "MY_PERFS"

.field private static mNotShowAgainCheckbox:Landroid/widget/CheckBox;


# instance fields
.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mListeningToOnSwitchChange:Z

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mProcessor:Lcom/android/settings/HandInHandProcessor;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Lsmartisanos/widget/SwitchEx;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsmartisanos/widget/SwitchEx;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 58
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v0, Lcom/android/settings/HandInHandProcessor;

    invoke-direct {v0}, Lcom/android/settings/HandInHandProcessor;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mProcessor:Lcom/android/settings/HandInHandProcessor;

    .line 65
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiEnabler$1;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    const-string p2, "wifi"

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 86
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 88
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->setupSwitchBar()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiEnabler;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100()Landroid/widget/CheckBox;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/settings/wifi/WifiEnabler;->mNotShowAgainCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiEnabler;)Lsmartisanos/widget/SwitchEx;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiEnabler;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiEnabler;->closeOfOpen(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private closeOfOpen(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SwitchEx;->setEnabled(Z)V

    .line 270
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f1217fa

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-ne v0, p2, :cond_1

    .line 274
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p0, :cond_1

    .line 275
    invoke-interface {p0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_1
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 150
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 151
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {p1, v1}, Lsmartisanos/widget/SwitchEx;->setEnabled(Z)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 140
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {p1, v1}, Lsmartisanos/widget/SwitchEx;->setEnabled(Z)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {p1, v0}, Lsmartisanos/widget/SwitchEx;->setEnabled(Z)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 147
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {p1, v1}, Lsmartisanos/widget/SwitchEx;->setEnabled(Z)V

    goto :goto_0

    .line 143
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {p1, v0}, Lsmartisanos/widget/SwitchEx;->setEnabled(Z)V

    .line 156
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {p1}, Lcom/android/settings/MultiSDKAdapter;->getWifiStaSapConcurrency(Landroid/net/wifi/WifiManager;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 157
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {p1}, Lsmartisanos/widget/SwitchEx;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->mayDisableTethering(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 158
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 159
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_config_tethering"

    .line 158
    invoke-static {p1, v2, v1}, Lcom/android/settings/MultiSDKAdapterNew;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 160
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {p0, v0}, Lsmartisanos/widget/SwitchEx;->setEnabled(Z)V

    goto :goto_1

    .line 162
    :cond_4
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 163
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    .line 162
    invoke-static {p0, v2, p1}, Lcom/android/settings/MultiSDKAdapterNew;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    :cond_5
    :goto_1
    return-void
.end method

.method private mayDisableTethering(Z)Z
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p0

    if-eqz p1, :cond_1

    const/16 p1, 0xc

    if-eq p0, p1, :cond_0

    const/16 p1, 0xd

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setSwitchBarChecked(Z)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v0}, Lsmartisanos/widget/SwitchEx;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v0, p1}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 177
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 178
    invoke-interface {p0, v0, p1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method

.method private showDialog(Landroid/widget/CompoundButton;)V
    .locals 6

    .line 287
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mProcessor:Lcom/android/settings/HandInHandProcessor;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/settings/wifi/WifiEnabler$3;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/wifi/WifiEnabler$3;-><init>(Lcom/android/settings/wifi/WifiEnabler;Landroid/widget/CompoundButton;)V

    new-instance v4, Lcom/android/settings/wifi/WifiEnabler$4;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/wifi/WifiEnabler$4;-><init>(Lcom/android/settings/wifi/WifiEnabler;Landroid/widget/CompoundButton;)V

    new-instance v5, Lcom/android/settings/wifi/WifiEnabler$5;

    invoke-direct {v5, p0, p1}, Lcom/android/settings/wifi/WifiEnabler$5;-><init>(Lcom/android/settings/wifi/WifiEnabler;Landroid/widget/CompoundButton;)V

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/HandInHandProcessor;->showDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {p0}, Lsmartisanos/widget/SwitchEx;->isChecked()Z

    move-result p0

    return p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    .line 189
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 192
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->sendAccessibilityEvent(I)V

    .line 194
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 198
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-static {v2, v3}, Lcom/android/settingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 199
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const p2, 0x7f12180a

    invoke-static {p0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 201
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    .line 206
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Lcom/android/settings/MultiSDKAdapter;->getWifiStaSapConcurrency(Landroid/net/wifi/WifiManager;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 207
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiEnabler;->mayDisableTethering(Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 208
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f050025

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const v2, 0x7f1217fa

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    .line 210
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v4, 0x7f0d01a4

    .line 212
    invoke-virtual {p1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v4, 0x7f0a019a

    .line 213
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    sput-object v4, Lcom/android/settings/wifi/WifiEnabler;->mNotShowAgainCheckbox:Landroid/widget/CheckBox;

    .line 214
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v5, "MY_PERFS"

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "TurnOffWifiShowAgain"

    .line 216
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_4

    .line 220
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {p1, v3, v1}, Lcom/android/settings/MultiSDKAdapter;->setWifiApEnabled(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 221
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 223
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {p1, v0}, Lsmartisanos/widget/SwitchEx;->setEnabled(Z)V

    .line 224
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 225
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void

    .line 230
    :cond_4
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f12158b

    .line 231
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f12158a

    .line 232
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 233
    invoke-virtual {v5, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v5, 0x7f120e0f

    new-instance v6, Lcom/android/settings/wifi/WifiEnabler$2;

    invoke-direct {v6, p0, v4}, Lcom/android/settings/wifi/WifiEnabler$2;-><init>(Lcom/android/settings/wifi/WifiEnabler;Landroid/content/SharedPreferences;)V

    .line 234
    invoke-virtual {p1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 244
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 247
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {p1, v3, v1}, Lcom/android/settings/MultiSDKAdapter;->setWifiApEnabled(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 248
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result p1

    if-nez p1, :cond_6

    .line 250
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {p1, v0}, Lsmartisanos/widget/SwitchEx;->setEnabled(Z)V

    .line 251
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_6
    return-void

    .line 257
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SwitchEx;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    if-ne p1, v0, :cond_8

    if-nez p2, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mProcessor:Lcom/android/settings/HandInHandProcessor;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/HandInHandProcessor;->isHandInHandle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 259
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->showDialog(Landroid/widget/CompoundButton;)V

    goto :goto_0

    .line 261
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiEnabler;->closeOfOpen(Landroid/widget/CompoundButton;Z)V

    :goto_0
    const/16 p0, 0xc9

    .line 263
    invoke-static {p0, p2}, Lcom/android/settings/SettingsTracker;->onSwitcherClick(IZ)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_0
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 2

    .line 113
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 115
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setupSwitchBar()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 96
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v0, p0}, Lsmartisanos/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_0
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lsmartisanos/widget/SwitchEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_0
    return-void
.end method
