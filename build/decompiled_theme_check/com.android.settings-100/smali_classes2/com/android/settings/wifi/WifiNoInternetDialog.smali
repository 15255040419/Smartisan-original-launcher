.class public final Lcom/android/settings/wifi/WifiNoInternetDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiNoInternetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiNoInternetDialog"


# instance fields
.field private mAlwaysAllow:Landroid/widget/CheckBox;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/net/Network;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method private createDialog()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const v1, 0x7f080233

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 119
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v1, 0x7f120d60

    .line 120
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v1, 0x7f121947

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const v1, 0x7f120d51

    .line 122
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 123
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 124
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090036

    const/4 v3, 0x0

    .line 127
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 129
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v0, 0x10201d8

    .line 131
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlwaysAllow:Landroid/widget/CheckBox;

    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlwaysAllow:Landroid/widget/CheckBox;

    const v1, 0x7f120d5f

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->setupAlert()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "Connect"

    goto :goto_1

    :cond_1
    const-string v1, "Ignore"

    .line 149
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlwaysAllow:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v3, -0x2

    if-eq p2, v3, :cond_2

    if-eq p2, p1, :cond_2

    goto :goto_3

    .line 154
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, p2, v0, v2}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " network="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    const-string p0, " and remember"

    goto :goto_2

    :cond_3
    const-string p0, ""

    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiNoInternetDialog"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 53
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "WifiNoInternetDialog"

    if-eqz p1, :cond_5

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.PROMPT_UNVALIDATED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "netId"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 65
    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/Network;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/net/Network;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    if-nez v1, :cond_1

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t determine network from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' , exiting"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->finish()V

    return-void

    .line 78
    :cond_1
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 79
    new-instance v1, Lcom/android/settings/wifi/WifiNoInternetDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiNoInternetDialog$1;-><init>(Lcom/android/settings/wifi/WifiNoInternetDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const-string v1, "connectivity"

    .line 98
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    .line 99
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, p1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 101
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 102
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    .line 108
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string v0, "^\"|\"$"

    const-string v1, ""

    .line 109
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    .line 112
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->createDialog()V

    return-void

    .line 103
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->finish()V

    return-void

    .line 59
    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", exiting"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 143
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method
