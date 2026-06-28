.class public Lcom/android/settings/wifi/WifiDialogActivity;
.super Landroid/app/Activity;
.source "WifiDialogActivity.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final KEY_ACCESS_POINT_STATE:Ljava/lang/String; = "access_point_state"

.field private static final KEY_WIFI_CONFIGURATION:Ljava/lang/String; = "wifi_configuration"

.field private static final RESULT_CONNECTED:I = 0x1

.field private static final RESULT_FORGET:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WifiDialogActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/wifi/WifiDialogActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->isSetupWizardIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTransparentTheme(Landroid/content/Intent;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDialogActivity;->setTheme(I)V

    .line 48
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "access_point_state"

    .line 50
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 53
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 56
    :cond_1
    new-instance p1, Lcom/android/settings/wifi/WifiDialog;

    const/4 v1, 0x1

    invoke-direct {p1, p0, p0, v0, v1}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settings/wifi/AccessPoint;I)V

    .line 57
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 58
    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/WifiDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->finish()V

    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 2

    .line 69
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialogActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 70
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settings/wifi/AccessPoint;

    move-result-object p1

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    .line 89
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 90
    invoke-virtual {p1, v1}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    const-string p1, "access_point_state"

    .line 91
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const/4 p1, 0x2

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiDialogActivity;->setResult(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->finish()V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 4

    .line 99
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 100
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settings/wifi/AccessPoint;

    move-result-object p1

    .line 101
    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDialogActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 116
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_2

    .line 118
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 119
    invoke-virtual {p1, v2}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    const-string p1, "access_point_state"

    .line 120
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    if-eqz v0, :cond_3

    const-string p1, "wifi_configuration"

    .line 123
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    const/4 p1, 0x1

    .line 125
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/wifi/WifiDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->finish()V

    return-void
.end method
