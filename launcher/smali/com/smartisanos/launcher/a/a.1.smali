.class public Lcom/smartisanos/launcher/a/a;
.super Ljava/lang/Object;
.source "CallExpandService.java"


# direct methods
.method public static q(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/WeatherBridge;->getWeatherBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
