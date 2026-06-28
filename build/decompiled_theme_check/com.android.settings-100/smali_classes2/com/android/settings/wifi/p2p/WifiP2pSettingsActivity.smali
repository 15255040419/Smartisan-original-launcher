.class public Lcom/android/settings/wifi/p2p/WifiP2pSettingsActivity;
.super Lcom/android/settings/MainSettings;
.source "WifiP2pSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/android/settings/MainSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindFragment()Lme/yokeyword/fragmentation/ISupportFragment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lme/yokeyword/fragmentation/ISupportFragment;",
            ">()TT;"
        }
    .end annotation

    .line 12
    new-instance p0, Lcom/android/settings/wifi/p2p/WifiP2pSettingsFragment;

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettingsFragment;-><init>()V

    return-object p0
.end method
