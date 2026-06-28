.class public Lcom/android/settings/AirplaneModeEnablerEx;
.super Ljava/lang/Object;
.source "AirplaneModeEnablerEx.java"


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x3


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mSettingItem:Lcom/android/settings/MainSettingsFragment$SettingItem;

.field private mSwitchEx:Lsmartisanos/widget/SwitchEx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/settings/AirplaneModeEnablerEx$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeEnablerEx$1;-><init>(Lcom/android/settings/AirplaneModeEnablerEx;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/MainSettingsFragment$SettingItem;Landroid/database/ContentObserver;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/settings/AirplaneModeEnablerEx$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeEnablerEx$1;-><init>(Lcom/android/settings/AirplaneModeEnablerEx;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mHandler:Landroid/os/Handler;

    .line 66
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mSettingItem:Lcom/android/settings/MainSettingsFragment$SettingItem;

    .line 68
    iput-object p3, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 70
    new-instance p1, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object p2, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 71
    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lsmartisanos/widget/SwitchEx;Landroid/database/ContentObserver;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/settings/AirplaneModeEnablerEx$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeEnablerEx$1;-><init>(Lcom/android/settings/AirplaneModeEnablerEx;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mContext:Landroid/content/Context;

    .line 76
    iput-object p3, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 77
    iput-object p2, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mSwitchEx:Lsmartisanos/widget/SwitchEx;

    .line 78
    new-instance p1, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object p2, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 79
    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirplaneModeEnablerEx;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeEnablerEx;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AirplaneModeEnablerEx;)Landroid/database/ContentObserver;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 2

    .line 101
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
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mSettingItem:Lcom/android/settings/MainSettingsFragment$SettingItem;

    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeEnablerEx;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/MainSettingsFragment$SettingItem;->mChecked:Z

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mSwitchEx:Lsmartisanos/widget/SwitchEx;

    if-eqz v0, :cond_1

    .line 132
    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnablerEx;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public resume()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mSettingItem:Lcom/android/settings/MainSettingsFragment$SettingItem;

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeEnablerEx;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/MainSettingsFragment$SettingItem;->mChecked:Z

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mSwitchEx:Lsmartisanos/widget/SwitchEx;

    if-eqz v0, :cond_1

    .line 87
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeEnablerEx;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 90
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 91
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 90
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setAirplaneModeOn(Z)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "state"

    .line 114
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnablerEx;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
