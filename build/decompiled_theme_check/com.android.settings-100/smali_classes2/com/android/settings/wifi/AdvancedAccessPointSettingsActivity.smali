.class public Lcom/android/settings/wifi/AdvancedAccessPointSettingsActivity;
.super Lcom/android/settings/MainSettings;
.source "AdvancedAccessPointSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/android/settings/MainSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindFragment()Lme/yokeyword/fragmentation/ISupportFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lme/yokeyword/fragmentation/ISupportFragment;",
            ">()TT;"
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 17
    new-instance v0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;-><init>()V

    .line 18
    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    .line 21
    :cond_0
    new-instance p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;-><init>()V

    return-object p0
.end method
