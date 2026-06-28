.class public Lcom/android/settings/wifi/AccessPointInfo;
.super Ljava/lang/Object;
.source "AccessPointInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/wifi/AccessPointInfo;",
        ">;"
    }
.end annotation


# static fields
.field protected static final EXTRA_DETAILED_STATE:Ljava/lang/String; = "extra_detailed_state"

.field protected static final EXTRA_PSK_TYPE:Ljava/lang/String; = "extra_psk_type"

.field protected static final EXTRA_WIFI_CONFIGURATION:Ljava/lang/String; = "extra_wifi_configuration"

.field protected static final EXTRA_WIFI_INFO:Ljava/lang/String; = "extra_wifi_info"

.field public static final HIGHER_FREQ_24GHZ:I = 0x9c4

.field public static final HIGHER_FREQ_5GHZ:I = 0x170c

.field private static final KEY_CONFIG:Ljava/lang/String; = "key_config"

.field private static final KEY_DETAILEDSTATE:Ljava/lang/String; = "key_detailedstate"

.field private static final KEY_SCANRESULT:Ljava/lang/String; = "key_scanresult"

.field private static final KEY_WIFIINFO:Ljava/lang/String; = "key_wifiinfo"

.field public static final LOWER_FREQ_24GHZ:I = 0x960

.field public static final LOWER_FREQ_5GHZ:I = 0x1324

.field static final SECURITY_EAP:I = 0x3

.field public static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WAPI_CERT:I = 0x5

.field static final SECURITY_WAPI_PSK:I = 0x4

.field static final SECURITY_WEP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AccessPointInfo"

.field private static mConnectedAccessPointRssi:I = -0xc8


# instance fields
.field bssid:Ljava/lang/String;

.field isAutoConnected:Z

.field isTrusted:Z

.field public mConfig:Landroid/net/wifi/WifiConfiguration;

.field mInfo:Landroid/net/wifi/WifiInfo;

.field public mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mSeen:J

.field public mState:Landroid/net/NetworkInfo$DetailedState;

.field needLogin:Z

.field public networkId:I

.field pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

.field public security:I

