.class public final synthetic Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$_LrckjNNjBXMF32vPpWCfu3mwOI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$_LrckjNNjBXMF32vPpWCfu3mwOI;->f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    return-void
.end method


# virtual methods
.method public final onDeviceInfoAvailable(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$_LrckjNNjBXMF32vPpWCfu3mwOI;->f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->lambda$onResume$0$WifiP2pSettings(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method
