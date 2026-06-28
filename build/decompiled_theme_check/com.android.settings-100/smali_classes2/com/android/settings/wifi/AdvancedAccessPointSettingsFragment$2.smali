.class Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment$2;
.super Ljava/lang/Object;
.source "AdvancedAccessPointSettingsFragment.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->onCreate(Landroid/os/Bundle;)V
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

    .line 73
    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment$2;->this$0:Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 81
    iget-object p1, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment$2;->this$0:Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->access$200(Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1217fe

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 84
    iget-object p0, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment$2;->this$0:Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->access$300(Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment$2;->this$0:Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->access$100(Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;)V

    return-void
.end method
