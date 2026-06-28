.class public Lcom/android/settingslib/wifi/WifiTrackerFactory;
.super Ljava/lang/Object;
.source "WifiTrackerFactory.java"


# static fields
.field private static sTestingWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZZ)Lcom/android/settingslib/wifi/WifiTracker;
    .locals 7

    .line 38
    sget-object v0, Lcom/android/settingslib/wifi/WifiTrackerFactory;->sTestingWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v0, :cond_0

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZZ)V

    return-object v0
.end method

.method public static setTestingWifiTracker(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/android/settingslib/wifi/WifiTrackerFactory;->sTestingWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    return-void
.end method
