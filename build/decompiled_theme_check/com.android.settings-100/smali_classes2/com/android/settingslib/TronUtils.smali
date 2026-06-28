.class public final Lcom/android/settingslib/TronUtils;
.super Ljava/lang/Object;
.source "TronUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TronUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logWifiSettingsSpeed(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "settings_wifi_speed_labels"

    .line 31
    invoke-static {p0, v0, p1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
