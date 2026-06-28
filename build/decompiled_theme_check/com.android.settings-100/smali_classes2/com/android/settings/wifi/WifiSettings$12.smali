.class Lcom/android/settings/wifi/WifiSettings$12;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->initBottomLayout(Landroid/view/LayoutInflater;)V
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

    .line 582
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$12;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 585
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "entry_from_wifi"

    const/4 v1, 0x1

    .line 586
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 587
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$12;->this$0:Lcom/android/settings/wifi/WifiSettings;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettingsFragment;

    invoke-direct {v0}, Lcom/android/settings/wfd/WifiDisplaySettingsFragment;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->start(Lcom/android/settings/SupportFragment;Landroid/os/Bundle;)V

    const/16 p0, 0xce

    .line 588
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    return-void
.end method
