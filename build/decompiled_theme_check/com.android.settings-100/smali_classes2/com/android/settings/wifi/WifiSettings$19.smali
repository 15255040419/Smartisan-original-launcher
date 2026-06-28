.class Lcom/android/settings/wifi/WifiSettings$19;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->showSwitchConfirmDialog(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;

.field final synthetic val$listener:Landroid/net/wifi/WifiManager$ActionListener;

.field final synthetic val$wifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$19;->val$wifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiSettings$19;->val$listener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 736
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 737
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object p1, p1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings$19;->val$wifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$19;->val$listener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, p2, p0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method
