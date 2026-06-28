.class public Lcom/android/settings/wifi/WifiPickerActivity;
.super Lcom/android/settings/MainSettings;
.source "WifiPickerActivity.java"


# static fields
.field public static final REQ_ACTIVATE:I = 0x2

.field public static final REQ_VERIFY_PASSWORD:I = 0x3

.field private static final REQ_WIZARD_COMPLETE:I = 0x1


# instance fields
.field private mConnService:Landroid/net/ConnectivityManager;

.field private mSetupWizardMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/MainSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindFragment()Lme/yokeyword/fragmentation/ISupportFragment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lme/yokeyword/fragmentation/ISupportFragment;",
            ">()TT;"
        }
    .end annotation

    .line 53
    new-instance p0, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    return-object p0
.end method

.method public gotoNextPage()V
    .locals 4

    .line 71
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mSetupWizardMode:Z

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isDataTransferEnabled()Z

    move-result v1

    const-string v2, "com.smartisanos.setupwizard"

    if-eqz v1, :cond_0

    const-string v1, "com.smartisanos.setupwizard.PhoneDataTransferWizardActivity"

    .line 74
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "com.smartisanos.setupwizard.OneHandModeSettingsActivity"

    .line 77
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 80
    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/wifi/WifiPickerActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiPickerActivity$1;-><init>(Lcom/android/settings/wifi/WifiPickerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPickerActivity;->setResult(I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->finish()V

    :goto_1
    return-void
.end method

.method public isNetworkAvailable()Z
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetupWizardMode()Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mSetupWizardMode:Z

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/MainSettings;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPickerActivity;->setResult(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->finish()V

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x3

    if-ne p1, v0, :cond_4

    if-eqz p3, :cond_3

    const-string p1, "result"

    .line 106
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "uid"

    .line 112
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string p3, "account"

    .line 113
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v4, 0x0

    cmp-long p3, v4, v2

    if-nez p3, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->gotoNextPage()V

    goto :goto_1

    .line 117
    :cond_2
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 118
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.smartisanos.cloudsync"

    const-string v5, "com.smartisanos.cloudsync.CheckPasswordActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "check_from"

    .line 119
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "account_uid"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f1206d7

    .line 122
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "custom_title"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f1206c8

    new-array v3, p2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 123
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/WifiPickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "custom_message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "params_data"

    .line 124
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 125
    invoke-static {p0, p3, p2, v1}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    goto :goto_1

    .line 107
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->gotoNextPage()V

    return-void

    :cond_4
    if-ne p1, v1, :cond_5

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->gotoNextPage()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/MainSettings;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_smartisan_setupwizard"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/settings/Utils;->getBooleanExtraSafely(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mSetupWizardMode:Z

    const-string p1, "connectivity"

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mConnService:Landroid/net/ConnectivityManager;

    .line 61
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiPickerActivity;->mSetupWizardMode:Z

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->setupReceiver()V

    :cond_0
    return-void
.end method
