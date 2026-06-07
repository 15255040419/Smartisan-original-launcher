.class public abstract Le/a/x1/k$a;
.super Le/a/x1/d;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/x1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/x1/d<",
        "Le/a/x1/k;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Le/a/x1/k;

.field public final c:Le/a/x1/k;


# direct methods
.method public constructor <init>(Le/a/x1/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/x1/d;-><init>()V

    iput-object p1, p0, Le/a/x1/k$a;->c:Le/a/x1/k;

    return-void
.end method


# virtual methods
.method public a(Le/a/x1/k;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Le/a/x1/k$a;->c:Le/a/x1/k;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Le/a/x1/k$a;->b:Le/a/x1/k;

    :goto_1
    if-eqz v0, :cond_3

    .line 3
    sget-object v1, Le/a/x1/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 4
    iget-object p1, p0, Le/a/x1/k$a;->c:Le/a/x1/k;

    iget-object p2, p0, Le/a/x1/k$a;->b:Le/a/x1/k;

    if-eqz p2, :cond_2

    invoke-static {p1, p2}, Le/a/x1/k;->a(Le/a/x1/k;Le/a/x1/k;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Ld/q/c/d;->a()V

    const/4 p1, 0x0

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Le/a/x1/k;

    invoke-virtual {p0, p1, p2}, Le/a/x1/k$a;->a(Le/a/x1/k;Ljava/lang/Object;)V

    return-void
.end method
