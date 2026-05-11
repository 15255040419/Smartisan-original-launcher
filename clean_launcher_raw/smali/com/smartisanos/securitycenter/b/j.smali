.class public Lcom/smartisanos/securitycenter/b/j;
.super Lcom/smartisanos/securitycenter/c;
.source "WeakPrivacyObserver.java"


# instance fields
.field private final Xb:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/smartisanos/securitycenter/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/c;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/b/j;->Xb:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private get()Lcom/smartisanos/securitycenter/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/b/j;->Xb:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/securitycenter/d;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/b/j;->get()Lcom/smartisanos/securitycenter/d;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/smartisanos/securitycenter/d;->a(I)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/b/j;->get()Lcom/smartisanos/securitycenter/d;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/smartisanos/securitycenter/d;->a(J)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/b/j;->get()Lcom/smartisanos/securitycenter/d;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/smartisanos/securitycenter/d;->b(I)V

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/b/j;->get()Lcom/smartisanos/securitycenter/d;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/smartisanos/securitycenter/d;->b(J)V

    :cond_0
    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/b/j;->get()Lcom/smartisanos/securitycenter/d;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/smartisanos/securitycenter/d;->c(J)V

    :cond_0
    return-void
.end method

.method public d(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/b/j;->get()Lcom/smartisanos/securitycenter/d;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/smartisanos/securitycenter/d;->d(J)V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/b/j;->get()Lcom/smartisanos/securitycenter/d;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/smartisanos/securitycenter/d;->f(I)V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/b/j;->get()Lcom/smartisanos/securitycenter/d;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/smartisanos/securitycenter/d;->g(I)V

    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/b/j;->get()Lcom/smartisanos/securitycenter/d;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/smartisanos/securitycenter/d;->j(I)V

    :cond_0
    return-void
.end method
