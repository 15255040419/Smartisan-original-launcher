.class Lcom/smartisanos/launcher/Ha;
.super Lcom/android/internal/sidebar/ILauncher$Stub;
.source "Launchpad.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/sidebar/ILauncher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isLaunchPadVisible()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/qa;->getInstance()Lcom/smartisanos/launcher/qa;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/qa;->I(I)Z

    move-result p0

    return p0
.end method

.method public isLaunchpadAlive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public launchShortcut(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const/16 v0, 0xa

    if-eq p3, v0, :cond_1

    return-void

    .line 1
    :cond_1
    new-instance v0, Lcom/smartisanos/launcher/Ga;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smartisanos/launcher/Ga;-><init>(Lcom/smartisanos/launcher/Ha;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/smartisanos/launcher/wb;->post(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyUpdateLaunchPadStatus()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/Qa;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "notifyUpdateLaunchPadStatus context not ready !!!"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->Va()Z

    move-result p0

    if-nez p0, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/Qa;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "notifyUpdateLaunchPadStatus gl not ready !!!"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/qa;->getInstance()Lcom/smartisanos/launcher/qa;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/qa;->I(I)Z

    move-result p0

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/Qa;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUpdateLaunchPadStatus show = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, p0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    xor-int/2addr p0, v0

    .line 7
    invoke-static {p0}, Lcom/smartisanos/launcher/animations/ab;->G(Z)V

    return-void
.end method

.method public setIconVisible(Z)V
    .locals 0

    return-void
.end method

.method public setLaunchPadVisible(ZZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/Qa;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "notifyUpdateLaunchPadStatus context not ready !!!"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->Va()Z

    move-result p0

    if-nez p0, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/Qa;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "notifyUpdateLaunchPadStatus gl not ready !!!"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/Qa;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLaunchPadVisible visible = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/qa;->getInstance()Lcom/smartisanos/launcher/qa;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/qa;->I(I)Z

    move-result p0

    if-eq p0, p1, :cond_3

    .line 7
    invoke-static {p1}, Lcom/smartisanos/launcher/animations/ab;->G(Z)V

    :cond_3
    return-void
.end method
