.class public Lcom/android/settings/wifi/TrustedNetworkList;
.super Lcom/android/settings/SettingsPreferenceFragment23;
.source "TrustedNetworkList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/TrustedNetworkList$Multimap;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private constructingAccessPoints:Z

.field private emptyView:Landroid/view/View;

.field private forbiddenView:Landroid/view/View;

.field private mCancelCallback:Lcom/android/settings/wifi/TrustedNetworkHelper$CancelCallback;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private mEditMode:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mFooterTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mIsExtDisplayConnected:Z

.field private mIsExtDisplaying:Z

.field private mIsLandScreen:Z

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRightButton:Landroid/widget/ImageView;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSelectedConfig:Landroid/net/wifi/WifiConfiguration;

.field private mSelectedSwitch:Landroid/widget/CompoundButton;

.field private mTipsTextView:Landroid/widget/TextView;

.field private mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment23;-><init>()V

    const-string v0, "TrustedNetworkList"

    .line 58
    iput-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mEditMode:Z

    .line 82
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    new-instance v1, Lcom/android/settings/wifi/TrustedNetworkList$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/TrustedNetworkList$2;-><init>(Lcom/android/settings/wifi/TrustedNetworkList;)V

    iput-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mHandler:Landroid/os/Handler;

    .line 162
    new-instance v1, Lcom/android/settings/wifi/TrustedNetworkList$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/TrustedNetworkList$4;-><init>(Lcom/android/settings/wifi/TrustedNetworkList;)V

    iput-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mCancelCallback:Lcom/android/settings/wifi/TrustedNetworkHelper$CancelCallback;

    .line 346
    iput-boolean v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->constructingAccessPoints:Z

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mFilter:Landroid/content/IntentFilter;

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/android/settings/wifi/TrustedNetworkList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/TrustedNetworkList$1;-><init>(Lcom/android/settings/wifi/TrustedNetworkList;)V

    iput-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/TrustedNetworkList;)Lcom/android/settings/wifi/TrustedNetworkHelper;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/TrustedNetworkList;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/TrustedNetworkList;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/TrustedNetworkList;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->updateAccessPoints()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/TrustedNetworkList;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/TrustedNetworkList;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/TrustedNetworkList;->updateSelectedState(Z)V

    return-void
.end method

.method private addEmptyView()V
    .locals 4

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mEditMode:Z

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->emptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->emptyView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mRightButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private addForbiddenView()V
    .locals 4

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mEditMode:Z

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->forbiddenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->forbiddenView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mRightButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private cancelEditMode()V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mRightButton:Landroid/widget/ImageView;

    const v1, 0x20200b1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 502
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->updateRemovedImageVisibility()V

    .line 503
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mTipsTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 504
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private constructAccessPoints()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 349
    iput-boolean v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->constructingAccessPoints:Z

    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 351
    new-instance v2, Lcom/android/settings/wifi/TrustedNetworkList$Multimap;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/TrustedNetworkList$Multimap;-><init>(Lcom/android/settings/wifi/TrustedNetworkList;Lcom/android/settings/wifi/TrustedNetworkList$1;)V

    .line 355
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 357
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    move v6, v5

    .line 360
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 361
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 362
    new-instance v8, Lcom/android/settings/wifi/TrustAccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mIsLandScreen:Z

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mIsExtDisplaying:Z

    if-eqz v10, :cond_0

    move v10, v0

    goto :goto_2

    :cond_0
    move v10, v5

    :goto_2
    invoke-direct {v8, v9, v7, v10}, Lcom/android/settings/wifi/TrustAccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Z)V

    .line 364
    iget v9, v8, Lcom/android/settings/wifi/TrustAccessPoint;->security:I

    if-nez v9, :cond_1

    goto :goto_3

    .line 365
    :cond_1
    iget-boolean v7, v7, Landroid/net/wifi/WifiConfiguration;->hiddenTrust:Z

    if-eqz v7, :cond_2

    goto :goto_3

    .line 366
    :cond_2
    invoke-virtual {v8, p0}, Lcom/android/settings/wifi/TrustAccessPoint;->setRemovedImageOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-boolean v7, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mEditMode:Z

    invoke-virtual {v8, v7}, Lcom/android/settings/wifi/TrustAccessPoint;->setEditMode(Z)V

    .line 368
    iget-object v7, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v9, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v8, v7, v9, v4}, Lcom/android/settings/wifi/TrustAccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 369
    invoke-virtual {v8, p0}, Lcom/android/settings/wifi/TrustAccessPoint;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 370
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v7, v8, Lcom/android/settings/wifi/TrustAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lcom/android/settings/wifi/TrustedNetworkList$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 375
    :cond_3
    iput-boolean v5, p0, Lcom/android/settings/wifi/TrustedNetworkList;->constructingAccessPoints:Z

    .line 377
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 379
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 381
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v7, "[IBSS]"

    .line 382
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    .line 386
    :cond_5
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/android/settings/wifi/TrustedNetworkList$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move v7, v5

    .line 387
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 388
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/AccessPoint;

    .line 389
    invoke-virtual {v8, v3, v4}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;I)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 395
    :cond_6
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 397
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/TrustedNetworkList;->setBackgroundForAccessPoints(Ljava/util/ArrayList;)V

    return-object v1
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 281
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 283
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.android.settings.wifi.TRUST_AP_CHANGED"

    .line 284
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 286
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "newState"

    .line 287
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SupplicantState;

    .line 289
    iget-object p2, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 290
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/TrustedNetworkList;->updateAccessPointConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_1

    .line 291
    :cond_1
    sget-object p2, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-ne p1, p2, :cond_4

    .line 292
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/TrustedNetworkList;->updateAccessPointConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_1

    :cond_2
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 294
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "networkInfo"

    .line 295
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 297
    iget-object p2, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 298
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/TrustedNetworkList;->updateAccessPointConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_1

    .line 285
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->updateAccessPoints()V

    :cond_4
    :goto_1
    return-void
