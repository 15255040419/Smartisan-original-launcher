.class public abstract Lb/c/a/c/k0;
.super Lb/c/a/c/l0;
.source "ImmutableBiMap.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/c/k0$b;,
        Lb/c/a/c/k0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/l0<",
        "TK;TV;>;",
        "Lcom/google/common/collect/BiMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/c/a/c/l0;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lb/c/a/c/k0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/c/a/c/q1;

    invoke-direct {v0, p0, p1}, Lb/c/a/c/q1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static h()Lb/c/a/c/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lb/c/a/c/k0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lb/c/a/c/l1;->k:Lb/c/a/c/l1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic c()Lb/c/a/c/m0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/k0;->c()Lb/c/a/c/u0;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lb/c/a/c/u0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/u0<",
            "TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract inverse()Lb/c/a/c/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/k0<",
            "TV;TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/k0;->inverse()Lb/c/a/c/k0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Lb/c/a/c/m0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/k0;->values()Lb/c/a/c/u0;

    move-result-object v0

    return-object v0
.end method

.method public values()Lb/c/a/c/u0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/u0<",
            "TV;>;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lb/c/a/c/k0;->inverse()Lb/c/a/c/k0;

    move-result-object v0

    invoke-virtual {v0}, Lb/c/a/c/p0;->keySet()Lb/c/a/c/u0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/c/a/c/k0;->values()Lb/c/a/c/u0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Set;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lb/c/a/c/k0;->values()Lb/c/a/c/u0;

    move-result-object v0

    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lb/c/a/c/k0$b;

    invoke-direct {v0, p0}, Lb/c/a/c/k0$b;-><init>(Lb/c/a/c/k0;)V

    return-object v0
.end method
