.class public final Ld/f;
.super Ljava/lang/Object;
.source "Result.kt"


# direct methods
.method public static final a(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    const-string v0, "exception"

    invoke-static {p0, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ld/e$b;

    invoke-direct {v0, p0}, Ld/e$b;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final a(Ljava/lang/Object;)V
    .locals 1

    .line 2
    instance-of v0, p0, Ld/e$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Ld/e$b;

    iget-object p0, p0, Ld/e$b;->a:Ljava/lang/Throwable;

    throw p0
.end method
