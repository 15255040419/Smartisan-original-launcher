.class public Lcom/smartisanos/securitycenter/d/q;
.super Lcom/smartisanos/securitycenter/d/l;
.source "FaceIdVerifier.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private jA:Z

.field private kA:I

.field private lA:Landroid/os/Handler;

.field private nA:Z

.field private oA:Lcom/smartisanos/securitycenter/d/p;

.field private final pA:Ljava/lang/Runnable;

.field private final qA:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/d/l;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/securitycenter/d/q;->jA:Z

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/smartisanos/securitycenter/d/q;->kA:I

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/securitycenter/d/q;->nA:Z

    .line 5
    new-instance p1, Lcom/smartisanos/securitycenter/d/n;

    invoke-direct {p1, p0}, Lcom/smartisanos/securitycenter/d/n;-><init>(Lcom/smartisanos/securitycenter/d/q;)V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/q;->pA:Ljava/lang/Runnable;

    .line 6
    new-instance p1, Lcom/smartisanos/securitycenter/d/o;

    invoke-direct {p1, p0}, Lcom/smartisanos/securitycenter/d/o;-><init>(Lcom/smartisanos/securitycenter/d/q;)V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/q;->qA:Ljava/lang/Runnable;

    .line 7
    new-instance p1, Lcom/smartisanos/securitycenter/d/p;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/smartisanos/securitycenter/d/p;-><init>(Lcom/smartisanos/securitycenter/d/q;Lcom/smartisanos/securitycenter/d/n;)V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/q;->oA:Lcom/smartisanos/securitycenter/d/p;

    return-void
.end method

.method private Rx()V
    .locals 3

    const-string v0, "FaceIdVerifier"

    const-string v1, "auth start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/q;->lA:Landroid/os/Handler;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/d/q;->pA:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/q;->lA:Landroid/os/Handler;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/q;->qA:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private Sx()V
    .locals 2

    const-string v0, "FaceIdVerifier"

    const-string v1, "auth stop"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/q;->lA:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/securitycenter/d/q;->pA:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/q;->lA:Landroid/os/Handler;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/d/q;->qA:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/q;->lA:Landroid/os/Handler;

    new-instance v1, Lcom/smartisanos/securitycenter/d/g;

    invoke-direct {v1, p0}, Lcom/smartisanos/securitycenter/d/g;-><init>(Lcom/smartisanos/securitycenter/d/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/securitycenter/d/q;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/smartisanos/securitycenter/d/q;->kA:I

    return p1
.end method

.method static synthetic a(Lcom/smartisanos/securitycenter/d/q;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/q;->lA:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/securitycenter/d/q;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/securitycenter/d/q;->jA:Z

    return p1
.end method

.method static synthetic b(Lcom/smartisanos/securitycenter/d/q;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/securitycenter/d/q;->nA:Z

    return p0
.end method

.method static synthetic c(Lcom/smartisanos/securitycenter/d/q;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/securitycenter/d/q;->kA:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/smartisanos/securitycenter/d/q;->kA:I

    return v0
.end method

.method static synthetic d(Lcom/smartisanos/securitycenter/d/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/d/q;->Sx()V

    return-void
.end method

.method static synthetic e(Lcom/smartisanos/securitycenter/d/q;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/securitycenter/d/q;->jA:Z

    return p0
.end method

.method static synthetic f(Lcom/smartisanos/securitycenter/d/q;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/q;->pA:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/smartisanos/securitycenter/b/h;)V
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/smartisanos/securitycenter/d/l;->a(Lcom/smartisanos/securitycenter/b/h;)V

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/d/q;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/smartisanos/securitycenter/d/q;->nA:Z

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/d/q;->Rx()V

    .line 8
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/q;->oA:Lcom/smartisanos/securitycenter/d/p;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/d/p;->G()V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/d/l;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/d/q;->Sx()V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/d/l;->pj()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/securitycenter/d/l;->destroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/securitycenter/d/q;->lA:Landroid/os/Handler;

    .line 3
    invoke-static {}, Lcom/smartisanos/securitycenter/a/i;->getInstance()Lcom/smartisanos/securitycenter/a/i;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/q;->oA:Lcom/smartisanos/securitycenter/d/p;

    invoke-virtual {v0, p0}, Lcom/smartisanos/securitycenter/a/i;->b(Lcom/smartisanos/securitycenter/b/b;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/d/q;->isReady()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/securitycenter/a/g;->getInstance()Lcom/smartisanos/securitycenter/a/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/a/g;->k()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReady()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/securitycenter/a/g;->getInstance()Lcom/smartisanos/securitycenter/a/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/a/g;->isReady()Z

    move-result p0

    return p0
.end method

.method public postOnReady(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/securitycenter/a/g;->getInstance()Lcom/smartisanos/securitycenter/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/securitycenter/d/l;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/a/g;->bind(Landroid/content/Context;)Lcom/smartisanos/securitycenter/a/g;

    .line 2
    invoke-static {}, Lcom/smartisanos/securitycenter/a/g;->getInstance()Lcom/smartisanos/securitycenter/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/a/g;->kj()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/securitycenter/d/q;->lA:Landroid/os/Handler;

    .line 3
    invoke-static {}, Lcom/smartisanos/securitycenter/a/i;->getInstance()Lcom/smartisanos/securitycenter/a/i;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/q;->oA:Lcom/smartisanos/securitycenter/d/p;

    invoke-virtual {v0, p0}, Lcom/smartisanos/securitycenter/a/i;->a(Lcom/smartisanos/securitycenter/b/b;)V

    .line 4
    invoke-static {}, Lcom/smartisanos/securitycenter/a/g;->getInstance()Lcom/smartisanos/securitycenter/a/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/a/g;->postOnReady(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/securitycenter/d/l;->reset()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/securitycenter/d/q;->kA:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/d/q;->jA:Z

    return-void
.end method

.method public synthetic tj()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/d/q;->nA:Z

    .line 2
    invoke-static {}, Lcom/smartisanos/securitycenter/a/g;->getInstance()Lcom/smartisanos/securitycenter/a/g;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/securitycenter/a/g;->a(Z)V

    return-void
.end method

.method protected ya(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/d/q;->Sx()V

    .line 2
    invoke-super {p0, p1}, Lcom/smartisanos/securitycenter/d/l;->ya(Ljava/lang/String;)V

    return-void
.end method