.end method

.method private initFooterView()Landroid/view/View;
    .locals 3

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 227
    iget-boolean v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mIsLandScreen:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mIsExtDisplaying:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0d0311

    .line 228
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0x7f0d030f

    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f0a09a6

    .line 232
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mFooterTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private setBackgroundForAccessPoints(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    .line 403
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 406
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    goto :goto_1

    .line 411
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    .line 416
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/AccessPoint;->setBackgroundId(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private startEditMode()V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mRightButton:Landroid/widget/ImageView;

    const v1, 0x20200ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 494
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->updateRemovedImageVisibility()V

    .line 495
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mTipsTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 496
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateAccessPointConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_0

    .line 305
    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->updateAccessPoints()V

    return-void
.end method

.method private updateAccessPoints()V
    .locals 5

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TrustedNetworkList"

    const-string v1, "updateAccessPoints"

    .line 312
    invoke-static {v0, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->forbiddenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 337
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->addEmptyView()V

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 319
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->constructAccessPoints()Ljava/util/List;

    move-result-object v0

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 321
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 322
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->addEmptyView()V

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 325
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/settings/wifi/TrustedNetworkList;->emptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/settings/wifi/TrustedNetworkList;->forbiddenView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 327
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 340
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isUseStrictLockScreen(Landroid/content/Context;)Z

    move-result v0

    .line 341
    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mFooterTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->updateListVisibility()V

    return-void
.end method

.method private updateListVisibility()V
    .locals 1

    .line 516
    iget-boolean v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 517
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->startEditMode()V

    goto :goto_0

    .line 519
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->cancelEditMode()V

    :goto_0
    return-void
.end method

.method private updateRemovedImageVisibility()V
    .locals 4

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    .line 510
    :goto_0
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 511
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/TrustAccessPoint;

    iget-boolean v3, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mEditMode:Z

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/TrustAccessPoint;->setEditMode(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSelectedState(Z)V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    const-string p0, "TrustedNetworkList"

    const-string p1, "mSelectedConfig is null"

    .line 154
    invoke-static {p0, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_0
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, p1}, Lsmartisanos/api/WifiConfigurationSmt;->set_isTrustedAp(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 159
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSelectedSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 177
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment23;->onActivityCreated(Landroid/os/Bundle;)V

    const p1, 0x7f150060

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/TrustedNetworkList;->addPreferencesFromResource(I)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2070032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 183
    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    const v0, 0x106000d

    .line 184
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(I)V

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 187
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setClipChildren(Z)V

    .line 190
    iget-boolean v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mIsLandScreen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mIsExtDisplaying:Z

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0139

    .line 192
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d013a

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    :goto_0
    const v2, 0x7f0a034b

    .line 196
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mHeaderTextView:Landroid/widget/TextView;

    .line 197
    iget-object v2, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mHeaderTextView:Landroid/widget/TextView;

    const v3, 0x7f121559

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 198
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 200
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->initFooterView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d030d

    .line 202
    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->emptyView:Landroid/view/View;

    const v1, 0x7f0d030e

    .line 203
    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->forbiddenView:Landroid/view/View;

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 207
    instance-of v0, p1, Lcom/android/settings/SupportFragment;

    if-eqz v0, :cond_1

    .line 208
    check-cast p1, Lcom/android/settings/SupportFragment;

    invoke-virtual {p1}, Lcom/android/settings/SupportFragment;->getTitleView()Lsmartisanos/widget/TitleBar;

    move-result-object p1

    const v0, 0x20200b1

    .line 209
    invoke-virtual {p1, v0}, Lsmartisanos/widget/TitleBar;->addRightImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mRightButton:Landroid/widget/ImageView;

    .line 210
    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mRightButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 217
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment23;->onActivityResult(IILandroid/content/Intent;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/wifi/TrustedNetworkHelper;->handleChooseOrConfirmPasswordResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 220
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/TrustedNetworkList;->updateSelectedState(Z)V

    .line 221
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->updateAccessPoints()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 484
    iget-boolean v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mEditMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 485
    iput-boolean v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mEditMode:Z

    .line 486
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->cancelEditMode()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 423
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 424
    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSelectedSwitch:Landroid/widget/CompoundButton;

    .line 425
    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_3

    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0}, Lsmartisanos/api/WifiConfigurationSmt;->get_isTrustedAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 427
    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-virtual {p1}, Lcom/android/settings/wifi/TrustedNetworkHelper;->isLockScreenSecure()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-virtual {p1}, Lcom/android/settings/wifi/TrustedNetworkHelper;->isPasswordConfirmedSuccess()Z

    move-result p1

    if-nez p1, :cond_2

    .line 428
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->constructingAccessPoints:Z

    if-nez p1, :cond_3

    .line 429
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkHelper;->chooseOrConfirmPasswordDialog()V

    goto :goto_0

    .line 432
    :cond_2
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, p2}, Lsmartisanos/api/WifiConfigurationSmt;->set_isTrustedAp(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 433
    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mRightButton:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_1

    .line 459
    iget-boolean p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mEditMode:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 460
    iput-boolean p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mEditMode:Z

    .line 461
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->cancelEditMode()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 463
    iput-boolean p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mEditMode:Z

    .line 464
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->startEditMode()V

    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0556

    if-ne v0, v1, :cond_4

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 468
    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v0, "TrustedNetworkList"

    if-nez p1, :cond_2

    .line 469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove invalid wifi config: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 472
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove wifi config: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {p1, v0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->removeAutoLogin(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    const/4 p1, -0x1

    const-string v0, "persist.wifi.manual.sort"

    .line 475
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_3

    .line 476
    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v1, p1, :cond_3

    const-string p1, "-1"

    .line 477
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSelectedConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v0, p0}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment23;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mContext:Landroid/content/Context;

    .line 119
    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/smartisan/appbaselayer/SMBaseApi;->isSmartisanPCMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mIsExtDisplaying:Z

    .line 120
    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "global_pc_mode_settings"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mIsExtDisplayConnected:Z

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mContext:Landroid/content/Context;

    .line 124
    invoke-static {p1}, Lcom/android/settings/Utils;->isExtLandScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mIsLandScreen:Z

    const-string p1, "wifi"

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/TrustedNetworkList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 126
    iput-boolean v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mEditMode:Z

    .line 128
    new-instance p1, Lcom/android/settings/wifi/TrustedNetworkList$3;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/TrustedNetworkList$3;-><init>(Lcom/android/settings/wifi/TrustedNetworkList;)V

    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 148
    new-instance p1, Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/TrustedNetworkHelper;-><init>(Landroid/app/Fragment;)V

    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

    .line 149
    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mCancelCallback:Lcom/android/settings/wifi/TrustedNetworkHelper$CancelCallback;

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/TrustedNetworkHelper;->setCancelCallback(Lcom/android/settings/wifi/TrustedNetworkHelper$CancelCallback;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 277
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment23;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 271
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment23;->onDestroyView()V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 256
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment23;->onResume()V

    .line 258
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-virtual {v0}, Lcom/android/settings/wifi/TrustedNetworkHelper;->isDialogShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->updateAccessPoints()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 265
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment23;->onStop()V

    .line 266
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mTrustedHelper:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkHelper;->resetPasswordConfirmedFlag()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 171
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment23;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p2, p0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
