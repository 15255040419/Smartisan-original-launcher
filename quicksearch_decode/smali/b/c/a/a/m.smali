.class public final Lb/c/a/a/m;
.super Ljava/lang/Object;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/a/m$b;,
        Lb/c/a/a/m$c;,
        Lb/c/a/a/m$d;
    }
.end annotation


# direct methods
.method public static a()Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lb/c/a/a/m$d;->c:Lb/c/a/a/m$d;

    invoke-virtual {v0}, Lb/c/a/a/m$d;->a()Lcom/google/common/base/Predicate;

    return-object v0
.end method

.method public static a(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate<",
            "TT;>;)",
            "Lcom/google/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lb/c/a/a/m$c;

    invoke-direct {v0, p0}, Lb/c/a/a/m$c;-><init>(Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lb/c/a/a/m;->a()Lcom/google/common/base/Predicate;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lb/c/a/a/m$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/c/a/a/m$b;-><init>(Ljava/lang/Object;Lb/c/a/a/m$a;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
