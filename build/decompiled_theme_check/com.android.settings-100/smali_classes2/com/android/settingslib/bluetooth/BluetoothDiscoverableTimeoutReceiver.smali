.class public Lcom/android/settingslib/bluetooth/BluetoothDiscoverableTimeoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDiscoverableTimeoutReceiver.java"


# static fields
.field private static final INTENT_DISCOVERABLE_TIMEOUT:Ljava/lang/String; = "android.bluetooth.intent.DISCOVERABLE_TIMEOUT"

.field private static final TAG:Ljava/lang/String; = "BluetoothDiscoverableTimeoutReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static cancelDiscoverableAlarm(Landroid/content/Context;)V
    .locals 3

    const-string v0, "BluetoothDiscoverableTimeoutReceiver"

    const-string v1, "cancelDiscoverableAlarm(): Enter"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.DISCOVERABLE_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    const-class v1, Lcom/android/settingslib/bluetooth/BluetoothDiscoverableTimeoutReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x20000000

    .line 61
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "alarm"

    .line 66
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 68
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public static setDiscoverableAlarm(Landroid/content/Context;J)V
    .locals 5

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDiscoverableAlarm(): alarmTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDiscoverableTimeoutReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.intent.DISCOVERABLE_TIMEOUT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    const-class v2, Lcom/android/settingslib/bluetooth/BluetoothDiscoverableTimeoutReceiver;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 40
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v4, "alarm"

    .line 43
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {v4, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v3, "setDiscoverableAlarm(): cancel prev alarm"

    .line 48
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 53
    invoke-virtual {v4, v2, p1, p2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.bluetooth.intent.DISCOVERABLE_TIMEOUT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p0

    const-string p1, "BluetoothDiscoverableTimeoutReceiver"

    if-eqz p0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result p2

    const/16 v0, 0xc

    if-ne p2, v0, :cond_1

    const-string p2, "Disable discoverable..."

    .line 80
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x15

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    goto :goto_0

    :cond_1
    const-string p0, "localBluetoothAdapter is NULL!!"

    .line 83
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
