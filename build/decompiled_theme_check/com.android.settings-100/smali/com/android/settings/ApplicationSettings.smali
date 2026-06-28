.class public Lcom/android/settings/ApplicationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApplicationSettings.java"


# static fields
.field private static final APP_INSTALL_AUTO:I = 0x0

.field private static final APP_INSTALL_AUTO_ID:Ljava/lang/String; = "auto"

.field private static final APP_INSTALL_DEVICE:I = 0x1

.field private static final APP_INSTALL_DEVICE_ID:Ljava/lang/String; = "device"

.field private static final APP_INSTALL_SDCARD:I = 0x2

.field private static final APP_INSTALL_SDCARD_ID:Ljava/lang/String; = "sdcard"

.field private static final KEY_APP_INSTALL_LOCATION:Ljava/lang/String; = "app_install_location"

.field private static final KEY_TOGGLE_ADVANCED_SETTINGS:Ljava/lang/String; = "toggle_advanced_settings"


# instance fields
.field private mInstallLocation:Landroidx/preference/ListPreference;

.field private mToggleAdvancedSettings:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getAppInstallLocation()Ljava/lang/String;
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_install_location"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "device"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string/jumbo p0, "sdcard"

    return-object p0

    :cond_1
    const-string v0, "auto"

    if-nez p0, :cond_2

    :cond_2
    return-object v0
.end method

.method private isAdvancedSettingsEnabled()Z
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "advanced_settings"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setAdvancedSettingsEnabled(Z)V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "advanced_settings"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ADVANCED_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "state"

    .line 118
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected handleUpdateAppInstallLocation(Ljava/lang/String;)V
    .locals 3

    const-string v0, "device"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "default_install_location"

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sdcard"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const-string v0, "auto"

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    :goto_0
    iget-object p0, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f15000f

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/settings/ApplicationSettings;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "toggle_advanced_settings"

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/settings/ApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/ApplicationSettings;->mToggleAdvancedSettings:Landroidx/preference/CheckBoxPreference;

    .line 52
    iget-object p1, p0, Lcom/android/settings/ApplicationSettings;->mToggleAdvancedSettings:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/ApplicationSettings;->isAdvancedSettingsEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mToggleAdvancedSettings:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    const-string p1, "app_install_location"

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/settings/ApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroidx/preference/ListPreference;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "set_install_location"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroidx/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroidx/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/ApplicationSettings;->getAppInstallLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroidx/preference/ListPreference;

    new-instance v0, Lcom/android/settings/ApplicationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApplicationSettings$1;-><init>(Lcom/android/settings/ApplicationSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mToggleAdvancedSettings:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroidx/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 100
    invoke-direct {p0, v0}, Lcom/android/settings/ApplicationSettings;->setAdvancedSettingsEnabled(Z)V

    .line 103
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
