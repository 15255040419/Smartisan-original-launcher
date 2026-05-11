.class Lcom/smartisanos/launcher/animations/_a;
.super Lcom/smartisanos/smengine/n;
.source "RootViewAnimation.java"


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Nd()Lcom/smartisanos/smengine/g;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_0
    return-void
.end method
