.class public Lcom/android/settings/wifi/SortNetworkListActivity;
.super Landroid/app/Activity;
.source "SortNetworkListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;,
        Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;,
        Lcom/android/settings/wifi/SortNetworkListActivity$ServiceHandler;
    }
.end annotation


# static fields
.field private static final CMD_UPDATE_PRIORITY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SortNetworkListActivity"

.field private static final WIFI_MANUAL_SORT_PROP:Ljava/lang/String; = "persist.wifi.manual.sort"


# instance fields
.field private mAdapter:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

.field private mBackView:Landroid/view/View;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDragSortListView:Lcom/android/settings/wifi/dslv/DragSortListView;

.field private mDropListener:Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;

.field private mEditMode:Z

.field private mEmptySummaryView:Landroid/widget/TextView;

.field private mEmptyTitleView:Landroid/widget/TextView;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mListAccessPoint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mManualSortMode:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRightView:Landroid/widget/ImageView;

.field private mSeenAccessPoint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mServiceHandler:Lcom/android/settings/wifi/SortNetworkListActivity$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mTipsTextView:Lsmartisanos/widget/TipsView;

.field private mTitleBar:Lsmartisanos/widget/TitleBar;

.field private mViewHolderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewSortMode:Lsmartisanos/widget/SettingItemSwitch;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mViewHolderMap:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    iput-boolean v1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mEditMode:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mManualSortMode:Z

    .line 315
    new-instance v0, Lcom/android/settings/wifi/SortNetworkListActivity$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SortNetworkListActivity$5;-><init>(Lcom/android/settings/wifi/SortNetworkListActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mDropListener:Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mFilter:Landroid/content/IntentFilter;

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/android/settings/wifi/SortNetworkListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SortNetworkListActivity$1;-><init>(Lcom/android/settings/wifi/SortNetworkListActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/SortNetworkListActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/SortNetworkListActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/SortNetworkListActivity;)Ljava/util/HashMap;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mViewHolderMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/SortNetworkListActivity;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->matchScanResult(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/SortNetworkListActivity;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mLastInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/settings/wifi/SortNetworkListActivity;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mLastInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/SortNetworkListActivity;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/SortNetworkListActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/SortNetworkListActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mManualSortMode:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/SortNetworkListActivity;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mEmptyTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/SortNetworkListActivity;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mEmptySummaryView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/SortNetworkListActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mEditMode:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/SortNetworkListActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mEditMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/SortNetworkListActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/wifi/SortNetworkListActivity;->cancelEditMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/SortNetworkListActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/wifi/SortNetworkListActivity;->startEditMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/SortNetworkListActivity;)Lcom/android/settings/wifi/dslv/DragSortListView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mDragSortListView:Lcom/android/settings/wifi/dslv/DragSortListView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/SortNetworkListActivity;)Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mAdapter:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/SortNetworkListActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/wifi/SortNetworkListActivity;->attemptStartSortMode()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/SortNetworkListActivity;)Lcom/android/settings/wifi/SortNetworkListActivity$ServiceHandler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mServiceHandler:Lcom/android/settings/wifi/SortNetworkListActivity$ServiceHandler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/SortNetworkListActivity;Ljava/util/List;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->updateAccessPointPriority(Ljava/util/List;)V

    return-void
.end method

