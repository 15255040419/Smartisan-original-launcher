.class abstract Landroid/bluetooth/client/pbap/BluetoothPbapRequest;
.super Ljava/lang/Object;
.source "BluetoothPbapRequest.java"


# static fields
.field protected static final OAP_TAGID_FILTER:B = 0x6t

.field protected static final OAP_TAGID_FORMAT:B = 0x7t

.field protected static final OAP_TAGID_LIST_START_OFFSET:B = 0x5t

.field protected static final OAP_TAGID_MAX_LIST_COUNT:B = 0x4t

.field protected static final OAP_TAGID_NEW_MISSED_CALLS:B = 0x9t

.field protected static final OAP_TAGID_ORDER:B = 0x1t

.field protected static final OAP_TAGID_PHONEBOOK_SIZE:B = 0x8t

.field protected static final OAP_TAGID_SEARCH_ATTRIBUTE:B = 0x3t

.field protected static final OAP_TAGID_SEARCH_VALUE:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapRequest"


# instance fields
.field private mAborted:Z

.field protected mHeaderSet:Ljavax/obex/HeaderSet;

.field private mOp:Ljavax/obex/ClientOperation;

.field protected mResponseCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mAborted:Z

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    .line 52
    new-instance v0, Ljavax/obex/HeaderSet;

    invoke-direct {v0}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mHeaderSet:Ljavax/obex/HeaderSet;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mAborted:Z

    .line 104
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    if-eqz p0, :cond_0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BluetoothPbapRequest"

    const-string v1, "Exception occured when trying to abort"

    .line 108
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected checkResponseCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "BluetoothPbapRequest"

    const-string p1, "checkResponseCode"

    .line 126
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public execute(Ljavax/obex/ClientSession;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BluetoothPbapRequest"

    const-string v1, "execute"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-boolean v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mAborted:Z

    const/16 v2, 0xd0

    if-eqz v1, :cond_0

    .line 64
    iput v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mResponseCode:I

    return-void

    .line 69
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, v1}, Ljavax/obex/ClientSession;->get(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object p1

    check-cast p1, Ljavax/obex/ClientOperation;

    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    .line 72
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljavax/obex/ClientOperation;->setGetFinalFlag(Z)V

    .line 78
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Ljavax/obex/ClientOperation;->continueOperation(ZZ)Z

    .line 80
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    invoke-virtual {p1}, Ljavax/obex/ClientOperation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->readResponseHeaders(Ljavax/obex/HeaderSet;)V

    .line 82
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    invoke-virtual {p1}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->readResponse(Ljava/io/InputStream;)V

    .line 84
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 86
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    invoke-virtual {p1}, Ljavax/obex/ClientOperation;->close()V

    .line 88
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    invoke-virtual {p1}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result p1

    iput p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mResponseCode:I

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mResponseCode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mResponseCode:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mResponseCode:I

    invoke-virtual {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->checkResponseCode(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v1, "IOException occured when processing request"

    .line 94
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    iput v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mResponseCode:I

    .line 97
    throw p1
.end method

.method public final isSuccess()Z
    .locals 1

    .line 56
    iget p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mResponseCode:I

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected readResponse(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "BluetoothPbapRequest"

    const-string/jumbo p1, "readResponse"

    .line 114
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected readResponseHeaders(Ljavax/obex/HeaderSet;)V
    .locals 0

    const-string p0, "BluetoothPbapRequest"

    const-string/jumbo p1, "readResponseHeaders"

    .line 120
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
