.class Lcom/android/settings/BrightnessSettingsFragment$3;
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

    .line 348
    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment$3;->this$0:Lcom/android/settings/BrightnessSettingsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 351
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/settings/BrightnessSettingsFragment$3$1;

    invoke-direct {v0, p0}, Lcom/android/settings/BrightnessSettingsFragment$3$1;-><init>(Lcom/android/settings/BrightnessSettingsFragment$3;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
