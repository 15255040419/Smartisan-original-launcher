.class public Lcom/android/settings/wifi/TrustedNetworkListActivity;
.super Lcom/android/settings/MainSettings;
.source "TrustedNetworkListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
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

    .line 16
    new-instance p0, Lcom/android/settings/wifi/TrustedNetworkListFragment;

    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkListFragment;-><init>()V

    return-object p0
.end method
