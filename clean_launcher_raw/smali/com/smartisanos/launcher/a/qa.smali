.class Lcom/smartisanos/launcher/a/qa;
.super Lcom/smartisanos/smengine/n;
.source "WeatherDataChanged.java"


# instance fields
.field final synthetic zs:Landroid/os/Bundle;


# direct methods
.method constructor <init>(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/a/qa;->zs:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/a/qa;->zs:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/smartisanos/launcher/a/ra;->c(Landroid/os/Bundle;)V

    return-void
.end method
