.class public Landroid/icu/impl/coll/SharedObject;
.super Ljava/lang/Object;
.source "SharedObject.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/SharedObject$Reference;
    }
.end annotation


# instance fields
.field private refCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/SharedObject;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final addRef()V
    .locals 0

    .line 180
    iget-object p0, p0, Landroid/icu/impl/coll/SharedObject;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public clone()Landroid/icu/impl/coll/SharedObject;
    .locals 1

    .line 168
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/coll/SharedObject;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/SharedObject;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0

    :catch_0
    move-exception p0

    .line 171
    new-instance v0, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v0, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject;->clone()Landroid/icu/impl/coll/SharedObject;

    move-result-object p0

    return-object p0
.end method

.method public final deleteIfZeroRefCount()V
    .locals 0

    return-void
.end method

.method public final getRefCount()I
    .locals 0

    .line 193
    iget-object p0, p0, Landroid/icu/impl/coll/SharedObject;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public final removeRef()V
    .locals 0

    .line 187
    iget-object p0, p0, Landroid/icu/impl/coll/SharedObject;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method
