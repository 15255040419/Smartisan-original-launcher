.class public Lcom/android/settings/AirplaneModeEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x3


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/android/settings/AirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeEnabler$1;-><init>(Lcom/android/settings/AirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/android/settings/AirplaneModeEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirplaneModeEnabler$2;-><init>(Lcom/android/settings/AirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 64
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 p1, 0x0

    .line 67
    invoke-virtual {p2, p1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 69
    new-instance p1, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object p2, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 70
    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirplaneModeEnabler;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 2

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "airplane_mode_on"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private setAirplaneModeOn(Z)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "state"

    .line 104
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const-string/jumbo p1, "ril.cdma.inecmmode"

    .line 125
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .line 129
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public pause()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 86
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public resume()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 78
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 80
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    .line 79
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 137
    invoke-direct {p0, p2}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    :goto_0
    return-void
.end method
