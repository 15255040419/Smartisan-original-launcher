.class public Lcom/android/settings/CalibrationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CalibrationReceiver.java"


# static fields
.field private static final EXTRA_COLOR:Ljava/lang/String; = "color"

.field private static final SET_CALIBRATION_ACTION:Ljava/lang/String; = "com.android.settings.set_calibration"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.android.settings.set_calibration"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isExperienceVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "color"

    .line 16
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p0

    if-eqz p0, :cond_0

    .line 17
    array-length p1, p0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 18
    aget p2, p0, p1

    sget v0, Lcom/android/settings/ColorProfilesFragment;->COLOR_LIMIT_MIN:I

    if-lt p2, v0, :cond_0

    const/4 p2, 0x1

    aget v0, p0, p2

    sget v1, Lcom/android/settings/ColorProfilesFragment;->COLOR_LIMIT_MAX:I

    if-gt v0, v1, :cond_0

    .line 20
    aget p1, p0, p1

    aget p0, p0, p2

    invoke-static {p1, p0}, Lcom/android/settings/Calibration;->setColorTemperatureValue(II)V

    :cond_0
    return-void
.end method
