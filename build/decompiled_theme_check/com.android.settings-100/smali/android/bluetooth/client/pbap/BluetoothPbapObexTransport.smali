.class Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;
.super Ljava/lang/Object;
.source "BluetoothPbapObexTransport.java"

# interfaces
.implements Ljavax/obex/ObexTransport;


# instance fields
.field private mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 35
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->close()V

    return-void
.end method

.method public connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public create()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public disconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getMaxReceivePacketSize()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getMaxTransmitPacketSize()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public isConnected()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result p0

    return p0
.end method

.method public isSrmSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public listen()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;->openInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;->openOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method
