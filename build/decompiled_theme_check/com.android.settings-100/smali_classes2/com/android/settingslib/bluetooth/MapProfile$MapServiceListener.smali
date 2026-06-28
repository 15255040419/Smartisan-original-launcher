.class final Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;
.super Ljava/lang/Object;
.source "MapProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/MapProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MapServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/MapProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/MapProfile;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/MapProfile;Lcom/android/settingslib/bluetooth/MapProfile$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;-><init>(Lcom/android/settingslib/bluetooth/MapProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4

    .line 63
    invoke-static {}, Lcom/android/settingslib/bluetooth/MapProfile;->access$000()Z

    move-result p1

    const-string v0, "MapProfile"

    if-eqz p1, :cond_0

    const-string p1, "Bluetooth service connected"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    check-cast p2, Landroid/bluetooth/BluetoothMap;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/MapProfile;->access$102(Lcom/android/settingslib/bluetooth/MapProfile;Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap;

    .line 66
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/MapProfile;->access$100(Lcom/android/settingslib/bluetooth/MapProfile;)Landroid/bluetooth/BluetoothMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothMap;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 67
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 68
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 69
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/MapProfile;->access$200(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_1

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapProfile found new device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/MapProfile;->access$200(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/MapProfile;->access$300(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/MapProfile;->access$400(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 75
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 77
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/MapProfile;->access$400(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    .line 81
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/MapProfile;->access$502(Lcom/android/settingslib/bluetooth/MapProfile;Z)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    .line 85
    invoke-static {}, Lcom/android/settingslib/bluetooth/MapProfile;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MapProfile"

    const-string v0, "Bluetooth service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/MapProfile;->access$400(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    .line 87
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/MapProfile;->access$502(Lcom/android/settingslib/bluetooth/MapProfile;Z)Z

    return-void
.end method