.method private attemptStartSortMode()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mAdapter:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    iget v0, v0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mSortSplitLinePosition:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 187
    iget-object v2, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mAdapter:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    iget-object v2, v2, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/SortNetworkListActivity;->matchScanResult(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p0, "persist.wifi.manual.sort"

    if-eqz v2, :cond_2

    const-string v0, "true"

    .line 193
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "false"

    .line 195
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private cancelEditMode()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mRightView:Landroid/widget/ImageView;

    const v1, 0x20200b1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 256
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->updateRemovedImageVisibility(Z)V

    .line 257
    iget-object v1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mAdapter:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    iget-object v1, v1, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 258
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->setUiState(Z)V

    goto :goto_0

    .line 260
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/SortNetworkListActivity;->setUiState(Z)V

    :goto_0
    return-void
.end method

.method private constructAccessPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 v0, 0x0

    .line 136
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->sortConfigedAPs(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "networkInfo"

    .line 102
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 103
    iget-object p2, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 104
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mAdapter:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private initTitleView()V
    .locals 2

    const v0, 0x7f0a086e

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/TipsView;

    iput-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mTipsTextView:Lsmartisanos/widget/TipsView;

    const v0, 0x7f0a0a0b

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/TitleBar;

    iput-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mTitleBar:Lsmartisanos/widget/TitleBar;

    .line 218
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mTitleBar:Lsmartisanos/widget/TitleBar;

    const v1, 0x20200b1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/TitleBar;->addRightImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mRightView:Landroid/widget/ImageView;

    .line 219
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mRightView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/wifi/SortNetworkListActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/SortNetworkListActivity$3;-><init>(Lcom/android/settings/wifi/SortNetworkListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mListAccessPoint:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->setUiState(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 234
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->setUiState(Z)V

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mTitleBar:Lsmartisanos/widget/TitleBar;

    const v1, 0x20200a4

    invoke-virtual {v0, v1}, Lsmartisanos/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mBackView:Landroid/view/View;

    .line 238
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mBackView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/wifi/SortNetworkListActivity$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/SortNetworkListActivity$4;-><init>(Lcom/android/settings/wifi/SortNetworkListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private matchScanResult(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    .line 528
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 530
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 531
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private setUiState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 202
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mRightView:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 203
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 207
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mRightView:Landroid/widget/ImageView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 208
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mRightView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sortConfigedAPs(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 115
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/SortNetworkListActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SortNetworkListActivity$2;-><init>(Lcom/android/settings/wifi/SortNetworkListActivity;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method private startEditMode()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mRightView:Landroid/widget/ImageView;

    const v1, 0x20200ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    .line 251
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->updateRemovedImageVisibility(Z)V

    return-void
.end method

.method private updateAccessPointPriority(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 359
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 360
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 361
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    sub-int v3, v0, v1

    .line 362
    iput v3, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 363
    iget-object v3, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 366
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    return-void
.end method

.method private updateRemovedImageVisibility(Z)V
    .locals 6

    .line 265
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 266
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mViewHolderMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 268
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 269
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 270
    iget-object v3, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mViewHolderMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;

    .line 272
    invoke-virtual {v3}, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->getPosition()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mAdapter:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    iget v5, v5, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mSortSplitLinePosition:I

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    if-eqz p1, :cond_2

    .line 276
    invoke-virtual {v3}, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->getRemoveIcon()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 278
    invoke-virtual {v3}, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->getRemoveIcon()Landroid/widget/ImageView;

    move-result-object v2

    const v5, 0x7f080202

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 280
    :cond_1
    invoke-virtual {v3}, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->getRemoveIcon()Landroid/widget/ImageView;

    move-result-object v2

    const v5, 0x7f0801d9

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    :goto_1
    invoke-virtual {v3}, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->getDrag()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    iget-object v2, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mDragSortListView:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v2, v4}, Lcom/android/settings/wifi/dslv/DragSortListView;->setDragEnabled(Z)V

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {v3}, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->getRemoveIcon()Landroid/widget/ImageView;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    invoke-virtual {v3}, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->getDrag()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v2, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mDragSortListView:Lcom/android/settings/wifi/dslv/DragSortListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/dslv/DragSortListView;->setDragEnabled(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 303
    iget-boolean v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mEditMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mEditMode:Z

    .line 305
    invoke-direct {p0}, Lcom/android/settings/wifi/SortNetworkListActivity;->cancelEditMode()V

    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mDragSortListView:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getDragState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mDragSortListView:Lcom/android/settings/wifi/dslv/DragSortListView;

    .line 310
    invoke-virtual {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getDragState()I

    move-result v0

    if-nez v0, :cond_2

    .line 311
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d02c2

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->setContentView(I)V

    const-string p1, "wifi"

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 147
    invoke-direct {p0}, Lcom/android/settings/wifi/SortNetworkListActivity;->constructAccessPoints()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mListAccessPoint:Ljava/util/List;

    const p1, 0x7f0a029b

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mEmptyTitleView:Landroid/widget/TextView;

    const p1, 0x7f0a029a

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mEmptySummaryView:Landroid/widget/TextView;

    const p1, 0x7f0a05f3

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/dslv/DragSortListView;

    iput-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mDragSortListView:Lcom/android/settings/wifi/dslv/DragSortListView;

    .line 151
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mListAccessPoint:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v0, :cond_1

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mEmptyTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mEmptySummaryView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mDragSortListView:Lcom/android/settings/wifi/dslv/DragSortListView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/settings/wifi/dslv/DragSortListView;->setVisibility(I)V

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/SortNetworkListActivity;->initTitleView()V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/wifi/SortNetworkListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "wifi_sort_network_splite_line_position"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 159
    iget-object v2, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mListAccessPoint:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le p1, v2, :cond_2

    move p1, v1

    .line 162
    :cond_2
    new-instance v1, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    iget-object v2, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mListAccessPoint:Ljava/util/List;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;-><init>(Lcom/android/settings/wifi/SortNetworkListActivity;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mAdapter:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    .line 163
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mDragSortListView:Lcom/android/settings/wifi/dslv/DragSortListView;

    iget-object v1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mAdapter:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    invoke-virtual {p1, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mDragSortListView:Lcom/android/settings/wifi/dslv/DragSortListView;

    iget-object v1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mDropListener:Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;

    invoke-virtual {p1, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->setDropListener(Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;)V

    .line 165
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mDragSortListView:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->setDragEnabled(Z)V

    .line 166
    new-instance p1, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;

    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mDragSortListView:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-direct {p1, v0}, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;-><init>(Landroid/widget/ListView;)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mDragSortListView:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->setFloatViewManager(Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;)V

    .line 168
    invoke-direct {p0}, Lcom/android/settings/wifi/SortNetworkListActivity;->attemptStartSortMode()V

    .line 170
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "NetworkSortThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 174
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mServiceLooper:Landroid/os/Looper;

    .line 175
    new-instance p1, Lcom/android/settings/wifi/SortNetworkListActivity$ServiceHandler;

    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mServiceLooper:Landroid/os/Looper;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/wifi/SortNetworkListActivity$ServiceHandler;-><init>(Lcom/android/settings/wifi/SortNetworkListActivity;Landroid/os/Looper;Lcom/android/settings/wifi/SortNetworkListActivity$1;)V

    iput-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mServiceHandler:Lcom/android/settings/wifi/SortNetworkListActivity$ServiceHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/wifi/SortNetworkListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mAdapter:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    iget v1, v1, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mSortSplitLinePosition:I

    const-string v2, "wifi_sort_network_splite_line_position"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 298
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
