.class Lcom/android/settings/wifi/WifiSettings$13;
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

    .line 592
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$13;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 595
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$13;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const-class p1, Lcom/android/settings/wifi/TrustedNetworkListFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->start(Ljava/lang/Class;)V

    const/16 p0, 0xcf

    .line 596
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    return-void
.end method
