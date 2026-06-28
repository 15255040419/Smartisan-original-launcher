.class public abstract Landroid/icu/impl/ICUNotifier;
.super Ljava/lang/Object;
.source "ICUNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUNotifier$NotifyThread;
    }
.end annotation


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final notifyLock:Ljava/lang/Object;

.field private notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract acceptsListener(Ljava/util/EventListener;)Z
.end method

.method public addListener(Ljava/util/EventListener;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 51
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUNotifier;->acceptsListener(Ljava/util/EventListener;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EventListener;

    if-ne v2, p1, :cond_1

    .line 59
    monitor-exit v0

    return-void

    .line 64
    :cond_2
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 67
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Listener invalid for this notifier."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public notifyChanged()V
    .locals 3

    .line 103
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Landroid/icu/impl/ICUNotifier$NotifyThread;

    invoke-direct {v1, p0}, Landroid/icu/impl/ICUNotifier$NotifyThread;-><init>(Landroid/icu/impl/ICUNotifier;)V

    iput-object v1, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    .line 107
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUNotifier$NotifyThread;->setDaemon(Z)V

    .line 108
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    invoke-virtual {v1}, Landroid/icu/impl/ICUNotifier$NotifyThread;->start()V

    .line 110
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    iget-object v2, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    iget-object p0, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/util/EventListener;

    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/EventListener;

    invoke-virtual {v1, p0}, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue([Ljava/util/EventListener;)V

    .line 112
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected abstract notifyListener(Ljava/util/EventListener;)V
.end method

.method public removeListener(Ljava/util/EventListener;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 80
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 84
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 87
    iget-object p1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    .line 90
    :cond_1
    monitor-exit v0

    return-void

    .line 94
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 78
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method
