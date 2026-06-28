.class Lcom/android/settings/BrightnessSettingsFragment$5;
.super Landroid/database/ContentObserver;
.source "BrightnessSettingsFragment.java"


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
.method constructor <init>(Lcom/android/settings/BrightnessSettingsFragment;Landroid/os/Handler;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment$5;->this$0:Lcom/android/settings/BrightnessSettingsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/android/settings/BrightnessSettingsFragment$5;->this$0:Lcom/android/settings/BrightnessSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/BrightnessSettingsFragment;->access$900(Lcom/android/settings/BrightnessSettingsFragment;)V

    return-void
.end method