.field public ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/ScanResult;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->networkId:I

    .line 75
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    const v0, 0x7fffffff

    .line 80
    iput v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    const-wide/16 v0, 0x0

    .line 81
    iput-wide v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mSeen:J

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointInfo;->loadResult(Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->networkId:I

    .line 75
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    const v0, 0x7fffffff

    .line 80
    iput v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    const-wide/16 v0, 0x0

    .line 81
    iput-wide v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mSeen:J

    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointInfo;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;
    .locals 3

    .line 194
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPA-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 195
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WPA2-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 197
    sget-object p0, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    return-object p0

    :cond_0
    if-eqz v1, :cond_1

    .line 199
    sget-object p0, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    .line 201
    sget-object p0, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA:Lcom/android/settings/wifi/AccessPoint$PskType;

    return-object p0

    .line 203
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received abnormal flag string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccessPointInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object p0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    return-object p0
.end method

.method public static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2

    .line 142
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 144
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x5

    return p0

    .line 146
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 148
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x2

    return p0

    .line 150
    :cond_3
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "EAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5

    .line 117
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    .line 118
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 122
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    .line 125
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 126
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {}, Lcom/android/settings/MultiSDKAdapterNew;->getWapiPskValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    return v3

    .line 133
    :cond_4
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {}, Lcom/android/settings/MultiSDKAdapterNew;->getWapiCertValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v2
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 209
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->ssid:Ljava/lang/String;

    .line 210
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->bssid:Ljava/lang/String;

    .line 211
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPointInfo;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->security:I

    .line 212
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->networkId:I

    const v0, 0x7fffffff

    .line 213
    iput v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    .line 214
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsmartisanos/api/WifiConfigurationSmt;->get_isTrustedAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->isTrusted:Z

    .line 215
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsmartisanos/api/WifiConfigurationSmt;->get_needLogin(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->needLogin:Z

    .line 216
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsmartisanos/api/WifiConfigurationSmt;->get_autoConnect(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->isAutoConnected:Z

    .line 217
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointInfo;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 4

    .line 101
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->ssid:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->bssid:Ljava/lang/String;

    .line 103
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPointInfo;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->security:I

    .line 106
    iget v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 107
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPointInfo;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    :cond_0
    const/4 v0, -0x1

    .line 108
    iput v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->networkId:I

    .line 109
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    .line 110
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointInfo;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 111
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v2, p0, Lcom/android/settings/wifi/AccessPointInfo;->mSeen:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 112
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mSeen:J

    :cond_1
    return-void
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 345
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    .line 346
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    sub-int/2addr v0, v1

    .line 347
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 348
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static updateConnectedAccessPointRssi(I)V
    .locals 0

    .line 316
    sput p0, Lcom/android/settings/wifi/AccessPointInfo;->mConnectedAccessPointRssi:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/wifi/AccessPointInfo;)I
    .locals 4

    .line 256
    instance-of v0, p1, Lcom/android/settings/wifi/AccessPointInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mInfo:Landroid/net/wifi/WifiInfo;

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/settings/wifi/AccessPointInfo;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_1

    return v2

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/settings/wifi/AccessPointInfo;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_2

    return v1

    .line 265
    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_3

    iget v0, p1, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    if-ne v0, v3, :cond_3

    return v2

    .line 266
    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    if-ne v0, v3, :cond_4

    iget v0, p1, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    if-eq v0, v3, :cond_4

    return v1

    .line 267
    :cond_4
    iget v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    if-ne v0, v3, :cond_5

    iget v0, p1, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    if-eq v0, v3, :cond_5

    return v1

    .line 270
    :cond_5
    iget v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->networkId:I

    if-eq v0, v2, :cond_6

    iget v0, p1, Lcom/android/settings/wifi/AccessPointInfo;->networkId:I

    if-ne v0, v2, :cond_6

    return v2

    .line 272
    :cond_6
    iget v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->networkId:I

    if-ne v0, v2, :cond_7

    iget v0, p1, Lcom/android/settings/wifi/AccessPointInfo;->networkId:I

    if-eq v0, v2, :cond_7

    return v1

    .line 276
    :cond_7
    iget v0, p1, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    iget v1, p0, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 281
    :cond_8
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointInfo;->ssid:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/wifi/AccessPointInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/android/settings/wifi/AccessPointInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPointInfo;->compareTo(Lcom/android/settings/wifi/AccessPointInfo;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 287
    instance-of v0, p1, Lcom/android/settings/wifi/AccessPointInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 288
    :cond_0
    check-cast p1, Lcom/android/settings/wifi/AccessPointInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPointInfo;->compareTo(Lcom/android/settings/wifi/AccessPointInfo;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public equalsTo(Ljava/lang/Object;)Z
    .locals 3

    .line 292
    instance-of v0, p1, Lcom/android/settings/wifi/AccessPointInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 294
    :cond_0
    check-cast p1, Lcom/android/settings/wifi/AccessPointInfo;

    .line 296
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->ssid:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/wifi/AccessPointInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 297
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->security:I

    iget v2, p1, Lcom/android/settings/wifi/AccessPointInfo;->security:I

    if-eq v0, v2, :cond_2

    return v1

    .line 299
    :cond_2
    iget p0, p0, Lcom/android/settings/wifi/AccessPointInfo;->networkId:I

    iget p1, p1, Lcom/android/settings/wifi/AccessPointInfo;->networkId:I

    if-eq p0, p1, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public generateOpenNetworkConfig()V
    .locals 2

    .line 373
    iget v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->security:I

    if-nez v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    return-void

    .line 377
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 378
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointInfo;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 379
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    return-void

    .line 374
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method public getLevel()I
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/wifi/AccessPointInfo;->mConnectedAccessPointRssi:I

    const/16 v2, -0xc8

    if-eq v0, v2, :cond_0

    .line 322
    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p0

    return p0

    .line 324
    :cond_0
    iget p0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 327
    :cond_1
    invoke-static {p0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p0

    return p0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 5

    .line 157
    invoke-static {}, Lcom/android/settings/SettingsApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    iget v1, p0, Lcom/android/settings/wifi/AccessPointInfo;->security:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_3

    const/4 p0, 0x4

    if-eq v1, p0, :cond_2

    const/4 p0, 0x5

    if-eq v1, p0, :cond_1

    if-eqz p1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const p0, 0x7f12186d

    .line 189
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const p0, 0x7f12187b

    .line 185
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p0, 0x7f12187c

    .line 183
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz p1, :cond_4

    const p0, 0x7f121873

    .line 160
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    const p0, 0x7f12186c

    .line 161
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    .line 163
    :cond_5
    sget-object v1, Lcom/android/settings/wifi/AccessPointInfo$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointInfo;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint$PskType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    if-eq p0, v2, :cond_b

    if-eq p0, v4, :cond_9

    if-eq p0, v3, :cond_7

    if-eqz p1, :cond_6

    const p0, 0x7f121875

    .line 175
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    const p0, 0x7f121870

    .line 176
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_7
    if-eqz p1, :cond_8

    const p0, 0x7f12187a

    .line 171
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_8
    const p0, 0x7f121882

    .line 172
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_9
    if-eqz p1, :cond_a

    const p0, 0x7f121879

    .line 168
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_a
    const p0, 0x7f121881

    .line 169
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_4
    return-object p0

    :cond_b
    if-eqz p1, :cond_c

    const p0, 0x7f121878

    .line 165
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_c
    const p0, 0x7f121880

    .line 166
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_5
    return-object p0

    :cond_d
    if-eqz p1, :cond_e

    const p0, 0x7f121877

    .line 179
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_e
    const p0, 0x7f12187f

    .line 180
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_6
    return-object p0
.end method

.method public getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    add-int/2addr v1, v0

    .line 308
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    mul-int/lit8 v0, v0, 0x13

    add-int/2addr v1, v0

    .line 309
    iget v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->networkId:I

    mul-int/lit8 v0, v0, 0x17

    add-int/2addr v1, v0

    .line 310
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1d

    add-int/2addr v1, p0

    return v1
.end method

.method public isSaved()Z
    .locals 1

    .line 221
    iget p0, p0, Lcom/android/settings/wifi/AccessPointInfo;->networkId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, "key_config"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 359
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mScanResult:Landroid/net/wifi/ScanResult;

    const-string v1, "key_scanresult"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mInfo:Landroid/net/wifi/WifiInfo;

    const-string v1, "key_wifiinfo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 361
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz p0, :cond_0

    .line 362
    invoke-virtual {p0}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "key_detailedstate"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 225
    iget v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 226
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    .line 228
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointInfo;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 229
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_0

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointInfo;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 231
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointInfo;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 232
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    :cond_1
    :goto_0
    return-void
.end method

.method public update(Landroid/net/wifi/ScanResult;)Z
    .locals 4

    .line 237
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v2, p0, Lcom/android/settings/wifi/AccessPointInfo;->mSeen:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 238
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mSeen:J

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->security:I

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPointInfo;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 242
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p0, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    if-lez v0, :cond_1

    .line 243
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    .line 246
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/AccessPointInfo;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 247
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPointInfo;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointInfo;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
