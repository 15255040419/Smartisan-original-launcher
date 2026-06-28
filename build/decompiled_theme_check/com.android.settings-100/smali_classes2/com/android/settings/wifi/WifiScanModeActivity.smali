.class public Lcom/android/settings/wifi/WifiScanModeActivity;
.super Landroid/app/Activity;
.source "WifiScanModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;
    }
.end annotation


# instance fields
.field private mApp:Ljava/lang/String;

.field private mDialog:Landroid/app/DialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiScanModeActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->doNegativeClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiScanModeActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->doPositiveClick()V

    return-void
.end method

.method private createDialog()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    .line 72
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v1, "dialog"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    :cond_0
    return-void
.end method

.method private doNegativeClick()V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiScanModeActivity;->setResult(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->finish()V

    return-void
.end method

.method private doPositiveClick()V
    .locals 3

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, -0x1

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiScanModeActivity;->setResult(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->finish()V

    return-void

    :cond_1
    const-string v0, "app"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    .line 66
    :catch_0
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->createDialog()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 104
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->dismissDialog()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->createDialog()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 98
    iget-object p0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    const-string v0, "app"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
