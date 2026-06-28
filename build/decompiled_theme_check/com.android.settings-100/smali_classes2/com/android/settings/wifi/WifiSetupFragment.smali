.class public Lcom/android/settings/wifi/WifiSetupFragment;
.super Lcom/android/settings/SupportFragment;
.source "WifiSetupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final INTENT_EXTRA_CMCC_SETUP:Ljava/lang/String; = "cmcc"

.field protected static final INTENT_EXTRA_SETUP_ACCESS_POINT:Ljava/lang/String; = "access_point"

.field protected static final INTENT_EXTRA_SETUP_EDIT:Ljava/lang/String; = "edit"

.field protected static final INTENT_EXTRA_SETUP_INVALID_NETWORK:Ljava/lang/String; = "invalid_network"

.field protected static final INTENT_EXTRA_SETUP_TEXT_IS_SELECTABLE:Ljava/lang/String; = "text_is_selectable"

.field private static final MSG_MATCH_SCAN_RESULT:I = 0x64


# instance fields
.field private mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mCmccModified:Z

.field mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mController:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

.field private mEdit:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSetupWizardMode:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTextIsSelectable:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private matchResultHandler:Landroid/os/Handler;

.field private oldAnimator:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

.field private scanCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/android/settings/SupportFragment;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mEdit:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mTextIsSelectable:Z

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 84
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mCmccModified:Z

    .line 86
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 92
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->oldAnimator:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    .line 94
    new-instance v0, Lcom/android/settings/wifi/WifiSetupFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSetupFragment$1;-><init>(Lcom/android/settings/wifi/WifiSetupFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->matchResultHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSetupFragment;)Lcom/android/settings/wifi/WifiConfigControllerForSetup;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mController:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiSetupFragment;Landroid/net/wifi/WifiConfiguration;)I
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSetupFragment;->findNetworkId(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiSetupFragment;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSetupFragment;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiSetupFragment;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->finish()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiSetupFragment;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->finish()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiSetupFragment;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->finish()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiSetupFragment;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSetupFragment;->matchScanResult(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiSetupFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->scanCount:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiSetupFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->forceScan()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiSetupFragment;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiSetupFragment;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiSetupFragment;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->finish()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiSetupFragment;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->finish()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiSetupFragment;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->finish()V

    return-void
.end method

.method private disableAdvancedToggleBox()V
    .locals 1

    .line 431
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0a35

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lsmartisanos/widget/ListContentItemText;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsmartisanos/widget/ListContentItemText;->setEnabled(Z)V

    return-void
.end method

.method private findNetworkId(Landroid/net/wifi/WifiConfiguration;)I
    .locals 4

    .line 389
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 391
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 394
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 395
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 396
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 399
    iget p0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private forceScan()V
    .locals 3

    const-wide/16 v0, 0x3e8

    .line 422
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSetupFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    return-void
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 315
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 317
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "supplicantError"

    .line 318
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 319
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mController:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->enableSubmitIfAppropriate()V

    goto/16 :goto_1

    :cond_0
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 323
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "networkInfo"

    .line 325
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 326
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "wifiInfo"

    .line 327
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 328
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mController:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 329
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiInfo;

    .line 330
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 332
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mCmccModified:Z

    if-eqz v1, :cond_1

    return-void

    .line 334
    :cond_1
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    if-ne v1, p1, :cond_2

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->finish()V

    goto :goto_1

    .line 336
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 337
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 336
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->finish()V

    goto :goto_1

    :cond_4
    const-string p2, "android.net.wifi.SCAN_RESULTS"

    .line 342
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 343
    iget p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->scanCount:I

    if-lez p1, :cond_5

    .line 344
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->matchResultHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 345
    iget p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->scanCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->scanCount:I

    :cond_5
    :goto_1
    return-void
.end method

.method private initialize()V
    .locals 5

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "access_point"

    .line 129
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 131
    new-instance v3, Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSetupFragment;->_mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v1}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const-string v1, "invalid_network"

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v3, -0x1

    iput v3, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    :cond_0
    const-string v1, "edit"

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mEdit:Z

    const-string v1, "text_is_selectable"

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mTextIsSelectable:Z

    const-string v1, "cmcc"

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mCmccModified:Z

    return-void
.end method

.method private isWifiConnected()Z
    .locals 1

    const-string v0, "connectivity"

    .line 294
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 296
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private matchScanResult(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    .line 407
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 409
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 410
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private showSwitchConfirmDialog(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 6

    .line 267
    new-instance v0, Lcom/android/settings/HandInHandProcessor;

    invoke-direct {v0}, Lcom/android/settings/HandInHandProcessor;-><init>()V

    .line 268
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/settings/HandInHandProcessor;->isHandInHandle(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 269
    new-instance v3, Lcom/android/settings/wifi/WifiSetupFragment$5;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiSetupFragment$5;-><init>(Lcom/android/settings/wifi/WifiSetupFragment;)V

    new-instance v4, Lcom/android/settings/wifi/WifiSetupFragment$6;

    invoke-direct {v4, p0, p2, p3}, Lcom/android/settings/wifi/WifiSetupFragment$6;-><init>(Lcom/android/settings/wifi/WifiSetupFragment;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    new-instance v5, Lcom/android/settings/wifi/WifiSetupFragment$7;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSetupFragment$7;-><init>(Lcom/android/settings/wifi/WifiSetupFragment;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/HandInHandProcessor;->showDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2, p3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->finish()V

    :goto_0
    return-void
.end method

.method private submit()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mController:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_1

    .line 303
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mCmccModified:Z

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/wifi/WifiSetupFragment;->showSwitchConfirmDialog(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    const/4 v0, 0x3

    .line 309
    iput v0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->scanCount:I

    .line 310
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->forceScan()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->_mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public getSubmitButton()Landroid/view/View;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 168
    invoke-super {p0, p1}, Lcom/android/settings/SupportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "wifi"

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSetupFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 172
    new-instance p1, Lcom/android/settings/wifi/WifiSetupFragment$2;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/WifiSetupFragment$2;-><init>(Lcom/android/settings/wifi/WifiSetupFragment;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 184
    new-instance p1, Lcom/android/settings/wifi/WifiSetupFragment$3;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/WifiSetupFragment$3;-><init>(Lcom/android/settings/wifi/WifiSetupFragment;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->getFragmentAnimator()Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->oldAnimator:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    if-ne p1, v0, :cond_0

    .line 241
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsmartisanos/widget/SmartisanButton;->setEnabled(Z)V

    .line 242
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 243
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->disableAdvancedToggleBox()V

    .line 244
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->submit()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 202
    invoke-super {p0, p1}, Lcom/android/settings/SupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 204
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mIntentFilter:Landroid/content/IntentFilter;

    .line 205
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    new-instance p1, Lcom/android/settings/wifi/WifiSetupFragment$4;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/WifiSetupFragment$4;-><init>(Lcom/android/settings/wifi/WifiSetupFragment;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isDeviceSetupComplete(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mSetupWizardMode:Z

    .line 216
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mSetupWizardMode:Z

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 218
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mContext:Landroid/content/Context;

    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatusBarManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 p1, 0x1210000

    .line 221
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {p0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 147
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d0362

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mRootView:Landroid/view/View;

    .line 149
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mRootView:Landroid/view/View;

    const p2, 0x7f0a06e7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/editor/LabelEditor;

    const/4 p2, 0x1

    .line 150
    invoke-virtual {p1, p2}, Lsmartisanos/widget/editor/LabelEditor;->setEditorType(I)V

    .line 151
    invoke-static {p1}, Lcom/android/settings/wifi/Utils;->setRequestFocusForLabelEditorLeftContainer(Lsmartisanos/widget/editor/LabelEditor;)V

    .line 152
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->initialize()V

    .line 153
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 359
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onDestroy()V

    .line 360
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->matchResultHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mController:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->finish()V

    .line 364
    :cond_0
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 365
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mSetupWizardMode:Z

    if-eqz v0, :cond_1

    .line 366
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->oldAnimator:Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupFragment;->setFragmentAnimator(Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V

    .line 375
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onDestroyView()V

    return-void
.end method

.method public onEnterAnimationEnd(Landroid/os/Bundle;)V
    .locals 1

    .line 256
    invoke-super {p0, p1}, Lcom/android/settings/SupportFragment;->onEnterAnimationEnd(Landroid/os/Bundle;)V

    .line 258
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 259
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->TAG:Ljava/lang/String;

    const-string v0, "hide InputMethod for wapi cert type"

    invoke-static {p1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mController:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->showSoftKeyguard(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public onFragmentResult(IILandroid/os/Bundle;)V
    .locals 0

    .line 380
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SupportFragment;->onFragmentResult(IILandroid/os/Bundle;)V

    if-eqz p3, :cond_0

    const-string p1, "extra_ap_configuration"

    .line 382
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mConfig:Landroid/net/wifi/WifiConfiguration;

    :cond_0
    return-void
.end method

.method public onSupportInvisible()V
    .locals 1

    .line 352
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportInvisible()V

    .line 353
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupFragment;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 354
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->_mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/android/settings/Utils;->hideInputMethod(Landroid/app/Activity;)V

    return-void
.end method

.method public onSupportVisible()V
    .locals 2

    .line 250
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportVisible()V

    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSetupFragment;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 158
    invoke-super {p0, p1, p2}, Lcom/android/settings/SupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 159
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    const/4 p2, 0x4

    const v0, 0x7f121858

    invoke-virtual {p1, p2, v0}, Lsmartisanos/widget/TitleBar;->addRightButton(II)Lsmartisanos/widget/SmartisanButton;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    .line 160
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SmartisanButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    new-instance p1, Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mEdit:Z

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mTextIsSelectable:Z

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;-><init>(Lcom/android/settings/wifi/WifiSetupFragment;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mController:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    .line 163
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mController:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->enableSubmitIfAppropriate()V

    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisanos/widget/SmartisanButton;->setButtonText(Ljava/lang/String;)V

    return-void
.end method
