.class public Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Channel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
    }
.end annotation


# static fields
.field private static final INVALID_LISTENER_KEY:I


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field final mBinder:Landroid/os/Binder;

.field private mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field mContext:Landroid/content/Context;

.field private mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

.field private mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

.field private mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

.field private mListenerKey:I

.field private mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerMapLock:Ljava/lang/Object;

.field private final mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

.field private mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Binder;Landroid/net/wifi/p2p/WifiP2pManager;)V
    .locals 1

    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    .line 859
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 860
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerKey:I

    .line 862
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 842
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 843
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    invoke-direct {v0, p0, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    .line 844
    iput-object p3, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .line 845
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 846
    iput-object p4, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mBinder:Landroid/os/Binder;

    .line 847
    iput-object p5, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 849
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string p1, "close"

    invoke-virtual {p0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;
    .locals 0

    .line 838
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->getListener(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .locals 0

    .line 838
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    return-object p0
.end method

.method static synthetic access$102(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .locals 0

    .line 838
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 0

    .line 838
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
    .locals 0

    .line 838
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    return-object p0
.end method

.method static synthetic access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    .line 838
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p0
.end method

.method static synthetic access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I
    .locals 0

    .line 838
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic access$602(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;
    .locals 0

    .line 838
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    return-object p1
.end method

.method static synthetic access$702(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;
    .locals 0

    .line 838
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    return-object p1
.end method

.method static synthetic access$802(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;
    .locals 0

    .line 838
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    return-object p1
.end method

.method static synthetic access$902(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;
    .locals 0

    .line 838
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    return-object p1
.end method

.method private getListener(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1107
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1108
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private handleDnsSdServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;)V
    .locals 2

    .line 1073
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 1074
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    if-eqz p0, :cond_2

    .line 1076
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    .line 1077
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsQueryName()Ljava/lang/String;

    move-result-object v1

    .line 1078
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p1

    .line 1075
    invoke-interface {p0, v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;->onDnsSdServiceAvailable(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0

    .line 1080
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1081
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    if-eqz p0, :cond_2

    .line 1083
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsQueryName()Ljava/lang/String;

    move-result-object v0

    .line 1084
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getTxtRecord()Ljava/util/Map;

    move-result-object v1

    .line 1085
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p1

    .line 1082
    invoke-interface {p0, v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;->onDnsSdTxtRecordAvailable(Ljava/lang/String;Ljava/util/Map;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0

    .line 1088
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled resp "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiP2pManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private handleServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 2

    .line 1053
    instance-of v0, p1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    if-eqz v0, :cond_0

    .line 1054
    check-cast p1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleDnsSdServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;)V

    goto :goto_0

    .line 1055
    :cond_0
    instance-of v0, p1, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    if-eqz v0, :cond_1

    .line 1056
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    if-eqz v0, :cond_2

    .line 1057
    check-cast p1, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleUpnpServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;)V

    goto :goto_0

    .line 1060
    :cond_1
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    if-eqz p0, :cond_2

    .line 1061
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getServiceType()I

    move-result v0

    .line 1062
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getRawData()[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p1

    .line 1061
    invoke-interface {p0, v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;->onServiceAvailable(I[BLandroid/net/wifi/p2p/WifiP2pDevice;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleUpnpServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;)V
    .locals 1

    .line 1068
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->getUniqueServiceNames()Ljava/util/List;

    move-result-object v0

    .line 1069
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p1

    .line 1068
    invoke-interface {p0, v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;->onUpnpServiceAvailable(Ljava/util/List;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method private putListener(Ljava/lang/Object;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1096
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1098
    :cond_1
    :try_start_0
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerKey:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerKey:I

    if-eqz v1, :cond_1

    .line 1100
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 869
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    const-string v0, "WifiP2pManager"

    const-string v1, "Channel.close(): Null mP2pManager!?"

    .line 870
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 873
    :cond_0
    :try_start_0
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mBinder:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->close(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 880
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {p0}, Ldalvik/system/CloseGuard;->close()V

    return-void

    :catch_0
    move-exception p0

    .line 875
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 887
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 891
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 894
    throw v0
.end method
