.class public abstract Lcom/smartisanos/securitycenter/d/l;
.super Ljava/lang/Object;
.source "AbstractVerifier.java"


# instance fields
.field protected fA:Z

.field protected mCallback:Lcom/smartisanos/securitycenter/b/h;

.field protected mContext:Landroid/content/Context;

.field protected mStarted:Z

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/d/l;->mStarted:Z

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/d/l;->fA:Z

    .line 4
    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/l;->mContext:Landroid/content/Context;

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/l;->o:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public synthetic Aa(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/l;->mCallback:Lcom/smartisanos/securitycenter/b/h;

    invoke-interface {p0, p1}, Lcom/smartisanos/securitycenter/b/h;->e(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic Ba(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/l;->mCallback:Lcom/smartisanos/securitycenter/b/h;

    invoke-interface {p0, p1}, Lcom/smartisanos/securitycenter/b/h;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/smartisanos/securitycenter/b/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/l;->mCallback:Lcom/smartisanos/securitycenter/b/h;

    .line 2
    iget-boolean p1, p0, Lcom/smartisanos/securitycenter/d/l;->fA:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/d/l;->qj()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method protected final f(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/l;->o:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isStarted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/securitycenter/d/l;->mStarted:Z

    return p0
.end method

.method protected pj()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/d/l;->mStarted:Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/l;->mCallback:Lcom/smartisanos/securitycenter/b/h;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/smartisanos/securitycenter/d/j;

    invoke-direct {v1, v0}, Lcom/smartisanos/securitycenter/d/j;-><init>(Lcom/smartisanos/securitycenter/b/h;)V

    invoke-virtual {p0, v1}, Lcom/smartisanos/securitycenter/d/l;->f(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected qj()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/d/l;->mStarted:Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/d/l;->fA:Z

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/l;->mCallback:Lcom/smartisanos/securitycenter/b/h;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/smartisanos/securitycenter/d/k;

    invoke-direct {v1, v0}, Lcom/smartisanos/securitycenter/d/k;-><init>(Lcom/smartisanos/securitycenter/b/h;)V

    invoke-virtual {p0, v1}, Lcom/smartisanos/securitycenter/d/l;->f(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/d/l;->fA:Z

    return-void
.end method

.method protected rj()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/d/l;->mStarted:Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/l;->mCallback:Lcom/smartisanos/securitycenter/b/h;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/smartisanos/securitycenter/d/a;

    invoke-direct {v1, v0}, Lcom/smartisanos/securitycenter/d/a;-><init>(Lcom/smartisanos/securitycenter/b/h;)V

    invoke-virtual {p0, v1}, Lcom/smartisanos/securitycenter/d/l;->f(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected sj()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/d/l;->mStarted:Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/l;->mCallback:Lcom/smartisanos/securitycenter/b/h;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/smartisanos/securitycenter/d/i;

    invoke-direct {v1, v0}, Lcom/smartisanos/securitycenter/d/i;-><init>(Lcom/smartisanos/securitycenter/b/h;)V

    invoke-virtual {p0, v1}, Lcom/smartisanos/securitycenter/d/l;->f(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected ya(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/l;->mCallback:Lcom/smartisanos/securitycenter/b/h;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/securitycenter/d/c;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/securitycenter/d/c;-><init>(Lcom/smartisanos/securitycenter/d/l;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/securitycenter/d/l;->f(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected za(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/d/l;->mStarted:Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/l;->mCallback:Lcom/smartisanos/securitycenter/b/h;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/smartisanos/securitycenter/d/d;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/securitycenter/d/d;-><init>(Lcom/smartisanos/securitycenter/d/l;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/securitycenter/d/l;->f(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
