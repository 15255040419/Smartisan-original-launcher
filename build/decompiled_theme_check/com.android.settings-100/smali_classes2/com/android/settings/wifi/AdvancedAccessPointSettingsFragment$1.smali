.class Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedAccessPointSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment$1;->this$0:Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment$1;->this$0:Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;

    invoke-static {p0, p1, p2}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->access$000(Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
