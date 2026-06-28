.class Lcom/android/settings/wifi/WifiSetupFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiSetupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSetupFragment;->onCreate(Landroid/os/Bundle;)V
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

    .line 209
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment$4;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment$4;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-static {p0, p1, p2}, Lcom/android/settings/wifi/WifiSetupFragment;->access$1000(Lcom/android/settings/wifi/WifiSetupFragment;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
