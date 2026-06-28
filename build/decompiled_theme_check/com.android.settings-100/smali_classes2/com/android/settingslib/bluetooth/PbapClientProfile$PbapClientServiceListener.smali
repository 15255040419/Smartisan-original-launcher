.class final Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;
.super Ljava/lang/Object;
.source "PbapClientProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/PbapClientProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PbapClientServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/PbapClientProfile;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/PbapClientProfile;Lcom/android/settingslib/bluetooth/PbapClientProfile$1;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;-><init>(Lcom/android/settingslib/bluetooth/PbapClientProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4

    .line 60
    invoke-static {}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->access$000()Z

    move-result p1

    const-string v0, "PbapClientProfile"

    if-eqz p1, :cond_0

    const-string p1, "Bluetooth service connected"

    .line 61
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    check-cast p2, Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->access$102(Lcom/android/settingslib/bluetooth/PbapClientProfile;Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothPbapClient;

    .line 65
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->access$100(Lcom/android/settingslib/bluetooth/PbapClientProfile;)Landroid/bluetooth/BluetoothPbapClient;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothPbapClient;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 66
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 67
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 68
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->access$200(Lcom/android/settingslib/bluetooth/PbapClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_1

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PbapClientProfile found new device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->access$200(Lcom/android/settingslib/bluetooth/PbapClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->access$300(Lcom/android/settingslib/bluetooth/PbapClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->access$400(Lcom/android/settingslib/bluetooth/PbapClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 74
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 75
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 77
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->access$502(Lcom/android/settingslib/bluetooth/PbapClientProfile;Z)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    .line 81
    invoke-static {}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PbapClientProfile"

    const-string v0, "Bluetooth service disconnected"

    .line 82
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->access$502(Lcom/android/settingslib/bluetooth/PbapClientProfile;Z)Z

    return-void
.end method
