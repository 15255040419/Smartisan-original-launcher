.class Lcom/smartisanos/launcher/a/T;
.super Lcom/smartisanos/smengine/n;
.source "UninstallApp.java"


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->gd()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "uninstall is running ! nothing to do !"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Sc;->mq()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 4
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "trash animation is running, so return !"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 5
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->hd()V

    return-void
.end method
