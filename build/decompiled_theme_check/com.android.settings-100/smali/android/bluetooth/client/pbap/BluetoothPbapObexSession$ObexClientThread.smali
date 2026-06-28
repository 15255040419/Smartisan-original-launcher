.class Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;
.super Ljava/lang/Thread;
.source "BluetoothPbapObexSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObexClientThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ObexClientThread"


# instance fields
.field private mClientSession:Ljavax/obex/ClientSession;

.field private mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

.field private volatile mRunning:Z

.field final synthetic this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;


# direct methods
.method public constructor <init>(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)V
    .locals 0

    .line 139
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRunning:Z

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mClientSession:Ljavax/obex/ClientSession;

    .line 142
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    return-void
.end method

.method static synthetic access$100(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;)Landroid/bluetooth/client/pbap/BluetoothPbapRequest;
    .locals 0

    .line 130
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    return-object p0
.end method

.method private connect()Z
    .locals 4

    const-string v0, "ObexClientThread"

    const-string v1, "connect"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 214
    :try_start_0
    new-instance v1, Ljavax/obex/ClientSession;

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {v2}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$300(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Ljavax/obex/ObexTransport;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mClientSession:Ljavax/obex/ClientSession;

    .line 215
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mClientSession:Ljavax/obex/ClientSession;

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {v2}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$400(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/obex/ClientSession;->setAuthenticator(Ljavax/obex/Authenticator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    new-instance v1, Ljavax/obex/HeaderSet;

    invoke-direct {v1}, Ljavax/obex/HeaderSet;-><init>()V

    const/16 v2, 0x46

    .line 221
    invoke-static {}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$500()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 224
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {v2, v1}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v1

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_0

    .line 227
    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private disconnect()V
    .locals 2

    const-string v0, "ObexClientThread"

    const-string v1, "disconnect"

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mClientSession:Ljavax/obex/ClientSession;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 242
    :try_start_0
    invoke-virtual {v0, v1}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 243
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {p0}, Ljavax/obex/ClientSession;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 147
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 149
    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->connect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$200(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$200(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 156
    :goto_0
    iget-boolean v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRunning:Z

    if-eqz v0, :cond_4

    .line 157
    monitor-enter p0

    const/4 v0, 0x0

    .line 159
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    if-nez v1, :cond_1

    const-string v1, "ObexClientThread"

    const-string/jumbo v2, "waiting for request"

    .line 160
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    iget-boolean v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRunning:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    if-eqz v1, :cond_3

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before executing the request mRunning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ObexClientThread"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {v1, v2}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->execute(Ljavax/obex/ClientSession;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 176
    :catch_0
    iput-boolean v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRunning:Z

    .line 179
    :goto_1
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    invoke-virtual {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$200(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 183
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$200(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 186
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after executing the request mRunning:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObexClientThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    :try_start_3
    const-string v1, "ObexClientThread"

    const-string v2, "Interrupted"

    .line 164
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iput-boolean v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRunning:Z

    .line 166
    monitor-exit p0

    goto :goto_4

    .line 168
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 192
    :cond_4
    :goto_4
    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->disconnect()V

    .line 194
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$200(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized schedule(Landroid/bluetooth/client/pbap/BluetoothPbapRequest;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ObexClientThread"

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "schedule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 201
    monitor-exit p0

    return p1

    .line 204
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 207
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
