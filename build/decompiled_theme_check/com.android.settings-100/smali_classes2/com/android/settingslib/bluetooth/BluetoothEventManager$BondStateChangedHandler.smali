.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BondStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V
    .locals 0

    .line 310
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method

.method private showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    packed-switch p3, :pswitch_data_0

    .line 381
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "showUnbondMessage: Not displaying any message for reason: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothEventManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 378
    :pswitch_1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_pairing_error_message:I

    goto :goto_0

    .line 372
    :pswitch_2
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_pairing_device_down_error_message:I

    goto :goto_0

    .line 369
    :pswitch_3
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_pairing_rejected_error_message:I

    goto :goto_0

    .line 366
    :pswitch_4
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_pairing_pin_error_message:I

    .line 384
    :goto_0
    invoke-static {p1, p2, p0}, Lcom/android/settingslib/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    if-nez p3, :cond_0

    const-string p0, "BluetoothEventManager"

    const-string p1, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    .line 314
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/high16 v0, -0x80000000

    const-string v1, "android.bluetooth.device.extra.BOND_STATE"

    .line 317
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 319
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_2

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CachedBluetoothDevice for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not found, calling readPairedDevices()."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothEventManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got bonding state changed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", but we have no record of that device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothEventManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1400(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v4}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1700(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 332
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p3, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 336
    :cond_2
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1500(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object p3

    monitor-enter p3

    .line 337
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1500(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 338
    invoke-interface {v4, v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_0

    .line 340
    :cond_3
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onBondingStateChanged(I)V

    const/16 p3, 0xa

    if-ne v1, p3, :cond_5

    .line 345
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-eqz p3, :cond_4

    .line 346
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->onDeviceUnpaired(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_4
    const-string p3, "android.bluetooth.device.extra.REASON"

    .line 348
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 351
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    .line 340
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
