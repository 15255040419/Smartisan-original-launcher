.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 299
    new-instance p2, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {p2}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 300
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, p2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    const-string v0, "wifidirect.wps"

    .line 302
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 305
    iget-object p1, p2, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v0, p1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 308
    iget-object p1, p2, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v0, 0x0

    iput v0, p1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 309
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 310
    iget-object p1, p2, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v0, 0x2

    iput v0, p1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 312
    :cond_2
    iget-object p1, p2, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v0, 0x1

    iput v0, p1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 316
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;)V

    invoke-virtual {p1, v0, p2, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_3
    return-void
.end method
