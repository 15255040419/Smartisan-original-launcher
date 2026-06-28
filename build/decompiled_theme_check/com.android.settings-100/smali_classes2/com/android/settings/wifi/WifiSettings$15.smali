.class Lcom/android/settings/wifi/WifiSettings$15;
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

    .line 620
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 624
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 625
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.wapi.wapicertmanage"

    const-string v2, "com.wapi.wapicertmanage.WapiCertManageActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 628
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$700(Lcom/android/settings/wifi/WifiSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "back_text"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "launchedBySetting"

    const/4 v1, 0x1

    .line 629
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 630
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->getActivityStackView()Lsmartisanos/view/ActivityStackView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 p0, 0x10000000

    .line 632
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 633
    invoke-virtual {v0, v1}, Lsmartisanos/view/ActivityStackView;->setVisibility(I)V

    .line 634
    invoke-virtual {v0, p1}, Lsmartisanos/view/ActivityStackView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 636
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    :goto_0
    const/16 p0, 0xcb

    .line 638
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    return-void
.end method
