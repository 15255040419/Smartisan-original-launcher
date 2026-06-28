.class final Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/PanProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/PanProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/PanProfile;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PanProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/PanProfile;Lcom/android/settingslib/bluetooth/PanProfile$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/settingslib/bluetooth/PanProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .line 57
    invoke-static {}, Lcom/android/settingslib/bluetooth/PanProfile;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PanProfile"

    const-string v0, "Bluetooth service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PanProfile;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/PanProfile;->access$102(Lcom/android/settingslib/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 59
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PanProfile;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/PanProfile;->access$202(Lcom/android/settingslib/bluetooth/PanProfile;Z)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    .line 63
    invoke-static {}, Lcom/android/settingslib/bluetooth/PanProfile;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PanProfile"

    const-string v0, "Bluetooth service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PanProfile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/PanProfile;->access$202(Lcom/android/settingslib/bluetooth/PanProfile;Z)Z

    return-void
.end method
