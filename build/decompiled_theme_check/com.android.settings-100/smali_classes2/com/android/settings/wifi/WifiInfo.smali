.class public Lcom/android/settings/wifi/WifiInfo;
.super Lcom/android/settings/BaseActivity;
.source "WifiInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mWifiApi:Lsmartisanos/widget/ListContentItemText;

.field private mWifiConfig:Lsmartisanos/widget/ListContentItemText;

.field private mWifiStatus:Lsmartisanos/widget/ListContentItemText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0a0a37

    if-eq p1, v1, :cond_2

    const v1, 0x7f0a0a3d

    if-eq p1, v1, :cond_1

    const v1, 0x7f0a0a54

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    const-class p1, Lcom/android/settings/wifi/WifiStatusTest;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 69
    :cond_1
    const-class p1, Lcom/android/settings/wifi/WifiConfigInfo;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 66
    :cond_2
    const-class p1, Lcom/android/settings/wifi/WifiAPITest;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiInfo;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d02f1

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiInfo;->setContentView(I)V

    const p1, 0x7f0a0a0b

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiInfo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/TitleBar;

    const v0, 0x20200a4

    .line 46
    invoke-virtual {p1, v0}, Lsmartisanos/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 47
    new-instance v0, Lcom/android/settings/wifi/WifiInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiInfo$1;-><init>(Lcom/android/settings/wifi/WifiInfo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0a37

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiInfo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemText;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiInfo;->mWifiApi:Lsmartisanos/widget/ListContentItemText;

    .line 54
    iget-object p1, p0, Lcom/android/settings/wifi/WifiInfo;->mWifiApi:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0a3d

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiInfo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemText;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiInfo;->mWifiConfig:Lsmartisanos/widget/ListContentItemText;

    .line 56
    iget-object p1, p0, Lcom/android/settings/wifi/WifiInfo;->mWifiConfig:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0a54

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiInfo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemText;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiInfo;->mWifiStatus:Lsmartisanos/widget/ListContentItemText;

    .line 58
    iget-object p1, p0, Lcom/android/settings/wifi/WifiInfo;->mWifiStatus:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
