.class final enum Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;
.super Ljava/lang/Enum;
.source "BluetoothPbapRequestSetPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SetPathDir"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

.field public static final enum DOWN:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

.field public static final enum ROOT:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

.field public static final enum UP:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    const/4 v1, 0x0

    const-string v2, "ROOT"

    invoke-direct {v0, v2, v1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;->ROOT:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    const/4 v2, 0x1

    const-string v3, "UP"

    invoke-direct {v0, v3, v2}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;->UP:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    const/4 v3, 0x2

    const-string v4, "DOWN"

    invoke-direct {v0, v4, v3}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;->DOWN:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    .line 31
    sget-object v4, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;->ROOT:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    aput-object v4, v0, v1

    sget-object v1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;->UP:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;->DOWN:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    aput-object v1, v0, v3

    sput-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;->$VALUES:[Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;
    .locals 1

    .line 31
    const-class v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    return-object p0
.end method

.method public static values()[Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;
    .locals 1

    .line 31
    sget-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;->$VALUES:[Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    invoke-virtual {v0}, [Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    return-object v0
.end method
