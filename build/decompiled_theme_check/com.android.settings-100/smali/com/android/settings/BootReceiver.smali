.class public Lcom/android/settings/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static final OLD_VERSION:Ljava/lang/String; = "old_version"

.field private static final TAG:Ljava/lang/String; = "BootReceiver"


# instance fields
.field private final mCurConfig:Landroid/content/res/Configuration;

.field private whiteApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/BootReceiver;->mCurConfig:Landroid/content/res/Configuration;

    const-string v0, "com.android.settings"

    const-string v1, "com.android.systemui"

    .line 42
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BootReceiver;->whiteApps:Ljava/util/List;

    return-void
.end method

.method private check(Landroid/content/Context;)V
    .locals 4

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const-string/jumbo v0, "persist.sys.device_provisioned"

    .line 244
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    const-string v2, "device_provisioned"

    .line 245
    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move p1, v1

    :cond_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const-string p1, "BootReceiver"

    const-string v0, "ERROR: settings config xml lose, force correct provision settings."

    .line 247
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo p1, "user_setup_complete"

    .line 249
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method

.method private disablePhoneCase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "phone_case_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "will disable phone case, reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", currentState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BootReceiver"

    invoke-static {v4, v3}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    invoke-static {p1}, Lcom/android/settings/PreferenceMgr;->getInstance(Landroid/content/Context;)Lcom/android/settings/PreferenceMgr;

    move-result-object v1

    .line 172
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/PreferenceMgr;->putInt(Ljava/lang/String;I)V

    .line 173
    iget-object p0, p0, Lcom/android/settings/BootReceiver;->whiteApps:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 174
    new-instance p0, Landroid/content/Intent;

    const-class p2, Lcom/android/settings/DialogActivity;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p2, 0x7

    const-string v0, "dialog_type"

    .line 175
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private enablePhoneCase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 181
    invoke-static {p1}, Lcom/android/settings/PreferenceMgr;->getInstance(Landroid/content/Context;)Lcom/android/settings/PreferenceMgr;

    move-result-object p0

    const/4 v0, -0x1

    const-string/jumbo v1, "phone_case_state"

    .line 182
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/PreferenceMgr;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "will enable phone case, reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", restoreState:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "BootReceiver"

    invoke-static {v3, p2}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v2, v0, :cond_0

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/settings/PreferenceMgr;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handlePhoneCase(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 116
    invoke-static {}, Lcom/android/settings/SettingsFeature;->hasMultiCustomKey()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 119
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    const-string v3, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 120
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    .line 121
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/high16 v5, -0x80000000

    const-string v6, "android.bluetooth.adapter.extra.STATE"

    .line 122
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    .line 123
    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v7, "pkg_name"

    .line 124
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 126
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", preState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", newState:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", device:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adapterStatePre:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adapterState:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stateChangedBy:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "BootReceiver"

    invoke-static {v5, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    .line 131
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x2

    if-eqz v1, :cond_4

    const-string v1, "android.bluetooth.profile.extra.STATE"

    .line 133
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 134
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 135
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 136
    iget-object v0, p0, Lcom/android/settings/BootReceiver;->whiteApps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CONNECTION_STATE_CHANGED:, preState:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    const-string p2, ""

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 137
    invoke-static {v5, p2}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    .line 140
    invoke-direct {p0, p1, v0}, Lcom/android/settings/BootReceiver;->disablePhoneCase(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-ne v1, v9, :cond_3

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/android/settings/BootReceiver;->enablePhoneCase(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string p2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 145
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 146
    iget-object p2, p0, Lcom/android/settings/BootReceiver;->whiteApps:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez v3, :cond_5

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BootReceiver;->disablePhoneCase(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-ne v3, v9, :cond_6

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BootReceiver;->enablePhoneCase(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    const/16 p2, 0xd

    if-ne v6, p2, :cond_8

    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onReceive: adapter STATE_OFF, disableBy:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, p1, v7}, Lcom/android/settings/BootReceiver;->disablePhoneCase(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const/16 p2, 0xb

    if-ne v6, p2, :cond_9

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onReceive: adapter STATE_ON, enableBy:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, p1, v7}, Lcom/android/settings/BootReceiver;->enablePhoneCase(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-void
.end method

.method private resetCleanProcessTime(Landroid/content/Context;)V
    .locals 1

    .line 192
    new-instance v0, Lcom/android/settings/BootReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/BootReceiver$1;-><init>(Lcom/android/settings/BootReceiver;Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetOTABadgeFlag(Landroid/content/Context;)V
    .locals 0

    .line 224
    invoke-static {p1}, Lcom/android/settings/PreferenceMgr;->getInstance(Landroid/content/Context;)Lcom/android/settings/PreferenceMgr;

    move-result-object p0

    const-string/jumbo p1, "show_ota_updatable_badge"

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/settings/PreferenceMgr;->remove(Ljava/lang/String;)V

    return-void
.end method

.method private resetScreenRecorderStatus(Landroid/content/Context;)V
    .locals 2

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "screen_recorder_status"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "screen_recorder_show_status"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private saveCurrentVersion(Landroid/content/Context;)V
    .locals 3

    .line 202
    invoke-static {p1}, Lcom/android/settings/PreferenceMgr;->getInstance(Landroid/content/Context;)Lcom/android/settings/PreferenceMgr;

    move-result-object v0

    const-string v1, "old_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/PreferenceMgr;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/BootReceiver;->getCurrentVersion()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-static {p1}, Lcom/android/settings/PreferenceMgr;->getInstance(Landroid/content/Context;)Lcom/android/settings/PreferenceMgr;

    move-result-object p1

    invoke-virtual {p1, v1, p0}, Lcom/android/settings/PreferenceMgr;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showSmartScreenNotification(Landroid/content/Context;)V
    .locals 7

    .line 229
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportSmartScreenProtection()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "smart_screen_protector"

    .line 232
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 235
    new-instance v6, Landroid/content/Intent;

    const-class p0, Lcom/android/settings/Settings$SmartScreenActivity;

    invoke-direct {v6, p1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p0, 0x7f120dd8

    .line 236
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const p0, 0x7f12046d

    .line 237
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0xcb

    const v3, 0x7f0801ef

    move-object v1, p1

    .line 238
    invoke-static/range {v1 .. v6}, Lcom/android/settings/Utils;->showNotification(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getCurrentVersion()Ljava/lang/String;
    .locals 0

    :try_start_0
    const-string/jumbo p0, "ro.smartisan.version"

    .line 211
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BootReceiver action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BootReceiver"

    invoke-static {v2, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "default_browser_setting_done"

    invoke-static {p2, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_0

    .line 49
    invoke-static {p1}, Lcom/android/settings/DefaultBrowserSetter;->start(Landroid/content/Context;)V

    .line 51
    :cond_0
    sget-boolean p2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez p2, :cond_1

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/BootReceiver;->check(Landroid/content/Context;)V

    .line 54
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/BootReceiver;->resetScreenRecorderStatus(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/BootReceiver;->resetCleanProcessTime(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "gps"

    .line 58
    invoke-static {p2, v0}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "network"

    .line 60
    invoke-static {p2, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    if-eq v1, v5, :cond_2

    .line 63
    invoke-static {p2, v2, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 65
    invoke-static {p2, v0, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 69
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/BootReceiver;->resetOTABadgeFlag(Landroid/content/Context;)V

    .line 71
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 73
    invoke-static {p1}, Lcom/android/settings/settingitemsprovider/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/settingitemsprovider/DatabaseHelper;

    move-result-object v0

    .line 74
    invoke-virtual {p2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/settings/settingitemsprovider/DatabaseHelper;->handleNfcStateChanged(I)V

    .line 76
    :cond_3
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/fuelgauge/PowerUsageService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "FROM_BOOTRECEIVER"

    .line 77
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 80
    sget-object p2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v0, "userdebug"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 81
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/applications/PhoneStateTrackService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/BootReceiver;->saveCurrentVersion(Landroid/content/Context;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/BootReceiver;->showSmartScreenNotification(Landroid/content/Context;)V

    .line 86
    invoke-static {p1}, Lcom/android/settings/gloableconfig/GloableSearchConfigService;->scheduleJob(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_5
    const-string p0, "android.intent.action.PRE_BOOT_COMPLETED"

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {p1}, Lcom/android/settings/Utils;->isDeviceSetupComplete(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 88
    new-instance p0, Landroid/content/Intent;

    const-string p2, "com.smartisanos.action.settings.HandleEventService"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x5

    const-string/jumbo v0, "type"

    .line 89
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "com.android.settings"

    .line 90
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_6
    const-string p0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0xa

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 93
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 94
    invoke-static {p1}, Lcom/android/settings/settingitemsprovider/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/settingitemsprovider/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settings/settingitemsprovider/DatabaseHelper;->handleBluetoothStateChanged(I)V

    goto :goto_0

    :cond_7
    const-string p0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 97
    :try_start_0
    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintHelper;->updateGestureModeIfNeed(Landroid/content/Context;)V

    .line 98
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isDarwin()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 99
    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintHelper;->updateFodModeIfNeed(Landroid/content/Context;)V

    .line 101
    :cond_8
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportReadMode()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "read_mode_enable"

    .line 101
    invoke-static {p0, p2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_9

    const-string/jumbo p0, "service call SurfaceFlinger 1015 i32 16 f 0.185918 f 0.185918 f 0.176755 f 0 f 0.625424 f 0.625424 f 0.594617 f 0 f 0.0631389 f 0.0631389 f 0.060027 f 0 f 0.0392 f 0.0392 f 0.0392 f 1"

    .line 104
    invoke-static {p0, v4, v3}, Lcom/android/settings/sensor/CommandUtils;->execute(Ljava/lang/String;ZZ)Lcom/android/settings/sensor/CommandUtils$ShellResult;

    .line 106
    :cond_9
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportSideDialKey()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 107
    invoke-static {p1}, Lcom/android/settings/sidedial/SideDialHelper;->sideDialStateChangedAfterBoot(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "service call error"

    .line 110
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_0
    return-void
.end method
