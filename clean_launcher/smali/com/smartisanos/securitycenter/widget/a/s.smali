.class public abstract Lcom/smartisanos/securitycenter/widget/a/s;
.super Ljava/lang/Object;
.source "BaseUnlockController.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected ue:Lcom/smartisanos/securitycenter/b/i;

.field protected vA:Z

.field protected wA:Z

.field protected xA:Z

.field protected yA:Lcom/smartisanos/securitycenter/b/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->vA:Z

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->wA:Z

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->xA:Z

    .line 5
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/a/s;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static oa(Landroid/content/Context;)Lcom/smartisanos/securitycenter/widget/a/s;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/a/s;->ya(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.smartisanos.securitycenter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/smartisanos/securitycenter/widget/a/x;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/widget/a/x;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/securitycenter/a/l;->mj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/smartisanos/securitycenter/widget/a/x;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/widget/a/x;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lcom/smartisanos/securitycenter/widget/a/v;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/widget/a/v;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Lcom/smartisanos/securitycenter/widget/a/t;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/widget/a/t;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static ya(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.smartisanos.securitycenter"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public a(Lcom/smartisanos/securitycenter/b/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    return-void
.end method

.method public a(Lcom/smartisanos/securitycenter/widget/a/s;)V
    .locals 1

    .line 2
    iget-boolean v0, p1, Lcom/smartisanos/securitycenter/widget/a/s;->vA:Z

    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->vA:Z

    .line 3
    iget-boolean v0, p1, Lcom/smartisanos/securitycenter/widget/a/s;->wA:Z

    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->wA:Z

    .line 4
    iget-boolean v0, p1, Lcom/smartisanos/securitycenter/widget/a/s;->xA:Z

    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->xA:Z

    .line 5
    iget-object v0, p1, Lcom/smartisanos/securitycenter/widget/a/s;->yA:Lcom/smartisanos/securitycenter/b/e;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->yA:Lcom/smartisanos/securitycenter/b/e;

    .line 6
    iget-object p1, p1, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    return-void
.end method

.method public abstract checkPassword(Ljava/lang/String;)Z
.end method

.method public abstract destroy()V
.end method

.method public abstract g(Ljava/lang/Runnable;)V
.end method

.method public abstract isSecurityOn()Z
.end method

.method public abstract lockoutCloudId()V
.end method

.method public abstract lockoutFaceId()V
.end method

.method public abstract lockoutFingerprint()V
.end method

.method public abstract lockoutPin()V
.end method

.method public abstract pa(Z)V
.end method

.method public abstract qa(Z)V
.end method

.method public abstract ra(Z)V
.end method

.method public abstract sa(Z)V
.end method

.method public abstract uj()J
.end method

.method public abstract vj()J
.end method

.method public abstract wj()J
.end method

.method public xj()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->xA:Z

    return p0
.end method

.method public yj()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->wA:Z

    return p0
.end method

.method public zj()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->vA:Z

    return p0
.end method
