.class Lcom/android/settings/wifi/WifiSettings$24;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->showRetryDialog(Landroid/net/wifi/WifiConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;

.field final synthetic val$retryConnectAp:Lcom/android/settings/wifi/AccessPointInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPointInfo;)V
    .locals 0

    .line 1228
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$24;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$24;->val$retryConnectAp:Lcom/android/settings/wifi/AccessPointInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1232
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "edit"

    const/4 v0, 0x0

    .line 1233
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1234
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings$24;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/WifiSettings;->access$1700(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    const-string v1, "text_is_selectable"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1235
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1236
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$24;->val$retryConnectAp:Lcom/android/settings/wifi/AccessPointInfo;

    invoke-virtual {v1, p2}, Lcom/android/settings/wifi/AccessPointInfo;->saveWifiState(Landroid/os/Bundle;)V

    const-string v1, "access_point"

    .line 1237
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p2, "invalid_network"

    .line 1238
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1239
    new-instance p2, Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-direct {p2}, Lcom/android/settings/wifi/WifiSetupFragment;-><init>()V

    .line 1240
    invoke-virtual {p2, p1}, Lcom/android/settings/wifi/WifiSetupFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1241
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$24;->this$0:Lcom/android/settings/wifi/WifiSettings;

    sget-object p1, Lme/yokeyword/fragmentation/ISupportFragment$TRANSACTION;->POPUP:Lme/yokeyword/fragmentation/ISupportFragment$TRANSACTION;

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/wifi/WifiSettings;->start(Lme/yokeyword/fragmentation/ISupportFragment;Lme/yokeyword/fragmentation/ISupportFragment$TRANSACTION;)V

    return-void
.end method
