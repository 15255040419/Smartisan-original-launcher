.class public Lcom/smartisanos/securitycenter/c/e;
.super Ljava/lang/Object;
.source "SidebarUtils.java"


# direct methods
.method public static b(Landroid/content/res/Configuration;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getSmtEx()Landroid/app/WindowConfigurationSmtEx;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WindowConfigurationSmtEx;->isFreeform()Z

    move-result p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSidebarMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SidebarUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
