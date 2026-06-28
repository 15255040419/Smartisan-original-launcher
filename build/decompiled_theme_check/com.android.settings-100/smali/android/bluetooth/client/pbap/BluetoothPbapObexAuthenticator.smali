.class Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;
.super Ljava/lang/Object;
.source "BluetoothPbapObexAuthenticator.java"

# interfaces
.implements Ljavax/obex/Authenticator;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapObexAuthenticator"


# instance fields
.field private final mCallback:Landroid/os/Handler;

.field private mReplied:Z

.field private mSessionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mCallback:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onAuthenticationChallenge(Ljava/lang/String;ZZ)Ljavax/obex/PasswordAuthentication;
    .locals 0

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mReplied:Z

    const-string p1, "BluetoothPbapObexAuthenticator"

    const-string p2, "onAuthenticationChallenge: sending request"

    .line 55
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mCallback:Landroid/os/Handler;

    const/16 p2, 0x69

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 59
    monitor-enter p0

    .line 60
    :goto_0
    :try_start_0
    iget-boolean p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mReplied:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :try_start_1
    const-string p1, "BluetoothPbapObexAuthenticator"

    const-string p2, "onAuthenticationChallenge: waiting for response"

    .line 62
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "BluetoothPbapObexAuthenticator"

    const-string p2, "Interrupted while waiting for challenge response"

    .line 65
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mSessionKey:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onAuthenticationChallenge: mSessionKey="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BluetoothPbapObexAuthenticator"

    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance p1, Ljavax/obex/PasswordAuthentication;

    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {p1, p2, p0}, Ljavax/obex/PasswordAuthentication;-><init>([B[B)V

    goto :goto_1

    :cond_1
    const-string p0, "BluetoothPbapObexAuthenticator"

    const-string p1, "onAuthenticationChallenge: mSessionKey is empty, timeout/cancel occured"

    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p2

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 68
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public onAuthenticationResponse([B)[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized setReply(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPbapObexAuthenticator"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReply key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mSessionKey:Ljava/lang/String;

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mReplied:Z

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
