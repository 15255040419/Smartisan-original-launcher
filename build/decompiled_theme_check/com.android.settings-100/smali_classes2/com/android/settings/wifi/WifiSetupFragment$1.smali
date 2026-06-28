.class Lcom/android/settings/wifi/WifiSetupFragment$1;
.super Landroid/os/Handler;
.source "WifiSetupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSetupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSetupFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSetupFragment;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment$1;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 98
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment$1;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiSetupFragment;->access$000(Lcom/android/settings/wifi/WifiSetupFragment;)Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupFragment$1;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/WifiSetupFragment;->access$100(Lcom/android/settings/wifi/WifiSetupFragment;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSetupFragment$1;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSetupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSetupFragment$1;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-static {v2, p1}, Lcom/android/settings/wifi/WifiSetupFragment;->access$200(Lcom/android/settings/wifi/WifiSetupFragment;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    const/4 v2, -0x1

    if-nez p1, :cond_3

    .line 107
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment$1;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiSetupFragment;->access$300(Lcom/android/settings/wifi/WifiSetupFragment;)I

    move-result p1

    if-lez p1, :cond_1

    .line 108
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment$1;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->access$400(Lcom/android/settings/wifi/WifiSetupFragment;)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    const p1, 0x7f1217ab

    const/4 v3, 0x0

    .line 112
    invoke-static {v1, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    if-eq v0, v2, :cond_4

    .line 114
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment$1;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiSetupFragment;->access$500(Lcom/android/settings/wifi/WifiSetupFragment;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_3
    if-eq v0, v2, :cond_4

    .line 117
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment$1;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiSetupFragment;->access$500(Lcom/android/settings/wifi/WifiSetupFragment;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSetupFragment$1;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiSetupFragment;->access$600(Lcom/android/settings/wifi/WifiSetupFragment;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 119
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment$1;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->access$700(Lcom/android/settings/wifi/WifiSetupFragment;)V

    :goto_1
    return-void
.end method
