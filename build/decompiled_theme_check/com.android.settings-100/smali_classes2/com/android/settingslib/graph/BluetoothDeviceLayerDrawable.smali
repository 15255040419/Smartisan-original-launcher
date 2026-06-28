.class public Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "BluetoothDeviceLayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;,
        Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;
    }
.end annotation


# instance fields
.field private mState:Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;


# direct methods
.method private constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static createLayerDrawable(Landroid/content/Context;II)Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    invoke-static {p0, p1, p2, v0}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->createLayerDrawable(Landroid/content/Context;IIF)Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createLayerDrawable(Landroid/content/Context;IIF)Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;
    .locals 6

    .line 67
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;

    sget v2, Lcom/android/settingslib/R$color;->meter_background_color:I

    .line 70
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;-><init>(Landroid/content/Context;II)V

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settingslib/R$dimen;->bt_battery_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 72
    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->setPadding(IIII)V

    .line 74
    new-instance v2, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    invoke-direct {v2, v3}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const v1, 0x800003

    .line 77
    invoke-virtual {v2, v4, v1}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->setLayerGravity(II)V

    .line 80
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 79
    invoke-virtual {v2, v5, v1}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->setLayerInsetStart(II)V

    .line 82
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 81
    invoke-virtual {v2, v5, v0}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->setLayerInsetTop(II)V

    .line 84
    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->setConstantState(Landroid/content/Context;IIF)V

    return-object v2
.end method


# virtual methods
.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->mState:Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;

    return-object p0
.end method

.method public setConstantState(Landroid/content/Context;IIF)V
    .locals 1

    .line 90
    new-instance v0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;-><init>(Landroid/content/Context;IIF)V

    iput-object v0, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->mState:Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BluetoothDeviceLayerDrawableState;

    return-void
.end method
