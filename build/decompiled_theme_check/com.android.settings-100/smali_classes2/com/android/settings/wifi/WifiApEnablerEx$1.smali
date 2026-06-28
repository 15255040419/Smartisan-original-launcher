.class Lcom/android/settings/wifi/WifiApEnablerEx$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApEnablerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApEnablerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApEnablerEx;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApEnablerEx;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx$1;->this$0:Lcom/android/settings/wifi/WifiApEnablerEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "wifi_state"

    if-eqz v0, :cond_0

    .line 62
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnablerEx$1;->this$0:Lcom/android/settings/wifi/WifiApEnablerEx;

    const/16 p1, 0xe

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiApEnablerEx;->access$000(Lcom/android/settings/wifi/WifiApEnablerEx;I)V

    goto :goto_0

    :cond_0
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx$1;->this$0:Lcom/android/settings/wifi/WifiApEnablerEx;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiApEnablerEx;->access$100(Lcom/android/settings/wifi/WifiApEnablerEx;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 66
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnablerEx$1;->this$0:Lcom/android/settings/wifi/WifiApEnablerEx;

    const/4 p1, 0x4

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiApEnablerEx;->access$200(Lcom/android/settings/wifi/WifiApEnablerEx;I)V

    goto :goto_0

    :cond_1
    const-string v0, "android.net.conn.TETHER_STATE_CHANGED"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "availableArray"

    .line 71
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "tetherArray"

    .line 73
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "erroredArray"

    .line 75
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 76
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnablerEx$1;->this$0:Lcom/android/settings/wifi/WifiApEnablerEx;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/wifi/WifiApEnablerEx;->access$300(Lcom/android/settings/wifi/WifiApEnablerEx;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p2, "android.intent.action.AIRPLANE_MODE"

    .line 77
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 78
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnablerEx$1;->this$0:Lcom/android/settings/wifi/WifiApEnablerEx;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiApEnablerEx;->access$400(Lcom/android/settings/wifi/WifiApEnablerEx;)V

    :cond_3
    :goto_0
    return-void
.end method
