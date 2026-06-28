.class Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment$3;
.super Ljava/lang/Object;
.source "AdvancedAccessPointSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 104
    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment$3;->this$0:Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment$3;->this$0:Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->access$400(Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;)Lcom/android/settings/wifi/WifiConfigControllerEx;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->savePoxyAndIpConfiguration()V

    return-void
.end method
