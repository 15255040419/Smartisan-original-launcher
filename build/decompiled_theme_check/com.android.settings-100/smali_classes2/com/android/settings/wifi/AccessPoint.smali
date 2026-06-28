.class public Lcom/android/settings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field protected static final EXTRA_DETAILED_STATE:Ljava/lang/String; = "extra_detailed_state"

.field protected static final EXTRA_PSK_TYPE:Ljava/lang/String; = "extra_psk_type"

.field protected static final EXTRA_WIFI_CONFIGURATION:Ljava/lang/String; = "extra_wifi_configuration"

.field protected static final EXTRA_WIFI_INFO:Ljava/lang/String; = "extra_wifi_info"

.field public static final HIGHER_FREQ_24GHZ:I = 0x9c4

.field public static final HIGHER_FREQ_5GHZ:I = 0x170c

.field public static final INVALID_BG_RES:I = -0x1

.field public static final ITEM_BG_BOTTOM:I = 0x7f08046b

.field public static final ITEM_BG_MIDDLE:I = 0x7f08046c

.field public static final ITEM_BG_SINGLE:I = 0x7f08046d

.field public static final ITEM_BG_TOP:I = 0x7f08046f

.field private static final KEY_CONFIG:Ljava/lang/String; = "key_config"

.field private static final KEY_DETAILEDSTATE:Ljava/lang/String; = "key_detailedstate"

.field private static final KEY_SCANRESULT:Ljava/lang/String; = "key_scanresult"

.field private static final KEY_WIFIINFO:Ljava/lang/String; = "key_wifiinfo"

.field public static final LOWER_FREQ_24GHZ:I = 0x960

.field public static final LOWER_FREQ_5GHZ:I = 0x1324

.field public static final SECURITY_EAP:I = 0x3

.field public static final SECURITY_NONE:I = 0x0

.field public static final SECURITY_PSK:I = 0x2

.field public static final SECURITY_WAPI_CERT:I = 0x5

.field public static final SECURITY_WAPI_PSK:I = 0x4

.field public static final SECURITY_WEP:I = 0x1

.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field static final TAG:Ljava/lang/String; = "Settings.AccessPoint"

.field private static mConnectedAccessPointRssi:I = -0xc8


# instance fields
.field private accessPointInfo:Landroid/widget/ImageView;

.field bssid:Ljava/lang/String;

.field isAutoConnected:Z

.field isTrusted:Z

.field private mBackgroundId:I

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mSeen:J

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mTrustedLabelStub:Landroid/view/ViewStub;

.field needLogin:Z

.field public networkId:I

.field pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

.field public security:I

.field showSummary:Z

