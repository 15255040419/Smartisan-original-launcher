.class Lcom/android/settings/wifi/SoftApControllerFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SoftApControllerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SoftApControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SoftApControllerFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SoftApControllerFragment;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment$1;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 237
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

    .line 238
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment$1;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    const-string v1, "connected_devices_count"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {v0, p2}, Lcom/android/settings/wifi/SoftApControllerFragment;->access$102(Lcom/android/settings/wifi/SoftApControllerFragment;I)I

    .line 240
    iget-object p2, p0, Lcom/android/settings/wifi/SoftApControllerFragment$1;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    invoke-static {p2}, Lcom/android/settings/wifi/SoftApControllerFragment;->access$200(Lcom/android/settings/wifi/SoftApControllerFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 241
    iget-object p2, p0, Lcom/android/settings/wifi/SoftApControllerFragment$1;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    invoke-virtual {p2}, Lcom/android/settings/wifi/SoftApControllerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 242
    iget-object p0, p0, Lcom/android/settings/wifi/SoftApControllerFragment$1;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/SoftApControllerFragment;->access$300(Lcom/android/settings/wifi/SoftApControllerFragment;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment$1;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    const/16 v1, 0xb

    const-string v2, "wifi_state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {v0, p2}, Lcom/android/settings/wifi/SoftApControllerFragment;->access$402(Lcom/android/settings/wifi/SoftApControllerFragment;I)I

    .line 245
    iget-object p2, p0, Lcom/android/settings/wifi/SoftApControllerFragment$1;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    invoke-static {p2}, Lcom/android/settings/wifi/SoftApControllerFragment;->access$200(Lcom/android/settings/wifi/SoftApControllerFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 246
    iget-object p2, p0, Lcom/android/settings/wifi/SoftApControllerFragment$1;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    invoke-virtual {p2}, Lcom/android/settings/wifi/SoftApControllerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 247
    iget-object p2, p0, Lcom/android/settings/wifi/SoftApControllerFragment$1;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    invoke-static {p2}, Lcom/android/settings/wifi/SoftApControllerFragment;->access$400(Lcom/android/settings/wifi/SoftApControllerFragment;)I

    move-result p2

    const/16 v0, 0xd

    if-ne p2, v0, :cond_4

    .line 248
    iget-object p0, p0, Lcom/android/settings/wifi/SoftApControllerFragment$1;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/SoftApControllerFragment;->access$300(Lcom/android/settings/wifi/SoftApControllerFragment;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 250
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "networkInfo"

    .line 252
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_3

    .line 253
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 254
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 255
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    const/4 v1, 0x5

    if-eq p2, v1, :cond_2

    .line 256
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 257
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment$1;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    invoke-static {p1, v0}, Lcom/android/settings/wifi/SoftApControllerFragment;->access$502(Lcom/android/settings/wifi/SoftApControllerFragment;Z)Z

    .line 258
    iget-object p0, p0, Lcom/android/settings/wifi/SoftApControllerFragment$1;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->access$600(Lcom/android/settings/wifi/SoftApControllerFragment;)V

    goto :goto_0

    .line 260
    :cond_3
    iget-object p0, p0, Lcom/android/settings/wifi/SoftApControllerFragment$1;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    invoke-static {p0, v2}, Lcom/android/settings/wifi/SoftApControllerFragment;->access$502(Lcom/android/settings/wifi/SoftApControllerFragment;Z)Z

    :cond_4
    :goto_0
    return-void
.end method
