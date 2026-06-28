.class public final Lcom/android/settings/CellularEnabler;
.super Ljava/lang/Object;
.source "CellularEnabler.java"


# instance fields
.field private mConnService:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mMobileDataChangeObserver:Landroid/database/ContentObserver;

.field private mPhoneManager:Landroid/telephony/TelephonyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSettingItem:Lcom/android/settings/MainSettingsFragment$SettingItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/MainSettingsFragment$SettingItem;Landroid/database/ContentObserver;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/android/settings/CellularEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CellularEnabler$1;-><init>(Lcom/android/settings/CellularEnabler;)V

    iput-object v0, p0, Lcom/android/settings/CellularEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 44
    iput-object p2, p0, Lcom/android/settings/CellularEnabler;->mSettingItem:Lcom/android/settings/MainSettingsFragment$SettingItem;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/CellularEnabler;->init(Landroid/content/Context;)V

    .line 46
    iput-object p3, p0, Lcom/android/settings/CellularEnabler;->mMobileDataChangeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 50
    iput-object p1, p0, Lcom/android/settings/CellularEnabler;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/CellularEnabler;->mConnService:Landroid/net/ConnectivityManager;

    const-string/jumbo v0, "phone"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/CellularEnabler;->mPhoneManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private isMobileDataEnabled()Z
    .locals 2

    .line 132
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/CellularEnabler;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMobileDataEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CellularEnabler"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private registeMobileDataChangeObserver()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/android/settings/CellularEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    .line 66
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/CellularEnabler;->mMobileDataChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    .line 65
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registePhoneStateListener()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/settings/CellularEnabler;->mPhoneManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/CellularEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 0

    return-void
.end method

.method private unregisteMobileDataChangeObserver()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/CellularEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/CellularEnabler;->mMobileDataChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unregistePhoneStateListener()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/settings/CellularEnabler;->mPhoneManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/CellularEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/android/settings/CellularEnabler;->unregisteMobileDataChangeObserver()V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/CellularEnabler;->updateSettingItemState()V

    .line 123
    invoke-direct {p0}, Lcom/android/settings/CellularEnabler;->registeMobileDataChangeObserver()V

    return-void
.end method

.method protected updateSettingItemState()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/android/settings/CellularEnabler;->mSettingItem:Lcom/android/settings/MainSettingsFragment$SettingItem;

    if-eqz v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/android/settings/CellularEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeEnablerEx;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 96
    invoke-static {}, Lcom/android/settings/Utils;->isSimExists()Z

    move-result v1

    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/settings/CellularEnabler;->mSettingItem:Lcom/android/settings/MainSettingsFragment$SettingItem;

    iget-object v2, p0, Lcom/android/settings/CellularEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f120109

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/MainSettingsFragment$SettingItem;->mSubTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/android/settings/CellularEnabler;->mSettingItem:Lcom/android/settings/MainSettingsFragment$SettingItem;

    iget-object v2, p0, Lcom/android/settings/CellularEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f1212e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/MainSettingsFragment$SettingItem;->mSubTitle:Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CellularEnabler;->isMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    invoke-static {}, Lcom/android/settings/Utils;->hasMultiSimInDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, p0, Lcom/android/settings/CellularEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    .line 105
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid PhoneId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CellularEnabler"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/android/settings/CellularEnabler;->mSettingItem:Lcom/android/settings/MainSettingsFragment$SettingItem;

    iget-object v3, p0, Lcom/android/settings/CellularEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lsmartisanos/util/MultiSimUtil;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/MainSettingsFragment$SettingItem;->mSubTitle:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/android/settings/CellularEnabler;->mSettingItem:Lcom/android/settings/MainSettingsFragment$SettingItem;

    iget-object v2, p0, Lcom/android/settings/CellularEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f120424

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/MainSettingsFragment$SettingItem;->mSubTitle:Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_4
    iget-object v1, p0, Lcom/android/settings/CellularEnabler;->mSettingItem:Lcom/android/settings/MainSettingsFragment$SettingItem;

    iget-object v2, p0, Lcom/android/settings/CellularEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f120423

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/MainSettingsFragment$SettingItem;->mSubTitle:Ljava/lang/String;

    .line 117
    :goto_0
    iget-object p0, p0, Lcom/android/settings/CellularEnabler;->mSettingItem:Lcom/android/settings/MainSettingsFragment$SettingItem;

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MainSettingsFragment$SettingItem;->mEnable:Z

    :cond_5
    return-void
.end method
