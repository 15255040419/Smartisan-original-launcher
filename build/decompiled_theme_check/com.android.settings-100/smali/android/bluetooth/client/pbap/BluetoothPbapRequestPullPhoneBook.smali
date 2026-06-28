.class final Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;
.super Landroid/bluetooth/client/pbap/BluetoothPbapRequest;
.source "BluetoothPbapRequestPullPhoneBook.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapRequestPullPhoneBook"

.field private static final TYPE:Ljava/lang/String; = "x-bt/phonebook"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mFormat:B

.field private mNewMissedCalls:I

.field private mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;


# direct methods
.method public constructor <init>(Ljava/lang/String;JBII)V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mNewMissedCalls:I

    .line 53
    invoke-direct/range {p0 .. p6}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->init(Ljava/lang/String;JBII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JBIILandroid/accounts/Account;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mNewMissedCalls:I

    .line 47
    iput-object p7, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mAccount:Landroid/accounts/Account;

    .line 48
    invoke-direct/range {p0 .. p6}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->init(Ljava/lang/String;JBII)V

    return-void
.end method

.method private init(Ljava/lang/String;JBII)V
    .locals 3

    if-ltz p5, :cond_4

    const v0, 0xffff

    if-gt p5, v0, :cond_4

    if-ltz p6, :cond_3

    if-gt p6, v0, :cond_3

    .line 67
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 69
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/16 v0, 0x42

    const-string/jumbo v2, "x-bt/phonebook"

    invoke-virtual {p1, v0, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 71
    new-instance p1, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;

    invoke-direct {p1}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;-><init>()V

    if-eqz p4, :cond_0

    if-eq p4, v1, :cond_0

    const/4 p4, 0x0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 80
    invoke-virtual {p1, v0, p2, p3}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BJ)V

    :cond_1
    const/4 p2, 0x7

    .line 83
    invoke-virtual {p1, p2, p4}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BB)V

    const/4 p2, 0x4

    int-to-short p3, p5

    .line 89
    invoke-virtual {p1, p2, p3}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BS)V

    if-lez p6, :cond_2

    const/4 p2, 0x5

    int-to-short p3, p6

    .line 92
    invoke-virtual {p1, p2, p3}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BS)V

    .line 95
    :cond_2
    iget-object p2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, p2}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 97
    iput-byte p4, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mFormat:B

    return-void

    .line 64
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listStartOffset should be [0..65535]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 60
    :cond_4
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
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;

    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;->getList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getNewMissedCalls()I
    .locals 0

    .line 123
    iget p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mNewMissedCalls:I

    return p0
.end method

.method protected readResponse(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BluetoothPbapRequestPullPhoneBook"

    const-string/jumbo v1, "readResponse"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;

    iget-byte v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mFormat:B

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mAccount:Landroid/accounts/Account;

    invoke-direct {v0, p1, v1, v2}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;-><init>(Ljava/io/InputStream;BLandroid/accounts/Account;)V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;

    return-void
.end method

.method protected readResponseHeaders(Ljavax/obex/HeaderSet;)V
    .locals 2

    const-string v0, "BluetoothPbapRequestPullPhoneBook"

    const-string/jumbo v1, "readResponse"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {p1}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->fromHeaderSet(Ljavax/obex/HeaderSet;)Landroid/bluetooth/client/pbap/utils/ObexAppParameters;

    move-result-object p1

    const/16 v0, 0x9

    .line 113
    invoke-virtual {p1, v0}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->exists(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p1, v0}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->getByte(B)B

    move-result p1

    iput p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mNewMissedCalls:I

    :cond_0
    return-void
.end method
