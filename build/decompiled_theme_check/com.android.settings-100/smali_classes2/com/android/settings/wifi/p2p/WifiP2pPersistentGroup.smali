.class public Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;
.super Landroidx/preference/Preference;
.source "WifiP2pPersistentGroup.java"


# instance fields
.field public mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 30
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method getGroupName()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getNetworkId()I
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result p0

    return p0
.end method
