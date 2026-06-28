.class public Lcom/android/settingslib/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/Utils$ErrorListener;
    }
.end annotation


# static fields
.field public static final D:Z = true

.field public static final V:Z = false

.field private static sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 119
    invoke-static {p0, p1, p2, p3}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->createLayerDrawable(Landroid/content/Context;IIF)Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;

    move-result-object p0

    return-object p0

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    invoke-static {p0, p1, v0}, Lcom/android/settingslib/bluetooth/Utils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;F)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;F)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            "F)",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBatteryLevel()I

    move-result v1

    if-eqz v0, :cond_4

    .line 61
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x100

    if-eq v2, v3, :cond_3

    const/16 v3, 0x200

    if-eq v2, v3, :cond_2

    const/16 v3, 0x500

    if-eq v2, v3, :cond_1

    const/16 v3, 0x600

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Landroid/util/Pair;

    sget v0, Lcom/android/settingslib/R$drawable;->ic_settings_print:I

    .line 81
    invoke-static {p0, v0, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_imaging:I

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 74
    :cond_1
    new-instance p1, Landroid/util/Pair;

    .line 75
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    invoke-static {p0, v0, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_input_peripheral:I

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 68
    :cond_2
    new-instance p1, Landroid/util/Pair;

    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_cellphone:I

    .line 69
    invoke-static {p0, v0, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_phone:I

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 63
    :cond_3
    new-instance p1, Landroid/util/Pair;

    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_laptop:I

    invoke-static {p0, v0, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_computer:I

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 90
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object p1

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 92
    invoke-interface {v2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 94
    new-instance p1, Landroid/util/Pair;

    invoke-static {p0, v2, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_6
    if-eqz v0, :cond_8

    const/4 p1, 0x0

    .line 98
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 99
    new-instance p1, Landroid/util/Pair;

    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_headset_hfp:I

    .line 100
    invoke-static {p0, v0, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_headset:I

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_7
    const/4 p1, 0x1

    .line 104
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 105
    new-instance p1, Landroid/util/Pair;

    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_headphones_a2dp:I

    .line 106
    invoke-static {p0, v0, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_headphone:I

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 111
    :cond_8
    new-instance p1, Landroid/util/Pair;

    sget v0, Lcom/android/settingslib/R$drawable;->ic_settings_bluetooth:I

    .line 112
    invoke-static {p0, v0, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_bluetooth:I

    .line 113
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 31
    :cond_0
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_disconnecting:I

    return p0

    .line 25
    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_connected:I

    return p0

    .line 27
    :cond_2
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_connecting:I

    return p0

    .line 29
    :cond_3
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_disconnected:I

    return p0
.end method

.method public static setErrorListener(Lcom/android/settingslib/bluetooth/Utils$ErrorListener;)V
    .locals 0

    .line 44
    sput-object p0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 38
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p0, p1, p2}, Lcom/android/settingslib/bluetooth/Utils$ErrorListener;->onShowError(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
