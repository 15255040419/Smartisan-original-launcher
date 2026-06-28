.class Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings$1;
.super Ljava/lang/Object;
.source "AdvancedWifiNetworkPolicySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;Landroid/view/View;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;

    iput-object p2, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 172
    iget-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->access$002(Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;I)I

    .line 173
    iget-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings$1;->val$v:Landroid/view/View;

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iget-object p2, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;

    .line 174
    invoke-static {p2}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->access$100(Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;)[Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;

    invoke-static {v0}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->access$000(Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;)I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SettingItemText;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;

    invoke-virtual {p1}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;

    .line 177
    invoke-static {p2}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->access$000(Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;)I

    move-result p2

    const-string v0, "data_to_wifi_connect_type"

    .line 175
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    iget-object p0, p0, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;

    invoke-static {p0}, Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;->access$200(Lcom/android/settings/wifi/AdvancedWifiNetworkPolicySettings;)Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
