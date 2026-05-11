.class Lcom/smartisanos/launcher/k;
.super Lcom/smartisanos/smengine/n;
.source "ActivityProxy.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/m;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/m;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/k;->this$1:Lcom/smartisanos/launcher/m;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Eb;->ca(Z)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->ce()Z

    move-result p0

    if-nez p0, :cond_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/J;->f(Lcom/smartisanos/launcher/J;)Lcom/smartisanos/smengine/n;

    move-result-object p0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_1
    return-void
.end method
