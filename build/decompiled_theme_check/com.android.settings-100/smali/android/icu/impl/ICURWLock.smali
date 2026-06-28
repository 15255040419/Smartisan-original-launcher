.class public Landroid/icu/impl/ICURWLock;
.super Ljava/lang/Object;
.source "ICURWLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICURWLock$Stats;
    }
.end annotation


# instance fields
.field private rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private stats:Landroid/icu/impl/ICURWLock$Stats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    return-void
.end method


# virtual methods
.method public acquireRead()V
    .locals 2

    .line 139
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    if-eqz v0, :cond_2

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_rc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_rc:I

    .line 142
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_mrc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_mrc:I

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wrc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wrc:I

    .line 148
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 150
    :cond_2
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    return-void
.end method

.method public acquireWrite()V
    .locals 2

    .line 177
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    if-eqz v0, :cond_2

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wc:I

    .line 180
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wwc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wwc:I

    .line 183
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 185
    :cond_2
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    return-void
.end method

.method public declared-synchronized clearStats()Landroid/icu/impl/ICURWLock$Stats;
    .locals 2

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    const/4 v1, 0x0

    .line 117
    iput-object v1, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStats()Landroid/icu/impl/ICURWLock$Stats;
    .locals 3

    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/icu/impl/ICURWLock$Stats;

    iget-object v2, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/ICURWLock$Stats;-><init>(Landroid/icu/impl/ICURWLock$Stats;Landroid/icu/impl/ICURWLock$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseRead()V
    .locals 0

    .line 162
    iget-object p0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void
.end method

.method public releaseWrite()V
    .locals 0

    .line 198
    iget-object p0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void
.end method

.method public declared-synchronized resetStats()Landroid/icu/impl/ICURWLock$Stats;
    .locals 3

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    .line 108
    new-instance v1, Landroid/icu/impl/ICURWLock$Stats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/impl/ICURWLock$Stats;-><init>(Landroid/icu/impl/ICURWLock$1;)V

    iput-object v1, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
