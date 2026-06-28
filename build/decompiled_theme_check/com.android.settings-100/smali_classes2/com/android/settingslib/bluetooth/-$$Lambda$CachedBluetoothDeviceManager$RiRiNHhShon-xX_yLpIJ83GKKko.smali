.class public final synthetic Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$RiRiNHhShon-xX_yLpIJ83GKKko;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$RiRiNHhShon-xX_yLpIJ83GKKko;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$RiRiNHhShon-xX_yLpIJ83GKKko;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$RiRiNHhShon-xX_yLpIJ83GKKko;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$RiRiNHhShon-xX_yLpIJ83GKKko;->INSTANCE:Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$RiRiNHhShon-xX_yLpIJ83GKKko;

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

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->lambda$clearNonBondedDevices$2(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    return p0
.end method
