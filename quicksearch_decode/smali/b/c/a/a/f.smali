.class public abstract Lb/c/a/a/f;
.super Ljava/lang/Object;
.source "Equivalence.java"

# interfaces
.implements Ljava/util/function/BiPredicate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/a/f$b;,
        Lb/c/a/a/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/BiPredicate<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lb/c/a/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/a/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lb/c/a/a/f$a;->a:Lb/c/a/a/f$a;

    return-object v0
.end method

.method public static b()Lb/c/a/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/a/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3
    sget-object v0, Lb/c/a/a/f$b;->a:Lb/c/a/a/f$b;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lb/c/a/a/f;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2}, Lb/c/a/a/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lb/c/a/a/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
