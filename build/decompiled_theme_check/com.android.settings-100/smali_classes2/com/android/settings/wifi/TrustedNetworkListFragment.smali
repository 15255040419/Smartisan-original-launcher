.class public Lcom/android/settings/wifi/TrustedNetworkListFragment;
.super Lcom/android/settings/SupportFragment;
.source "TrustedNetworkListFragment.java"


# instance fields
.field private mTrustedNetworkList:Lcom/android/settings/wifi/TrustedNetworkList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/settings/SupportFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/SupportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkListFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a09a4

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/TrustedNetworkList;

    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkListFragment;->mTrustedNetworkList:Lcom/android/settings/wifi/TrustedNetworkList;

    return-void
.end method

.method public onBackPressedSupport()Z
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkListFragment;->mTrustedNetworkList:Lcom/android/settings/wifi/TrustedNetworkList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->onBackPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 20
    iget-boolean p3, p0, Lcom/android/settings/wifi/TrustedNetworkListFragment;->mIsLandScreen:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/android/settings/wifi/TrustedNetworkListFragment;->mIsExtDisplaying:Z

    if-eqz p3, :cond_0

    const p3, 0x7f0d0317

    .line 21
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkListFragment;->mRootView:Landroid/view/View;

    goto :goto_0

    :cond_0
    const p3, 0x7f0d0316

    .line 23
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkListFragment;->mRootView:Landroid/view/View;

    .line 25
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkListFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method
