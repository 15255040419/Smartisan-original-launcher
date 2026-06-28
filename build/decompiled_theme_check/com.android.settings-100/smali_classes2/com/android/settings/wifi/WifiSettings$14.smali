.class Lcom/android/settings/wifi/WifiSettings$14;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->initBottomLayout(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$14;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 608
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$14;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 609
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$14;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$600(Lcom/android/settings/wifi/WifiSettings;)I

    move-result v0

    const-string v1, "back_text_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 610
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$14;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
