.class public Lcom/android/settingslib/wifi/WifiTracker;
.super Ljava/lang/Object;
.source "WifiTracker.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/WifiTracker$WifiListener;,
        Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;,
        Lcom/android/settingslib/wifi/WifiTracker$Multimap;,
        Lcom/android/settingslib/wifi/WifiTracker$Scanner;,
        Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CACHED_SCORE_AGE_MILLIS:J = 0x124f80L

.field private static final MAX_SCAN_RESULT_AGE_MILLIS:J = 0x61a8L

.field private static final TAG:Ljava/lang/String; = "WifiTracker"

.field private static final WIFI_RESCAN_INTERVAL_MS:I = 0x2710

.field private static final WIFI_SECURITY_DPP:Ljava/lang/String; = "DPP"

.field private static final WIFI_SECURITY_EAP:Ljava/lang/String; = "EAP"

.field private static final WIFI_SECURITY_OWE:Ljava/lang/String; = "OWE"

.field private static final WIFI_SECURITY_PSK:Ljava/lang/String; = "PSK"

.field private static final WIFI_SECURITY_SAE:Ljava/lang/String; = "SAE"

.field private static final WIFI_SECURITY_SUITE_B_192:Ljava/lang/String; = "SUITE_B_192"

.field public static sVerboseLogging:Z


# instance fields
.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mInternalAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastNetworkInfo:Landroid/net/NetworkInfo;

.field private final mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

.field private final mLock:Ljava/lang/Object;

.field private mMaxSpeedLabelScoreCacheAge:J

.field private mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private mNetworkScoringUiEnabled:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private final mRequestedScores:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanResultCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

.field private mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field private mStaleScanResults:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;

