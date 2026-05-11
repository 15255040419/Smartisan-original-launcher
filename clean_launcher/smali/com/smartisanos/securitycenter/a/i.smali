.class public final Lcom/smartisanos/securitycenter/a/i;
.super Lcom/smartisanos/securitycenter/b/b;
.source "FaceIdStateListenerGlobal.java"


# static fields
.field private static final SINGLETON:Landroid/util/Singleton;


# instance fields
.field private final mListeners:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/securitycenter/a/h;

    invoke-direct {v0}, Lcom/smartisanos/securitycenter/a/h;-><init>()V

    sput-object v0, Lcom/smartisanos/securitycenter/a/i;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/b/b;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/a/i;->mListeners:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/securitycenter/a/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/a/i;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/smartisanos/securitycenter/a/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/securitycenter/a/i;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/securitycenter/a/i;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/smartisanos/securitycenter/b/b;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceIdStateListenerProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/i;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/i;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(Lcom/smartisanos/securitycenter/b/b;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceIdStateListenerProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/i;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/i;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/i;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/securitycenter/b/b;

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/b/b;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/i;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/securitycenter/b/b;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/securitycenter/b/b;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/i;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/securitycenter/b/b;

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/b/b;->onAuthenticationSucceeded()V

    goto :goto_0

    :cond_0
    return-void
.end method
