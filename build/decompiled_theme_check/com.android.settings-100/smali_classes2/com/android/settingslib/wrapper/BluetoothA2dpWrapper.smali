.class public Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;
.super Ljava/lang/Object;
.source "BluetoothA2dpWrapper.java"


# instance fields
.field private mService:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method


# virtual methods
.method public getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p0

    return-object p0
.end method

.method public getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getService()Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method

.method public setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method
