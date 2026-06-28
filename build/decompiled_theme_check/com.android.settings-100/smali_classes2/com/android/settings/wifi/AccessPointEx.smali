.class Lcom/android/settings/wifi/AccessPointEx;
.super Landroid/widget/RelativeLayout;
.source "AccessPointEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AccessPointEx$PskType;
    }
.end annotation


# static fields
.field private static final KEY_CONFIG:Ljava/lang/String; = "key_config"

.field private static final KEY_DETAILEDSTATE:Ljava/lang/String; = "key_detailedstate"

.field private static final KEY_SCANRESULT:Ljava/lang/String; = "key_scanresult"

.field private static final KEY_WIFIINFO:Ljava/lang/String; = "key_wifiinfo"

.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WEP:I = 0x1

.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field static final TAG:Ljava/lang/String; = "Settings.AccessPoint"


# instance fields
.field bssid:Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mViewIcon:Landroid/widget/ImageView;

.field private mViewSummary:Landroid/widget/TextView;

.field private mViewTitle:Landroid/widget/TextView;

.field networkId:I

.field pskType:Lcom/android/settings/wifi/AccessPointEx$PskType;

.field security:I

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f040186

    aput v2, v0, v1

    .line 51
    sput-object v0, Lcom/android/settings/wifi/AccessPointEx;->STATE_SECURED:[I

    new-array v0, v1, [I

    .line 55
    sput-object v0, Lcom/android/settings/wifi/AccessPointEx;->STATE_NONE:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 1

    .line 196
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointEx;->wpsAvailable:Z

    .line 82
    sget-object v0, Lcom/android/settings/wifi/AccessPointEx$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPointEx$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->pskType:Lcom/android/settings/wifi/AccessPointEx$PskType;

    .line 197
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointEx;->initViews(Landroid/content/Context;)V

    .line 198
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPointEx;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 199
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointEx;->refresh()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 188
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointEx;->wpsAvailable:Z

    .line 82
    sget-object v0, Lcom/android/settings/wifi/AccessPointEx$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPointEx$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->pskType:Lcom/android/settings/wifi/AccessPointEx$PskType;

    .line 189
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointEx;->initViews(Landroid/content/Context;)V

    .line 191
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPointEx;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 192
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointEx;->refresh()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .line 203
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointEx;->wpsAvailable:Z

    .line 82
    sget-object v0, Lcom/android/settings/wifi/AccessPointEx$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPointEx$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->pskType:Lcom/android/settings/wifi/AccessPointEx$PskType;

    .line 204
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointEx;->initViews(Landroid/content/Context;)V

    const-string p1, "key_config"

    .line 206
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointEx;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 207
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointEx;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_0

    .line 208
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointEx;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    :cond_0
    const-string p1, "key_scanresult"

    .line 210
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/ScanResult;

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointEx;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 211
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointEx;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz p1, :cond_1

    .line 212
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointEx;->loadResult(Landroid/net/wifi/ScanResult;)V

    :cond_1
    const-string p1, "key_wifiinfo"

    .line 214
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiInfo;

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointEx;->mInfo:Landroid/net/wifi/WifiInfo;

    const-string p1, "key_detailedstate"

    .line 215
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointEx;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 218
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointEx;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointEx;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/AccessPointEx;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 356
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

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPointEx$PskType;
    .locals 3

    .line 149
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPA-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 150
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WPA2-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 152
    sget-object p0, Lcom/android/settings/wifi/AccessPointEx$PskType;->WPA_WPA2:Lcom/android/settings/wifi/AccessPointEx$PskType;

    return-object p0

    :cond_0
    if-eqz v1, :cond_1

    .line 154
    sget-object p0, Lcom/android/settings/wifi/AccessPointEx$PskType;->WPA2:Lcom/android/settings/wifi/AccessPointEx$PskType;

    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    .line 156
    sget-object p0, Lcom/android/settings/wifi/AccessPointEx$PskType;->WPA:Lcom/android/settings/wifi/AccessPointEx$PskType;

    return-object p0

    .line 158
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

    .line 159
    sget-object p0, Lcom/android/settings/wifi/AccessPointEx$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPointEx$PskType;

    return-object p0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2

    .line 106
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 108
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 110
    :cond_1
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "EAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3

    .line 95
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    return v2

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 99
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 2

    .line 178
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0346

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0961

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->mViewTitle:Landroid/widget/TextView;

    const v0, 0x7f0a08c8

    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->mViewSummary:Landroid/widget/TextView;

    const v0, 0x7f0a036a

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointEx;->mViewIcon:Landroid/widget/ImageView;

    return-void
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 231
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointEx;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->ssid:Ljava/lang/String;

    .line 232
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->bssid:Ljava/lang/String;

    .line 233
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPointEx;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPointEx;->security:I

    .line 234
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPointEx;->networkId:I

    const v0, 0x7fffffff

    .line 235
    iput v0, p0, Lcom/android/settings/wifi/AccessPointEx;->mRssi:I

    .line 236
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointEx;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 2

    .line 240
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->ssid:Ljava/lang/String;

    .line 241
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->bssid:Ljava/lang/String;

    .line 242
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPointEx;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPointEx;->security:I

    .line 243
    iget v0, p0, Lcom/android/settings/wifi/AccessPointEx;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointEx;->wpsAvailable:Z

    .line 244
    iget v0, p0, Lcom/android/settings/wifi/AccessPointEx;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPointEx;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPointEx$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->pskType:Lcom/android/settings/wifi/AccessPointEx$PskType;

    :cond_1
    const/4 v0, -0x1

    .line 245
    iput v0, p0, Lcom/android/settings/wifi/AccessPointEx;->networkId:I

    .line 246
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPointEx;->mRssi:I

    .line 247
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointEx;->mScanResult:Landroid/net/wifi/ScanResult;

    return-void
.end method

.method private refresh()V
    .locals 6

    .line 361
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->ssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointEx;->setTitle(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointEx;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointEx;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v1, :cond_0

    .line 364
    invoke-static {v0, v1}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointEx;->setSummary(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointEx;->updateSignial()V

    goto/16 :goto_3

    .line 367
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/AccessPointEx;->mRssi:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    const v1, 0x7f121833

    .line 368
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointEx;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointEx;->mConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v1, v2, :cond_2

    goto :goto_2

    .line 383
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointEx;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_3

    const v3, 0x7f121855

    .line 385
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_3
    iget v3, p0, Lcom/android/settings/wifi/AccessPointEx;->security:I

    if-eqz v3, :cond_5

    .line 389
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_4

    const v3, 0x7f121868

    .line 390
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const v3, 0x7f121869

    .line 393
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 395
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AccessPointEx;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointEx;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPointEx;->wpsAvailable:Z

    if-eqz v2, :cond_7

    .line 400
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_6

    const v2, 0x7f1218f9

    .line 402
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const v2, 0x7f1218fa

    .line 405
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_7
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointEx;->setSummary(Ljava/lang/String;)V

    .line 411
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointEx;->updateSignial()V

    :goto_3
    return-void
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 348
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v2, 0x0

    .line 349
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 350
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private setSummary(Ljava/lang/String;)V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointEx;->mViewSummary:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointEx;->mViewTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/wifi/AccessPointEx;)I
    .locals 6

    .line 263
    instance-of v0, p1, Lcom/android/settings/wifi/AccessPointEx;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v2, p1, Lcom/android/settings/wifi/AccessPointEx;->mInfo:Landroid/net/wifi/WifiInfo;

    const/4 v3, -0x1

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 273
    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/AccessPointEx;->mRssi:I

    iget v2, p1, Lcom/android/settings/wifi/AccessPointEx;->mRssi:I

    xor-int v4, v0, v2

    if-gez v4, :cond_4

    const p0, 0x7fffffff

    if-eq v0, p0, :cond_3

    move v1, v3

    :cond_3
    return v1

    .line 277
    :cond_4
    iget v4, p0, Lcom/android/settings/wifi/AccessPointEx;->networkId:I

    iget v5, p1, Lcom/android/settings/wifi/AccessPointEx;->networkId:I

    xor-int/2addr v5, v4

    if-gez v5, :cond_6

    if-eq v4, v3, :cond_5

    move v1, v3

    :cond_5
    return v1

    .line 281
    :cond_6
    invoke-static {v2, v0}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 286
    :cond_7
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointEx;->ssid:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/wifi/AccessPointEx;->ssid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .line 423
    iget v0, p0, Lcom/android/settings/wifi/AccessPointEx;->security:I

    if-nez v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    return-void

    .line 425
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 426
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointEx;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPointEx;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 427
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointEx;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    return-void

    .line 423
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointEx;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointEx;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method getLevel()I
    .locals 1

    .line 329
    iget p0, p0, Lcom/android/settings/wifi/AccessPointEx;->mRssi:I

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x4

    .line 332
    invoke-static {p0, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p0

    return p0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 5

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointEx;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    iget v1, p0, Lcom/android/settings/wifi/AccessPointEx;->security:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_1

    if-eqz p1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const p0, 0x7f12186d

    .line 144
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    const p0, 0x7f121873

    .line 120
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const p0, 0x7f12186c

    .line 121
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    .line 123
    :cond_3
    sget-object v1, Lcom/android/settings/wifi/AccessPointEx$1;->$SwitchMap$com$android$settings$wifi$AccessPointEx$PskType:[I

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointEx;->pskType:Lcom/android/settings/wifi/AccessPointEx$PskType;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointEx$PskType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    if-eq p0, v2, :cond_9

    if-eq p0, v4, :cond_7

    if-eq p0, v3, :cond_5

    if-eqz p1, :cond_4

    const p0, 0x7f121875

    .line 136
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    const p0, 0x7f121870

    .line 137
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_5
    if-eqz p1, :cond_6

    const p0, 0x7f12187a

    .line 131
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_6
    const p0, 0x7f121882

    .line 132
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_7
    if-eqz p1, :cond_8

    const p0, 0x7f121879

    .line 128
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_8
    const p0, 0x7f121881

    .line 129
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_4
    return-object p0

    :cond_9
    if-eqz p1, :cond_a

    const p0, 0x7f121878

    .line 125
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_a
    const p0, 0x7f121880

    .line 126
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_5
    return-object p0

    :cond_b
    if-eqz p1, :cond_c

    const p0, 0x7f121877

    .line 140
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_c
    const p0, 0x7f12187f

    .line 141
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_6
    return-object p0
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointEx;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object p0
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->mConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, "key_config"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->mScanResult:Landroid/net/wifi/ScanResult;

    const-string v1, "key_scanresult"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->mInfo:Landroid/net/wifi/WifiInfo;

    const-string v1, "key_wifiinfo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 225
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointEx;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz p0, :cond_0

    .line 226
    invoke-virtual {p0}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "key_detailedstate"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 310
    iget v0, p0, Lcom/android/settings/wifi/AccessPointEx;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 311
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 313
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPointEx;->mRssi:I

    .line 314
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointEx;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 315
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointEx;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 316
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointEx;->refresh()V

    goto :goto_0

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointEx;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 319
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointEx;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 320
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointEx;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 321
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointEx;->refresh()V

    :cond_1
    :goto_0
    return-void
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointEx;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/wifi/AccessPointEx;->security:I

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPointEx;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 291
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p0, Lcom/android/settings/wifi/AccessPointEx;->mRssi:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointEx;->getLevel()I

    .line 293
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPointEx;->mRssi:I

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointEx;->getLevel()I

    .line 299
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPointEx;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 300
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPointEx;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPointEx$PskType;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointEx;->pskType:Lcom/android/settings/wifi/AccessPointEx$PskType;

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointEx;->refresh()V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public updateSignial()V
    .locals 3

    const v0, 0x7f0a036a

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 253
    iget v1, p0, Lcom/android/settings/wifi/AccessPointEx;->mRssi:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    .line 254
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointEx;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    const v1, 0x7f080642

    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    iget p0, p0, Lcom/android/settings/wifi/AccessPointEx;->security:I

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/settings/wifi/AccessPointEx;->STATE_SECURED:[I

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/settings/wifi/AccessPointEx;->STATE_NONE:[I

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/ImageView;->setImageState([IZ)V

    :goto_1
    return-void
.end method
