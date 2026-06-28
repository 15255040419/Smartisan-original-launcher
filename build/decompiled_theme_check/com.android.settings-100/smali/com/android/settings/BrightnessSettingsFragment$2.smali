.class Lcom/android/settings/BrightnessSettingsFragment$2;
.super Ljava/lang/Object;
.source "BrightnessSettingsFragment.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BrightnessSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessSettingsFragment;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment$2;->this$0:Lcom/android/settings/BrightnessSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    if-eqz p1, :cond_7

    .line 121
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 124
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-int p1, p1

    .line 125
    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment$2;->this$0:Lcom/android/settings/BrightnessSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/BrightnessSettingsFragment;->access$100(Lcom/android/settings/BrightnessSettingsFragment;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 126
    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment$2;->this$0:Lcom/android/settings/BrightnessSettingsFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/BrightnessSettingsFragment;->access$202(Lcom/android/settings/BrightnessSettingsFragment;Z)Z

    const/16 v1, 0x1f40

    if-lt p1, v1, :cond_2

    .line 128
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment$2;->this$0:Lcom/android/settings/BrightnessSettingsFragment;

    invoke-static {}, Lcom/android/settings/BrightnessSettingsFragment;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4b0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8c

    :goto_0
    invoke-static {p1, v0}, Lcom/android/settings/BrightnessSettingsFragment;->access$302(Lcom/android/settings/BrightnessSettingsFragment;I)I

    goto :goto_3

    :cond_2
    const/16 v1, 0xe10

    if-lt p1, v1, :cond_4

    .line 131
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment$2;->this$0:Lcom/android/settings/BrightnessSettingsFragment;

    invoke-static {}, Lcom/android/settings/BrightnessSettingsFragment;->access$400()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x320

    goto :goto_1

    :cond_3
    const/16 v0, 0x64

    :goto_1
    invoke-static {p1, v0}, Lcom/android/settings/BrightnessSettingsFragment;->access$302(Lcom/android/settings/BrightnessSettingsFragment;I)I

    goto :goto_3

    :cond_4
    const/16 v1, 0x1f4

    if-lt p1, v1, :cond_6

    .line 134
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment$2;->this$0:Lcom/android/settings/BrightnessSettingsFragment;

    invoke-static {}, Lcom/android/settings/BrightnessSettingsFragment;->access$400()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x12c

    goto :goto_2

    :cond_5
    const/16 v0, 0x1e

    :goto_2
    invoke-static {p1, v0}, Lcom/android/settings/BrightnessSettingsFragment;->access$302(Lcom/android/settings/BrightnessSettingsFragment;I)I

    goto :goto_3

    .line 137
    :cond_6
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment$2;->this$0:Lcom/android/settings/BrightnessSettingsFragment;

    invoke-static {p1, v0}, Lcom/android/settings/BrightnessSettingsFragment;->access$202(Lcom/android/settings/BrightnessSettingsFragment;Z)Z

    .line 138
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment$2;->this$0:Lcom/android/settings/BrightnessSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/BrightnessSettingsFragment;->access$500(Lcom/android/settings/BrightnessSettingsFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/BrightnessSettingsFragment;->access$302(Lcom/android/settings/BrightnessSettingsFragment;I)I

    .line 140
    :goto_3
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment$2;->this$0:Lcom/android/settings/BrightnessSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/BrightnessSettingsFragment;->access$600(Lcom/android/settings/BrightnessSettingsFragment;)I

    move-result p1

    if-nez p1, :cond_7

    .line 141
    iget-object p0, p0, Lcom/android/settings/BrightnessSettingsFragment$2;->this$0:Lcom/android/settings/BrightnessSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/BrightnessSettingsFragment;->access$300(Lcom/android/settings/BrightnessSettingsFragment;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->access$602(Lcom/android/settings/BrightnessSettingsFragment;I)I

    :cond_7
    :goto_4
    return-void
.end method
