.class public Lcom/android/settingslib/wifi/TestAccessPointBuilder;
.super Ljava/lang/Object;
.source "TestAccessPointBuilder.java"


# static fields
.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mCarrierName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mFqdn:Ljava/lang/String;

.field private mIsCarrierAp:Z

.field private mNetworkId:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mProviderFriendlyName:Ljava/lang/String;

.field private mRssi:I

.field private mScanResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScoredNetworkCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mSecurity:I

.field private mSpeed:I

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mBssid:Ljava/lang/String;

    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSpeed:I

    const/high16 v2, -0x80000000

    .line 49
    iput v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    const/4 v2, -0x1

    .line 50
    iput v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    const-string v2, "TestSsid"

    .line 51
    iput-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->ssid:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 53
    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mFqdn:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mProviderFriendlyName:Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSecurity:I

    .line 58
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mIsCarrierAp:Z

    .line 59
    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mCarrierName:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settingslib/wifi/AccessPoint;
    .locals 4

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 75
    iget v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 76
    iget-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mBssid:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->ssid:Ljava/lang/String;

    const-string v3, "key_ssid"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_config"

    .line 79
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    iget-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string v2, "key_networkinfo"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 81
    iget-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const-string v2, "key_wifiinfo"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    iget-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mFqdn:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "key_fqdn"

    .line 83
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mProviderFriendlyName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "key_provider_friendly_name"

    .line 86
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScanResults:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/Parcelable;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    const-string v2, "key_scanresults"

    .line 89
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScoredNetworkCache:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const-string v2, "key_scorednetworkcache"

    .line 93
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 95
    :cond_3
    iget v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSecurity:I

    const-string v2, "key_security"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    iget v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSpeed:I

    const-string v2, "key_speed"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    iget-boolean v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mIsCarrierAp:Z

    const-string v2, "key_is_carrier_ap"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    iget-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mCarrierName:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "key_carrier_name"

    .line 99
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_4
    new-instance v1, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 103
    iget p0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    invoke-virtual {v1, p0}, Lcom/android/settingslib/wifi/AccessPoint;->setRssi(I)V

    return-object v1
.end method

.method public setActive(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 2

    if-eqz p1, :cond_0

    .line 110
    new-instance p1, Landroid/net/NetworkInfo;

    const-string v0, "TestNetwork"

    const/16 v1, 0x8

    invoke-direct {p1, v1, v1, v0, v0}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    :goto_0
    return-object p0
.end method

.method public setBssid(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mBssid:Ljava/lang/String;

    return-object p0
.end method

.method public setCarrierName(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mCarrierName:Ljava/lang/String;

    return-object p0
.end method

.method public setFqdn(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mFqdn:Ljava/lang/String;

    return-object p0
.end method

.method public setIsCarrierAp(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0

    .line 240
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mIsCarrierAp:Z

    return-object p0
.end method

.method public setLevel(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 2

    if-nez p1, :cond_0

    const/16 p1, -0x64

    .line 131
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    const/16 p1, -0x37

    .line 133
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    goto :goto_0

    :cond_1
    const/high16 v0, 0x42340000    # 45.0f

    const/high16 v1, 0x40800000    # 4.0f

    int-to-float p1, p1

    mul-float/2addr p1, v0

    div-float/2addr p1, v1

    const/high16 v0, -0x3d380000    # -100.0f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 137
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    :goto_0
    return-object p0
.end method

.method public setNetworkId(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0

    .line 225
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    return-object p0
.end method

.method public setNetworkInfo(Landroid/net/NetworkInfo;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public setProviderFriendlyName(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mProviderFriendlyName:Ljava/lang/String;

    return-object p0
.end method

.method public setReachable(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 1

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_0

    .line 168
    iget p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    if-ne p1, v0, :cond_1

    const/16 p1, -0x64

    .line 169
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    goto :goto_0

    .line 172
    :cond_0
    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setRssi(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0

    .line 150
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    return-object p0
.end method

.method public setSaved(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 180
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 182
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    :goto_0
    return-object p0
.end method

.method public setScanResults(Ljava/util/ArrayList;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Lcom/android/settingslib/wifi/TestAccessPointBuilder;"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScanResults:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setScoredNetworkCache(Ljava/util/ArrayList;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;)",
            "Lcom/android/settingslib/wifi/TestAccessPointBuilder;"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScoredNetworkCache:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setSecurity(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0

    .line 189
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSecurity:I

    return-object p0
.end method

.method public setSpeed(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0

    .line 155
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSpeed:I

    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->ssid:Ljava/lang/String;

    return-object p0
.end method

.method public setWifiInfo(Landroid/net/wifi/WifiInfo;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method
