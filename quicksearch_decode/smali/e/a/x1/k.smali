.class public Le/a/x1/k;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/x1/k$a;,
        Le/a/x1/k$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile _next:Ljava/lang/Object;

.field public volatile _prev:Ljava/lang/Object;

.field public volatile _removedRef:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Le/a/x1/k;

    const-string v2, "_next"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Le/a/x1/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_prev"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Le/a/x1/k;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_removedRef"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Le/a/x1/k;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/x1/k;->_next:Ljava/lang/Object;

    .line 3
    iput-object p0, p0, Le/a/x1/k;->_prev:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/a/x1/k;->_removedRef:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a(Le/a/x1/k;Le/a/x1/k;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/x1/k;->c(Le/a/x1/k;)V

    return-void
.end method


# virtual methods
.method public final a(Le/a/x1/k;Le/a/x1/k;Le/a/x1/k$a;)I
    .locals 1

    .line 7
    sget-object v0, Le/a/x1/k;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    sget-object v0, Le/a/x1/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iput-object p2, p3, Le/a/x1/k$a;->b:Le/a/x1/k;

    .line 10
    sget-object p1, Le/a/x1/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 11
    :cond_0
    invoke-virtual {p3, p0}, Le/a/x1/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public final a(Le/a/x1/q;)Le/a/x1/k;
    .locals 6

    .line 12
    :goto_0
    iget-object v0, p0, Le/a/x1/k;->_prev:Ljava/lang/Object;

    check-cast v0, Le/a/x1/k;

    const/4 v1, 0x0

    move-object v2, v0

    :goto_1
    move-object v3, v1

    .line 13
    :goto_2
    iget-object v4, v2, Le/a/x1/k;->_next:Ljava/lang/Object;

    if-ne v4, p0, :cond_2

    if-ne v0, v2, :cond_0

    return-object v2

    .line 14
    :cond_0
    sget-object v1, Le/a/x1/k;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    .line 15
    :cond_2
    invoke-virtual {p0}, Le/a/x1/k;->d()Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v1

    :cond_3
    if-ne v4, p1, :cond_4

    return-object v2

    .line 16
    :cond_4
    instance-of v5, v4, Le/a/x1/q;

    if-eqz v5, :cond_6

    if-eqz p1, :cond_5

    .line 17
    move-object v0, v4

    check-cast v0, Le/a/x1/q;

    invoke-virtual {p1, v0}, Le/a/x1/q;->a(Le/a/x1/q;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v1

    .line 18
    :cond_5
    check-cast v4, Le/a/x1/q;

    invoke-virtual {v4, v2}, Le/a/x1/q;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_6
    instance-of v5, v4, Le/a/x1/r;

    if-eqz v5, :cond_9

    if-eqz v3, :cond_8

    .line 20
    sget-object v5, Le/a/x1/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v4, Le/a/x1/r;

    iget-object v4, v4, Le/a/x1/r;->a:Le/a/x1/k;

    invoke-virtual {v5, v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    move-object v2, v3

    goto :goto_1

    .line 21
    :cond_8
    iget-object v2, v2, Le/a/x1/k;->_prev:Ljava/lang/Object;

    check-cast v2, Le/a/x1/k;

    goto :goto_2

    :cond_9
    if-eqz v4, :cond_a

    .line 22
    check-cast v4, Le/a/x1/k;

    move-object v3, v2

    move-object v2, v4

    goto :goto_2

    :cond_a
    new-instance p1, Ld/h;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, v0}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Ljava/lang/Object;
    .locals 2

    .line 23
    :goto_0
    iget-object v0, p0, Le/a/x1/k;->_next:Ljava/lang/Object;

    .line 24
    instance-of v1, v0, Le/a/x1/q;

    if-nez v1, :cond_0

    return-object v0

    .line 25
    :cond_0
    check-cast v0, Le/a/x1/q;

    invoke-virtual {v0, p0}, Le/a/x1/q;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Le/a/x1/k;)Z
    .locals 1

    .line 2
    sget-object v0, Le/a/x1/k;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    sget-object v0, Le/a/x1/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/a/x1/k;->a()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1
    sget-object v0, Le/a/x1/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1, p0}, Le/a/x1/k;->c(Le/a/x1/k;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b()Le/a/x1/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/x1/k;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Le/a/x1/j;->a(Ljava/lang/Object;)Le/a/x1/k;

    move-result-object v0

    return-object v0
.end method

.method public final b(Le/a/x1/k;)Le/a/x1/k;
    .locals 1

    .line 2
    :goto_0
    invoke-virtual {p1}, Le/a/x1/k;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p1, Le/a/x1/k;->_prev:Ljava/lang/Object;

    check-cast p1, Le/a/x1/k;

    goto :goto_0
.end method

.method public final c()Le/a/x1/k;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/a/x1/k;->a(Le/a/x1/q;)Le/a/x1/k;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/a/x1/k;->_prev:Ljava/lang/Object;

    check-cast v0, Le/a/x1/k;

    invoke-virtual {p0, v0}, Le/a/x1/k;->b(Le/a/x1/k;)Le/a/x1/k;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final c(Le/a/x1/k;)V
    .locals 2

    .line 2
    :cond_0
    iget-object v0, p1, Le/a/x1/k;->_prev:Ljava/lang/Object;

    check-cast v0, Le/a/x1/k;

    .line 3
    invoke-virtual {p0}, Le/a/x1/k;->a()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    return-void

    .line 4
    :cond_1
    sget-object v1, Le/a/x1/k;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Le/a/x1/k;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Le/a/x1/k;->a(Le/a/x1/q;)Le/a/x1/k;

    :cond_2
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/x1/k;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Le/a/x1/r;

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/x1/k;->f()Le/a/x1/k;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()Le/a/x1/k;
    .locals 4

    .line 1
    :cond_0
    invoke-virtual {p0}, Le/a/x1/k;->a()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Le/a/x1/r;

    if-eqz v1, :cond_1

    check-cast v0, Le/a/x1/r;

    iget-object v0, v0, Le/a/x1/r;->a:Le/a/x1/k;

    return-object v0

    :cond_1
    if-ne v0, p0, :cond_2

    .line 3
    check-cast v0, Le/a/x1/k;

    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 4
    move-object v1, v0

    check-cast v1, Le/a/x1/k;

    invoke-virtual {v1}, Le/a/x1/k;->g()Le/a/x1/r;

    move-result-object v2

    .line 5
    sget-object v3, Le/a/x1/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {v1, v0}, Le/a/x1/k;->a(Le/a/x1/q;)Le/a/x1/k;

    return-object v0

    .line 7
    :cond_3
    new-instance v0, Ld/h;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Ld/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Le/a/x1/r;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/x1/k;->_removedRef:Ljava/lang/Object;

    check-cast v0, Le/a/x1/r;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/x1/r;

    invoke-direct {v0, p0}, Le/a/x1/r;-><init>(Le/a/x1/k;)V

    sget-object v1, Le/a/x1/k;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
