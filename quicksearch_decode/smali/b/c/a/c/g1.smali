.class public abstract Lb/c/a/c/g1;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Comparator;)Lb/c/a/c/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lb/c/a/c/g1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lb/c/a/c/g1;

    if-eqz v0, :cond_0

    check-cast p0, Lb/c/a/c/g1;

    goto :goto_0

    :cond_0
    new-instance v0, Lb/c/a/c/c0;

    invoke-direct {v0, p0}, Lb/c/a/c/c0;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/common/base/Function;)Lb/c/a/c/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function<",
            "TF;+TT;>;)",
            "Lb/c/a/c/g1<",
            "TF;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lb/c/a/c/y;

    invoke-direct {v0, p1, p0}, Lb/c/a/c/y;-><init>(Lcom/google/common/base/Function;Lb/c/a/c/g1;)V

    return-object v0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method