.field private mWpa3Support:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/content/IntentFilter;)V
    .locals 2

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    .line 131
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    .line 144
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    .line 797
    new-instance v1, Lcom/android/settingslib/wifi/WifiTracker$2;

    invoke-direct {v1, p0}, Lcom/android/settingslib/wifi/WifiTracker$2;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 212
    iput-object p3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 213
    new-instance p1, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    invoke-direct {p1, p0, p2}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;)V

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    .line 214
    iput-object p4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 218
    iput-object p6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    .line 220
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 221
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    const/16 p2, 0xf

    .line 222
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 223
    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 226
    iput-object p5, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 228
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11200f0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWpa3Support:Z

    .line 233
    new-instance p1, Landroid/os/HandlerThread;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WifiTracker{"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "}"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xa

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 236
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->setWorkThread(Landroid/os/HandlerThread;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZZ)V
    .locals 7

    .line 197
    const-class p4, Landroid/net/wifi/WifiManager;

    .line 198
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Landroid/net/wifi/WifiManager;

    const-class p4, Landroid/net/ConnectivityManager;

    .line 199
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    move-object v4, p4

    check-cast v4, Landroid/net/ConnectivityManager;

    const-class p4, Landroid/net/NetworkScoreManager;

    .line 200
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    move-object v5, p4

    check-cast v5, Landroid/net/NetworkScoreManager;

    .line 201
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->newIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 197
    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/content/IntentFilter;)V

    .line 203
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;ZZ)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    const-class p3, Landroid/net/wifi/WifiManager;

    .line 187
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/net/wifi/WifiManager;

    const-class p3, Landroid/net/ConnectivityManager;

    .line 188
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Landroid/net/ConnectivityManager;

    const-class p3, Landroid/net/NetworkScoreManager;

    .line 189
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/net/NetworkScoreManager;

    .line 190
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->newIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 186
    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private static final DBG()Z
    .locals 2

    const-string v0, "WifiTracker"

    const/4 v1, 0x3

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$000(Lcom/android/settingslib/wifi/WifiTracker;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->updateNetworkScores()V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 75
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settingslib/wifi/WifiTracker;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->updateWifiState(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settingslib/wifi/WifiTracker;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->fetchScansAndConfigsAndUpdateAccessPoints()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private clearAccessPointsAndConditionallyUpdate()V
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 764
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->conditionallyNotifyListeners()V

    .line 766
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private conditionallyNotifyListeners()V
    .locals 1

    .line 1005
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    if-eqz v0, :cond_0

    return-void

    .line 1009
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onAccessPointsChanged()V

    return-void
.end method

.method private evictOldScans()V
    .locals 6

    .line 490
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 491
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 494
    iget-wide v2, v2, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v2, v0, v2

    const-wide/16 v4, 0x61a8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 495
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fetchScansAndConfigsAndUpdateAccessPoints()V
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 564
    invoke-direct {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker;->filterScanResultsByCapabilities(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 566
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetched scan results: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 571
    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->updateAccessPoints(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private filterScanResultsByCapabilities(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 524
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 528
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 529
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 533
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 537
    :cond_2
    iget-boolean v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWpa3Support:Z

    if-nez v2, :cond_4

    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "SUITE_B_192"

    .line 538
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "SAE"

    .line 539
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "OWE"

    .line 540
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "DPP"

    .line 541
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 542
    :cond_3
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->isVerboseLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filterScanResultsByCapabilities: Filtering SSID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with capabilities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 548
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private forceUpdate()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 341
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 343
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->fetchScansAndConfigsAndUpdateAccessPoints()V

    return-void
.end method

.method private getWifiConfigurationForNetworkId(ILjava/util/List;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 503
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 504
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v1, :cond_0

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eqz v1, :cond_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isVerboseLoggingEnabled()Z
    .locals 2

    .line 91
    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const-string v1, "WifiTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static newIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private pauseScanning()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->pause()V

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    :cond_0
    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    return-void
.end method

.method private registerScoreCache()V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    return-void
.end method

.method private requestScoresForNetworkKeys(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/NetworkKey;",
            ">;)V"
        }
    .end annotation

    .line 354
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 356
    :cond_0
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->DBG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting scores for Network Keys: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkKey;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/NetworkKey;

    invoke-virtual {v0, v1}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    .line 360
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 362
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private unregisterScoreCache()V
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/net/NetworkScoreManager;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 397
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 399
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private updateAccessPoints(Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 579
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    if-eqz p2, :cond_0

    .line 581
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 582
    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 586
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->updateScanResultCache(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object p1

    .line 589
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 590
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/android/settingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(ILjava/util/List;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v2

    .line 595
    :goto_1
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 598
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 600
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 602
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 604
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 606
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v2

    :catch_0
    :cond_2
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    .line 607
    invoke-static {v9}, Landroid/net/NetworkKey;->createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 608
    iget-object v11, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 609
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v8, :cond_2

    .line 611
    invoke-virtual {v9}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_2

    .line 613
    :try_start_1
    iget-object v10, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10, v9}, Landroid/net/wifi/WifiManager;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 621
    :cond_4
    :try_start_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {p0, v7, v3}, Lcom/android/settingslib/wifi/WifiTracker;->getCachedOrCreate(Ljava/util/List;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v7

    .line 622
    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v9, :cond_5

    .line 623
    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v10, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7, p2, v9, v10}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 627
    :cond_5
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7, v6}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    if-eqz v8, :cond_6

    .line 631
    invoke-virtual {v7, v8}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 634
    :cond_6
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 640
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 641
    new-instance p1, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 642
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1, p2, v0, v2}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 643
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {p1}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_8
    invoke-direct {p0, v5}, Lcom/android/settingslib/wifi/WifiTracker;->requestScoresForNetworkKeys(Ljava/util/Collection;)V

    .line 648
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/wifi/AccessPoint;

    .line 649
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-boolean v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoringUiEnabled:Z

    iget-wide v5, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMaxSpeedLabelScoreCacheAge:J

    invoke-virtual {p2, v0, v2, v5, v6}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z

    goto :goto_4

    .line 653
    :cond_9
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 656
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->DBG()Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "WifiTracker"

    const-string p2, "------ Dumping SSIDs that were not seen on this scan ------"

    .line 657
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/wifi/AccessPoint;

    .line 659
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_5

    .line 661
    :cond_b
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 663
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    .line 664
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    .line 665
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v0, 0x1

    :cond_d
    if-nez v0, :cond_a

    const-string v0, "WifiTracker"

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in this scan"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_e
    const-string p1, "WifiTracker"

    const-string p2, "---- Done dumping SSIDs that were not seen on this scan ----"

    .line 673
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_f
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 677
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 678
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 680
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->conditionallyNotifyListeners()V

    return-void

    :catchall_0
    move-exception p0

    .line 678
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private updateNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 10

    .line 702
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->clearAccessPointsAndConditionallyUpdate()V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 708
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 709
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->DBG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastNetworkInfo set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eq v0, p1, :cond_2

    .line 714
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onConnectedChanged()V

    :cond_2
    const/4 p1, 0x0

    .line 720
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 721
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->DBG()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastInfo set as: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_4

    .line 725
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 726
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 725
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(ILjava/util/List;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 732
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ltz v1, :cond_8

    .line 734
    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/wifi/AccessPoint;

    .line 735
    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v6

    .line 736
    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v8, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5, p1, v7, v8}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 738
    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v4

    if-eq v6, v4, :cond_5

    move v3, v2

    move v4, v3

    goto :goto_1

    :cond_5
    move v4, v2

    .line 740
    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-boolean v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoringUiEnabled:Z

    iget-wide v8, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMaxSpeedLabelScoreCacheAge:J

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z

    move-result v5

    if-eqz v5, :cond_7

    move v3, v2

    move v4, v3

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_8
    if-eqz v3, :cond_9

    .line 747
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_9
    if-eqz v4, :cond_a

    .line 750
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->conditionallyNotifyListeners()V

    .line 752
    :cond_a
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private updateNetworkScores()V
    .locals 8

    .line 777
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 779
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 780
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-boolean v5, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoringUiEnabled:Z

    iget-wide v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMaxSpeedLabelScoreCacheAge:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 786
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 787
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->conditionallyNotifyListeners()V

    .line 789
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private updateScanResultCache(Ljava/util/List;)Landroid/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation

    .line 448
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 449
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 456
    :cond_2
    iget-boolean p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    if-nez p1, :cond_3

    .line 457
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->evictOldScans()V

    .line 460
    :cond_3
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 461
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 463
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[IBSS]"

    .line 464
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 468
    :cond_5
    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 471
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_2

    .line 473
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 474
    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 477
    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    return-object p1
.end method

.method private updateWifiState(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_2

    .line 840
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->resume()V

    goto :goto_0

    .line 843
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->clearAccessPointsAndConditionallyUpdate()V

    const/4 v0, 0x0

    .line 844
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 845
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 846
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_1

    .line 847
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->pause()V

    :cond_1
    const/4 v0, 0x1

    .line 849
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    .line 851
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onWifiStateChanged(I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "  - wifi tracker ------"

    .line 438
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAccessPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 412
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getCachedOrCreate(Ljava/util/List;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)",
            "Lcom/android/settingslib/wifi/AccessPoint;"
        }
    .end annotation

    .line 687
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 689
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    invoke-static {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 690
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 691
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResults(Ljava/util/Collection;)V

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 695
    :cond_1
    new-instance p2, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    return-object p2
.end method

.method public getManager()Landroid/net/wifi/WifiManager;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public getNumSavedNetworks()I
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, p0}, Lcom/android/settingslib/wifi/WifiSavedConfigUtils;->getAllConfigs(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public isConnected()Z
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isWifiEnabled()Z
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public onStart()V
    .locals 6

    .line 306
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->forceUpdate()V

    .line 308
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->registerScoreCache()V

    .line 310
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 312
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "network_scoring_ui_enabled"

    .line 311
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoringUiEnabled:Z

    .line 315
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 317
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/32 v3, 0x124f80

    const-string v1, "speed_label_cache_eviction_age_millis"

    .line 316
    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMaxSpeedLabelScoreCacheAge:J

    .line 321
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    .line 322
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 325
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    invoke-direct {v0, p0, v5}, Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Lcom/android/settingslib/wifi/WifiTracker$1;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    .line 326
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 328
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 378
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 380
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 381
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    .line 383
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->unregisterScoreCache()V

    .line 384
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->pauseScanning()V

    .line 386
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public resumeScanning()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->resume()V

    :cond_1
    return-void
.end method

.method setWorkThread(Landroid/os/HandlerThread;)V
    .locals 3

    .line 248
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkThread:Landroid/os/HandlerThread;

    .line 249
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Landroid/os/Handler;

    .line 250
    new-instance p1, Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settingslib/wifi/WifiTracker$1;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/wifi/WifiTracker$1;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Handler;)V

    invoke-direct {p1, v0, v1}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    return-void
.end method
