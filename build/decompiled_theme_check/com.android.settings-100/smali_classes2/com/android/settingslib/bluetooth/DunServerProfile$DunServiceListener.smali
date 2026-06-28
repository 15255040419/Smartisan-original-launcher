.class final Lcom/android/settingslib/bluetooth/DunServerProfile$DunServiceListener;
.super Ljava/lang/Object;
.source "DunServerProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/DunServerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DunServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/DunServerProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/DunServerProfile;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DunServerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/DunServerProfile;Lcom/android/settingslib/bluetooth/DunServerProfile$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/DunServerProfile$DunServiceListener;-><init>(Lcom/android/settingslib/bluetooth/DunServerProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .line 62
    invoke-static {}, Lcom/android/settingslib/bluetooth/DunServerProfile;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "DunServerProfile"

    const-string v0, "Bluetooth service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DunServerProfile;

    check-cast p2, Landroid/bluetooth/BluetoothDun;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/DunServerProfile;->access$102(Lcom/android/settingslib/bluetooth/DunServerProfile;Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothDun;

    .line 64
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DunServerProfile;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/DunServerProfile;->access$202(Lcom/android/settingslib/bluetooth/DunServerProfile;Z)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    .line 68
    invoke-static {}, Lcom/android/settingslib/bluetooth/DunServerProfile;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "DunServerProfile"

    const-string v0, "Bluetooth service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DunServerProfile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/DunServerProfile;->access$202(Lcom/android/settingslib/bluetooth/DunServerProfile;Z)Z

    return-void
.end method
