.class public Lcom/android/settings/wifi/p2p/WifiP2pSettingsFragment;
.super Lcom/android/settings/SupportFragment;
.source "WifiP2pSettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/android/settings/SupportFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d035a

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettingsFragment;->mRootView:Landroid/view/View;

    .line 20
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettingsFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method
