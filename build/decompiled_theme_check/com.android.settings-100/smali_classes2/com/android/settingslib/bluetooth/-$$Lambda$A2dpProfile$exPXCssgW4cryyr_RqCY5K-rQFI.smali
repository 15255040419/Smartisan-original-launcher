.class public final synthetic Lcom/android/settingslib/bluetooth/-$$Lambda$A2dpProfile$exPXCssgW4cryyr_RqCY5K-rQFI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settingslib/bluetooth/-$$Lambda$A2dpProfile$exPXCssgW4cryyr_RqCY5K-rQFI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/bluetooth/-$$Lambda$A2dpProfile$exPXCssgW4cryyr_RqCY5K-rQFI;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/-$$Lambda$A2dpProfile$exPXCssgW4cryyr_RqCY5K-rQFI;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/-$$Lambda$A2dpProfile$exPXCssgW4cryyr_RqCY5K-rQFI;->INSTANCE:Lcom/android/settingslib/bluetooth/-$$Lambda$A2dpProfile$exPXCssgW4cryyr_RqCY5K-rQFI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/bluetooth/BluetoothCodecConfig;

    check-cast p2, Landroid/bluetooth/BluetoothCodecConfig;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->lambda$getHighQualityAudioOptionLabel$0(Landroid/bluetooth/BluetoothCodecConfig;Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result p0

    return p0
.end method
