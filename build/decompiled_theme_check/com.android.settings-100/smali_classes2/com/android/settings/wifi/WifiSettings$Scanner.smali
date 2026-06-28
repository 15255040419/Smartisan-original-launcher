.class Lcom/android/settings/wifi/WifiSettings$Scanner;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 1

    .line 215
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 212
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mRetry:I

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 216
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 1

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 227
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 237
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iget-object p1, p1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 238
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mRetry:I

    goto :goto_0

    .line 239
    :cond_0
    iget p1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mRetry:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mRetry:I

    const/4 v2, 0x3

    if-lt p1, v2, :cond_2

    .line 240
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 241
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    const p1, 0x7f1217fb

    .line 243
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-wide/16 v1, 0x1770

    .line 247
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method pause()V
    .locals 1

    const/4 v0, 0x0

    .line 231
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->removeMessages(I)V

    return-void
.end method

.method resume()V
    .locals 2

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
