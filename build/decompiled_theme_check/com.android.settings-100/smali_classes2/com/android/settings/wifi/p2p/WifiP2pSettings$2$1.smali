.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$2$1;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2$1;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    .line 246
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2$1;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const p1, 0x7f121842

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 248
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    const-string p0, "WifiP2pSettings"

    const-string v0, " device rename success"

    .line 243
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
