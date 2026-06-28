.class Landroid/bluetooth/client/pbap/BluetoothPbapSession;
.super Ljava/lang/Object;
.source "BluetoothPbapSession.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;
    }
.end annotation


# static fields
.field public static final ACTION_LISTING:I = 0xe

.field public static final ACTION_PHONEBOOK_SIZE:I = 0x10

.field public static final ACTION_VCARD:I = 0xf

.field public static final AUTH_REQUESTED:I = 0x8

.field public static final AUTH_TIMEOUT:I = 0x9

.field private static final PBAP_UUID:Ljava/lang/String; = "0000112f-0000-1000-8000-00805f9b34fb"

.field public static final REQUEST_COMPLETED:I = 0x3

.field public static final REQUEST_FAILED:I = 0x4

.field private static final RFCOMM_CONNECTED:I = 0x1

.field private static final RFCOMM_FAILED:I = 0x2

.field public static final SESSION_CONNECTED:I = 0x6

.field public static final SESSION_CONNECTING:I = 0x5

.field public static final SESSION_DISCONNECTED:I = 0x7

.field private static final TAG:Ljava/lang/String; = "android.bluetooth.client.pbap.BluetoothPbapSession"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConnectThread:Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mObexSession:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

.field private final mParentHandler:Landroid/os/Handler;

.field private mPendingRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

.field private final mSessionHandler:Landroid/os/Handler;

.field private mTransport:Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mPendingRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    .line 72
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 73
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 77
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 78
    iput-object p2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    .line 79
    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mConnectThread:Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;

    .line 80
    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mTransport:Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;

    .line 81
    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mObexSession:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    .line 83
    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, 0xa

    const-string v0, "PBAP session handler"

    invoke-direct {p1, v0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mHandlerThread:Landroid/os/HandlerThread;

    .line 85
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mSessionHandler:Landroid/os/Handler;

    return-void

    .line 74
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "No Bluetooth adapter in the system"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Landroid/bluetooth/client/pbap/BluetoothPbapSession;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$100(Landroid/bluetooth/client/pbap/BluetoothPbapSession;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 32
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$200(Landroid/bluetooth/client/pbap/BluetoothPbapSession;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mSessionHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private startObexSession()V
    .locals 2

    const-string v0, "android.bluetooth.client.pbap.BluetoothPbapSession"

    const-string/jumbo v1, "startObexSession"

    .line 274
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mTransport:Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;

    invoke-direct {v0, v1}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mObexSession:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    .line 277
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mObexSession:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mSessionHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->start(Landroid/os/Handler;)V

    return-void
.end method

.method private startRfcomm()V
    .locals 2

    const-string v0, "android.bluetooth.client.pbap.BluetoothPbapSession"

    const-string/jumbo v1, "startRfcomm"

    .line 236
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mConnectThread:Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mObexSession:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 241
    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;

    invoke-direct {v0, p0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;-><init>(Landroid/bluetooth/client/pbap/BluetoothPbapSession;)V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mConnectThread:Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;

    .line 242
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mConnectThread:Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;

    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->start()V

    :cond_0
    return-void
.end method

.method private stopObexSession()V
    .locals 2

    const-string v0, "android.bluetooth.client.pbap.BluetoothPbapSession"

    const-string/jumbo v1, "stopObexSession"

    .line 281
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mObexSession:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->stop()V

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mObexSession:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    :cond_0
    return-void
.end method

.method private stopRfcomm()V
    .locals 2

    const-string v0, "android.bluetooth.client.pbap.BluetoothPbapSession"

    const-string/jumbo v1, "stopRfcomm"

    .line 252
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mConnectThread:Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 256
    :try_start_0
    invoke-virtual {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :catch_0
    iput-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mConnectThread:Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;

    .line 263
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mTransport:Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;

    if-eqz v0, :cond_1

    .line 265
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    :catch_1
    iput-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mTransport:Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;

    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    const-string v0, "android.bluetooth.client.pbap.BluetoothPbapSession"

    const-string v1, "abort"

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mPendingRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mPendingRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    .line 192
    :cond_0
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mObexSession:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    if-eqz p0, :cond_1

    .line 193
    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->abort()V

    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handler: msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.client.pbap.BluetoothPbapSession"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x7

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 159
    :pswitch_0
    invoke-virtual {p0, v2}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->setAuthResponse(Ljava/lang/String;)Z

    .line 161
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 148
    :pswitch_1
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 150
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mSessionHandler:Landroid/os/Handler;

    const/16 p1, 0x6a

    .line 153
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v2, 0x7530

    .line 151
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 143
    :pswitch_2
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 138
    :pswitch_3
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 132
    :pswitch_4
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 133
    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->stopRfcomm()V

    goto :goto_0

    .line 112
    :pswitch_5
    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->stopObexSession()V

    .line 114
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 116
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mPendingRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    if-eqz p1, :cond_2

    .line 117
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 118
    iput-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mPendingRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    goto :goto_0

    .line 123
    :pswitch_6
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 125
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mPendingRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    if-eqz p1, :cond_2

    .line 126
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mObexSession:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-virtual {v0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->schedule(Landroid/bluetooth/client/pbap/BluetoothPbapRequest;)Z

    .line 127
    iput-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mPendingRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    goto :goto_0

    .line 95
    :cond_0
    iput-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mConnectThread:Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;

    .line 97
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 99
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mPendingRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    if-eqz p1, :cond_2

    .line 100
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 101
    iput-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mPendingRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    goto :goto_0

    .line 106
    :cond_1
    iput-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mConnectThread:Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;

    .line 107
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;

    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mTransport:Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;

    .line 108
    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->startObexSession()V

    :cond_2
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public makeRequest(Landroid/bluetooth/client/pbap/BluetoothPbapRequest;)Z
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.client.pbap.BluetoothPbapSession"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mPendingRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    if-eqz v0, :cond_0

    const-string p0, "makeRequest: request already queued, exiting"

    .line 201
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 205
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mObexSession:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    if-nez v0, :cond_1

    .line 206
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mPendingRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    .line 213
    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->startRfcomm()V

    const/4 p0, 0x1

    return p0

    .line 218
    :cond_1
    invoke-virtual {v0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->schedule(Landroid/bluetooth/client/pbap/BluetoothPbapRequest;)Z

    move-result p0

    return p0
.end method

.method public setAuthResponse(Ljava/lang/String;)Z
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAuthResponse key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.client.pbap.BluetoothPbapSession"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mSessionHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    .line 225
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->mObexSession:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 232
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->setAuthReply(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public start()V
    .locals 2

    const-string v0, "android.bluetooth.client.pbap.BluetoothPbapSession"

    const-string/jumbo v1, "start"

    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->startRfcomm()V

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "android.bluetooth.client.pbap.BluetoothPbapSession"

    const-string v1, "Stop"

    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->stopObexSession()V

    return-void
.end method
