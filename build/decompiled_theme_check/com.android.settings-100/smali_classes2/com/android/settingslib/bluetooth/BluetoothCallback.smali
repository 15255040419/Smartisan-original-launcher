.class public interface abstract Lcom/android/settingslib/bluetooth/BluetoothCallback;
.super Ljava/lang/Object;
.source "BluetoothCallback.java"


# virtual methods
.method public abstract onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
.end method

.method public abstract onAudioModeChanged()V
.end method

.method public abstract onBluetoothStateChanged(I)V
.end method

.method public abstract onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
.end method

.method public abstract onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
.end method

.method public abstract onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
.end method

.method public abstract onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0

    return-void
.end method

.method public abstract onScanningStateChanged(Z)V
.end method
