.class Lcom/android/settings/BrightnessSettingsFragment$3$1;
.super Ljava/lang/Object;
.source "BrightnessSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BrightnessSettingsFragment$3;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/BrightnessSettingsFragment$3;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessSettingsFragment$3;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment$3$1;->this$1:Lcom/android/settings/BrightnessSettingsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/android/settings/BrightnessSettingsFragment$3$1;->this$1:Lcom/android/settings/BrightnessSettingsFragment$3;

    iget-object p0, p0, Lcom/android/settings/BrightnessSettingsFragment$3;->this$0:Lcom/android/settings/BrightnessSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/BrightnessSettingsFragment;->access$700(Lcom/android/settings/BrightnessSettingsFragment;)V

    return-void
.end method
