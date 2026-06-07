.class public final Le/a/i1;
.super Ljava/lang/Object;
.source "JobSupport.kt"


# static fields
.field public static final a:Le/a/x1/u;

.field public static final b:Le/a/x1/u;

.field public static final c:Le/a/x1/u;

.field public static final d:Le/a/x1/u;

.field public static final e:Le/a/x1/u;

.field public static final f:Le/a/p0;

.field public static final g:Le/a/p0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/a/x1/u;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Le/a/x1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/i1;->a:Le/a/x1/u;

    .line 2
    new-instance v0, Le/a/x1/u;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Le/a/x1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/i1;->b:Le/a/x1/u;

    .line 3
    new-instance v0, Le/a/x1/u;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Le/a/x1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/i1;->c:Le/a/x1/u;

    .line 4
    new-instance v0, Le/a/x1/u;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Le/a/x1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/i1;->d:Le/a/x1/u;

    .line 5
    new-instance v0, Le/a/x1/u;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Le/a/x1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/i1;->e:Le/a/x1/u;

    .line 6
    new-instance v0, Le/a/p0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/p0;-><init>(Z)V

    sput-object v0, Le/a/i1;->f:Le/a/p0;

    .line 7
    new-instance v0, Le/a/p0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/a/p0;-><init>(Z)V

    sput-object v0, Le/a/i1;->g:Le/a/p0;

    return-void
.end method

.method public static final synthetic a()Le/a/x1/u;
    .locals 1

    .line 1
    sget-object v0, Le/a/i1;->a:Le/a/x1/u;

    return-object v0
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    instance-of v0, p0, Lkotlinx/coroutines/Incomplete;

    if-eqz v0, :cond_0

    new-instance v0, Le/a/x0;

    check-cast p0, Lkotlinx/coroutines/Incomplete;

    invoke-direct {v0, p0}, Le/a/x0;-><init>(Lkotlinx/coroutines/Incomplete;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static final synthetic b()Le/a/x1/u;
    .locals 1

    .line 1
    sget-object v0, Le/a/i1;->c:Le/a/x1/u;

    return-object v0
.end method

.method public static final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    instance-of v0, p0, Le/a/x0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Le/a/x0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/a/x0;->a:Lkotlinx/coroutines/Incomplete;

    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static final synthetic c()Le/a/p0;
    .locals 1

    .line 1
    sget-object v0, Le/a/i1;->g:Le/a/p0;

    return-object v0
.end method

.method public static final synthetic d()Le/a/p0;
    .locals 1

    .line 1
    sget-object v0, Le/a/i1;->f:Le/a/p0;

    return-object v0
.end method

.method public static final synthetic e()Le/a/x1/u;
    .locals 1

    .line 1
    sget-object v0, Le/a/i1;->e:Le/a/x1/u;

    return-object v0
.end method

.method public static final synthetic f()Le/a/x1/u;
    .locals 1

    .line 1
    sget-object v0, Le/a/i1;->d:Le/a/x1/u;

    return-object v0
.end method
