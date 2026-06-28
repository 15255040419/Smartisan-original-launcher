.class Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;
.super Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetStateChangeHandler"
.end annotation


# instance fields
.field private final mAudioChangeAction:Ljava/lang/String;

.field private final mAudioDisconnectedState:I

.field final synthetic this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;I)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 420
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 421
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;->mAudioChangeAction:Ljava/lang/String;

    .line 422
    iput p4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;->mAudioDisconnectedState:I

    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Intent;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;->mAudioChangeAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "android.bluetooth.profile.extra.STATE"

    .line 428
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 429
    iget v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;->mAudioDisconnectedState:I

    if-eq p1, v0, :cond_0

    .line 430
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    const/4 p1, 0x2

    invoke-virtual {p2, p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 432
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 434
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->onReceiveInternal(Landroid/content/Intent;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :goto_0
    return-void
.end method
