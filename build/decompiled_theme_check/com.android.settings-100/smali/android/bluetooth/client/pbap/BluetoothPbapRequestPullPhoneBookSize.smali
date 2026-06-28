.class Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;
.super Landroid/bluetooth/client/pbap/BluetoothPbapRequest;
.source "BluetoothPbapRequestPullPhoneBookSize.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapRequestPullPhoneBookSize"

.field private static final TYPE:Ljava/lang/String; = "x-bt/phonebook"


# instance fields
.field private mSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;-><init>()V

    .line 34
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 36
    iget-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/16 v0, 0x42

    const-string/jumbo v1, "x-bt/phonebook"

    invoke-virtual {p1, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 38
    new-instance p1, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;

    invoke-direct {p1}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;-><init>()V

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BS)V

    .line 40
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, p0}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 0

    .line 53
    iget p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;->mSize:I

    return p0
.end method

.method protected readResponseHeaders(Ljavax/obex/HeaderSet;)V
    .locals 2

    const-string v0, "BluetoothPbapRequestPullPhoneBookSize"

    const-string/jumbo v1, "readResponseHeaders"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {p1}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->fromHeaderSet(Ljavax/obex/HeaderSet;)Landroid/bluetooth/client/pbap/utils/ObexAppParameters;

    move-result-object p1

    const/16 v0, 0x8

    .line 49
    invoke-virtual {p1, v0}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->getShort(B)S

    move-result p1

    iput p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;->mSize:I

    return-void
.end method
