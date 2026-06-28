.class Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;
.super Ljava/lang/Thread;
.source "BluetoothPbapSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/client/pbap/BluetoothPbapSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RfcommConnectThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RfcommConnectThread"


# instance fields
.field private mSocket:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Landroid/bluetooth/client/pbap/BluetoothPbapSession;


# direct methods
.method public constructor <init>(Landroid/bluetooth/client/pbap/BluetoothPbapSession;)V
    .locals 0

    .line 294
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    const-string p1, "RfcommConnectThread"

    .line 295
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private closeSocket()V
    .locals 2

    .line 321
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    .line 322
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RfcommConnectThread"

    const-string v1, "Error when closing socket"

    .line 325
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 300
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-static {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapSession;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-static {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapSession;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 305
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-static {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->access$100(Landroid/bluetooth/client/pbap/BluetoothPbapSession;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const-string v1, "0000112f-0000-1000-8000-00805f9b34fb"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 306
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 309
    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v0, v1}, Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 311
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-static {v1}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->access$200(Landroid/bluetooth/client/pbap/BluetoothPbapSession;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->closeSocket()V

    .line 314
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-static {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->access$200(Landroid/bluetooth/client/pbap/BluetoothPbapSession;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method
