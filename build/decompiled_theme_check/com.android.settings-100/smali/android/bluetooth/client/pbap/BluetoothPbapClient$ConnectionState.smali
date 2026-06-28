.class public final enum Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;
.super Ljava/lang/Enum;
.source "BluetoothPbapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/client/pbap/BluetoothPbapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

.field public static final enum CONNECTED:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

.field public static final enum CONNECTING:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

.field public static final enum DISCONNECTED:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

.field public static final enum DISCONNECTING:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 374
    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    const/4 v1, 0x0

    const-string v2, "DISCONNECTED"

    invoke-direct {v0, v2, v1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;->DISCONNECTED:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    const/4 v2, 0x1

    const-string v3, "CONNECTING"

    invoke-direct {v0, v3, v2}, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;->CONNECTING:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    const/4 v3, 0x2

    const-string v4, "CONNECTED"

    invoke-direct {v0, v4, v3}, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;->CONNECTED:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    const/4 v4, 0x3

    const-string v5, "DISCONNECTING"

    invoke-direct {v0, v5, v4}, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;->DISCONNECTING:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    .line 373
    sget-object v5, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;->DISCONNECTED:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    aput-object v5, v0, v1

    sget-object v1, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;->CONNECTING:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;->CONNECTED:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;->DISCONNECTING:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    aput-object v1, v0, v4

    sput-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;->$VALUES:[Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 373
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;
    .locals 1

    .line 373
    const-class v0, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    return-object p0
.end method

.method public static values()[Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;
    .locals 1

    .line 373
    sget-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;->$VALUES:[Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    invoke-virtual {v0}, [Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    return-object v0
.end method
