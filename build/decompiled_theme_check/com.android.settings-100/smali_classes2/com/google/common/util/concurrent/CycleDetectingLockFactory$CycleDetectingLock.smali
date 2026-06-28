.class interface abstract Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;
.super Ljava/lang/Object;
.source "CycleDetectingLockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CycleDetectingLock"
.end annotation


# virtual methods
.method public abstract getLockGraphNode()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
.end method

.method public abstract isAcquiredByCurrentThread()Z
.end method
