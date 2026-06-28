.class public Lcom/android/settings/Calibration;
.super Ljava/lang/Object;
.source "Calibration.java"


# static fields
.field private static final COLOR_MODES:Landroid/util/SparseIntArray;

.field private static final EYES_PROTECTION_CLOSE_VALUE:I = 0x12

.field private static final EYES_PROTECTION_DEFAULT_VALUE:I = 0xa

.field private static final EYES_PROTECTION_FLAG:I = 0x64

.field private static final FACEID_DISABLED:I = 0x6e

.field private static final FACEID_ENABLED:I = 0x6f

.field private static final FORCE_TOUCH_OFF:I = 0x10e

.field private static final FORCE_TOUCH_ON:I = 0x10f

.field private static final GESTURE_NAVBAR_MODE_OFF:I = 0x118

.field private static final GESTURE_NAVBAR_MODE_ON:I = 0x119

.field private static final GLOVE_OFF:I = 0x104

.field private static final GLOVE_ON:I = 0x105

.field private static final NON_ZERO:I = 0x1

.field private static final REDUCE_SCREEN_STROBE_CLOSE_VALUE:I = 0x15

.field private static final REDUCE_SCREEN_STROBE_OPEN_VALUE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "Calibration"

.field private static final TOUCHSCREEN_SET_FOD_DISABLE:I = 0x108

.field private static final TOUCHSCREEN_SET_FOD_ENABLE:I = 0x109

.field private static final TOUCHSCREEN_SET_GESTURE_DISABLE:I = 0x106

.field private static final TOUCHSCREEN_SET_GESTURE_ENABLE:I = 0x107

.field private static final TOUCHSCREEN_SET_ICON_DISABLE:I = 0x10c

.field private static final TOUCHSCREEN_SET_ICON_ENABLE:I = 0x10d


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/settings/Calibration;->COLOR_MODES:Landroid/util/SparseIntArray;

    .line 42
    sget-object v0, Lcom/android/settings/Calibration;->COLOR_MODES:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lcom/android/settings/Calibration;->COLOR_MODES:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0xc9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lcom/android/settings/Calibration;->COLOR_MODES:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/16 v2, 0xca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setColorMode(I)V
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calibration"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/android/settings/Calibration;->COLOR_MODES:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    .line 99
    :cond_0
    sget-object v0, Lcom/android/settings/Calibration;->COLOR_MODES:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/Calibration;->setColorTemperatureValue(II)V

    return-void
.end method

.method public static setColorTemperature(II)V
    .locals 0

    .line 53
    invoke-static {p0, p1}, Lsmartisanos/util/HBMmodeSelectorUtil;->setColorTemperature(II)V

    return-void
.end method

.method public static setColorTemperatureValue(II)V
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lsmartisanos/util/HBMmodeSelectorUtil;->setColorTemperatureValue(II)V

    return-void
.end method

.method public static setEyesProtectionEnable(Z)V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEyesProtectionEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calibration"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto :goto_0

    :cond_0
    const/16 p0, 0x12

    :goto_0
    const/16 v0, 0x64

    .line 71
    invoke-static {p0, v0}, Lcom/android/settings/Calibration;->setColorTemperatureValue(II)V

    return-void
.end method

.method public static setFaceRecognitionUnlockScreenEnable(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 p0, 0x6f

    goto :goto_0

    :cond_0
    const/16 p0, 0x6e

    :goto_0
    const/16 v0, 0x64

    .line 76
    invoke-static {p0, v0}, Lcom/android/settings/Calibration;->setColorTemperatureValue(II)V

    return-void
.end method

.method public static setFingerprintIcon(Z)V
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFingerprintIcon "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calibration"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/16 p0, 0x10c

    goto :goto_0

    :cond_0
    const/16 p0, 0x10d

    :goto_0
    const/4 v0, 0x1

    .line 119
    invoke-static {p0, v0}, Lcom/android/settings/Calibration;->setColorTemperatureValue(II)V

    return-void
.end method

.method public static setFodMode(Z)V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFodMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calibration"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/16 p0, 0x108

    goto :goto_0

    :cond_0
    const/16 p0, 0x109

    :goto_0
    const/4 v0, 0x1

    .line 114
    invoke-static {p0, v0}, Lcom/android/settings/Calibration;->setColorTemperatureValue(II)V

    return-void
.end method

.method public static setForceTouchEnable(Z)V
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForceTouchEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calibration"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/16 p0, 0x10f

    goto :goto_0

    :cond_0
    const/16 p0, 0x10e

    :goto_0
    const/4 v0, 0x1

    .line 86
    invoke-static {p0, v0}, Lcom/android/settings/Calibration;->setColorTemperatureValue(II)V

    return-void
.end method

.method public static setGestureMode(Z)V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGestureMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calibration"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/16 p0, 0x106

    goto :goto_0

    :cond_0
    const/16 p0, 0x107

    :goto_0
    const/4 v0, 0x1

    .line 109
    invoke-static {p0, v0}, Lcom/android/settings/Calibration;->setColorTemperatureValue(II)V

    return-void
.end method

.method public static setGestureNavBarModeEnable(Z)V
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGestureNavBarModeEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calibration"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/16 p0, 0x119

    goto :goto_0

    :cond_0
    const/16 p0, 0x118

    :goto_0
    const/4 v0, 0x1

    .line 91
    invoke-static {p0, v0}, Lcom/android/settings/Calibration;->setColorTemperatureValue(II)V

    return-void
.end method

.method public static setGloveMode(Z)V
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGloveMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calibration"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/16 p0, 0x105

    goto :goto_0

    :cond_0
    const/16 p0, 0x104

    :goto_0
    const/4 v0, 0x1

    .line 81
    invoke-static {p0, v0}, Lcom/android/settings/Calibration;->setColorTemperatureValue(II)V

    return-void
.end method

.method public static setReduceScreenStrobeEnable(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 p0, 0x14

    goto :goto_0

    :cond_0
    const/16 p0, 0x15

    :goto_0
    const/16 v0, 0x64

    .line 103
    invoke-static {p0, v0}, Lcom/android/settings/Calibration;->setColorTemperatureValue(II)V

    return-void
.end method
