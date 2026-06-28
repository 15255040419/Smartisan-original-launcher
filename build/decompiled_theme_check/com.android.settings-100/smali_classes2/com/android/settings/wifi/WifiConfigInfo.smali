.class public Lcom/android/settings/wifi/WifiConfigInfo;
.super Lcom/android/settings/BaseActivity;
.source "WifiConfigInfo.java"


# instance fields
.field private mConfigList:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "wifi"

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiConfigInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    const p1, 0x7f0d034d

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiConfigInfo;->setContentView(I)V

    const p1, 0x7f0a01d2

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiConfigInfo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mConfigList:Landroid/widget/TextView;

    .line 50
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mTitle:Lsmartisanos/widget/TitleBar;

    const v0, 0x20200a4

    invoke-virtual {p1, v0}, Lsmartisanos/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mBackView:Landroid/widget/ImageView;

    .line 51
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mBackView:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/settings/wifi/WifiConfigInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigInfo$1;-><init>(Lcom/android/settings/wifi/WifiConfigInfo;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 61
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->onResume()V

    .line 62
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 69
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    .line 71
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mConfigList:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 75
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mConfigList:Landroid/widget/TextView;

    const v0, 0x7f1218c1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    return-void
.end method
