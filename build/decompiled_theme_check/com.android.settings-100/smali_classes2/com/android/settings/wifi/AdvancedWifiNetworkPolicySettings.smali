.class public Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;
.super Lcom/android/settings/BaseActivity;
.source "AdvancedWifiNetworkPolicySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final DATA_TO_WIFI_CONNECT_TYPE:Ljava/lang/String; = "data_to_wifi_connect_type"

.field private static final DATA_TO_WIFI_CONNECT_TYPE_ASK:I = 0x2

.field private static final DATA_TO_WIFI_CONNECT_TYPE_AUTO:I = 0x0

.field private static final DATA_TO_WIFI_CONNECT_TYPE_MANUAL:I = 0x1

.field private static final NETWORK_HANDOVER_TIPS_SWITCH:Ljava/lang/String; = "network_handover_tips_switch"

.field private static final TAG:Ljava/lang/String; = "AdvancedWifiNetworkPolicySettings"

.field private static final WIFI_AUTO_CONNECT_TYPE:Ljava/lang/String; = "wifi_auto_connect_type"


# instance fields
.field private DATA_TO_WLAN_POLICY_VALUES:[Ljava/lang/String;

.field private mAutoConnectItem:Lsmartisanos/widget/SettingItemSwitch;

.field private mAutoConnectItemSwitch:Lsmartisanos/widget/SwitchEx;

.field private mData2WlanChooser:Landroid/app/AlertDialog;

.field private mNetworkHandoverItem:Lsmartisanos/widget/SettingItemSwitch;

.field private mNetworkHandoverSwitch:Lsmartisanos/widget/SwitchEx;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mmData2WlanIndex:I

.field private supportCMCC:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/android/settings/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->supportCMCC:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mmData2WlanIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mmData2WlanIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;)[Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->DATA_TO_WLAN_POLICY_VALUES:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;)Landroid/app/AlertDialog;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mData2WlanChooser:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private initCellularWLANItem()V
    .locals 3

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_to_wifi_connect_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mmData2WlanIndex:I

    const v0, 0x7f0a0652

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/SettingItemText;

    .line 155
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->DATA_TO_WLAN_POLICY_VALUES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mmData2WlanIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SettingItemText;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v0, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initPreferences()V
    .locals 4

    const v0, 0x7f0a00c8

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/SettingItemSwitch;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mAutoConnectItem:Lsmartisanos/widget/SettingItemSwitch;

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mAutoConnectItem:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {v0}, Lsmartisanos/widget/SettingItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mAutoConnectItemSwitch:Lsmartisanos/widget/SwitchEx;

    const v0, 0x7f0a0682

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/SettingItemSwitch;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mNetworkHandoverItem:Lsmartisanos/widget/SettingItemSwitch;

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mNetworkHandoverItem:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {v0}, Lsmartisanos/widget/SettingItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mNetworkHandoverSwitch:Lsmartisanos/widget/SwitchEx;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "wifi_auto_connect_type"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 117
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mAutoConnectItemSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v3, v0}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mAutoConnectItemSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v0, p0}, Lsmartisanos/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "network_handover_tips_switch"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mNetworkHandoverSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mNetworkHandoverSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v0, p0}, Lsmartisanos/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private refreshWifiInfo()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const v1, 0x7f0a061b

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisanos/widget/SettingItemText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x7f1213be

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_1
    invoke-virtual {v1, v0}, Lsmartisanos/widget/SettingItemText;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mAutoConnectItemSwitch:Lsmartisanos/widget/SwitchEx;

    if-ne p1, v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    xor-int/lit8 p1, p2, 0x1

    const-string p2, "wifi_auto_connect_type"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mNetworkHandoverSwitch:Lsmartisanos/widget/SwitchEx;

    if-ne p1, v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "network_handover_tips_switch"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0652

    if-ne v0, v1, :cond_0

    .line 162
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0d0363

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->DATA_TO_WLAN_POLICY_VALUES:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 165
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f120c63

    .line 167
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mmData2WlanIndex:I

    new-instance v3, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings$1;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings$1;-><init>(Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;Landroid/view/View;)V

    .line 168
    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1203dd

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mData2WlanChooser:Landroid/app/AlertDialog;

    .line 181
    iget-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mData2WlanChooser:Landroid/app/AlertDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 182
    iget-object p0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mData2WlanChooser:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0358

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->setContentView(I)V

    const-string p1, "wifi"

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0300b1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->DATA_TO_WLAN_POLICY_VALUES:[Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->setupBackBtnOnTitle()Lsmartisanos/widget/TitleBar;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 103
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->onResume()V

    .line 104
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->initPreferences()V

    .line 105
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->initCellularWLANItem()V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->refreshWifiInfo()V

    return-void
.end method
