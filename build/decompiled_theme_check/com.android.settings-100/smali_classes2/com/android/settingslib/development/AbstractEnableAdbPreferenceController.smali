.class public abstract Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "AbstractEnableAdbPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/ConfirmationDialogController;


# static fields
.field public static final ACTION_ENABLE_ADB_STATE_CHANGED:Ljava/lang/String; = "com.android.settingslib.development.AbstractEnableAdbController.ENABLE_ADB_STATE_CHANGED"

.field public static final ADB_SETTING_OFF:I = 0x0

.field public static final ADB_SETTING_ON:I = 0x1

.field private static final KEY_ENABLE_ADB:Ljava/lang/String; = "enable_adb"


# instance fields
.field protected mPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private isAdbEnabled()Z
    .locals 2

    .line 72
    iget-object p0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "adb_enabled"

    .line 73
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private notifyStateChanged()V
    .locals 2

    .line 124
    iget-object p0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settingslib.development.AbstractEnableAdbController.ENABLE_ADB_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "enable_adb"

    .line 56
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    :cond_0
    return-void
.end method

.method public enablePreference(Z)V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object p0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "enable_adb"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "enable_adb"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-direct {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->isAdbEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->showConfirmationDialog(Landroidx/preference/Preference;)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->writeAdbSetting(Z)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public haveDebugSettings()Z
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->isAdbEnabled()Z

    move-result p0

    return p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 62
    iget-object p0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-eqz p0, :cond_1

    .line 63
    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/os/UserManager;->isDemoUser()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isUserAMonkey()Z
    .locals 0

    .line 130
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p0

    return p0
.end method

.method public resetPreference()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 79
    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-direct {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->isAdbEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method protected writeAdbSetting(Z)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    invoke-direct {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->notifyStateChanged()V

    return-void
.end method
