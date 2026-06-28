.class final Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;
.super Landroid/bluetooth/client/pbap/BluetoothPbapRequest;
.source "BluetoothPbapRequestPullVcardListing.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapRequestPullVcardListing"

.field private static final TYPE:Ljava/lang/String; = "x-bt/vcard-listing"


# instance fields
.field private mNewMissedCalls:I

.field private mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;


# direct methods
.method public constructor <init>(Ljava/lang/String;BBLjava/lang/String;II)V
    .locals 3

    .line 41
    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->mNewMissedCalls:I

    if-ltz p5, :cond_6

    const v0, 0xffff

    if-gt p5, v0, :cond_6

    if-ltz p6, :cond_5

    if-gt p6, v0, :cond_5

    if-nez p1, :cond_0

    const-string p1, ""

    .line 55
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 57
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/16 v0, 0x42

    const-string/jumbo v2, "x-bt/vcard-listing"

    invoke-virtual {p1, v0, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 59
    new-instance p1, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;

    invoke-direct {p1}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;-><init>()V

    if-ltz p2, :cond_1

    .line 62
    invoke-virtual {p1, v1, p2}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BB)V

    :cond_1
    if-eqz p4, :cond_2

    const/4 p2, 0x3

    .line 66
    invoke-virtual {p1, p2, p3}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BB)V

    const/4 p2, 0x2

    .line 67
    invoke-virtual {p1, p2, p4}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BLjava/lang/String;)V

    :cond_2
    if-lez p5, :cond_3

    const/4 p2, 0x4

    int-to-short p3, p5

    .line 75
    invoke-virtual {p1, p2, p3}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BS)V

    :cond_3
    if-lez p6, :cond_4

    const/4 p2, 0x5

    int-to-short p3, p6

    .line 79
    invoke-virtual {p1, p2, p3}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BS)V

    .line 82
    :cond_4
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, p0}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    return-void

    .line 48
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listStartOffset should be [0..65535]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxListCount should be [0..65535]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/client/pbap/BluetoothPbapCard;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;

    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;->getList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getNewMissedCalls()I
    .locals 0

    .line 108
    iget p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->mNewMissedCalls:I

    return p0
.end method

.method protected readResponse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BluetoothPbapRequestPullVcardListing"

    const-string/jumbo v1, "readResponse"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;

    invoke-direct {v0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;

    return-void
.end method

.method protected readResponseHeaders(Ljavax/obex/HeaderSet;)V
    .locals 2

    const-string v0, "BluetoothPbapRequestPullVcardListing"

    const-string/jumbo v1, "readResponseHeaders"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {p1}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->fromHeaderSet(Ljavax/obex/HeaderSet;)Landroid/bluetooth/client/pbap/utils/ObexAppParameters;

    move-result-object p1

    const/16 v0, 0x9

    .line 98
    invoke-virtual {p1, v0}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->exists(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p1, v0}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->getByte(B)B

    move-result p1

    iput p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->mNewMissedCalls:I

    :cond_0
    return-void
.end method
