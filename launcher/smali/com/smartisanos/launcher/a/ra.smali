.class public Lcom/smartisanos/launcher/a/ra;
.super Ljava/lang/Object;
.source "WeatherDataChanged.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;

.field private static mk:Lcom/smartisanos/smengine/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/a/ra;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/ra;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/smartisanos/launcher/a/ra;->mk:Lcom/smartisanos/smengine/n;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object p0

    sget-object v0, Lcom/smartisanos/launcher/a/ra;->mk:Lcom/smartisanos/smengine/n;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    const/4 p0, 0x0

    .line 3
    sput-object p0, Lcom/smartisanos/launcher/a/ra;->mk:Lcom/smartisanos/smengine/n;

    .line 4
    :cond_0
    new-instance p0, Lcom/smartisanos/launcher/a/qa;

    const/16 v0, 0x64

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/launcher/a/qa;-><init>(ILandroid/os/Bundle;)V

    sput-object p0, Lcom/smartisanos/launcher/a/ra;->mk:Lcom/smartisanos/smengine/n;

    .line 5
    sget-object p0, Lcom/smartisanos/launcher/a/ra;->mk:Lcom/smartisanos/smengine/n;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method public static b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key"

    const-string v2, "weather"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->callbackLaunchpad(Landroid/os/Bundle;)V

    .line 8
    :cond_1
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/a/ra;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic c(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/a/ra;->o(Landroid/os/Bundle;)V

    return-void
.end method

.method private static o(Landroid/os/Bundle;)V
    .locals 9

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/smartisanos/launcher/a/ra;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "WeatherDataChanged return by bundle is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "weatherCode"

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "temp"

    .line 3
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fahrenheitTemp"

    .line 4
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_1sunRiseAndSet"

    .line 5
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.smartisanos.weather.data.update"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {v7, v6, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/J;->Za()Z

    move-result p0

    if-nez p0, :cond_1

    .line 12
    sget-object p0, Lcom/smartisanos/launcher/a/ra;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeatherDataChanged cache intent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 13
    invoke-static {v7}, Lcom/smartisanos/launcher/ja;->b(Landroid/content/Intent;)V

    return-void

    .line 14
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    sget-object v0, Lcom/smartisanos/launcher/view/activeicon/H;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Eb;->sa(Ljava/lang/String;)Lcom/smartisanos/launcher/view/activeicon/a;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/activeicon/H;

    if-eqz p0, :cond_4

    .line 16
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/smartisanos/launcher/a/ra;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "WeatherView update weather action"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 17
    :cond_3
    invoke-virtual {p0, v7}, Lcom/smartisanos/launcher/view/activeicon/H;->h(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method
