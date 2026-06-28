.class Lcom/android/settings/wifi/WifiSetupFragment$6;
.super Ljava/lang/Object;
.source "WifiSetupFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSetupFragment;->showSwitchConfirmDialog(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSetupFragment;

.field final synthetic val$listener:Landroid/net/wifi/WifiManager$ActionListener;

.field final synthetic val$wifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSetupFragment;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment$6;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSetupFragment$6;->val$wifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiSetupFragment$6;->val$listener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 277
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSetupFragment$6;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-static {p2}, Lcom/android/settings/wifi/WifiSetupFragment;->access$500(Lcom/android/settings/wifi/WifiSetupFragment;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupFragment$6;->val$wifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSetupFragment$6;->val$listener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p2, v0, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 278
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 279
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment$6;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->access$1200(Lcom/android/settings/wifi/WifiSetupFragment;)V

    return-void
.end method
