.class Lcom/smartisanos/launcher/a/v;
.super Lcom/android/internal/sidebar/ILauncher$Stub;
.source "DragToSidebar.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/sidebar/ILauncher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isLaunchPadVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLaunchpadAlive()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public launchShortcut(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public notifyUpdateLaunchPadStatus()V
    .locals 0

    return-void
.end method

.method public setIconVisible(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/a/u;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1, p1}, Lcom/smartisanos/launcher/a/u;-><init>(Lcom/smartisanos/launcher/a/v;IZ)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method public setLaunchPadVisible(ZZ)V
    .locals 0

    return-void
.end method
