.class final Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;
.super Landroid/bluetooth/client/pbap/BluetoothPbapRequest;
.source "BluetoothPbapRequestPullVcardEntry.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapRequestPullVcardEntry"

.field private static final TYPE:Ljava/lang/String; = "x-bt/vcard"


# instance fields
.field private final mFormat:B

.field private mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;


# direct methods
.method public constructor <init>(Ljava/lang/String;JB)V
    .locals 3

    .line 40
    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;-><init>()V

    .line 41
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 43
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/16 v0, 0x42

    const-string/jumbo v2, "x-bt/vcard"

    invoke-virtual {p1, v0, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    if-eqz p4, :cond_0

    if-eq p4, v1, :cond_0

    const/4 p4, 0x0

    .line 51
    :cond_0
    new-instance p1, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;

    invoke-direct {p1}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 54
    invoke-virtual {p1, v0, p2, p3}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BJ)V

    :cond_1
    const/4 p2, 0x7

    .line 57
    invoke-virtual {p1, p2, p4}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BB)V

    .line 58
    iget-object p2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, p2}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 60
    iput-byte p4, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;->mFormat:B

    return-void
.end method


# virtual methods
.method protected checkResponseCode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BluetoothPbapRequestPullVcardEntry"

    const-string v1, "checkResponseCode"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;->mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;

    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;->getCount()I

    move-result p0

    if-nez p0, :cond_2

    const/16 p0, 0xc4

    if-eq p1, p0, :cond_1

    const/16 p0, 0xc6

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid response received"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string p0, "Vcard Entry not found"

    .line 78
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public getVcard()Lcom/android/vcard/VCardEntry;
    .locals 0

    .line 84
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;->mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;

    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;->getFirst()Lcom/android/vcard/VCardEntry;

    move-result-object p0

    return-object p0
.end method

.method protected readResponse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BluetoothPbapRequestPullVcardEntry"

    const-string/jumbo v1, "readResponse"

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;

    iget-byte v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;->mFormat:B

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;-><init>(Ljava/io/InputStream;B)V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;->mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;

    return-void
.end method
