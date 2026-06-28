.class Lcom/android/settings/wifi/TrustedNetworkList$1;
.super Landroid/content/BroadcastReceiver;
.source "TrustedNetworkList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/TrustedNetworkList;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/TrustedNetworkList;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/TrustedNetworkList;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList$1;->this$0:Lcom/android/settings/wifi/TrustedNetworkList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkList$1;->this$0:Lcom/android/settings/wifi/TrustedNetworkList;

    invoke-static {v0}, Lcom/android/settings/wifi/TrustedNetworkList;->access$000(Lcom/android/settings/wifi/TrustedNetworkList;)Lcom/android/settings/wifi/TrustedNetworkHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/TrustedNetworkHelper;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList$1;->this$0:Lcom/android/settings/wifi/TrustedNetworkList;

    invoke-static {p0, p1, p2}, Lcom/android/settings/wifi/TrustedNetworkList;->access$100(Lcom/android/settings/wifi/TrustedNetworkList;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
