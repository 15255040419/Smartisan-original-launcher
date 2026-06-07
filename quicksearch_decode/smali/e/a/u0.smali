.class public final Le/a/u0;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"


# static fields
.field public static final a:Le/a/x1/u;

.field public static final b:Le/a/x1/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/a/x1/u;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Le/a/x1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/u0;->a:Le/a/x1/u;

    .line 2
    new-instance v0, Le/a/x1/u;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Le/a/x1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/u0;->b:Le/a/x1/u;

    return-void
.end method

.method public static final a(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x8637bd05af6L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p0

    :goto_0
    return-wide v0
.end method

.method public static final synthetic a()Le/a/x1/u;
    .locals 1

    .line 1
    sget-object v0, Le/a/u0;->b:Le/a/x1/u;

    return-object v0
.end method

.method public static final synthetic b()Le/a/x1/u;
    .locals 1

    .line 1
    sget-object v0, Le/a/u0;->a:Le/a/x1/u;

    return-object v0
.end method
