.class Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;
.super Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 443
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 448
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    check-cast v0, Lcom/android/settingslib/bluetooth/PanProfile;

    const-string v1, "android.bluetooth.pan.extra.LOCAL_ROLE"

    const/4 v2, 0x0

    .line 449
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 450
    invoke-virtual {v0, p3, v1}, Lcom/android/settingslib/bluetooth/PanProfile;->setLocalRole(Landroid/bluetooth/BluetoothDevice;I)V

    .line 451
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
