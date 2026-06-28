.class public final synthetic Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$e-LCWrNLhjsTC176L1agksvai7c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$e-LCWrNLhjsTC176L1agksvai7c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$e-LCWrNLhjsTC176L1agksvai7c;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$e-LCWrNLhjsTC176L1agksvai7c;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$e-LCWrNLhjsTC176L1agksvai7c;->INSTANCE:Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$e-LCWrNLhjsTC176L1agksvai7c;

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

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->lambda$clearNonBondedDevices$0(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
