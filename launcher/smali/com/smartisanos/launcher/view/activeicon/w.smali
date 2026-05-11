.class Lcom/smartisanos/launcher/view/activeicon/w;
.super Lcom/smartisanos/smengine/n;
.source "WeatherView.java"


# instance fields
.field final synthetic Mj:Landroid/content/Intent;


# direct methods
.method constructor <init>(ILandroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/view/activeicon/w;->Mj:Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/activeicon/H;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->sa(Ljava/lang/String;)Lcom/smartisanos/launcher/view/activeicon/a;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/activeicon/H;

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/activeicon/H;->ae()Lcom/smartisanos/launcher/va;

    move-result-object v1

    const-string v2, "WeatherView update weather action"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/w;->Mj:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/activeicon/H;->h(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
