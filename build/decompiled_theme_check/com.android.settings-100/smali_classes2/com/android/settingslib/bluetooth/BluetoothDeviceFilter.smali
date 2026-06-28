.class public final Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$NapFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$PanuFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;
    }
.end annotation


# static fields
.field public static final ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field public static final BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field private static final FILTERS:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field private static final TAG:Ljava/lang/String; = "BluetoothDeviceFilter"

.field public static final UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 43
    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;

    invoke-direct {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 46
    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;

    invoke-direct {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 49
    sget-object v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioFilter;

    invoke-direct {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;

    invoke-direct {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$PanuFilter;

    invoke-direct {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$PanuFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$NapFilter;

    invoke-direct {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$NapFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    const/4 v1, 0x4

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFilter(I)Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;
    .locals 2

    if-ltz p0, :cond_0

    .line 69
    sget-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 70
    aget-object p0, v0, p0

    return-object p0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid filter type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " for device picker"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothDeviceFilter"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object p0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    return-object p0
.end method
