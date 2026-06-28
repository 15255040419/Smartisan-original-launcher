.class final Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;
.super Ljava/lang/Object;
.source "MapClientProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/MapClientProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MapClientServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/MapClientProfile;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/MapClientProfile;Lcom/android/settingslib/bluetooth/MapClientProfile$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;-><init>(Lcom/android/settingslib/bluetooth/MapClientProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4

    .line 64
    invoke-static {}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$000()Z

    move-result p1

    const-string v0, "MapClientProfile"

    if-eqz p1, :cond_0

    const-string p1, "Bluetooth service connected"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    check-cast p2, Landroid/bluetooth/BluetoothMapClient;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$102(Lcom/android/settingslib/bluetooth/MapClientProfile;Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothMapClient;

    .line 67
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$100(Lcom/android/settingslib/bluetooth/MapClientProfile;)Landroid/bluetooth/BluetoothMapClient;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothMapClient;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 68
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 69
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 70
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$200(Lcom/android/settingslib/bluetooth/MapClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_1

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapProfile found new device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$200(Lcom/android/settingslib/bluetooth/MapClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$300(Lcom/android/settingslib/bluetooth/MapClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$400(Lcom/android/settingslib/bluetooth/MapClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 76
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 78
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 81
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$400(Lcom/android/settingslib/bluetooth/MapClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    .line 82
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$502(Lcom/android/settingslib/bluetooth/MapClientProfile;Z)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    .line 86
    invoke-static {}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MapClientProfile"

    const-string v0, "Bluetooth service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$400(Lcom/android/settingslib/bluetooth/MapClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    .line 88
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$502(Lcom/android/settingslib/bluetooth/MapClientProfile;Z)Z

    return-void
.end method