.field public ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f040186

    aput v2, v0, v1

    .line 76
    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    new-array v0, v1, [I

    .line 79
    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 2

    .line 231
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 116
    iput p1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 p1, 0x1

    .line 117
    iput-boolean p1, p0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 119
    sget-object p1, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    const p1, 0x7fffffff

    .line 124
    iput p1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const-wide/16 v0, 0x0

    .line 125
    iput-wide v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    const p1, 0x7f08046c

    .line 262
    iput p1, p0, Lcom/android/settings/wifi/AccessPoint;->mBackgroundId:I

    .line 232
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 226
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 116
    iput p1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 p1, 0x1

    .line 117
    iput-boolean p1, p0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 119
    sget-object p1, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    const p1, 0x7fffffff

    .line 124
    iput p1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const-wide/16 v0, 0x0

    .line 125
    iput-wide v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    const p1, 0x7f08046c

    .line 262
    iput p1, p0, Lcom/android/settings/wifi/AccessPoint;->mBackgroundId:I

    .line 227
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .line 236
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 116
    iput p1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 119
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    const v0, 0x7fffffff

    .line 124
    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const-wide/16 v0, 0x0

    .line 125
    iput-wide v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    const v0, 0x7f08046c

    .line 262
    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mBackgroundId:I

    const-string v0, "key_config"

    .line 238
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    :cond_0
    const-string v0, "key_scanresult"

    .line 242
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 243
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 244
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    :cond_1
    const-string v0, "key_wifiinfo"

    .line 246
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    const-string v0, "key_detailedstate"

    .line 247
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 250
    :cond_2
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    return-void
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 513
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

    .line 211
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPA-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 212
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WPA2-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 214
    sget-object p0, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    return-object p0

    :cond_0
    if-eqz v1, :cond_1

    .line 216
    sget-object p0, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    .line 218
    sget-object p0, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA:Lcom/android/settings/wifi/AccessPoint$PskType;

    return-object p0

    .line 220
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received abnormal flag string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Settings.AccessPoint"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object p0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    return-object p0
.end method

.method static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2

    .line 159
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 161
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x5

    return p0

    .line 163
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 165
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x2

    return p0

    .line 167
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

.method public static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5

    .line 135
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 139
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    .line 142
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 143
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {}, Lcom/android/settings/MultiSDKAdapterNew;->getWapiPskValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    return v3

    .line 150
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

    .line 269
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 270
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 271
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 272
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const v0, 0x7fffffff

    .line 273
    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 274
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsmartisanos/api/WifiConfigurationSmt;->get_isTrustedAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->isTrusted:Z

    .line 275
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsmartisanos/api/WifiConfigurationSmt;->get_needLogin(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->needLogin:Z

    .line 276
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsmartisanos/api/WifiConfigurationSmt;->get_autoConnect(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->isAutoConnected:Z

    .line 277
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 4

    .line 281
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 282
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 283
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 286
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 287
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    :cond_0
    const/4 v0, -0x1

    .line 288
    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 289
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 290
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 291
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v2, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 292
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    :cond_1
    return-void
.end method

.method private refresh()V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v1, :cond_1

    .line 535
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    .line 536
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 540
    :cond_1
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    const v1, 0x7f121833

    .line 541
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 543
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_3

    const v1, 0x7f121855

    .line 544
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 548
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 549
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    return-void
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 504
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    .line 505
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    sub-int/2addr v0, v1

    .line 506
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 507
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static updateConnectedAccessPointRssi(I)V
    .locals 0

    .line 475
    sput p0, Lcom/android/settings/wifi/AccessPoint;->mConnectedAccessPointRssi:I

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4

    .line 362
    instance-of v0, p1, Lcom/android/settings/wifi/AccessPoint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 365
    :cond_0
    check-cast p1, Lcom/android/settings/wifi/AccessPoint;

    .line 367
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_1

    return v2

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_2

    return v1

    .line 371
    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_3

    iget v0, p1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-ne v0, v3, :cond_3

    return v2

    .line 372
    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-ne v0, v3, :cond_4

    iget v0, p1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-eq v0, v3, :cond_4

    return v1

    .line 373
    :cond_4
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-ne v0, v3, :cond_5

    iget v0, p1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-eq v0, v3, :cond_5

    return v1

    .line 376
    :cond_5
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_6

    iget v0, p1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v0, v2, :cond_6

    return v2

    .line 378
    :cond_6
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v0, v2, :cond_7

    iget v0, p1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_7

    return v1

    .line 381
    :cond_7
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_8

    iget v0, p1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    iget v1, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eq v0, v1, :cond_8

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getOrder()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getOrder()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    .line 387
    :cond_8
    iget v0, p1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 392
    :cond_9
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 45
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 404
    instance-of v0, p1, Lcom/android/settings/wifi/AccessPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 405
    :cond_0
    check-cast p1, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method equalsTo(Ljava/lang/Object;)Z
    .locals 3

    .line 409
    instance-of v0, p1, Lcom/android/settings/wifi/AccessPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 411
    :cond_0
    check-cast p1, Lcom/android/settings/wifi/AccessPoint;

    .line 413
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 414
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    iget v2, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eq v0, v2, :cond_2

    return v1

    .line 416
    :cond_2
    iget p0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget p1, p1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq p0, p1, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .line 558
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    return-void

    .line 562
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 563
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 564
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    return-void

    .line 559
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 494
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method getLevel()I
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/wifi/AccessPoint;->mConnectedAccessPointRssi:I

    const/16 v2, -0xc8

    if-eq v0, v2, :cond_0

    .line 481
    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p0

    return p0

    .line 483
    :cond_0
    iget p0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 486
    :cond_1
    invoke-static {p0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p0

    return p0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 5

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

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

    .line 206
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const p0, 0x7f12187b

    .line 202
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p0, 0x7f12187c

    .line 200
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz p1, :cond_4

    const p0, 0x7f121873

    .line 177
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    const p0, 0x7f12186c

    .line 178
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    .line 180
    :cond_5
    sget-object v1, Lcom/android/settings/wifi/AccessPoint$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint$PskType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    if-eq p0, v2, :cond_b

    if-eq p0, v4, :cond_9

    if-eq p0, v3, :cond_7

    if-eqz p1, :cond_6

    const p0, 0x7f121875

    .line 192
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    const p0, 0x7f121870

    .line 193
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_7
    if-eqz p1, :cond_8

    const p0, 0x7f12187a

    .line 188
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_8
    const p0, 0x7f121882

    .line 189
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_9
    if-eqz p1, :cond_a

    const p0, 0x7f121879

    .line 185
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_a
    const p0, 0x7f121881

    .line 186
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_4
    return-object p0

    :cond_b
    if-eqz p1, :cond_c

    const p0, 0x7f121878

    .line 182
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_c
    const p0, 0x7f121880

    .line 183
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_5
    return-object p0

    :cond_d
    if-eqz p1, :cond_e

    const p0, 0x7f121877

    .line 196
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_e
    const p0, 0x7f12187f

    .line 197
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_6
    return-object p0
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    add-int/2addr v1, v0

    .line 425
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v0, v0, 0x13

    add-int/2addr v1, v0

    .line 426
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v0, v0, 0x17

    add-int/2addr v1, v0

    .line 427
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1d

    add-int/2addr v1, p0

    return v1
.end method

.method public isSaved()Z
    .locals 1

    .line 297
    iget p0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    .line 310
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 311
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0843

    .line 314
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 316
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 317
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    const v2, 0x7f080642

    .line 319
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 321
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->setImageState([IZ)V

    :cond_2
    :goto_1
    const v0, 0x7f0a0091

    .line 324
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->accessPointInfo:Landroid/widget/ImageView;

    .line 325
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->accessPointInfo:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 326
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 327
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->accessPointInfo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->accessPointInfo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isUseStrictLockScreen(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f0a09a3

    .line 332
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mTrustedLabelStub:Landroid/view/ViewStub;

    .line 333
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mTrustedLabelStub:Landroid/view/ViewStub;

    if-eqz p1, :cond_7

    .line 334
    iget-boolean p0, p0, Lcom/android/settings/wifi/AccessPoint;->isTrusted:Z

    if-eqz p0, :cond_6

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0091

    if-ne p1, v0, :cond_1

    .line 341
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 342
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, "extra_wifi_configuration"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 343
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    const-string v1, "extra_psk_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 344
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    const-string v1, "extra_wifi_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 345
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "extra_detailed_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const v0, 0x7f121895

    const-string v1, "back_text_id"

    .line 346
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SupportActivity;

    if-eqz v0, :cond_0

    .line 348
    new-instance v0, Lcom/android/settings/wifi/AccessPointDetailFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/AccessPointDetailFragment;-><init>()V

    .line 349
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/AccessPointDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SupportActivity;

    invoke-virtual {p0, v0}, Lcom/android/settings/SupportActivity;->start(Lme/yokeyword/fragmentation/ISupportFragment;)V

    goto :goto_0

    .line 352
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$AccessPointDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 354
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d0346

    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .line 397
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 398
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPoint;->accessPointInfo:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 399
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, "key_config"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    const-string v1, "key_scanresult"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    const-string v1, "key_wifiinfo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 257
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz p0, :cond_0

    .line 258
    invoke-virtual {p0}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "key_detailedstate"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBackgroundId(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 265
    iput p1, p0, Lcom/android/settings/wifi/AccessPoint;->mBackgroundId:I

    :cond_0
    return-void
.end method

.method public setShowSummary(Z)V
    .locals 0

    .line 522
    iput-boolean p1, p0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    .locals 3

    if-lez p3, :cond_0

    .line 456
    iput p3, p0, Lcom/android/settings/wifi/AccessPoint;->mBackgroundId:I

    :cond_0
    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 458
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 459
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 460
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move p3, v0

    .line 461
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 462
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 463
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_1

    .line 464
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 466
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 467
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_1

    :cond_3
    move p3, v0

    :goto_1
    if-eqz p3, :cond_4

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyHierarchyChanged()V

    :cond_4
    return-void
.end method

.method update(Landroid/net/wifi/ScanResult;I)Z
    .locals 4

    if-lez p2, :cond_0

    .line 432
    iput p2, p0, Lcom/android/settings/wifi/AccessPoint;->mBackgroundId:I

    .line 433
    :cond_0
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v2, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    .line 434
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    .line 437
    :cond_1
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 438
    iget p2, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {p2, v0}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result p2

    if-lez p2, :cond_2

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result p2

    .line 440
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyChanged()V

    .line 446
    :cond_2
    iget p2, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 447
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 449
    :cond_3
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
