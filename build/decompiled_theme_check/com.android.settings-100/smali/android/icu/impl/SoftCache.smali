.class public abstract Landroid/icu/impl/SoftCache;
.super Landroid/icu/impl/CacheBase;
.source "SoftCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/icu/impl/CacheBase<",
        "TK;TV;TD;>;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/icu/impl/CacheBase;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/SoftCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TD;)TV;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Landroid/icu/impl/SoftCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 53
    instance-of v1, v0, Landroid/icu/impl/CacheValue;

    if-nez v1, :cond_0

    return-object v0

    .line 57
    :cond_0
    check-cast v0, Landroid/icu/impl/CacheValue;

    .line 58
    invoke-virtual {v0}, Landroid/icu/impl/CacheValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_1
    invoke-virtual {v0}, Landroid/icu/impl/CacheValue;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 67
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/SoftCache;->createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 68
    invoke-virtual {v0, p0}, Landroid/icu/impl/CacheValue;->resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 71
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/SoftCache;->createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 72
    invoke-static {}, Landroid/icu/impl/CacheValue;->futureInstancesWillBeStrong()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p2

    goto :goto_0

    .line 73
    :cond_4
    invoke-static {p2}, Landroid/icu/impl/CacheValue;->getInstance(Ljava/lang/Object;)Landroid/icu/impl/CacheValue;

    move-result-object v0

    .line 74
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/SoftCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_5

    return-object p2

    .line 82
    :cond_5
    instance-of p1, p0, Landroid/icu/impl/CacheValue;

    if-nez p1, :cond_6

    return-object p0

    .line 86
    :cond_6
    check-cast p0, Landroid/icu/impl/CacheValue;

    .line 87
    invoke-virtual {p0, p2}, Landroid/icu/impl/CacheValue;->resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
