.class public Lcom/smartisanos/securitycenter/c/b;
.super Ljava/lang/Object;
.source "GameUtils.java"


# direct methods
.method public static a(Landroid/content/res/Configuration;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lsmartisanos/util/SmtFreeFormStackENTUtils;->isSmtFreeFormMode(Landroid/content/res/Configuration;)Z

    move-result p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isGameMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
