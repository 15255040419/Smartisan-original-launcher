.class Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;
.super Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.source "BluetoothDeviceLayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatteryMeterDrawable"
.end annotation


# instance fields
.field private final mAspectRatio:F

.field mFrameColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 110
    sget v1, Lcom/android/settingslib/R$fraction;->bt_battery_button_height_fraction:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->mButtonHeightFraction:F

    .line 112
    sget v1, Lcom/android/settingslib/R$fraction;->bt_battery_ratio_fraction:I

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->mAspectRatio:F

    const v0, 0x1010429

    .line 114
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result p1

    .line 115
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 116
    invoke-virtual {p0, p3}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->setBatteryLevel(I)V

    .line 117
    iput p2, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->mFrameColor:I

    return-void
.end method


# virtual methods
.method protected getAspectRatio()F
    .locals 0

    .line 122
    iget p0, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->mAspectRatio:F

    return p0
.end method

.method protected getRadiusRatio()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
