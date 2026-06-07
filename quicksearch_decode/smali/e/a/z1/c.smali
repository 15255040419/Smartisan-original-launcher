.class public final Le/a/z1/c;
.super Le/a/z1/d;
.source "Dispatcher.kt"


# static fields
.field public static final g:Le/a/v;

.field public static final h:Le/a/z1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Le/a/z1/c;

    invoke-direct {v0}, Le/a/z1/c;-><init>()V

    sput-object v0, Le/a/z1/c;->h:Le/a/z1/c;

    .line 2
    invoke-static {}, Le/a/x1/v;->a()I

    move-result v1

    const/16 v2, 0x40

    invoke-static {v2, v1}, Ld/s/e;->a(II)I

    move-result v4

    const-string v3, "kotlinx.coroutines.io.parallelism"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Le/a/x1/v;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Le/a/z1/d;->a(I)Le/a/v;

    move-result-object v0

    sput-object v0, Le/a/z1/c;->g:Le/a/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Le/a/z1/d;-><init>(IILjava/lang/String;ILd/q/c/c;)V

    return-void
.end method


# virtual methods
.method public final b()Le/a/v;
    .locals 1

    .line 1
    sget-object v0, Le/a/z1/c;->g:Le/a/v;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DefaultDispatcher cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DefaultDispatcher"

    return-object v0
.end method
