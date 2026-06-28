.class public final synthetic Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$1$ZZvkR1gFjSGYgPkSg1pwUl48iT8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$1$ZZvkR1gFjSGYgPkSg1pwUl48iT8;->f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    return-void
.end method


# virtual methods
.method public final onDeviceInfoAvailable(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$1$ZZvkR1gFjSGYgPkSg1pwUl48iT8;->f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->lambda$onReceive$0$WifiP2pSettings$1(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method
