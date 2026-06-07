.class public final Le/a/n0;
.super Ljava/lang/Object;
.source "Dispatchers.kt"


# static fields
.field public static final a:Le/a/v;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/n0;

    invoke-direct {v0}, Le/a/n0;-><init>()V

    .line 2
    invoke-static {}, Le/a/u;->a()Le/a/v;

    move-result-object v0

    sput-object v0, Le/a/n0;->a:Le/a/v;

    .line 3
    sget-object v0, Le/a/s1;->b:Le/a/s1;

    .line 4
    sget-object v0, Le/a/z1/c;->h:Le/a/z1/c;

    invoke-virtual {v0}, Le/a/z1/c;->b()Le/a/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Le/a/v;
    .locals 1

    .line 1
    sget-object v0, Le/a/n0;->a:Le/a/v;

    return-object v0
.end method

.method public static final b()Le/a/k1;
    .locals 1

    .line 1
    sget-object v0, Le/a/x1/n;->b:Le/a/k1;

    return-object v0
.end method
