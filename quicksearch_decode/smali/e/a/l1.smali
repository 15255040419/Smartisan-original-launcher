.class public final Le/a/l1;
.super Le/a/x1/i;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/Incomplete;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/x1/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "List{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}["

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Le/a/x1/k;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Le/a/x1/k;

    const/4 v1, 0x1

    move v2, v1

    .line 6
    :goto_0
    invoke-static {p1, p0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_2

    .line 7
    instance-of v3, p1, Le/a/g1;

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Le/a/g1;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ", "

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    invoke-virtual {p1}, Le/a/x1/k;->b()Le/a/x1/k;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "]"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 13
    :cond_3
    new-instance p1, Ld/h;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, v0}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getList()Le/a/l1;
    .locals 0

    return-object p0
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Le/a/e0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Active"

    invoke-virtual {p0, v0}, Le/a/l1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Le/a/x1/k;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
