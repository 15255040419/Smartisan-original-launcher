.class Lcom/android/settings/wifi/TrustedNetworkSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "TrustedNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/TrustedNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/TrustedNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/TrustedNetworkSettings;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkSettings$2;->this$0:Lcom/android/settings/wifi/TrustedNetworkSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkSettings$2;->this$0:Lcom/android/settings/wifi/TrustedNetworkSettings;

    invoke-static {p0, p2}, Lcom/android/settings/wifi/TrustedNetworkSettings;->access$000(Lcom/android/settings/wifi/TrustedNetworkSettings;Landroid/content/Intent;)V

    return-void
.end method
