.class public Lcom/android/settings/wifi/WifiAPITest;
.super Lcom/android/settings/BaseActivity;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final KEY_DISABLE_NETWORK:Ljava/lang/String; = "disable_network"

.field private static final KEY_DISCONNECT:Ljava/lang/String; = "disconnect"

.field private static final KEY_ENABLE_NETWORK:Ljava/lang/String; = "enable_network"

.field private static final TAG:Ljava/lang/String; = "WifiAPITest"


# instance fields
.field private mWifiDisableNetwork:Lsmartisanos/widget/SettingItemText;

.field private mWifiDisconnect:Lsmartisanos/widget/SettingItemText;

.field private mWifiEnableNetwork:Lsmartisanos/widget/SettingItemText;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private netid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiAPITest;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/settings/wifi/WifiAPITest;->netid:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiAPITest;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/android/settings/wifi/WifiAPITest;->netid:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisconnect:Lsmartisanos/widget/SettingItemText;

    if-ne p1, v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisableNetwork:Lsmartisanos/widget/SettingItemText;

    const-string v1, "Cancel"

    const-string v2, "Ok"

    const-string v3, "Enter Network ID"

    const-string v4, "Input"

    const v5, 0x7f0b0009

    if-ne p1, v0, :cond_1

    .line 100
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPITest;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-direct {p1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 101
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 104
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 106
    new-instance v3, Lcom/android/settings/wifi/WifiAPITest$2;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wifi/WifiAPITest$2;-><init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    new-instance v0, Lcom/android/settings/wifi/WifiAPITest$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiAPITest$3;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiEnableNetwork:Lsmartisanos/widget/SettingItemText;

    if-ne p1, v0, :cond_2

    .line 124
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPITest;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-direct {p1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 125
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 126
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 128
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 130
    new-instance v3, Lcom/android/settings/wifi/WifiAPITest$4;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wifi/WifiAPITest$4;-><init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    new-instance v0, Lcom/android/settings/wifi/WifiAPITest$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiAPITest$5;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiAPITest;->requestWindowFeature(I)Z

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d034b

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiAPITest;->setContentView(I)V

    const p1, 0x7f0a0a0b

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiAPITest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/TitleBar;

    const v0, 0x20200a4

    .line 75
    invoke-virtual {p1, v0}, Lsmartisanos/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->mBackView:Landroid/widget/ImageView;

    .line 76
    iget-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->mBackView:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/settings/wifi/WifiAPITest$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiAPITest$1;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a024d

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiAPITest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisconnect:Lsmartisanos/widget/SettingItemText;

    .line 84
    iget-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisconnect:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a024b

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiAPITest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisableNetwork:Lsmartisanos/widget/SettingItemText;

    .line 86
    iget-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisableNetwork:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a02a4

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiAPITest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiEnableNetwork:Lsmartisanos/widget/SettingItemText;

    .line 88
    iget-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiEnableNetwork:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a032f

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiAPITest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    const p1, 0x7f0a0330

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiAPITest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    const-string p1, "wifi"

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiAPITest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method
