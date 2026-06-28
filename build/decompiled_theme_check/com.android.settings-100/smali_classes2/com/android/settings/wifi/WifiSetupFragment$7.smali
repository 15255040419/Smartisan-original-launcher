.class Lcom/android/settings/wifi/WifiSetupFragment$7;
.super Ljava/lang/Object;
.source "WifiSetupFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSetupFragment;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment$7;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment$7;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->access$1300(Lcom/android/settings/wifi/WifiSetupFragment;)V

    return-void
.end method
