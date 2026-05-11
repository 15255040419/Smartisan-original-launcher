.class Lcom/smartisanos/launcher/view/activeicon/v;
.super Ljava/lang/Object;
.source "WeatherView.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/a/a;->q(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    invoke-static {v0, p0}, Lcom/smartisanos/launcher/a/ra;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
