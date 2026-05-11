.class public Lcom/smartisanos/securitycenter/widget/a/t;
.super Lcom/smartisanos/securitycenter/widget/a/s;
.source "UnlockControllerLocal.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/widget/a/s;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->yA:Lcom/smartisanos/securitycenter/b/e;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/smartisanos/securitycenter/b/e;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public isSecurityOn()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->yA:Lcom/smartisanos/securitycenter/b/e;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lockoutCloudId()V
    .locals 0

    return-void
.end method

.method public lockoutFaceId()V
    .locals 0

    return-void
.end method

.method public lockoutFingerprint()V
    .locals 0

    return-void
.end method

.method public lockoutPin()V
    .locals 0

    return-void
.end method

.method public pa(Z)V
    .locals 0

    return-void
.end method

.method public qa(Z)V
    .locals 0

    return-void
.end method

.method public ra(Z)V
    .locals 0

    return-void
.end method

.method public sa(Z)V
    .locals 0

    return-void
.end method

.method public uj()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public vj()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public wj()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
