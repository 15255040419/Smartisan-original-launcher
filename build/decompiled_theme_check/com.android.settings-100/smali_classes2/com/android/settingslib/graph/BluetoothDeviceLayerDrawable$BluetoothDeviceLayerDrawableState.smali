.class Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "BluetoothDeviceLayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothDeviceLayerDrawableState"
.end annotation


# instance fields
.field batteryLevel:I

.field context:Landroid/content/Context;

.field iconScale:F

.field resId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIF)V
    .locals 0

    .line 142
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;->context:Landroid/content/Context;

    .line 144
    iput p2, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;->resId:I

    .line 145
    iput p3, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;->batteryLevel:I

    .line 146
    iput p4, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;->iconScale:F

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;->context:Landroid/content/Context;

    iget v1, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;->resId:I

    iget v2, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;->batteryLevel:I

    iget p0, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;->iconScale:F

    invoke-static {v0, v1, v2, p0}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->createLayerDrawable(Landroid/content/Context;IIF)Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;

    move-result-object p0

    return-object p0
.end method
