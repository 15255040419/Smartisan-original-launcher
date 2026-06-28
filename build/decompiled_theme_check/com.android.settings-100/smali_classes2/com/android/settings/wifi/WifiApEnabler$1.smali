.class Lcom/android/settings/wifi/WifiApEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0xe

    const-string v0, "wifi_state"

    .line 58
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    const-string p1, "wifi_ap_error_code"

    .line 61
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 63
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-static {p0, v0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->access$000(Lcom/android/settings/wifi/WifiApEnabler;II)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-static {p0, v0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$000(Lcom/android/settings/wifi/WifiApEnabler;II)V

    goto :goto_0

    :cond_1
    const-string v0, "android.net.conn.TETHER_STATE_CHANGED"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "availableArray"

    .line 68
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "tetherArray"

    .line 70
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "erroredArray"

    .line 72
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 74
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/wifi/WifiApEnabler;->access$100(Lcom/android/settings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p2, "android.intent.action.AIRPLANE_MODE"

    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 76
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiApEnabler;->access$200(Lcom/android/settings/wifi/WifiApEnabler;)V

    :cond_3
    :goto_0
    return-void
.end method
