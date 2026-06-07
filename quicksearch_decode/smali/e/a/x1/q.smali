.class public abstract Le/a/x1/q;
.super Ljava/lang/Object;
.source "Atomic.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Le/a/x1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/x1/d<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final a(Le/a/x1/q;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/a/x1/q;->a()Le/a/x1/d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/a/x1/q;->a()Le/a/x1/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Le/a/x1/d;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Le/a/x1/d;->b()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Le/a/f0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Le/a/f0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
