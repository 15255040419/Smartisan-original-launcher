.class public final synthetic Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$kt27ylP2LAAkpFyw4Jk0DP1n8j4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$kt27ylP2LAAkpFyw4Jk0DP1n8j4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$kt27ylP2LAAkpFyw4Jk0DP1n8j4;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$kt27ylP2LAAkpFyw4Jk0DP1n8j4;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$kt27ylP2LAAkpFyw4Jk0DP1n8j4;->INSTANCE:Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$kt27ylP2LAAkpFyw4Jk0DP1n8j4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->lambda$clearNonBondedDevices$1(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    return p0
.end method
