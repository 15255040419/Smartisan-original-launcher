.class public Lcom/android/settings/AirplaneModeVoiceActivity;
.super Lcom/android/settings/utils/BaseVoiceSettingsActivity;
.source "AirplaneModeVoiceActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AirplaneModeVoiceActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/utils/BaseVoiceSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onVoiceSettingInteraction(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "airplane_mode_enabled"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "connectivity"

    .line 36
    invoke-virtual {p0, v1}, Lcom/android/settings/AirplaneModeVoiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "AirplaneModeVoiceActivity"

    const-string p1, "Missing airplane mode extra"

    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
