.class public Lcom/android/settings/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# static fields
.field private static final ACTION_EXTRA:Ljava/lang/String; = "choice"

.field private static final ACTION_HOTSPOT_POST_CONFIGURE:Ljava/lang/String; = "Hotspot_PostConfigure"

.field public static final TETHERING_WIFI:I


# instance fields
.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mEnabling:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitch:Landroidx/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/DataSaverBackend;Landroidx/preference/Preference;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnabling:Z

    .line 53
    new-instance v1, Lcom/android/settings/wifi/WifiApEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApEnabler$1;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 87
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroidx/preference/Preference;

    .line 88
    invoke-virtual {p3}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {p3, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    const-string p2, "wifi"

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 93
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 95
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 97
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 98
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApEnabler;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiApEnabler;->handleWifiApStateChanged(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    return-void
.end method

.method private enableWifiSwitch()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private handleWifiApStateChanged(II)V
    .locals 7

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const v1, 0x7f121857

    const v2, 0x7f1217fa

    const v3, 0x7f1218dd

    const v4, 0x7f1218e1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/HotspotPreference;

    packed-switch p1, :pswitch_data_0

    .line 190
    invoke-virtual {v0, v6}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    if-ne p2, v5, :cond_0

    .line 192
    invoke-virtual {v0, v1}, Lcom/android/settings/HotspotPreference;->setSummary(I)V

    goto :goto_0

    .line 174
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v6}, Lcom/android/settings/wifi/WifiApEnabler;->postTurnOn(Landroid/content/Context;I)Z

    .line 175
    invoke-virtual {v0, v5}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 177
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p0

    xor-int/2addr p0, v5

    invoke-virtual {v0, p0}, Lcom/android/settings/HotspotPreference;->setEnabled(Z)V

    goto :goto_2

    .line 166
    :pswitch_1
    invoke-virtual {v0, v3}, Lcom/android/settings/HotspotPreference;->setSummary(I)V

    .line 167
    invoke-virtual {v0, v6}, Lcom/android/settings/HotspotPreference;->setEnabled(Z)V

    goto :goto_2

    .line 185
    :pswitch_2
    invoke-virtual {v0, v6}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 186
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/android/settings/HotspotPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_2

    .line 180
    :pswitch_3
    invoke-virtual {v0, v4}, Lcom/android/settings/HotspotPreference;->setSummary(I)V

    .line 181
    invoke-virtual {v0, v6}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 182
    invoke-virtual {v0, v6}, Lcom/android/settings/HotspotPreference;->setEnabled(Z)V

    goto :goto_2

    .line 194
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/settings/HotspotPreference;->setSummary(I)V

    .line 196
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_2

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/SwitchPreference;

    packed-switch p1, :pswitch_data_1

    .line 225
    invoke-virtual {v0, v6}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    if-ne p2, v5, :cond_2

    .line 227
    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 210
    :pswitch_4
    invoke-virtual {v0, v5}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 212
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p0

    xor-int/2addr p0, v5

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2

    .line 202
    :pswitch_5
    invoke-virtual {v0, v3}, Landroidx/preference/SwitchPreference;->setSummary(I)V

    .line 203
    invoke-virtual {v0, v6}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2

    .line 220
    :pswitch_6
    invoke-virtual {v0, v6}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 221
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 222
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_2

    .line 215
    :pswitch_7
    invoke-virtual {v0, v4}, Landroidx/preference/SwitchPreference;->setSummary(I)V

    .line 216
    invoke-virtual {v0, v6}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 217
    invoke-virtual {v0, v6}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2

    .line 229
    :cond_2
    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setSummary(I)V

    .line 231
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private postTurnOn(Landroid/content/Context;I)Z
    .locals 2

    .line 236
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnabling:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003a

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Hotspot_PostConfigure"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "choice"

    .line 239
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 241
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnabling:Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 9

    .line 138
    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v1, p1, :cond_2

    aget-object v4, p2, v1

    .line 139
    check-cast v4, Ljava/lang/String;

    .line 140
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    move v2, v0

    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v8, v5, v2

    .line 141
    invoke-virtual {v4, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v7, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v7

    goto :goto_0

    .line 144
    :cond_2
    array-length p1, p3

    move p2, v0

    move v1, p2

    :goto_2
    if-ge p2, p1, :cond_5

    aget-object v4, p3, p2

    .line 145
    check-cast v4, Ljava/lang/String;

    .line 146
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    array-length v6, v5

    move v7, v1

    move v1, v0

    :goto_3
    if-ge v1, v6, :cond_4

    aget-object v8, v5, v1

    .line 147
    invoke-virtual {v4, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v7, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 p2, p2, 0x1

    move v1, v7

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 152
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_7

    .line 155
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroidx/preference/Preference;

    const p1, 0x7f1217fa

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public resume()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settings/HotspotPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    return-void
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v1, 0x104087d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f1218da

    .line 130
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x0

    aput-object v0, v2, p1

    .line 129
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
