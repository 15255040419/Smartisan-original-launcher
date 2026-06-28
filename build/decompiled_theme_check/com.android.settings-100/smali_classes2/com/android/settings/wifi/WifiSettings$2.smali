.class Lcom/android/settings/wifi/WifiSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$2;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 305
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$2;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiSettings;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$2;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Intent;)V

    return-void
.end method
