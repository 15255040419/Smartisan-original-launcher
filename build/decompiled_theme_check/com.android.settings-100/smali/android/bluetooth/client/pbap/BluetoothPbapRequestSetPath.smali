.class final Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;
.super Landroid/bluetooth/client/pbap/BluetoothPbapRequest;
.source "BluetoothPbapRequestSetPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapRequestSetPath"


# instance fields
.field private mDir:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;-><init>()V

    .line 38
    sget-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;->DOWN:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mDir:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    .line 39
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;-><init>()V

    .line 43
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v0}, Ljavax/obex/HeaderSet;->setEmptyNameHeader()V

    if-eqz p1, :cond_0

    .line 45
    sget-object p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;->UP:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mDir:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    goto :goto_0

    .line 47
    :cond_0
    sget-object p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;->ROOT:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mDir:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    :goto_0
    return-void
.end method


# virtual methods
.method public execute(Ljavax/obex/ClientSession;)V
    .locals 4

    const-string v0, "BluetoothPbapRequestSetPath"

    const-string v1, "execute"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :try_start_0
    sget-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$1;->$SwitchMap$android$bluetooth$client$pbap$BluetoothPbapRequestSetPath$SetPathDir:[I

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mDir:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    invoke-virtual {v1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, v0, v1, v2}, Ljavax/obex/ClientSession;->setPath(Ljavax/obex/HeaderSet;ZZ)Ljavax/obex/HeaderSet;

    move-result-object p1

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, v0, v2, v2}, Ljavax/obex/ClientSession;->setPath(Ljavax/obex/HeaderSet;ZZ)Ljavax/obex/HeaderSet;

    move-result-object p1

    .line 68
    :goto_0
    invoke-virtual {p1}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result p1

    iput p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mResponseCode:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/16 p1, 0xd0

    .line 70
    iput p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mResponseCode:I

    :goto_1
    return-void
.end method
