.class Landroid/icu/impl/ICUNotifier$NotifyThread;
.super Ljava/lang/Thread;
.source "ICUNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyThread"
.end annotation


# instance fields
.field private final notifier:Landroid/icu/impl/ICUNotifier;

.field private final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUNotifier;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    .line 123
    iput-object p1, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->notifier:Landroid/icu/impl/ICUNotifier;

    return-void
.end method


# virtual methods
.method public queue([Ljava/util/EventListener;)V
    .locals 1

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 133
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 4

    .line 145
    :catch_0
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    .line 150
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :goto_1
    :try_start_2
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 153
    iget-object v2, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->notifier:Landroid/icu/impl/ICUNotifier;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUNotifier;->notifyListener(Ljava/util/EventListener;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 150
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
.end method
