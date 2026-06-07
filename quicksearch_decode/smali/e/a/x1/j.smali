.class public final Le/a/x1/j;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/a/x1/u;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1}, Le/a/x1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/x1/j;->a:Ljava/lang/Object;

    .line 2
    new-instance v0, Le/a/x1/u;

    const-string v1, "LIST_EMPTY"

    invoke-direct {v0, v1}, Le/a/x1/u;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Le/a/x1/k;
    .locals 1

    .line 2
    instance-of v0, p0, Le/a/x1/r;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Le/a/x1/r;

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/a/x1/r;->a:Le/a/x1/k;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    move-object v0, p0

    check-cast v0, Le/a/x1/k;

    :goto_1
    return-object v0

    :cond_2
    new-instance p0, Ld/h;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p0, v0}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Le/a/x1/j;->a:Ljava/lang/Object;

    return-object v0
.end method
